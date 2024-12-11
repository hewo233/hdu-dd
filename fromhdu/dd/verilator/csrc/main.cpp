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
    for (int i = 0; i < 4; ++i) {
        top->S = i;
        top->A = 0b0001;
        top->B = 0b0010;
        top->C = 0b0100;
        top->D = 0b1000;
        top->eval();
        tfp->dump(sim_time++);
        printf("top->Y = %d\n", top->Y);
    }
    

    std::cout << "PASS" << std::endl;
    tfp->close();
    return 0;
}