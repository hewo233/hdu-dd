// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See VAdder.h for the primary calling header

#include "VAdder__pch.h"
#include "VAdder___024root.h"

void VAdder___024root___ico_sequent__TOP__0(VAdder___024root* vlSelf);

void VAdder___024root___eval_ico(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_ico\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if ((1ULL & vlSelfRef.__VicoTriggered.word(0U))) {
        VAdder___024root___ico_sequent__TOP__0(vlSelf);
        vlSelfRef.__Vm_traceActivity[1U] = 1U;
    }
}

VL_INLINE_OPT void VAdder___024root___ico_sequent__TOP__0(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___ico_sequent__TOP__0\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    vlSelfRef.Adder__DOT__Cout0 = (1U & (((IData)(vlSelfRef.A) 
                                          & (IData)(vlSelfRef.B)) 
                                         | (((IData)(vlSelfRef.B) 
                                             | (IData)(vlSelfRef.A)) 
                                            & (IData)(vlSelfRef.Cin))));
    vlSelfRef.Adder__DOT__Cout1 = (1U & ((((IData)(vlSelfRef.A) 
                                           & (IData)(vlSelfRef.B)) 
                                          >> 1U) | 
                                         ((((IData)(vlSelfRef.B) 
                                            | (IData)(vlSelfRef.A)) 
                                           >> 1U) & (IData)(vlSelfRef.Adder__DOT__Cout0))));
    vlSelfRef.Adder__DOT__Cout2 = (1U & ((((IData)(vlSelfRef.A) 
                                           & (IData)(vlSelfRef.B)) 
                                          >> 2U) | 
                                         ((((IData)(vlSelfRef.B) 
                                            | (IData)(vlSelfRef.A)) 
                                           >> 2U) & (IData)(vlSelfRef.Adder__DOT__Cout1))));
    vlSelfRef.Cout = (1U & ((((IData)(vlSelfRef.A) 
                              & (IData)(vlSelfRef.B)) 
                             >> 3U) | ((((IData)(vlSelfRef.B) 
                                         | (IData)(vlSelfRef.A)) 
                                        >> 3U) & (IData)(vlSelfRef.Adder__DOT__Cout2))));
    vlSelfRef.Sum = (((IData)(((((IData)(vlSelfRef.A) 
                                 ^ (IData)(vlSelfRef.B)) 
                                >> 3U) ^ (IData)(vlSelfRef.Adder__DOT__Cout2))) 
                      << 3U) | ((4U & ((0xfffffffcU 
                                        & (IData)(vlSelfRef.A)) 
                                       ^ ((0xfffffffcU 
                                           & (IData)(vlSelfRef.B)) 
                                          ^ ((IData)(vlSelfRef.Adder__DOT__Cout1) 
                                             << 2U)))) 
                                | ((2U & ((0xfffffffeU 
                                           & (IData)(vlSelfRef.A)) 
                                          ^ ((0xfffffffeU 
                                              & (IData)(vlSelfRef.B)) 
                                             ^ ((IData)(vlSelfRef.Adder__DOT__Cout0) 
                                                << 1U)))) 
                                   | (1U & ((IData)(vlSelfRef.A) 
                                            ^ ((IData)(vlSelfRef.B) 
                                               ^ (IData)(vlSelfRef.Cin)))))));
}

void VAdder___024root___eval_triggers__ico(VAdder___024root* vlSelf);

bool VAdder___024root___eval_phase__ico(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_phase__ico\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    VAdder___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelfRef.__VicoTriggered.any();
    if (__VicoExecute) {
        VAdder___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void VAdder___024root___eval_act(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_act\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
}

void VAdder___024root___eval_nba(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_nba\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
}

void VAdder___024root___eval_triggers__act(VAdder___024root* vlSelf);

bool VAdder___024root___eval_phase__act(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_phase__act\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Init
    VlTriggerVec<0> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    VAdder___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelfRef.__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelfRef.__VactTriggered, vlSelfRef.__VnbaTriggered);
        vlSelfRef.__VnbaTriggered.thisOr(vlSelfRef.__VactTriggered);
        VAdder___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool VAdder___024root___eval_phase__nba(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_phase__nba\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelfRef.__VnbaTriggered.any();
    if (__VnbaExecute) {
        VAdder___024root___eval_nba(vlSelf);
        vlSelfRef.__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void VAdder___024root___dump_triggers__ico(VAdder___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VAdder___024root___dump_triggers__nba(VAdder___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void VAdder___024root___dump_triggers__act(VAdder___024root* vlSelf);
#endif  // VL_DEBUG

void VAdder___024root___eval(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelfRef.__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY((0x64U < __VicoIterCount))) {
#ifdef VL_DEBUG
            VAdder___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("/home/hewo/CS/hdu/RTLS/adder/vsrc/adder.v", 12, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (VAdder___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelfRef.__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            VAdder___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("/home/hewo/CS/hdu/RTLS/adder/vsrc/adder.v", 12, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelfRef.__VactIterCount = 0U;
        vlSelfRef.__VactContinue = 1U;
        while (vlSelfRef.__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelfRef.__VactIterCount))) {
#ifdef VL_DEBUG
                VAdder___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("/home/hewo/CS/hdu/RTLS/adder/vsrc/adder.v", 12, "", "Active region did not converge.");
            }
            vlSelfRef.__VactIterCount = ((IData)(1U) 
                                         + vlSelfRef.__VactIterCount);
            vlSelfRef.__VactContinue = 0U;
            if (VAdder___024root___eval_phase__act(vlSelf)) {
                vlSelfRef.__VactContinue = 1U;
            }
        }
        if (VAdder___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void VAdder___024root___eval_debug_assertions(VAdder___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root___eval_debug_assertions\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    if (VL_UNLIKELY((vlSelfRef.A & 0xf0U))) {
        Verilated::overWidthError("A");}
    if (VL_UNLIKELY((vlSelfRef.B & 0xf0U))) {
        Verilated::overWidthError("B");}
    if (VL_UNLIKELY((vlSelfRef.Cin & 0xfeU))) {
        Verilated::overWidthError("Cin");}
}
#endif  // VL_DEBUG
