#include "../build/obj_dir/Vtop.h"
#include <cassert>
#include <cstdint>
#include <cstdio>
#include <iostream>
#include "verilated_vcd_c.h"

int ans[50] = {
    0b11111110,
    0b11111101,
    0b11111011,
    0b11110111,
    0b11101111,
    0b11011111,
    0b10111111,
    0b01111111,
};

int main() {

    Verilated::traceEverOn(true);
    VerilatedVcdC* tfp = new VerilatedVcdC;
    int sim_time = 0;

    TOP_NAME* top = new TOP_NAME;

    top->trace(tfp, 99);
    tfp->open("./build/wave.vcd");

    // printf("begin\n");

    top->G1 = 1;
    top->not_G2 = 0;
    top->not_G3 = 0;
    top->A = 0;
    top->B = 0;
    top->C = 0;

    // Simulate for a few cycles
    for (int i = 0; i < 8; ++i) {
        top->A = i & 1;
        top->B = (i >> 1) & 1;
        top->C = (i >> 2) & 1;
        top->eval();
        tfp->dump(sim_time++);
        assert(top->not_Y == ans[i]);
    }

    std::cout << "PASS" << std::endl;
    tfp->close();
    return 0;
}