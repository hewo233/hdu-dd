// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VAdder__Syms.h"


void VAdder___024root__trace_chg_0_sub_0(VAdder___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void VAdder___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root__trace_chg_0\n"); );
    // Init
    VAdder___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VAdder___024root*>(voidSelf);
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    VAdder___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void VAdder___024root__trace_chg_0_sub_0(VAdder___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root__trace_chg_0_sub_0\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelfRef.__Vm_traceActivity[1U])) {
        bufp->chgBit(oldp+0,(vlSelfRef.Adder__DOT__Cout0));
        bufp->chgBit(oldp+1,(vlSelfRef.Adder__DOT__Cout1));
        bufp->chgBit(oldp+2,(vlSelfRef.Adder__DOT__Cout2));
    }
    bufp->chgCData(oldp+3,(vlSelfRef.A),4);
    bufp->chgCData(oldp+4,(vlSelfRef.B),4);
    bufp->chgBit(oldp+5,(vlSelfRef.Cin));
    bufp->chgCData(oldp+6,(vlSelfRef.Sum),4);
    bufp->chgBit(oldp+7,(vlSelfRef.Cout));
    bufp->chgBit(oldp+8,((1U & (IData)(vlSelfRef.A))));
    bufp->chgBit(oldp+9,((1U & (IData)(vlSelfRef.B))));
    bufp->chgBit(oldp+10,((1U & ((IData)(vlSelfRef.A) 
                                 ^ ((IData)(vlSelfRef.B) 
                                    ^ (IData)(vlSelfRef.Cin))))));
    bufp->chgBit(oldp+11,((1U & ((IData)(vlSelfRef.A) 
                                 >> 1U))));
    bufp->chgBit(oldp+12,((1U & ((IData)(vlSelfRef.B) 
                                 >> 1U))));
    bufp->chgBit(oldp+13,((1U & (((IData)(vlSelfRef.A) 
                                  >> 1U) ^ (((IData)(vlSelfRef.B) 
                                             >> 1U) 
                                            ^ (IData)(vlSelfRef.Adder__DOT__Cout0))))));
    bufp->chgBit(oldp+14,((1U & ((IData)(vlSelfRef.A) 
                                 >> 2U))));
    bufp->chgBit(oldp+15,((1U & ((IData)(vlSelfRef.B) 
                                 >> 2U))));
    bufp->chgBit(oldp+16,((1U & (((IData)(vlSelfRef.A) 
                                  >> 2U) ^ (((IData)(vlSelfRef.B) 
                                             >> 2U) 
                                            ^ (IData)(vlSelfRef.Adder__DOT__Cout1))))));
    bufp->chgBit(oldp+17,((1U & ((IData)(vlSelfRef.A) 
                                 >> 3U))));
    bufp->chgBit(oldp+18,((1U & ((IData)(vlSelfRef.B) 
                                 >> 3U))));
    bufp->chgBit(oldp+19,((IData)(((((IData)(vlSelfRef.A) 
                                     ^ (IData)(vlSelfRef.B)) 
                                    >> 3U) ^ (IData)(vlSelfRef.Adder__DOT__Cout2)))));
}

void VAdder___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root__trace_cleanup\n"); );
    // Init
    VAdder___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VAdder___024root*>(voidSelf);
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
