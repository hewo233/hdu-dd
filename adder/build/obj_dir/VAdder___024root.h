// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See VAdder.h for the primary calling header

#ifndef VERILATED_VADDER___024ROOT_H_
#define VERILATED_VADDER___024ROOT_H_  // guard

#include "verilated.h"


class VAdder__Syms;

class alignas(VL_CACHE_LINE_BYTES) VAdder___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(A,3,0);
    VL_IN8(B,3,0);
    VL_IN8(Cin,0,0);
    VL_OUT8(Sum,3,0);
    VL_OUT8(Cout,0,0);
    CData/*0:0*/ Adder__DOT__Cout0;
    CData/*0:0*/ Adder__DOT__Cout1;
    CData/*0:0*/ Adder__DOT__Cout2;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __VicoFirstIteration;
    CData/*0:0*/ __VactContinue;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<0> __VactTriggered;
    VlTriggerVec<0> __VnbaTriggered;

    // INTERNAL VARIABLES
    VAdder__Syms* const vlSymsp;

    // CONSTRUCTORS
    VAdder___024root(VAdder__Syms* symsp, const char* v__name);
    ~VAdder___024root();
    VL_UNCOPYABLE(VAdder___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
