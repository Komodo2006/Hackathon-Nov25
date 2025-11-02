#include <bits/stdc++.h>
using namespace std;

struct Node {
    string name, op, x, y, p0, p1; // prints as: NODE name(op x y) p0 p1
};

struct Module {
    vector<Node> nodes;
    string cur = "S";            // CUR = <name>
    string input_bits = "";      // optional "INPUT = ..."

    void add(const string& name,
             const string& op, const string& x, const string& y,
             const string& p0, const string& p1) {
        nodes.push_back({name, op, x, y, p0, p1});
    }

    void print(ostream& out) const {
        // keep insertion order
        for (auto &nd : nodes) {
            if (nd.op == "SWAP") {
                out << "NODE " << nd.name << "(SWAP " << nd.x << ") "
                    << nd.p0 << " " << nd.p1 << "\n";
            } else {
                out << "NODE " << nd.name << "(PUSH " << nd.x << " " << nd.y << ") "
                    << nd.p0 << " " << nd.p1 << "\n";
            }
        }
        out << "END\n";
        out << "CUR = " << cur << "\n";
        if (!input_bits.empty()) out << "INPUT = " << input_bits << "\n";
    }
};

/* --------------------------
   Helpers to build small fragments
   -------------------------- */

// Read two input bits into internal “bit nodes” b0 and b1.
// Produces the classic b0/b1 layout that your XOR/AND networks expect.
// After capture, control goes to node joinName (which usually routes into compute).
static void emit_capture2(Module& M,
                          const string& S="S",
                          const string& b0="b0", const string& b1="b1",
                          const string& joinName="c5") {
    // First bit -> b0 with p0b0/p1b0
    M.add(S, "SWAP", "*", "", "c1", "*");
    M.add("c1", "PUSH", "I", "m0", "c2", "*");
    M.add("c2", "PUSH", "I", "f0", "I", "*");

    M.add("f0", "SWAP", b0, "", "c3", "*");
    M.add("m0", "PUSH", b0, "p0b0", "n0", "*");
    M.add("n0", "PUSH", b0, "p1b0", "c3", "*");
    M.add(b0,  "SWAP", "*", "", "p0b0", "p1b0");

    // Second bit -> b1 with p0b1/p1b1
    M.add("c3", "PUSH", "I", "m1", "c4", "*");
    M.add("c4", "PUSH", "I", "f1", "I", "*");

    M.add("f1", "SWAP", b1, "", joinName, "*");
    M.add("m1", "PUSH", b1, "p0b1", "n1", "*");
    M.add("n1", "PUSH", b1, "p1b1", joinName, "*");
    M.add(b1,  "SWAP", "*", "", "p0b1", "p1b1");

    // After capture we’ll route from joinName to the compute entry.
}

/* XOR network that works from two *existing* bit nodes (bA,bB).
   It doesn’t consume I; it just uses the bit-shapes rooted at bA/bB.
   It *returns* to RET after *emitting one output bit* (O0/O1).

   Layout mirrors your XOR, but with prefixed names to avoid clashes.
*/
static void emit_xor_from_bits(Module& M,
                               const string& prefix,      // e.g., "x"
                               const string& bA="b0",
                               const string& bB="b1",
                               const string& ret="RET1") {
    auto N = [&](string s){ return prefix + "_" + s; };

    // Entry shim: own copy of the b0-dispatch so we can run XOR then AND without redefining p0b0/p1b0
    M.add(N("bA"), "SWAP", "*", "", N("p0bA"), N("p1bA"));

    // bA path wiring
    M.add(N("p0bA"), "SWAP", "*", "", bB, "*");            // if A==0, defer to B
    M.add(N("p1bA"), "SWAP", N("p0bB"), "", N("p1bA_"), "*");
    M.add(N("p1bA_"), "SWAP", N("p1bB"), "", bB, "*");

    // bB mapping -> d0/d1 (xor)
    M.add(N("p0bB"), "SWAP", "*", "", N("d0"), N("d1"));   // B==0 => 0, B==1 => 1 (after toggling)
    M.add(N("p1bB"), "SWAP", "*", "", N("d1"), N("d0"));

    // Emit to O0/O1, then force next to RET by double-pushing O*
    M.add(N("d0"),  "PUSH", "O0", ret, N("d0p"), "*");
    M.add(N("d0p"), "PUSH", "O0", ret, "O0", "*");

    M.add(N("d1"),  "PUSH", "O1", ret, N("d1p"), "*");
    M.add(N("d1p"), "PUSH", "O1", ret, "O1", "*");
}

