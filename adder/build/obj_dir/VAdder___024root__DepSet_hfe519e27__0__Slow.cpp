// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VAdder.h for the primary calling header

#include "VAdder__pch.h"
#include "VAdder___024root.h"

VL_ATTR_COLD void VAdder___024root___eval_static(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_static\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void VAdder___024root___eval_initial(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_initial\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
}

VL_ATTR_COLD void VAdder___024root___eval_final(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_final\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VAdder___024root___dump_triggers__stl(VAdder___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool VAdder___024root___eval_phase__stl(VAdder___024root* vlSelf);

VL_ATTR_COLD void VAdder___024root___eval_settle(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_settle\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelfRef.__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            VAdder___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("/home/hewo/CS/hdu/RTLS/adder/vsrc/adder.v", 12, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (VAdder___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelfRef.__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VAdder___024root___dump_triggers__stl(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___dump_triggers__stl\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

void VAdder___024root___ico_sequent__TOP__0(VAdder___024root* vlSelf);

VL_ATTR_COLD void VAdder___024root___eval_stl(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_stl\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VstlTriggered.word(0U))) {
        VAdder___024root___ico_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[1U] = 1U;
        vlSelfRef.__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void VAdder___024root___eval_triggers__stl(VAdder___024root* vlSelf);

VL_ATTR_COLD bool VAdder___024root___eval_phase__stl(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_phase__stl\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    VAdder___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelfRef.__VstlTriggered.any();
    if (__VstlExecute) {
        VAdder___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VAdder___024root___dump_triggers__ico(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___dump_triggers__ico\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VicoTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VAdder___024root___dump_triggers__act(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___dump_triggers__act\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void VAdder___024root___dump_triggers__nba(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___dump_triggers__nba\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1U & (~ vlSelfRef.__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void VAdder___024root___ctor_var_reset(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___ctor_var_reset\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelf->A = 0;
    vlSelf->B = 0;
    vlSelf->Cin = 0;
    vlSelf->Sum = 0;
    vlSelf->Cout = 0;
    vlSelf->Adder__DOT__Cout0 = 0;
    vlSelf->Adder__DOT__Cout1 = 0;
    vlSelf->Adder__DOT__Cout2 = 0;
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
