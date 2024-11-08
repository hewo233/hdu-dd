// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "VAdder__pch.h"
#include "verilated_vcd_c.h"

//============================================================
// Constructors

VAdder::VAdder(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new VAdder__Syms(contextp(), _vcname__, this)}
    , A{vlSymsp->TOP.A}
    , B{vlSymsp->TOP.B}
    , Cin{vlSymsp->TOP.Cin}
    , Sum{vlSymsp->TOP.Sum}
    , Cout{vlSymsp->TOP.Cout}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
    contextp()->traceBaseModelCbAdd(
        [this](VerilatedTraceBaseC* tfp, int levels, int options) { traceBaseModel(tfp, levels, options); });
}

VAdder::VAdder(const char* _vcname__)
    : VAdder(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

VAdder::~VAdder() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void VAdder___024root___eval_debug_assertions(VAdder___024root* vlSelf);
#endif  // VL_DEBUG
void VAdder___024root___eval_static(VAdder___024root* vlSelf);
void VAdder___024root___eval_initial(VAdder___024root* vlSelf);
void VAdder___024root___eval_settle(VAdder___024root* vlSelf);
void VAdder___024root___eval(VAdder___024root* vlSelf);

void VAdder::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate VAdder::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    VAdder___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_activity = true;
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        VAdder___024root___eval_static(&(vlSymsp->TOP));
        VAdder___024root___eval_initial(&(vlSymsp->TOP));
        VAdder___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    VAdder___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool VAdder::eventsPending() { return false; }

uint64_t VAdder::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* VAdder::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void VAdder___024root___eval_final(VAdder___024root* vlSelf);

VL_ATTR_COLD void VAdder::final() {
    VAdder___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* VAdder::hierName() const { return vlSymsp->name(); }
const char* VAdder::modelName() const { return "VAdder"; }
unsigned VAdder::threads() const { return 1; }
void VAdder::prepareClone() const { contextp()->prepareClone(); }
void VAdder::atClone() const {
    contextp()->threadPoolpOnClone();
}
std::unique_ptr<VerilatedTraceConfig> VAdder::traceConfig() const {
    return std::unique_ptr<VerilatedTraceConfig>{new VerilatedTraceConfig{false, false, false}};
};

//============================================================
// Trace configuration

void VAdder___024root__trace_decl_types(VerilatedVcd* tracep);

void VAdder___024root__trace_init_top(VAdder___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD static void trace_init(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    VAdder___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<VAdder___024root*>(voidSelf);
    VAdder__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    if (strlen(vlSymsp->name())) tracep->pushPrefix(std::string{vlSymsp->name()}, VerilatedTracePrefixType::SCOPE_MODULE);
    VAdder___024root__trace_decl_types(tracep);
    VAdder___024root__trace_init_top(vlSelf, tracep);
    if (strlen(vlSymsp->name())) tracep->popPrefix();
}

VL_ATTR_COLD void VAdder___024root__trace_register(VAdder___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void VAdder::traceBaseModel(VerilatedTraceBaseC* tfp, int levels, int options) {
    (void)levels; (void)options;
    VerilatedVcdC* const stfp = dynamic_cast<VerilatedVcdC*>(tfp);
    if (VL_UNLIKELY(!stfp)) {
        vl_fatal(__FILE__, __LINE__, __FILE__,"'VAdder::trace()' called on non-VerilatedVcdC object;"
            " use --trace-fst with VerilatedFst object, and --trace with VerilatedVcd object");
    }
    stfp->spTrace()->addModel(this);
    stfp->spTrace()->addInitCb(&trace_init, &(vlSymsp->TOP));
    VAdder___024root__trace_register(&(vlSymsp->TOP), stfp->spTrace());
}