/* AND network from bA,bB -> O* then RET (no I consumption) */
static void emit_and_from_bits(Module& M,
                               const string& prefix,      // e.g., "a"
                               const string& bA="b0",
                               const string& bB="b1",
                               const string& ret="RET2") {
    auto N = [&](string s){ return prefix + "_" + s; };

    // Entry shim (own view of A)
    M.add(N("bA"), "SWAP", "*", "", N("p0bA"), N("p1bA"));

    // If A==0 -> result is 0 regardless of B (route to d0 through B-shim) ; if A==1 -> result is B
    M.add(N("p0bA"), "SWAP", "*", "", N("d0"), "*");       // A==0
    M.add(N("p1bA"), "SWAP", "*", "", bB,   "*");          // A==1 => use B

    // B mapping
    M.add(N("p0bB"), "SWAP", "*", "", N("d0"), "*");       // B==0 -> 0
    M.add(N("p1bB"), "SWAP", "*", "", N("d1"), "*");       // B==1 -> 1

    // Emit then return
    M.add(N("d0"),  "PUSH", "O0", ret, N("d0p"), "*");
    M.add(N("d0p"), "PUSH", "O0", ret, "O0", "*");

    M.add(N("d1"),  "PUSH", "O1", ret, N("d1p"), "*");
    M.add(N("d1p"), "PUSH", "O1", ret, "O1", "*");
}

/* Simple sink that loops (default in your files) */
static void emit_E(Module& M, const string& E="E") {
    M.add(E, "SWAP", E, "", E, E);
}

/* --------------------------
   Public builders
   -------------------------- */

// EXACTLY your XOR.GLF
static Module build_XOR_exact(const string& cur="S", const string& inputBits="") {
    Module M; M.cur = cur; M.input_bits = inputBits;

    M.add("S",   "SWAP", "*", "", "c1", "*");
    M.add("c1",  "PUSH", "I", "m0", "c2", "*");
    M.add("c2",  "PUSH", "I", "f0", "I", "*");

    M.add("f0",  "SWAP", "b0", "", "c3", "*");
    M.add("m0",  "PUSH", "b0", "p0b0", "n0", "*");
    M.add("n0",  "PUSH", "b0", "p1b0", "c3", "*");
    M.add("b0",  "SWAP", "*", "", "p0b0", "p1b0");

    M.add("c3",  "PUSH", "I", "m1", "c4", "*");
    M.add("c4",  "PUSH", "I", "f1", "I", "*");

    M.add("f1",  "SWAP", "b1", "", "c5", "*");
    M.add("m1",  "PUSH", "b1", "p0b1", "n1", "*");
    M.add("n1",  "PUSH", "b1", "p1b1", "c5", "*");
    M.add("b1",  "SWAP", "*", "", "p0b1", "p1b1");

    M.add("p0b1", "SWAP", "*", "", "d0", "d1");
    M.add("p1b1", "SWAP", "*", "", "d1", "d0");

    M.add("p0b0", "SWAP", "*", "", "b1", "*");
    M.add("p1b0", "SWAP", "p0b1", "", "p1b0'", "*");
    M.add("p1b0'", "SWAP", "p1b1", "", "b1", "*");

    M.add("c5",  "SWAP", "*", "", "b0", "");

    M.add("d0",  "PUSH", "O0", "E", "d0'", "*");
    M.add("d0'", "PUSH", "O0", "E", "O0", "*");
    M.add("d1",  "PUSH", "O1", "E", "d1'", "*");
    M.add("d1'", "PUSH", "O1", "E", "O1", "*");

    emit_E(M);
    return M;
}

