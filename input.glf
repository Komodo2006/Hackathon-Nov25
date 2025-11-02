NODE S(PUSH * *) rx_s *
NODE I(PUSH * *) * *
NODE O0(PUSH * *) * *
NODE O1(PUSH * *) * *
NODE B0_bp0(SWAP *) * *
NODE B0_bp1(SWAP *) * *
NODE B0_b(SWAP *) B0_bp0 B0_bp1
NODE B0_r1(PUSH B0_b B0_bp1) * *
NODE B0_r0(PUSH B0_b B0_bp0) B0_r1 *
NODE B0_f(SWAP B0_b) * *
NODE B1_bp0(SWAP *) * *
NODE B1_bp1(SWAP *) * *
NODE B1_b(SWAP *) B1_bp1 B1_bp0
NODE B1_r1(PUSH B1_b B1_bp1) * *
NODE B1_r0(PUSH B1_b B1_bp0) B1_r1 *
NODE B1_f(SWAP B1_b) * *
NODE x_bd0_bp0(SWAP *) bi_ha0_i0d1_r0 *
NODE x_bd0_bp1(SWAP *) bi_ha0_i0d1_f *
NODE x_bd0_b(SWAP *) x_bd0_bp0 x_bd0_bp1
NODE x_bd0_r1(PUSH x_bd0_b x_bd0_bp1) rx_rd0_t *
NODE x_bd0_r0(PUSH x_bd0_b x_bd0_bp0) x_bd0_r1 *
NODE x_bd0_f(SWAP x_bd0_b) rx_rd0_t *
NODE x_bd1_bp0(SWAP *) bi_ha1_i0d1_r0 *
NODE x_bd1_bp1(SWAP *) bi_ha1_i0d1_f *
NODE x_bd1_b(SWAP *) x_bd1_bp0 x_bd1_bp1
NODE x_bd1_r1(PUSH x_bd1_b x_bd1_bp1) rx_rd1_t *
NODE x_bd1_r0(PUSH x_bd1_b x_bd1_bp0) x_bd1_r1 *
NODE x_bd1_f(SWAP x_bd1_b) rx_rd1_t *
NODE x_bd2_bp0(SWAP *) bi_ha2_i0d1_r0 *
NODE x_bd2_bp1(SWAP *) bi_ha2_i0d1_f *
NODE x_bd2_b(SWAP *) x_bd2_bp0 x_bd2_bp1
NODE x_bd2_r1(PUSH x_bd2_b x_bd2_bp1) rx_rd2_t *
NODE x_bd2_r0(PUSH x_bd2_b x_bd2_bp0) x_bd2_r1 *
NODE x_bd2_f(SWAP x_bd2_b) rx_rd2_t *
NODE x_bd3_bp0(SWAP *) bi_ha3_i0d1_r0 *
NODE x_bd3_bp1(SWAP *) bi_ha3_i0d1_f *
NODE x_bd3_b(SWAP *) x_bd3_bp0 x_bd3_bp1
NODE x_bd3_r1(PUSH x_bd3_b x_bd3_bp1) rx_rd3_t *
NODE x_bd3_r0(PUSH x_bd3_b x_bd3_bp0) x_bd3_r1 *
NODE x_bd3_f(SWAP x_bd3_b) rx_rd3_t *
NODE x_bd4_bp0(SWAP *) bi_ha4_i0d1_r0 *
NODE x_bd4_bp1(SWAP *) bi_ha4_i0d1_f *
NODE x_bd4_b(SWAP *) x_bd4_bp0 x_bd4_bp1
NODE x_bd4_r1(PUSH x_bd4_b x_bd4_bp1) rx_rd4_t *
NODE x_bd4_r0(PUSH x_bd4_b x_bd4_bp0) x_bd4_r1 *
NODE x_bd4_f(SWAP x_bd4_b) rx_rd4_t *
NODE x_bd5_bp0(SWAP *) bi_ha5_i0d1_r0 *
NODE x_bd5_bp1(SWAP *) bi_ha5_i0d1_f *
NODE x_bd5_b(SWAP *) x_bd5_bp0 x_bd5_bp1
NODE x_bd5_r1(PUSH x_bd5_b x_bd5_bp1) rx_rd5_t *
NODE x_bd5_r0(PUSH x_bd5_b x_bd5_bp0) x_bd5_r1 *
NODE x_bd5_f(SWAP x_bd5_b) rx_rd5_t *
NODE x_bd6_bp0(SWAP *) bi_ha6_i0d1_r0 *
NODE x_bd6_bp1(SWAP *) bi_ha6_i0d1_f *
NODE x_bd6_b(SWAP *) x_bd6_bp0 x_bd6_bp1
NODE x_bd6_r1(PUSH x_bd6_b x_bd6_bp1) rx_rd6_t *
NODE x_bd6_r0(PUSH x_bd6_b x_bd6_bp0) x_bd6_r1 *
NODE x_bd6_f(SWAP x_bd6_b) rx_rd6_t *
NODE x_bd7_bp0(SWAP *) bi_ha7_i0d1_r0 *
NODE x_bd7_bp1(SWAP *) bi_ha7_i0d1_f *
NODE x_bd7_b(SWAP *) x_bd7_bp0 x_bd7_bp1
NODE x_bd7_r1(PUSH x_bd7_b x_bd7_bp1) rx_rd7_t *
NODE x_bd7_r0(PUSH x_bd7_b x_bd7_bp0) x_bd7_r1 *
NODE x_bd7_f(SWAP x_bd7_b) rx_rd7_t *
NODE y_bd0_bp0(SWAP *) wy_wd0_c2 *
NODE y_bd0_bp1(SWAP *) wy_wd0_c4 *
NODE y_bd0_b(SWAP *) y_bd0_bp0 y_bd0_bp1
NODE y_bd0_r1(PUSH y_bd0_b y_bd0_bp1) bi_ha0_XOR_t *
NODE y_bd0_r0(PUSH y_bd0_b y_bd0_bp0) y_bd0_r1 *
NODE y_bd0_f(SWAP y_bd0_b) bi_ha0_XOR_t *
NODE y_bd1_bp0(SWAP *) wy_wd1_c2 *
NODE y_bd1_bp1(SWAP *) wy_wd1_c4 *
NODE y_bd1_b(SWAP *) y_bd1_bp0 y_bd1_bp1
NODE y_bd1_r1(PUSH y_bd1_b y_bd1_bp1) bi_ha1_XOR_t *
NODE y_bd1_r0(PUSH y_bd1_b y_bd1_bp0) y_bd1_r1 *
NODE y_bd1_f(SWAP y_bd1_b) bi_ha1_XOR_t *
NODE y_bd2_bp0(SWAP *) wy_wd2_c2 *
NODE y_bd2_bp1(SWAP *) wy_wd2_c4 *
NODE y_bd2_b(SWAP *) y_bd2_bp0 y_bd2_bp1
NODE y_bd2_r1(PUSH y_bd2_b y_bd2_bp1) bi_ha2_XOR_t *
NODE y_bd2_r0(PUSH y_bd2_b y_bd2_bp0) y_bd2_r1 *
NODE y_bd2_f(SWAP y_bd2_b) bi_ha2_XOR_t *
NODE y_bd3_bp0(SWAP *) wy_wd3_c2 *
NODE y_bd3_bp1(SWAP *) wy_wd3_c4 *
NODE y_bd3_b(SWAP *) y_bd3_bp0 y_bd3_bp1
NODE y_bd3_r1(PUSH y_bd3_b y_bd3_bp1) bi_ha3_XOR_t *
NODE y_bd3_r0(PUSH y_bd3_b y_bd3_bp0) y_bd3_r1 *
NODE y_bd3_f(SWAP y_bd3_b) bi_ha3_XOR_t *
NODE y_bd4_bp0(SWAP *) wy_wd4_c2 *
NODE y_bd4_bp1(SWAP *) wy_wd4_c4 *
NODE y_bd4_b(SWAP *) y_bd4_bp0 y_bd4_bp1
NODE y_bd4_r1(PUSH y_bd4_b y_bd4_bp1) bi_ha4_XOR_t *
NODE y_bd4_r0(PUSH y_bd4_b y_bd4_bp0) y_bd4_r1 *
NODE y_bd4_f(SWAP y_bd4_b) bi_ha4_XOR_t *
NODE y_bd5_bp0(SWAP *) wy_wd5_c2 *
NODE y_bd5_bp1(SWAP *) wy_wd5_c4 *
NODE y_bd5_b(SWAP *) y_bd5_bp0 y_bd5_bp1
NODE y_bd5_r1(PUSH y_bd5_b y_bd5_bp1) bi_ha5_XOR_t *
NODE y_bd5_r0(PUSH y_bd5_b y_bd5_bp0) y_bd5_r1 *
NODE y_bd5_f(SWAP y_bd5_b) bi_ha5_XOR_t *
NODE y_bd6_bp0(SWAP *) wy_wd6_c2 *
NODE y_bd6_bp1(SWAP *) wy_wd6_c4 *
NODE y_bd6_b(SWAP *) y_bd6_bp0 y_bd6_bp1
NODE y_bd6_r1(PUSH y_bd6_b y_bd6_bp1) bi_ha6_XOR_t *
NODE y_bd6_r0(PUSH y_bd6_b y_bd6_bp0) y_bd6_r1 *
NODE y_bd6_f(SWAP y_bd6_b) bi_ha6_XOR_t *
NODE y_bd7_bp0(SWAP *) wy_wd7_c2 *
NODE y_bd7_bp1(SWAP *) wy_wd7_c4 *
NODE y_bd7_b(SWAP *) y_bd7_bp0 y_bd7_bp1
NODE y_bd7_r1(PUSH y_bd7_b y_bd7_bp1) bi_ha7_XOR_t *
NODE y_bd7_r0(PUSH y_bd7_b y_bd7_bp0) y_bd7_r1 *
NODE y_bd7_f(SWAP y_bd7_b) bi_ha7_XOR_t *
NODE rx_s(SWAP *) rx_rd0_s *
NODE rx_t(SWAP *) bi_s *
NODE rx_rd0_c1(PUSH I x_bd0_r0) rx_rd0_c2 *
NODE rx_rd0_c2(PUSH I x_bd0_f) I *
NODE rx_rd0_s(SWAP *) rx_rd0_c1 *
NODE rx_rd0_t(SWAP *) rx_rd1_s *
NODE rx_rd1_c1(PUSH I x_bd1_r0) rx_rd1_c2 *
NODE rx_rd1_c2(PUSH I x_bd1_f) I *
NODE rx_rd1_s(SWAP *) rx_rd1_c1 *
NODE rx_rd1_t(SWAP *) rx_rd2_s *
NODE rx_rd2_c1(PUSH I x_bd2_r0) rx_rd2_c2 *
NODE rx_rd2_c2(PUSH I x_bd2_f) I *
NODE rx_rd2_s(SWAP *) rx_rd2_c1 *
NODE rx_rd2_t(SWAP *) rx_rd3_s *
NODE rx_rd3_c1(PUSH I x_bd3_r0) rx_rd3_c2 *
NODE rx_rd3_c2(PUSH I x_bd3_f) I *
NODE rx_rd3_s(SWAP *) rx_rd3_c1 *
NODE rx_rd3_t(SWAP *) rx_rd4_s *
NODE rx_rd4_c1(PUSH I x_bd4_r0) rx_rd4_c2 *
NODE rx_rd4_c2(PUSH I x_bd4_f) I *
NODE rx_rd4_s(SWAP *) rx_rd4_c1 *
NODE rx_rd4_t(SWAP *) rx_rd5_s *
NODE rx_rd5_c1(PUSH I x_bd5_r0) rx_rd5_c2 *
NODE rx_rd5_c2(PUSH I x_bd5_f) I *
NODE rx_rd5_s(SWAP *) rx_rd5_c1 *
NODE rx_rd5_t(SWAP *) rx_rd6_s *
NODE rx_rd6_c1(PUSH I x_bd6_r0) rx_rd6_c2 *
NODE rx_rd6_c2(PUSH I x_bd6_f) I *
NODE rx_rd6_s(SWAP *) rx_rd6_c1 *
NODE rx_rd6_t(SWAP *) rx_rd7_s *
NODE rx_rd7_c1(PUSH I x_bd7_r0) rx_rd7_c2 *
NODE rx_rd7_c2(PUSH I x_bd7_f) I *
NODE rx_rd7_s(SWAP *) rx_rd7_c1 *
NODE rx_rd7_t(SWAP *) rx_t *
NODE bi_s(SWAP *) bi_ha0_s *
NODE bi_t(SWAP *) wy_s *
NODE bi_cr0_bp0(SWAP *) bi_ha0_i1d1_r0 *
NODE bi_cr0_bp1(SWAP *) bi_ha0_i1d1_f *
NODE bi_cr0_b(SWAP *) bi_cr0_bp1 bi_cr0_bp0
NODE bi_cr0_r1(PUSH bi_cr0_b bi_cr0_bp1) * *
NODE bi_cr0_r0(PUSH bi_cr0_b bi_cr0_bp0) bi_cr0_r1 *
NODE bi_cr0_f(SWAP bi_cr0_b) * *
NODE bi_cr1_bp0(SWAP *) bi_ha1_i1d1_r0 *
NODE bi_cr1_bp1(SWAP *) bi_ha1_i1d1_f *
NODE bi_cr1_b(SWAP *) bi_cr1_bp0 bi_cr1_bp1
NODE bi_cr1_r1(PUSH bi_cr1_b bi_cr1_bp1) bi_ha0_AND_t *
NODE bi_cr1_r0(PUSH bi_cr1_b bi_cr1_bp0) bi_cr1_r1 *
NODE bi_cr1_f(SWAP bi_cr1_b) bi_ha0_AND_t *
NODE bi_cr2_bp0(SWAP *) bi_ha2_i1d1_r0 *
NODE bi_cr2_bp1(SWAP *) bi_ha2_i1d1_f *
NODE bi_cr2_b(SWAP *) bi_cr2_bp0 bi_cr2_bp1
NODE bi_cr2_r1(PUSH bi_cr2_b bi_cr2_bp1) bi_ha1_AND_t *
NODE bi_cr2_r0(PUSH bi_cr2_b bi_cr2_bp0) bi_cr2_r1 *
NODE bi_cr2_f(SWAP bi_cr2_b) bi_ha1_AND_t *
NODE bi_cr3_bp0(SWAP *) bi_ha3_i1d1_r0 *
NODE bi_cr3_bp1(SWAP *) bi_ha3_i1d1_f *
NODE bi_cr3_b(SWAP *) bi_cr3_bp0 bi_cr3_bp1
NODE bi_cr3_r1(PUSH bi_cr3_b bi_cr3_bp1) bi_ha2_AND_t *
NODE bi_cr3_r0(PUSH bi_cr3_b bi_cr3_bp0) bi_cr3_r1 *
NODE bi_cr3_f(SWAP bi_cr3_b) bi_ha2_AND_t *
NODE bi_cr4_bp0(SWAP *) bi_ha4_i1d1_r0 *
NODE bi_cr4_bp1(SWAP *) bi_ha4_i1d1_f *
NODE bi_cr4_b(SWAP *) bi_cr4_bp0 bi_cr4_bp1
NODE bi_cr4_r1(PUSH bi_cr4_b bi_cr4_bp1) bi_ha3_AND_t *
NODE bi_cr4_r0(PUSH bi_cr4_b bi_cr4_bp0) bi_cr4_r1 *
NODE bi_cr4_f(SWAP bi_cr4_b) bi_ha3_AND_t *
NODE bi_cr5_bp0(SWAP *) bi_ha5_i1d1_r0 *
NODE bi_cr5_bp1(SWAP *) bi_ha5_i1d1_f *
NODE bi_cr5_b(SWAP *) bi_cr5_bp0 bi_cr5_bp1
NODE bi_cr5_r1(PUSH bi_cr5_b bi_cr5_bp1) bi_ha4_AND_t *
NODE bi_cr5_r0(PUSH bi_cr5_b bi_cr5_bp0) bi_cr5_r1 *
NODE bi_cr5_f(SWAP bi_cr5_b) bi_ha4_AND_t *
NODE bi_cr6_bp0(SWAP *) bi_ha6_i1d1_r0 *
NODE bi_cr6_bp1(SWAP *) bi_ha6_i1d1_f *
NODE bi_cr6_b(SWAP *) bi_cr6_bp0 bi_cr6_bp1
NODE bi_cr6_r1(PUSH bi_cr6_b bi_cr6_bp1) bi_ha5_AND_t *
NODE bi_cr6_r0(PUSH bi_cr6_b bi_cr6_bp0) bi_cr6_r1 *
NODE bi_cr6_f(SWAP bi_cr6_b) bi_ha5_AND_t *
NODE bi_cr7_bp0(SWAP *) bi_ha7_i1d1_r0 *
NODE bi_cr7_bp1(SWAP *) bi_ha7_i1d1_f *
NODE bi_cr7_b(SWAP *) bi_cr7_bp0 bi_cr7_bp1
NODE bi_cr7_r1(PUSH bi_cr7_b bi_cr7_bp1) bi_ha6_AND_t *
NODE bi_cr7_r0(PUSH bi_cr7_b bi_cr7_bp0) bi_cr7_r1 *
NODE bi_cr7_f(SWAP bi_cr7_b) bi_ha6_AND_t *
NODE bi_cr8_bp0(SWAP *) * *
NODE bi_cr8_bp1(SWAP *) * *
NODE bi_cr8_b(SWAP *) bi_cr8_bp0 bi_cr8_bp1
NODE bi_cr8_r1(PUSH bi_cr8_b bi_cr8_bp1) bi_ha7_AND_t *
NODE bi_cr8_r0(PUSH bi_cr8_b bi_cr8_bp0) bi_cr8_r1 *
NODE bi_cr8_f(SWAP bi_cr8_b) bi_ha7_AND_t *
NODE bi_ha0_i0d1_bp0(SWAP *) bi_ha0_i1d1_b *
NODE bi_ha0_i0d1_bp1(SWAP *) bi_ha0_XOR__r1 *
NODE bi_ha0_i0d1_b(SWAP *) bi_ha0_i0d1_bp0 bi_ha0_i0d1_bp1
NODE bi_ha0_i0d1_r1(PUSH bi_ha0_i0d1_b bi_ha0_i0d1_bp1) bi_ha0_i0d2_r0 *
NODE bi_ha0_i0d1_r0(PUSH bi_ha0_i0d1_b bi_ha0_i0d1_bp0) bi_ha0_i0d1_r1 *
NODE bi_ha0_i0d1_f(SWAP bi_ha0_i0d1_b) bi_ha0_i0d2_f *
NODE bi_ha0_i1d1_bp0(SWAP *) y_bd0_r0 y_bd0_f
NODE bi_ha0_i1d1_bp1(SWAP *) y_bd0_f y_bd0_r0
NODE bi_ha0_i1d1_b(SWAP *) bi_ha0_i1d1_bp0 bi_ha0_i1d1_bp1
NODE bi_ha0_i1d1_r1(PUSH bi_ha0_i1d1_b bi_ha0_i1d1_bp1) bi_ha0_i1d2_r0 *
NODE bi_ha0_i1d1_r0(PUSH bi_ha0_i1d1_b bi_ha0_i1d1_bp0) bi_ha0_i1d1_r1 *
NODE bi_ha0_i1d1_f(SWAP bi_ha0_i1d1_b) bi_ha0_i1d2_f *
NODE bi_ha0_i0d2_bp0(SWAP *) bi_cr1_r0 *
NODE bi_ha0_i0d2_bp1(SWAP *) bi_ha0_i1d2_b *
NODE bi_ha0_i0d2_b(SWAP *) bi_ha0_i0d2_bp0 bi_ha0_i0d2_bp1
NODE bi_ha0_i0d2_r1(PUSH bi_ha0_i0d2_b bi_ha0_i0d2_bp1) bi_ha0_d0_t *
NODE bi_ha0_i0d2_r0(PUSH bi_ha0_i0d2_b bi_ha0_i0d2_bp0) bi_ha0_i0d2_r1 *
NODE bi_ha0_i0d2_f(SWAP bi_ha0_i0d2_b) bi_ha0_d0_t *
NODE bi_ha0_i1d2_bp0(SWAP *) bi_cr1_r0 *
NODE bi_ha0_i1d2_bp1(SWAP *) bi_cr1_f *
NODE bi_ha0_i1d2_b(SWAP *) bi_ha0_i1d2_bp0 bi_ha0_i1d2_bp1
NODE bi_ha0_i1d2_r1(PUSH bi_ha0_i1d2_b bi_ha0_i1d2_bp1) bi_ha0_d1_t *
NODE bi_ha0_i1d2_r0(PUSH bi_ha0_i1d2_b bi_ha0_i1d2_bp0) bi_ha0_i1d2_r1 *
NODE bi_ha0_i1d2_f(SWAP bi_ha0_i1d2_b) bi_ha0_d1_t *
NODE bi_ha0_d0_s(SWAP *) x_bd0_b *
NODE bi_ha0_d0_t(SWAP *) bi_ha0_d1_s *
NODE bi_ha0_d1_s(SWAP *) bi_cr0_b *
NODE bi_ha0_d1_t(SWAP *) bi_ha0_XOR_s *
NODE bi_ha0_s(SWAP *) bi_ha0_d0_s *
NODE bi_ha0_XOR_s(SWAP *) bi_ha0_i0d1_b *
NODE bi_ha0_XOR__r2(SWAP bi_ha0_i1d1_bp0) bi_ha0_i1d1_b *
NODE bi_ha0_XOR__r1(SWAP bi_ha0_i1d1_bp1) bi_ha0_XOR__r2 *
NODE bi_ha0_XOR_t(SWAP *) bi_ha0_AND_s *
NODE bi_ha0_AND_s(SWAP *) bi_ha0_i0d2_b *
NODE bi_ha0_AND_t(SWAP *) bi_ha0_t *
NODE bi_ha0_t(SWAP *) bi_ha1_s *
NODE bi_ha1_i0d1_bp0(SWAP *) bi_ha1_i1d1_b *
NODE bi_ha1_i0d1_bp1(SWAP *) bi_ha1_XOR__r1 *
NODE bi_ha1_i0d1_b(SWAP *) bi_ha1_i0d1_bp0 bi_ha1_i0d1_bp1
NODE bi_ha1_i0d1_r1(PUSH bi_ha1_i0d1_b bi_ha1_i0d1_bp1) bi_ha1_i0d2_r0 *
NODE bi_ha1_i0d1_r0(PUSH bi_ha1_i0d1_b bi_ha1_i0d1_bp0) bi_ha1_i0d1_r1 *
NODE bi_ha1_i0d1_f(SWAP bi_ha1_i0d1_b) bi_ha1_i0d2_f *
NODE bi_ha1_i1d1_bp0(SWAP *) y_bd1_r0 y_bd1_f
NODE bi_ha1_i1d1_bp1(SWAP *) y_bd1_f y_bd1_r0
NODE bi_ha1_i1d1_b(SWAP *) bi_ha1_i1d1_bp0 bi_ha1_i1d1_bp1
NODE bi_ha1_i1d1_r1(PUSH bi_ha1_i1d1_b bi_ha1_i1d1_bp1) bi_ha1_i1d2_r0 *
NODE bi_ha1_i1d1_r0(PUSH bi_ha1_i1d1_b bi_ha1_i1d1_bp0) bi_ha1_i1d1_r1 *
NODE bi_ha1_i1d1_f(SWAP bi_ha1_i1d1_b) bi_ha1_i1d2_f *
NODE bi_ha1_i0d2_bp0(SWAP *) bi_cr2_r0 *
NODE bi_ha1_i0d2_bp1(SWAP *) bi_ha1_i1d2_b *
NODE bi_ha1_i0d2_b(SWAP *) bi_ha1_i0d2_bp0 bi_ha1_i0d2_bp1
NODE bi_ha1_i0d2_r1(PUSH bi_ha1_i0d2_b bi_ha1_i0d2_bp1) bi_ha1_d0_t *
NODE bi_ha1_i0d2_r0(PUSH bi_ha1_i0d2_b bi_ha1_i0d2_bp0) bi_ha1_i0d2_r1 *
NODE bi_ha1_i0d2_f(SWAP bi_ha1_i0d2_b) bi_ha1_d0_t *
NODE bi_ha1_i1d2_bp0(SWAP *) bi_cr2_r0 *
NODE bi_ha1_i1d2_bp1(SWAP *) bi_cr2_f *
NODE bi_ha1_i1d2_b(SWAP *) bi_ha1_i1d2_bp0 bi_ha1_i1d2_bp1
NODE bi_ha1_i1d2_r1(PUSH bi_ha1_i1d2_b bi_ha1_i1d2_bp1) bi_ha1_d1_t *
NODE bi_ha1_i1d2_r0(PUSH bi_ha1_i1d2_b bi_ha1_i1d2_bp0) bi_ha1_i1d2_r1 *
NODE bi_ha1_i1d2_f(SWAP bi_ha1_i1d2_b) bi_ha1_d1_t *
NODE bi_ha1_d0_s(SWAP *) x_bd1_b *
NODE bi_ha1_d0_t(SWAP *) bi_ha1_d1_s *
NODE bi_ha1_d1_s(SWAP *) bi_cr1_b *
NODE bi_ha1_d1_t(SWAP *) bi_ha1_XOR_s *
NODE bi_ha1_s(SWAP *) bi_ha1_d0_s *
NODE bi_ha1_XOR_s(SWAP *) bi_ha1_i0d1_b *
NODE bi_ha1_XOR__r2(SWAP bi_ha1_i1d1_bp0) bi_ha1_i1d1_b *
NODE bi_ha1_XOR__r1(SWAP bi_ha1_i1d1_bp1) bi_ha1_XOR__r2 *
NODE bi_ha1_XOR_t(SWAP *) bi_ha1_AND_s *
NODE bi_ha1_AND_s(SWAP *) bi_ha1_i0d2_b *
NODE bi_ha1_AND_t(SWAP *) bi_ha1_t *
NODE bi_ha1_t(SWAP *) bi_ha2_s *
NODE bi_ha2_i0d1_bp0(SWAP *) bi_ha2_i1d1_b *
NODE bi_ha2_i0d1_bp1(SWAP *) bi_ha2_XOR__r1 *
NODE bi_ha2_i0d1_b(SWAP *) bi_ha2_i0d1_bp0 bi_ha2_i0d1_bp1
NODE bi_ha2_i0d1_r1(PUSH bi_ha2_i0d1_b bi_ha2_i0d1_bp1) bi_ha2_i0d2_r0 *
NODE bi_ha2_i0d1_r0(PUSH bi_ha2_i0d1_b bi_ha2_i0d1_bp0) bi_ha2_i0d1_r1 *
NODE bi_ha2_i0d1_f(SWAP bi_ha2_i0d1_b) bi_ha2_i0d2_f *
NODE bi_ha2_i1d1_bp0(SWAP *) y_bd2_r0 y_bd2_f
NODE bi_ha2_i1d1_bp1(SWAP *) y_bd2_f y_bd2_r0
NODE bi_ha2_i1d1_b(SWAP *) bi_ha2_i1d1_bp0 bi_ha2_i1d1_bp1
NODE bi_ha2_i1d1_r1(PUSH bi_ha2_i1d1_b bi_ha2_i1d1_bp1) bi_ha2_i1d2_r0 *
NODE bi_ha2_i1d1_r0(PUSH bi_ha2_i1d1_b bi_ha2_i1d1_bp0) bi_ha2_i1d1_r1 *
NODE bi_ha2_i1d1_f(SWAP bi_ha2_i1d1_b) bi_ha2_i1d2_f *
NODE bi_ha2_i0d2_bp0(SWAP *) bi_cr3_r0 *
NODE bi_ha2_i0d2_bp1(SWAP *) bi_ha2_i1d2_b *
NODE bi_ha2_i0d2_b(SWAP *) bi_ha2_i0d2_bp0 bi_ha2_i0d2_bp1
NODE bi_ha2_i0d2_r1(PUSH bi_ha2_i0d2_b bi_ha2_i0d2_bp1) bi_ha2_d0_t *
NODE bi_ha2_i0d2_r0(PUSH bi_ha2_i0d2_b bi_ha2_i0d2_bp0) bi_ha2_i0d2_r1 *
NODE bi_ha2_i0d2_f(SWAP bi_ha2_i0d2_b) bi_ha2_d0_t *
NODE bi_ha2_i1d2_bp0(SWAP *) bi_cr3_r0 *
NODE bi_ha2_i1d2_bp1(SWAP *) bi_cr3_f *
NODE bi_ha2_i1d2_b(SWAP *) bi_ha2_i1d2_bp0 bi_ha2_i1d2_bp1
NODE bi_ha2_i1d2_r1(PUSH bi_ha2_i1d2_b bi_ha2_i1d2_bp1) bi_ha2_d1_t *
NODE bi_ha2_i1d2_r0(PUSH bi_ha2_i1d2_b bi_ha2_i1d2_bp0) bi_ha2_i1d2_r1 *
NODE bi_ha2_i1d2_f(SWAP bi_ha2_i1d2_b) bi_ha2_d1_t *
NODE bi_ha2_d0_s(SWAP *) x_bd2_b *
NODE bi_ha2_d0_t(SWAP *) bi_ha2_d1_s *
NODE bi_ha2_d1_s(SWAP *) bi_cr2_b *
NODE bi_ha2_d1_t(SWAP *) bi_ha2_XOR_s *
NODE bi_ha2_s(SWAP *) bi_ha2_d0_s *
NODE bi_ha2_XOR_s(SWAP *) bi_ha2_i0d1_b *
NODE bi_ha2_XOR__r2(SWAP bi_ha2_i1d1_bp0) bi_ha2_i1d1_b *
NODE bi_ha2_XOR__r1(SWAP bi_ha2_i1d1_bp1) bi_ha2_XOR__r2 *
NODE bi_ha2_XOR_t(SWAP *) bi_ha2_AND_s *
NODE bi_ha2_AND_s(SWAP *) bi_ha2_i0d2_b *
NODE bi_ha2_AND_t(SWAP *) bi_ha2_t *
NODE bi_ha2_t(SWAP *) bi_ha3_s *
NODE bi_ha3_i0d1_bp0(SWAP *) bi_ha3_i1d1_b *
NODE bi_ha3_i0d1_bp1(SWAP *) bi_ha3_XOR__r1 *
NODE bi_ha3_i0d1_b(SWAP *) bi_ha3_i0d1_bp0 bi_ha3_i0d1_bp1
NODE bi_ha3_i0d1_r1(PUSH bi_ha3_i0d1_b bi_ha3_i0d1_bp1) bi_ha3_i0d2_r0 *
NODE bi_ha3_i0d1_r0(PUSH bi_ha3_i0d1_b bi_ha3_i0d1_bp0) bi_ha3_i0d1_r1 *
NODE bi_ha3_i0d1_f(SWAP bi_ha3_i0d1_b) bi_ha3_i0d2_f *
NODE bi_ha3_i1d1_bp0(SWAP *) y_bd3_r0 y_bd3_f
NODE bi_ha3_i1d1_bp1(SWAP *) y_bd3_f y_bd3_r0
NODE bi_ha3_i1d1_b(SWAP *) bi_ha3_i1d1_bp0 bi_ha3_i1d1_bp1
NODE bi_ha3_i1d1_r1(PUSH bi_ha3_i1d1_b bi_ha3_i1d1_bp1) bi_ha3_i1d2_r0 *
NODE bi_ha3_i1d1_r0(PUSH bi_ha3_i1d1_b bi_ha3_i1d1_bp0) bi_ha3_i1d1_r1 *
NODE bi_ha3_i1d1_f(SWAP bi_ha3_i1d1_b) bi_ha3_i1d2_f *
NODE bi_ha3_i0d2_bp0(SWAP *) bi_cr4_r0 *
NODE bi_ha3_i0d2_bp1(SWAP *) bi_ha3_i1d2_b *
NODE bi_ha3_i0d2_b(SWAP *) bi_ha3_i0d2_bp0 bi_ha3_i0d2_bp1
NODE bi_ha3_i0d2_r1(PUSH bi_ha3_i0d2_b bi_ha3_i0d2_bp1) bi_ha3_d0_t *
NODE bi_ha3_i0d2_r0(PUSH bi_ha3_i0d2_b bi_ha3_i0d2_bp0) bi_ha3_i0d2_r1 *
NODE bi_ha3_i0d2_f(SWAP bi_ha3_i0d2_b) bi_ha3_d0_t *
NODE bi_ha3_i1d2_bp0(SWAP *) bi_cr4_r0 *
NODE bi_ha3_i1d2_bp1(SWAP *) bi_cr4_f *
NODE bi_ha3_i1d2_b(SWAP *) bi_ha3_i1d2_bp0 bi_ha3_i1d2_bp1
NODE bi_ha3_i1d2_r1(PUSH bi_ha3_i1d2_b bi_ha3_i1d2_bp1) bi_ha3_d1_t *
NODE bi_ha3_i1d2_r0(PUSH bi_ha3_i1d2_b bi_ha3_i1d2_bp0) bi_ha3_i1d2_r1 *
NODE bi_ha3_i1d2_f(SWAP bi_ha3_i1d2_b) bi_ha3_d1_t *
NODE bi_ha3_d0_s(SWAP *) x_bd3_b *
NODE bi_ha3_d0_t(SWAP *) bi_ha3_d1_s *
NODE bi_ha3_d1_s(SWAP *) bi_cr3_b *
NODE bi_ha3_d1_t(SWAP *) bi_ha3_XOR_s *
NODE bi_ha3_s(SWAP *) bi_ha3_d0_s *
NODE bi_ha3_XOR_s(SWAP *) bi_ha3_i0d1_b *
NODE bi_ha3_XOR__r2(SWAP bi_ha3_i1d1_bp0) bi_ha3_i1d1_b *
NODE bi_ha3_XOR__r1(SWAP bi_ha3_i1d1_bp1) bi_ha3_XOR__r2 *
NODE bi_ha3_XOR_t(SWAP *) bi_ha3_AND_s *
NODE bi_ha3_AND_s(SWAP *) bi_ha3_i0d2_b *
NODE bi_ha3_AND_t(SWAP *) bi_ha3_t *
NODE bi_ha3_t(SWAP *) bi_ha4_s *
NODE bi_ha4_i0d1_bp0(SWAP *) bi_ha4_i1d1_b *
NODE bi_ha4_i0d1_bp1(SWAP *) bi_ha4_XOR__r1 *
NODE bi_ha4_i0d1_b(SWAP *) bi_ha4_i0d1_bp0 bi_ha4_i0d1_bp1
NODE bi_ha4_i0d1_r1(PUSH bi_ha4_i0d1_b bi_ha4_i0d1_bp1) bi_ha4_i0d2_r0 *
NODE bi_ha4_i0d1_r0(PUSH bi_ha4_i0d1_b bi_ha4_i0d1_bp0) bi_ha4_i0d1_r1 *
NODE bi_ha4_i0d1_f(SWAP bi_ha4_i0d1_b) bi_ha4_i0d2_f *
NODE bi_ha4_i1d1_bp0(SWAP *) y_bd4_r0 y_bd4_f
NODE bi_ha4_i1d1_bp1(SWAP *) y_bd4_f y_bd4_r0
NODE bi_ha4_i1d1_b(SWAP *) bi_ha4_i1d1_bp0 bi_ha4_i1d1_bp1
NODE bi_ha4_i1d1_r1(PUSH bi_ha4_i1d1_b bi_ha4_i1d1_bp1) bi_ha4_i1d2_r0 *
NODE bi_ha4_i1d1_r0(PUSH bi_ha4_i1d1_b bi_ha4_i1d1_bp0) bi_ha4_i1d1_r1 *
NODE bi_ha4_i1d1_f(SWAP bi_ha4_i1d1_b) bi_ha4_i1d2_f *
NODE bi_ha4_i0d2_bp0(SWAP *) bi_cr5_r0 *
NODE bi_ha4_i0d2_bp1(SWAP *) bi_ha4_i1d2_b *
NODE bi_ha4_i0d2_b(SWAP *) bi_ha4_i0d2_bp0 bi_ha4_i0d2_bp1
NODE bi_ha4_i0d2_r1(PUSH bi_ha4_i0d2_b bi_ha4_i0d2_bp1) bi_ha4_d0_t *
NODE bi_ha4_i0d2_r0(PUSH bi_ha4_i0d2_b bi_ha4_i0d2_bp0) bi_ha4_i0d2_r1 *
NODE bi_ha4_i0d2_f(SWAP bi_ha4_i0d2_b) bi_ha4_d0_t *
NODE bi_ha4_i1d2_bp0(SWAP *) bi_cr5_r0 *
NODE bi_ha4_i1d2_bp1(SWAP *) bi_cr5_f *
NODE bi_ha4_i1d2_b(SWAP *) bi_ha4_i1d2_bp0 bi_ha4_i1d2_bp1
NODE bi_ha4_i1d2_r1(PUSH bi_ha4_i1d2_b bi_ha4_i1d2_bp1) bi_ha4_d1_t *
NODE bi_ha4_i1d2_r0(PUSH bi_ha4_i1d2_b bi_ha4_i1d2_bp0) bi_ha4_i1d2_r1 *
NODE bi_ha4_i1d2_f(SWAP bi_ha4_i1d2_b) bi_ha4_d1_t *
NODE bi_ha4_d0_s(SWAP *) x_bd4_b *
NODE bi_ha4_d0_t(SWAP *) bi_ha4_d1_s *
NODE bi_ha4_d1_s(SWAP *) bi_cr4_b *
NODE bi_ha4_d1_t(SWAP *) bi_ha4_XOR_s *
NODE bi_ha4_s(SWAP *) bi_ha4_d0_s *
NODE bi_ha4_XOR_s(SWAP *) bi_ha4_i0d1_b *
NODE bi_ha4_XOR__r2(SWAP bi_ha4_i1d1_bp0) bi_ha4_i1d1_b *
NODE bi_ha4_XOR__r1(SWAP bi_ha4_i1d1_bp1) bi_ha4_XOR__r2 *
NODE bi_ha4_XOR_t(SWAP *) bi_ha4_AND_s *
NODE bi_ha4_AND_s(SWAP *) bi_ha4_i0d2_b *
NODE bi_ha4_AND_t(SWAP *) bi_ha4_t *
NODE bi_ha4_t(SWAP *) bi_ha5_s *
NODE bi_ha5_i0d1_bp0(SWAP *) bi_ha5_i1d1_b *
NODE bi_ha5_i0d1_bp1(SWAP *) bi_ha5_XOR__r1 *
NODE bi_ha5_i0d1_b(SWAP *) bi_ha5_i0d1_bp0 bi_ha5_i0d1_bp1
NODE bi_ha5_i0d1_r1(PUSH bi_ha5_i0d1_b bi_ha5_i0d1_bp1) bi_ha5_i0d2_r0 *
NODE bi_ha5_i0d1_r0(PUSH bi_ha5_i0d1_b bi_ha5_i0d1_bp0) bi_ha5_i0d1_r1 *
NODE bi_ha5_i0d1_f(SWAP bi_ha5_i0d1_b) bi_ha5_i0d2_f *
NODE bi_ha5_i1d1_bp0(SWAP *) y_bd5_r0 y_bd5_f
NODE bi_ha5_i1d1_bp1(SWAP *) y_bd5_f y_bd5_r0
NODE bi_ha5_i1d1_b(SWAP *) bi_ha5_i1d1_bp0 bi_ha5_i1d1_bp1
NODE bi_ha5_i1d1_r1(PUSH bi_ha5_i1d1_b bi_ha5_i1d1_bp1) bi_ha5_i1d2_r0 *
NODE bi_ha5_i1d1_r0(PUSH bi_ha5_i1d1_b bi_ha5_i1d1_bp0) bi_ha5_i1d1_r1 *
NODE bi_ha5_i1d1_f(SWAP bi_ha5_i1d1_b) bi_ha5_i1d2_f *
NODE bi_ha5_i0d2_bp0(SWAP *) bi_cr6_r0 *
NODE bi_ha5_i0d2_bp1(SWAP *) bi_ha5_i1d2_b *
NODE bi_ha5_i0d2_b(SWAP *) bi_ha5_i0d2_bp0 bi_ha5_i0d2_bp1
NODE bi_ha5_i0d2_r1(PUSH bi_ha5_i0d2_b bi_ha5_i0d2_bp1) bi_ha5_d0_t *
NODE bi_ha5_i0d2_r0(PUSH bi_ha5_i0d2_b bi_ha5_i0d2_bp0) bi_ha5_i0d2_r1 *
NODE bi_ha5_i0d2_f(SWAP bi_ha5_i0d2_b) bi_ha5_d0_t *
NODE bi_ha5_i1d2_bp0(SWAP *) bi_cr6_r0 *
NODE bi_ha5_i1d2_bp1(SWAP *) bi_cr6_f *
NODE bi_ha5_i1d2_b(SWAP *) bi_ha5_i1d2_bp0 bi_ha5_i1d2_bp1
NODE bi_ha5_i1d2_r1(PUSH bi_ha5_i1d2_b bi_ha5_i1d2_bp1) bi_ha5_d1_t *
NODE bi_ha5_i1d2_r0(PUSH bi_ha5_i1d2_b bi_ha5_i1d2_bp0) bi_ha5_i1d2_r1 *
NODE bi_ha5_i1d2_f(SWAP bi_ha5_i1d2_b) bi_ha5_d1_t *
NODE bi_ha5_d0_s(SWAP *) x_bd5_b *
NODE bi_ha5_d0_t(SWAP *) bi_ha5_d1_s *
NODE bi_ha5_d1_s(SWAP *) bi_cr5_b *
NODE bi_ha5_d1_t(SWAP *) bi_ha5_XOR_s *
NODE bi_ha5_s(SWAP *) bi_ha5_d0_s *
NODE bi_ha5_XOR_s(SWAP *) bi_ha5_i0d1_b *
NODE bi_ha5_XOR__r2(SWAP bi_ha5_i1d1_bp0) bi_ha5_i1d1_b *
NODE bi_ha5_XOR__r1(SWAP bi_ha5_i1d1_bp1) bi_ha5_XOR__r2 *
NODE bi_ha5_XOR_t(SWAP *) bi_ha5_AND_s *
NODE bi_ha5_AND_s(SWAP *) bi_ha5_i0d2_b *
NODE bi_ha5_AND_t(SWAP *) bi_ha5_t *
NODE bi_ha5_t(SWAP *) bi_ha6_s *
NODE bi_ha6_i0d1_bp0(SWAP *) bi_ha6_i1d1_b *
NODE bi_ha6_i0d1_bp1(SWAP *) bi_ha6_XOR__r1 *
NODE bi_ha6_i0d1_b(SWAP *) bi_ha6_i0d1_bp0 bi_ha6_i0d1_bp1
NODE bi_ha6_i0d1_r1(PUSH bi_ha6_i0d1_b bi_ha6_i0d1_bp1) bi_ha6_i0d2_r0 *
NODE bi_ha6_i0d1_r0(PUSH bi_ha6_i0d1_b bi_ha6_i0d1_bp0) bi_ha6_i0d1_r1 *
NODE bi_ha6_i0d1_f(SWAP bi_ha6_i0d1_b) bi_ha6_i0d2_f *
NODE bi_ha6_i1d1_bp0(SWAP *) y_bd6_r0 y_bd6_f
NODE bi_ha6_i1d1_bp1(SWAP *) y_bd6_f y_bd6_r0
NODE bi_ha6_i1d1_b(SWAP *) bi_ha6_i1d1_bp0 bi_ha6_i1d1_bp1
NODE bi_ha6_i1d1_r1(PUSH bi_ha6_i1d1_b bi_ha6_i1d1_bp1) bi_ha6_i1d2_r0 *
NODE bi_ha6_i1d1_r0(PUSH bi_ha6_i1d1_b bi_ha6_i1d1_bp0) bi_ha6_i1d1_r1 *
NODE bi_ha6_i1d1_f(SWAP bi_ha6_i1d1_b) bi_ha6_i1d2_f *
NODE bi_ha6_i0d2_bp0(SWAP *) bi_cr7_r0 *
NODE bi_ha6_i0d2_bp1(SWAP *) bi_ha6_i1d2_b *
NODE bi_ha6_i0d2_b(SWAP *) bi_ha6_i0d2_bp0 bi_ha6_i0d2_bp1
NODE bi_ha6_i0d2_r1(PUSH bi_ha6_i0d2_b bi_ha6_i0d2_bp1) bi_ha6_d0_t *
NODE bi_ha6_i0d2_r0(PUSH bi_ha6_i0d2_b bi_ha6_i0d2_bp0) bi_ha6_i0d2_r1 *
NODE bi_ha6_i0d2_f(SWAP bi_ha6_i0d2_b) bi_ha6_d0_t *
NODE bi_ha6_i1d2_bp0(SWAP *) bi_cr7_r0 *
NODE bi_ha6_i1d2_bp1(SWAP *) bi_cr7_f *
NODE bi_ha6_i1d2_b(SWAP *) bi_ha6_i1d2_bp0 bi_ha6_i1d2_bp1
NODE bi_ha6_i1d2_r1(PUSH bi_ha6_i1d2_b bi_ha6_i1d2_bp1) bi_ha6_d1_t *
NODE bi_ha6_i1d2_r0(PUSH bi_ha6_i1d2_b bi_ha6_i1d2_bp0) bi_ha6_i1d2_r1 *
NODE bi_ha6_i1d2_f(SWAP bi_ha6_i1d2_b) bi_ha6_d1_t *
NODE bi_ha6_d0_s(SWAP *) x_bd6_b *
NODE bi_ha6_d0_t(SWAP *) bi_ha6_d1_s *
NODE bi_ha6_d1_s(SWAP *) bi_cr6_b *
NODE bi_ha6_d1_t(SWAP *) bi_ha6_XOR_s *
NODE bi_ha6_s(SWAP *) bi_ha6_d0_s *
NODE bi_ha6_XOR_s(SWAP *) bi_ha6_i0d1_b *
NODE bi_ha6_XOR__r2(SWAP bi_ha6_i1d1_bp0) bi_ha6_i1d1_b *
NODE bi_ha6_XOR__r1(SWAP bi_ha6_i1d1_bp1) bi_ha6_XOR__r2 *
NODE bi_ha6_XOR_t(SWAP *) bi_ha6_AND_s *
NODE bi_ha6_AND_s(SWAP *) bi_ha6_i0d2_b *
NODE bi_ha6_AND_t(SWAP *) bi_ha6_t *
NODE bi_ha6_t(SWAP *) bi_ha7_s *
NODE bi_ha7_i0d1_bp0(SWAP *) bi_ha7_i1d1_b *
NODE bi_ha7_i0d1_bp1(SWAP *) bi_ha7_XOR__r1 *
NODE bi_ha7_i0d1_b(SWAP *) bi_ha7_i0d1_bp0 bi_ha7_i0d1_bp1
NODE bi_ha7_i0d1_r1(PUSH bi_ha7_i0d1_b bi_ha7_i0d1_bp1) bi_ha7_i0d2_r0 *
NODE bi_ha7_i0d1_r0(PUSH bi_ha7_i0d1_b bi_ha7_i0d1_bp0) bi_ha7_i0d1_r1 *
NODE bi_ha7_i0d1_f(SWAP bi_ha7_i0d1_b) bi_ha7_i0d2_f *
NODE bi_ha7_i1d1_bp0(SWAP *) y_bd7_r0 y_bd7_f
NODE bi_ha7_i1d1_bp1(SWAP *) y_bd7_f y_bd7_r0
NODE bi_ha7_i1d1_b(SWAP *) bi_ha7_i1d1_bp0 bi_ha7_i1d1_bp1
NODE bi_ha7_i1d1_r1(PUSH bi_ha7_i1d1_b bi_ha7_i1d1_bp1) bi_ha7_i1d2_r0 *
NODE bi_ha7_i1d1_r0(PUSH bi_ha7_i1d1_b bi_ha7_i1d1_bp0) bi_ha7_i1d1_r1 *
NODE bi_ha7_i1d1_f(SWAP bi_ha7_i1d1_b) bi_ha7_i1d2_f *
NODE bi_ha7_i0d2_bp0(SWAP *) bi_cr8_r0 *
NODE bi_ha7_i0d2_bp1(SWAP *) bi_ha7_i1d2_b *
NODE bi_ha7_i0d2_b(SWAP *) bi_ha7_i0d2_bp0 bi_ha7_i0d2_bp1
NODE bi_ha7_i0d2_r1(PUSH bi_ha7_i0d2_b bi_ha7_i0d2_bp1) bi_ha7_d0_t *
NODE bi_ha7_i0d2_r0(PUSH bi_ha7_i0d2_b bi_ha7_i0d2_bp0) bi_ha7_i0d2_r1 *
NODE bi_ha7_i0d2_f(SWAP bi_ha7_i0d2_b) bi_ha7_d0_t *
NODE bi_ha7_i1d2_bp0(SWAP *) bi_cr8_r0 *
NODE bi_ha7_i1d2_bp1(SWAP *) bi_cr8_f *
NODE bi_ha7_i1d2_b(SWAP *) bi_ha7_i1d2_bp0 bi_ha7_i1d2_bp1
NODE bi_ha7_i1d2_r1(PUSH bi_ha7_i1d2_b bi_ha7_i1d2_bp1) bi_ha7_d1_t *
NODE bi_ha7_i1d2_r0(PUSH bi_ha7_i1d2_b bi_ha7_i1d2_bp0) bi_ha7_i1d2_r1 *
NODE bi_ha7_i1d2_f(SWAP bi_ha7_i1d2_b) bi_ha7_d1_t *
NODE bi_ha7_d0_s(SWAP *) x_bd7_b *
NODE bi_ha7_d0_t(SWAP *) bi_ha7_d1_s *
NODE bi_ha7_d1_s(SWAP *) bi_cr7_b *
NODE bi_ha7_d1_t(SWAP *) bi_ha7_XOR_s *
NODE bi_ha7_s(SWAP *) bi_ha7_d0_s *
NODE bi_ha7_XOR_s(SWAP *) bi_ha7_i0d1_b *
NODE bi_ha7_XOR__r2(SWAP bi_ha7_i1d1_bp0) bi_ha7_i1d1_b *
NODE bi_ha7_XOR__r1(SWAP bi_ha7_i1d1_bp1) bi_ha7_XOR__r2 *
NODE bi_ha7_XOR_t(SWAP *) bi_ha7_AND_s *
NODE bi_ha7_AND_s(SWAP *) bi_ha7_i0d2_b *
NODE bi_ha7_AND_t(SWAP *) bi_ha7_t *
NODE bi_ha7_t(SWAP *) bi_t *
NODE wy_s(SWAP *) wy_wd0_s *
NODE wy_t(SWAP *) * *
NODE wy_wd0_s(SWAP *) y_bd0_b *
NODE wy_wd0_t(SWAP *) wy_wd1_s *
NODE wy_wd0_c1(PUSH O0 *) O0 *
NODE wy_wd0_c2(PUSH O0 wy_wd0_t) wy_wd0_c1 *
NODE wy_wd0_c3(PUSH O1 *) O1 *
NODE wy_wd0_c4(PUSH O1 wy_wd0_t) wy_wd0_c3 *
NODE wy_wd1_s(SWAP *) y_bd1_b *
NODE wy_wd1_t(SWAP *) wy_wd2_s *
NODE wy_wd1_c1(PUSH O0 *) O0 *
NODE wy_wd1_c2(PUSH O0 wy_wd1_t) wy_wd1_c1 *
NODE wy_wd1_c3(PUSH O1 *) O1 *
NODE wy_wd1_c4(PUSH O1 wy_wd1_t) wy_wd1_c3 *
NODE wy_wd2_s(SWAP *) y_bd2_b *
NODE wy_wd2_t(SWAP *) wy_wd3_s *
NODE wy_wd2_c1(PUSH O0 *) O0 *
NODE wy_wd2_c2(PUSH O0 wy_wd2_t) wy_wd2_c1 *
NODE wy_wd2_c3(PUSH O1 *) O1 *
NODE wy_wd2_c4(PUSH O1 wy_wd2_t) wy_wd2_c3 *
NODE wy_wd3_s(SWAP *) y_bd3_b *
NODE wy_wd3_t(SWAP *) wy_wd4_s *
NODE wy_wd3_c1(PUSH O0 *) O0 *
NODE wy_wd3_c2(PUSH O0 wy_wd3_t) wy_wd3_c1 *
NODE wy_wd3_c3(PUSH O1 *) O1 *
NODE wy_wd3_c4(PUSH O1 wy_wd3_t) wy_wd3_c3 *
NODE wy_wd4_s(SWAP *) y_bd4_b *
NODE wy_wd4_t(SWAP *) wy_wd5_s *
NODE wy_wd4_c1(PUSH O0 *) O0 *
NODE wy_wd4_c2(PUSH O0 wy_wd4_t) wy_wd4_c1 *
NODE wy_wd4_c3(PUSH O1 *) O1 *
NODE wy_wd4_c4(PUSH O1 wy_wd4_t) wy_wd4_c3 *
NODE wy_wd5_s(SWAP *) y_bd5_b *
NODE wy_wd5_t(SWAP *) wy_wd6_s *
NODE wy_wd5_c1(PUSH O0 *) O0 *
NODE wy_wd5_c2(PUSH O0 wy_wd5_t) wy_wd5_c1 *
NODE wy_wd5_c3(PUSH O1 *) O1 *
NODE wy_wd5_c4(PUSH O1 wy_wd5_t) wy_wd5_c3 *
NODE wy_wd6_s(SWAP *) y_bd6_b *
NODE wy_wd6_t(SWAP *) wy_wd7_s *
NODE wy_wd6_c1(PUSH O0 *) O0 *
NODE wy_wd6_c2(PUSH O0 wy_wd6_t) wy_wd6_c1 *
NODE wy_wd6_c3(PUSH O1 *) O1 *
NODE wy_wd6_c4(PUSH O1 wy_wd6_t) wy_wd6_c3 *
NODE wy_wd7_s(SWAP *) y_bd7_b *
NODE wy_wd7_t(SWAP *) wy_t *
NODE wy_wd7_c1(PUSH O0 *) O0 *
NODE wy_wd7_c2(PUSH O0 wy_wd7_t) wy_wd7_c1 *
NODE wy_wd7_c3(PUSH O1 *) O1 *
NODE wy_wd7_c4(PUSH O1 wy_wd7_t) wy_wd7_c3 *


END
CUR = S
INPUT = 11110000