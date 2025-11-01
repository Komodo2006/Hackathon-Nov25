#include<bits/stdc++.h>
using namespace std;
#define PUSH 0
#define SWAP 1
#define N 2020
map<string,int> mp;
string var[N];
queue<bool> input,output;
struct ins{
    int op,x,y;
    void print(){
        if(op==PUSH)printf("PUSH %s %s",var[x].c_str(),var[y].c_str());
        else printf("SWAP %s",var[x].c_str());
    }
};
struct node{
    ins i;
    int p0,p1;
};
struct program{
    node d[N];
    int S,I,O0,O1,n,size;
    void step(){
        if(n==I){
            bool x = input.front();
            input.pop();
            n = x?(d[I].p0):(d[I].p1);
            return;
        }else if(n==O0){
            output.push(0);
        }else if(n==O1){
            output.push(1);
        }else{
            ins cur_i = d[n].i;
            if(cur_i.op == PUSH){
                d[cur_i.x].p0 = d[cur_i.x].p1;
                d[cur_i.x].p1 = cur_i.y;
            }else{
                swap(d[cur_i.x].p0,d[cur_i.x].p1);
            }
        }
        n = d[n].p0;
    }
    void print(bool print_machine){
        if(print_machine){
            for(int i=0;i<size;i++){
                printf("NODE %s(",var[i].c_str());
                d[i].i.print();
                printf("), p0 = %s, p1 = %s \n",var[d[i].p0].c_str(),var[d[i].p1].c_str());
            }
            printf("END\n");
        }
        printf("CUR = %s \n", var[n].c_str());
        printf("-------------------------\n");
    }/*
    void load(){
        FILE* fptr = fopen("input.glf", "r");
        while(1){
            char opstr[100],buf[100];
            fscanf(fptr,"%s",opstr);
            if(opstr[0]=='N'){
                fscanf(fptr,"NODE %s(",buf);
                string str(buf);
                if(!mp.count(str)){
                    mp[str]=++size;
                }
                int cidx = mp[str];
                fscanf(fptr,"%s",opstr);
                if(opstr[0]=='S'){

                }else{

                }
            }else break;
        }
    }*/
    void load(){
         ifstream in("input.glf");
        if(!in){ perror("input.glf"); return; }

        mp.clear();
        size = 0;

        auto trim = [](string &s){
            size_t a = s.find_first_not_of(" \t\r\n");
            size_t b = s.find_last_not_of(" \t\r\n");
            if (a == string::npos) { s.clear(); return; }
            s = s.substr(a, b - a + 1);
        };

        auto getId = [&](const string& s)->int{
            auto it = mp.find(s);
            if(it != mp.end()) return it->second;
            int id = size++;
            mp[s] = id;
            var[id] = s;
            return id;
        };

        string line;
        // ---- Read NODE lines
        while (std::getline(in, line)) {
            string orig = line;
            trim(line);
            if (line.empty()) continue;
            if (line == "END") break;
            if (line.rfind("NODE ", 0) != 0) continue;
            S = getId("S");
            I = getId("I");
            O0 = getId("O0");
            O1 = getId("O1");
            // NODE <name>(...) rest
            size_t pos  = 5; // after "NODE "
            size_t lpar = line.find('(', pos);
            size_t rpar = (lpar == string::npos) ? string::npos : line.find(')', lpar+1);
            if (lpar == string::npos || rpar == string::npos) continue;

            string name = line.substr(pos, lpar - pos); trim(name);
            int idx = getId(name);

            // inside parentheses: instruction
            string inside = line.substr(lpar+1, rpar - lpar - 1); trim(inside);

            // after ')': two tokens p0 p1
            string rest = line.substr(rpar+1); trim(rest);
            string p0s, p1s;
            {
                stringstream rs(rest);
                rs >> p0s >> p1s; // as per sample format: just two names
            }
            int p0id = p0s.empty() ? idx : getId(p0s);
            int p1id = p1s.empty() ? idx : getId(p1s);

            // parse instruction
            ins insn{};
            {
                stringstream is(inside);
                string op; is >> op;
                if (op == "PUSH") {
                    string xs, ys; is >> xs >> ys;
                    insn.op = PUSH; insn.x = getId(xs); insn.y = getId(ys);
                } else if (op == "SWAP") {
                    string xs; is >> xs;
                    insn.op = SWAP; insn.x = getId(xs); insn.y = 0;
                } else {
                    // default safe fallback
                    insn.op = SWAP; insn.x = idx; insn.y = 0;
                }
            }

            d[idx].i  = insn;
            d[idx].p0 = p0id;
            d[idx].p1 = p1id;
        }

        // ---- Read "CUR = <name>" after END
        while (std::getline(in, line)) {
            trim(line);
            if (line.empty()) continue;
            if (line.rfind("CUR", 0) == 0) {
                size_t eq = line.find('=');
                if (eq != string::npos) {
                    string cur = line.substr(eq+1);
                    trim(cur);
                    n = getId(cur);
                }
                break;
            }
        }
        // Optional convenience: fill known special nodes if present
        if (mp.count("S"))  S  = mp["S"];
        if (mp.count("I"))  I  = mp["I"];
        if (mp.count("O0")) O0 = mp["O0"];
        if (mp.count("O1")) O1 = mp["O1"];
    }
    void init(){
        n = S;
    }
}p;
int main(){
    p.load();
    p.print(1);
    for(int i=0;i<32;i++){
        p.step();
        p.print(0);
    }
}