// EXACTLY your AND.GLF
static Module build_AND_exact(const string& cur="S", const string& inputBits="") {
    Module M; M.cur = cur; M.input_bits = inputBits;

    M.add("S",   "SWAP", "*", "", "c1", "*");
    M.add("c1",  "PUSH", "I", "m0", "c2", "*");
    M.add("c2",  "PUSH", "I", "f0", "I", "*");

    M.add("f0",  "SWAP", "b0", "", "c3", "*");
    M.add("m0",  "PUSH", "b0", "p0b0", "n0", "*");
    M.add("n0",  "PUSH", "b0", "p1b0", "c3", "*");
    M.add("b0",  "SWAP", "*", "", "p0b0", "p1b0");

    M.add("c3",  "PUSH", "I", "m1", "c4", "*");
    M.add("c4",  "PUSH", "I", "f1", "I", "*");

    M.add("f1",  "SWAP", "b1", "", "c5", "*");
    M.add("m1",  "PUSH", "b1", "p0b1", "n1", "*");
    M.add("n1",  "PUSH", "b1", "p1b1", "c5", "*");
    M.add("b1",  "SWAP", "*", "", "p0b1", "p1b1");

    M.add("p0b1", "SWAP", "*", "", "d0", "*");
    M.add("p1b1", "SWAP", "*", "", "d1", "*");

    M.add("p0b0", "SWAP", "*", "", "d0", "*");
    M.add("p1b0", "SWAP", "*", "", "b1", "*");

    M.add("c5",  "SWAP", "*", "", "b0", "");

    M.add("d0",  "PUSH", "O0", "E", "d0'", "*");
    M.add("d0'", "PUSH", "O0", "E", "O0", "*");
    M.add("d1",  "PUSH", "O1", "E", "d1'", "*");
    M.add("d1'", "PUSH", "O1", "E", "O1", "*");

    emit_E(M);
    return M;
}

/* HALF ADDER:
   - Reads A,B once (capture2).
   - XOR(A,B) emits SUM and returns to RET1.
   - AND(A,B) emits CARRY and returns to RET2 (which ends at E).
*/
static Module build_half_adder(const string& inputBits="") {
    Module M; M.cur = "S"; M.input_bits = inputBits;

    // Capture two bits into b0,b1
    emit_capture2(M, "S", "b0", "b1", "c5");

    // After capture, route into XOR-first
    M.add("c5", "SWAP", "*", "", "x_bA", ""); // entry to XOR shim

    // XOR from bits b0,b1 -> RET1
    emit_xor_from_bits(M, "x", "b0", "b1", "RET1");

    // RET1 chains into AND
    M.add("RET1", "SWAP", "*", "", "a_bA", "");

    // AND from bits b0,b1 -> RET2 (end)
    emit_and_from_bits(M, "a", "b0", "b1", "RET2");

    // RET2 -> E
    M.add("RET2", "SWAP", "*", "", "E", "");
    emit_E(M);
    return M;
}

/* FULL ADDER (sum, carry) from three inputs A=b0, B=b1, Cin=b2:
   sum  = A ^ B ^ Cin
   carry= (A & B) | (Cin & (A ^ B))
   We implement with small inlined mappings (no registers shared).
   Sequence:
     capture three bits into b0,b1,b2
     SUM:  if Cin==0 => XOR(A,B), if Cin==1 => XNOR(A,B)
     CARRY: if Cin==0 => AND(A,B), if Cin==1 => OR(A,B) (built via simple mapping)
*/
static void emit_capture3(Module& M,
                          const string& S="S",
                          const string& b0="b0", const string& b1="b1", const string& b2="b2",
                          const string& join="j3") {
    // First two bits as before, join to c6
    emit_capture2(M, S, b0, b1, "c6");

    // Third bit into b2, then join
    M.add("c6", "PUSH", "I", "m2", "c7", "*");
    M.add("c7", "PUSH", "I", "f2", "I", "*");

    M.add("f2", "SWAP", b2, "", join, "*");
    M.add("m2", "PUSH", b2, "p0b2", "n2", "*");
    M.add("n2", "PUSH", b2, "p1b2", join, "*");
    M.add(b2,  "SWAP", "*", "", "p0b2", "p1b2");
}

static void emit_xnor_from_bits(Module& M, const string& prefix,
                                const string& bA="b0", const string& bB="b1",
                                const string& ret="RX") {
    auto N = [&](string s){ return prefix + "_" + s; };
    // Same as XOR but swap d0/d1 at B mapping
    M.add(N("bA"), "SWAP", "*", "", N("p0bA"), N("p1bA"));
    M.add(N("p0bA"), "SWAP", "*", "", bB, "*");
    M.add(N("p1bA"), "SWAP", N("p0bB"), "", N("p1bA_"), "*");
    M.add(N("p1bA_"), "SWAP", N("p1bB"), "", bB, "*");

    M.add(N("p0bB"), "SWAP", "*", "", N("d1"), N("d0")); // swapped
    M.add(N("p1bB"), "SWAP", "*", "", N("d0"), N("d1"));

    M.add(N("d0"),  "PUSH", "O0", ret, N("d0p"), "*");
    M.add(N("d0p"), "PUSH", "O0", ret, "O0", "*");
    M.add(N("d1"),  "PUSH", "O1", ret, N("d1p"), "*");
    M.add(N("d1p"), "PUSH", "O1", ret, "O1", "*");
}

