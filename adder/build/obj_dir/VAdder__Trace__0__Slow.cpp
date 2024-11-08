// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "VAdder__Syms.h"


VL_ATTR_COLD void VAdder___024root__trace_init_sub__TOP__0(VAdder___024root* vlSelf, VerilatedVcd* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root__trace_init_sub__TOP__0\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBus(c+4,0,"A",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+5,0,"B",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+6,0,"Cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+7,0,"Sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+8,0,"Cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("Adder", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+4,0,"A",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBus(c+5,0,"B",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+6,0,"Cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+7,0,"Sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 3,0);
    tracep->declBit(c+8,0,"Cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"Cout0",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"Cout1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+3,0,"Cout2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("FA0", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+9,0,"A",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+10,0,"B",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+6,0,"Cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+11,0,"Sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"Cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("FA1", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+12,0,"A",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+13,0,"B",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+1,0,"Cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+14,0,"Sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"Cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("FA2", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+15,0,"A",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+16,0,"B",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"Cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+17,0,"Sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+3,0,"Cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->pushPrefix("FA3", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBit(c+18,0,"A",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+19,0,"B",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+3,0,"Cin",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+20,0,"Sum",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+8,0,"Cout",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
    tracep->popPrefix();
}

VL_ATTR_COLD void VAdder___024root__trace_init_top(VAdder___024root* vlSelf, VerilatedVcd* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root__trace_init_top\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    VAdder___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void VAdder___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void VAdder___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void VAdder___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void VAdder___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void VAdder___024root__trace_register(VAdder___024root* vlSelf, VerilatedVcd* tracep) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root__trace_register\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Body
    tracep->addConstCb(&VAdder___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&VAdder___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&VAdder___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&VAdder___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void VAdder___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root__trace_const_0\n"); );
    // Init
    VAdder___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VAdder___024root*>(voidSelf);
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
}

VL_ATTR_COLD void VAdder___024root__trace_full_0_sub_0(VAdder___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void VAdder___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root__trace_full_0\n"); );
    // Init
    VAdder___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VAdder___024root*>(voidSelf);
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    VAdder___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void VAdder___024root__trace_full_0_sub_0(VAdder___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    (void)vlSelf;  // Prevent unused variable warning
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    VAdder___024root__trace_full_0_sub_0\n"); );
    auto &vlSelfRef = std::ref(*vlSelf).get();
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullBit(oldp+1,(vlSelfRef.Adder__DOT__Cout0));
    bufp->fullBit(oldp+2,(vlSelfRef.Adder__DOT__Cout1));
    bufp->fullBit(oldp+3,(vlSelfRef.Adder__DOT__Cout2));
    bufp->fullCData(oldp+4,(vlSelfRef.A),4);
    bufp->fullCData(oldp+5,(vlSelfRef.B),4);
    bufp->fullBit(oldp+6,(vlSelfRef.Cin));
    bufp->fullCData(oldp+7,(vlSelfRef.Sum),4);
    bufp->fullBit(oldp+8,(vlSelfRef.Cout));
    bufp->fullBit(oldp+9,((1U & (IData)(vlSelfRef.A))));
    bufp->fullBit(oldp+10,((1U & (IData)(vlSelfRef.B))));
    bufp->fullBit(oldp+11,((1U & ((IData)(vlSelfRef.A) 
                                  ^ ((IData)(vlSelfRef.B) 
                                     ^ (IData)(vlSelfRef.Cin))))));
    bufp->fullBit(oldp+12,((1U & ((IData)(vlSelfRef.A) 
                                  >> 1U))));
    bufp->fullBit(oldp+13,((1U & ((IData)(vlSelfRef.B) 
                                  >> 1U))));
    bufp->fullBit(oldp+14,((1U & (((IData)(vlSelfRef.A) 
                                   >> 1U) ^ (((IData)(vlSelfRef.B) 
                                              >> 1U) 
                                             ^ (IData)(vlSelfRef.Adder__DOT__Cout0))))));
    bufp->fullBit(oldp+15,((1U & ((IData)(vlSelfRef.A) 
                                  >> 2U))));
    bufp->fullBit(oldp+16,((1U & ((IData)(vlSelfRef.B) 
                                  >> 2U))));
    bufp->fullBit(oldp+17,((1U & (((IData)(vlSelfRef.A) 
                                   >> 2U) ^ (((IData)(vlSelfRef.B) 
                                              >> 2U) 
                                             ^ (IData)(vlSelfRef.Adder__DOT__Cout1))))));
    bufp->fullBit(oldp+18,((1U & ((IData)(vlSelfRef.A) 
                                  >> 3U))));
    bufp->fullBit(oldp+19,((1U & ((IData)(vlSelfRef.B) 
                                  >> 3U))));
    bufp->fullBit(oldp+20,((IData)(((((IData)(vlSelfRef.A) 
                                      ^ (IData)(vlSelfRef.B)) 
                                     >> 3U) ^ (IData)(vlSelfRef.Adder__DOT__Cout2)))));
}