// OR from bits: if A==0 => result=B ; if A==1 => result=1
static void emit_or_from_bits(Module& M, const string& prefix,
                              const string& bA="b0", const string& bB="b1",
                              const string& ret="RO") {
    auto N = [&](string s){ return prefix + "_" + s; };

    M.add(N("bA"), "SWAP", "*", "", N("p0bA"), N("p1bA"));
    M.add(N("p0bA"), "SWAP", "*", "", bB, "*");           // A==0 => use B
    M.add(N("p1bA"), "SWAP", "*", "", N("d1"), "*");      // A==1 => 1

    M.add(N("p0bB"), "SWAP", "*", "", N("d0"), "*");      // B==0 => 0
    M.add(N("p1bB"), "SWAP", "*", "", N("d1"), "*");      // B==1 => 1

    M.add(N("d0"),  "PUSH", "O0", ret, N("d0p"), "*");
    M.add(N("d0p"), "PUSH", "O0", ret, "O0", "*");
    M.add(N("d1"),  "PUSH", "O1", ret, N("d1p"), "*");
    M.add(N("d1p"), "PUSH", "O1", ret, "O1", "*");
}

static Module build_full_adder(const string& inputBits="") {
    Module M; M.cur = "S"; M.input_bits = inputBits;
    // Capture three bits into b0,b1,b2
    emit_capture3(M, "S", "b0", "b1", "b2", "J");

    // SUM: parity of (b0,b1,b2) => if b2==0 then XOR, else XNOR
    // Decide using b2 structure: route from J to a small dispatcher that chooses which network to run.
    M.add("J", "SWAP", "*", "", "sum_dispatch", "");
    M.add("sum_dispatch", "SWAP", "*", "", "p0b2_sum", "p1b2_sum");
    // If Cin=0
    emit_xor_from_bits (M, "sx", "b0", "b1", "AFTER_SUM");   // XOR -> AFTER_SUM
    // If Cin=1 (XNOR)
    emit_xnor_from_bits(M, "sn", "b0", "b1", "AFTER_SUM");   // XNOR -> AFTER_SUM
    // b2 mapping selects which
    M.add("p0b2_sum", "SWAP", "*", "", "sx_bA", "*");
    M.add("p1b2_sum", "SWAP", "*", "", "sn_bA", "*");

    // CARRY: if Cin==0 => AND(A,B). If Cin==1 => OR(A,B)
    M.add("AFTER_SUM", "SWAP", "*", "", "carry_dispatch", "");
    M.add("carry_dispatch", "SWAP", "*", "", "p0b2_c", "p1b2_c");

    emit_and_from_bits(M, "ca", "b0", "b1", "END_FA");   // AND -> END_FA
    emit_or_from_bits (M, "co", "b0", "b1", "END_FA");   // OR  -> END_FA

    M.add("p0b2_c", "SWAP", "*", "", "ca_bA", "*");      // if Cin=0 -> AND
    M.add("p1b2_c", "SWAP", "*", "", "co_bA", "*");      // if Cin=1 -> OR

    // End -> E
    M.add("END_FA", "SWAP", "*", "", "E", "");
    emit_E(M);
    return M;
}

/* --------------------------
   main: choose what to emit
   -------------------------- */
int main(int argc, char** argv){
    ios::sync_with_stdio(false);
    cin.tie(nullptr);

    string what = (argc >= 2 ? string(argv[1]) : "xor");
    string bits = (argc >= 3 ? string(argv[2]) : ""); // optional: INPUT bits

    if (what == "xor") {
        build_XOR_exact("S", bits).print(cout);
    } else if (what == "and") {
        build_AND_exact("S", bits).print(cout);
    } else if (what == "half") {
        build_half_adder(bits).print(cout);
    } else if (what == "full") {
        build_full_adder(bits).print(cout);
    } else {
        cerr << "Usage: gen [xor|and|half|full] [optional_bits]\n";
        return 1;
    }
    return 0;
}
