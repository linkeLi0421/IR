; ModuleID = '/llk/IR/drivers/media/tuners/tda8290.c_pt.bc'
source_filename = "../drivers/media/tuners/tda8290.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda829x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda829x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda829x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda829x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22tda829x_probe\22\09\09\09\09\09"
module asm "__kstrtabns_tda829x_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.anon.73 = type { [2 x i8] }
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.tda8290_priv = type { %struct.tuner_i2c_props, i8, i8, i8, %struct.tda827x_config, ptr }
%struct.tda827x_config = type { ptr, ptr, i32, i32, ptr }
%struct.tda829x_config = type { i32, i8, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [41 x i8] c"parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_deemphasis_50 = internal constant [14 x i8] c"deemphasis_50\00", align 1
@deemphasis_50 = internal global i32 0, align 4
@__param_deemphasis_50 = internal constant %struct.kernel_param { ptr @__param_str_deemphasis_50, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @deemphasis_50 } }, section "__param", align 4
@__UNIQUE_ID_deemphasis_50type251 = internal constant [27 x i8] c"parmtype=deemphasis_50:int\00", section ".modinfo", align 1
@__UNIQUE_ID_deemphasis_50252 = internal constant [60 x i8] c"parm=deemphasis_50:0 - 75us deemphasis; 1 - 50us deemphasis\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [8 x i8] c"tda829x\00", align 1
@tda8290_ops = internal unnamed_addr constant %struct.analog_demod_ops { %struct.analog_demod_info zeroinitializer, ptr @tda8290_set_params, ptr @tda8290_has_signal, ptr null, ptr null, ptr @tda8290_standby, ptr @tda829x_release, ptr @tda8290_i2c_bridge, ptr null }, align 4
@tda8295_ops = internal unnamed_addr constant %struct.analog_demod_ops { %struct.analog_demod_info zeroinitializer, ptr @tda8295_set_params, ptr @tda8295_has_signal, ptr null, ptr null, ptr @tda8295_standby, ptr @tda829x_release, ptr @tda8295_i2c_bridge, ptr null }, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"tda8290\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"tda8295\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"tda8290+75\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"tda8295+75\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"tda8290+75a\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"tda8295+75a\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"tda8290+18271\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"tda8295+18271\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"\016%s %d-%04x: type set to %s\0A\00", align 1
@__kstrtab_tda829x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda829x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda829x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda829x_attach to i32), ptr @__kstrtab_tda829x_attach, ptr @__kstrtabns_tda829x_attach }, section "___ksymtab_gpl+tda829x_attach", align 4
@tda829x_probe.soft_reset = internal global [2 x i8] zeroinitializer, align 1
@tda829x_probe.easy_mode_b = internal global [2 x i8] c"\01\02", align 1
@tda829x_probe.easy_mode_g = internal global [2 x i8] c"\01\04", align 1
@tda829x_probe.restore_9886 = internal global [3 x i8] c"\00\D60", align 1
@tda829x_probe.addr_dto_lsb = internal global i8 7, align 1
@__kstrtab_tda829x_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda829x_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_tda829x_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda829x_probe to i32), ptr @__kstrtab_tda829x_probe, ptr @__kstrtabns_tda829x_probe }, section "___ksymtab_gpl+tda829x_probe", align 4
@__UNIQUE_ID_description253 = internal constant [69 x i8] c"description=Philips/NXP TDA8290/TDA8295 analog IF demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [52 x i8] c"author=Gerd Knorr, Hartmut Hackmann, Michael Krufky\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"\014%s: couldn't read register 0x%02x\0A\00", align 1
@__func__.tda8290_probe = private unnamed_addr constant [14 x i8] c"tda8290_probe\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"\017%s: tda8290 detected @ %d-%04x\0A\00", align 1
@tda8290_set_params.soft_reset = internal global [2 x i8] zeroinitializer, align 1
@tda8290_set_params.expert_mode = internal global [2 x i8] c"\01\80", align 1
@tda8290_set_params.agc_out_on = internal global [2 x i8] c"\02\00", align 1
@tda8290_set_params.gainset_off = internal global [2 x i8] c"(\14", align 1
@tda8290_set_params.if_agc_spd = internal global [2 x i8] c"\0F\88", align 1
@tda8290_set_params.adc_head_6 = internal global [2 x i8] c"\05\04", align 1
@tda8290_set_params.adc_head_9 = internal global [2 x i8] c"\05\02", align 1
@tda8290_set_params.adc_head_12 = internal global [2 x i8] c"\05\01", align 1
@tda8290_set_params.pll_bw_nom = internal global [2 x i8] c"\0DG", align 1
@tda8290_set_params.pll_bw_low = internal global [2 x i8] c"\0D'", align 1
@tda8290_set_params.gainset_2 = internal global [2 x i8] c"(d", align 1
@tda8290_set_params.agc_rst_on = internal global [2 x i8] c"\0E\0B", align 1
@tda8290_set_params.agc_rst_off = internal global [2 x i8] c"\0E\09", align 1
@tda8290_set_params.if_agc_set = internal global [2 x i8] c"\0F\81", align 1
@tda8290_set_params.addr_adc_sat = internal global i8 26, align 1
@tda8290_set_params.addr_agc_stat = internal global i8 29, align 1
@tda8290_set_params.addr_pll_stat = internal global i8 27, align 1
@tda8290_set_params.adc_sat = internal global i8 0, align 1
@tda8290_set_params.agc_stat = internal global i8 0, align 1
@tda8290_set_params.pll_stat = internal global i8 0, align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"\017%s %d-%04x: tda827xa config is 0x%02x\0A\00", align 1
@fm_mode = internal global [13 x %struct.anon.73] [%struct.anon.73 { [2 x i8] c"\01\81" }, %struct.anon.73 { [2 x i8] c"\03H" }, %struct.anon.73 { [2 x i8] c"\04\04" }, %struct.anon.73 { [2 x i8] c"\05\04" }, %struct.anon.73 { [2 x i8] c"\06\10" }, %struct.anon.73 { [2 x i8] c"\07\00" }, %struct.anon.73 { [2 x i8] c"\08\00" }, %struct.anon.73 { [2 x i8] c"\09\80" }, %struct.anon.73 { [2 x i8] c"\0A\DA" }, %struct.anon.73 { [2 x i8] c"\0BK" }, %struct.anon.73 { [2 x i8] c"\0Ch" }, %struct.anon.73 { [2 x i8] c"\0D\00" }, %struct.anon.73 { [2 x i8] c"\14\00" }], align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"\017%s %d-%04x: tda8290 is locked, AGC: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [46 x i8] c"\017%s %d-%04x: tda8290 not locked, no signal?\0A\00", align 1
@.str.15 = private unnamed_addr constant [68 x i8] c"\017%s %d-%04x: adjust gain, step 1. Agc: %d, ADC stat: %d, lock: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [54 x i8] c"\017%s %d-%04x: adjust gain, step 2. Agc: %d, lock: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [44 x i8] c"\017%s %d-%04x: adjust gain, step 3. Agc: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"\017%s %d-%04x: trying to resolve SECAM L deadlock\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"MN\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"GH\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"DK\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: setting to radio FM\0A\00", align 1
@.str.28 = private unnamed_addr constant [44 x i8] c"\017%s %d-%04x: setting tda829x to system %s\0A\00", align 1
@tda8290_standby.cb1 = internal global [2 x i8] c"0\D0", align 1
@tda8290_standby.tda8290_standby = internal global [2 x i8] c"\00\02", align 1
@tda8290_standby.tda8290_agc_tri = internal global [2 x i8] c"\02 ", align 1
@tda8290_i2c_bridge.enable = internal global [2 x i8] c"!\C0", align 1
@tda8290_i2c_bridge.disable = internal global [2 x i8] c"!\00", align 1
@__func__.tda8295_probe = private unnamed_addr constant [14 x i8] c"tda8295_probe\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"\017%s: %s detected @ %d-%04x\0A\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"tda8295c1\00", align 1
@.str.31 = private unnamed_addr constant [10 x i8] c"tda8295c2\00", align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"\017%s %d-%04x: %s: freq = %d\0A\00", align 1
@__func__.tda8295_set_params = private unnamed_addr constant [19 x i8] c"tda8295_set_params\00", align 1
@.str.33 = private unnamed_addr constant [33 x i8] c"\017%s %d-%04x: tda8295 is locked\0A\00", align 1
@.str.34 = private unnamed_addr constant [46 x i8] c"\017%s %d-%04x: tda8295 not locked, no signal?\0A\00", align 1
@tda8295_i2c_bridge.enable = internal global [2 x i8] c"E\C1", align 1
@tda8295_i2c_bridge.disable = internal global [2 x i8] c"F\00", align 1
@tda8295_i2c_bridge.buf = internal global [3 x i8] c"E\01\00", align 1
@.str.35 = private unnamed_addr constant [74 x i8] c"\016%s %d-%04x: could not clearly identify tuner address, defaulting to %x\0A\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: setting tuner address to %x\0A\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"\014%s %d-%04x: tuner access failed!\0A\00", align 1
@tda829x_tda18271_config = internal global %struct.tda18271_config { ptr null, i32 0, i32 1, i32 0, i32 0, i8 0, i32 0 }, align 4
@.str.38 = private unnamed_addr constant [16 x i8] c"tda18271_attach\00", align 1
@.str.39 = private unnamed_addr constant [23 x i8] c"symbol:tda18271_attach\00", align 1
@.str.40 = private unnamed_addr constant [48 x i8] c"\013DVB: Unable to find symbol tda18271_attach()\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"tda827x_attach\00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"symbol:tda827x_attach\00", align 1
@.str.43 = private unnamed_addr constant [47 x i8] c"\013DVB: Unable to find symbol tda827x_attach()\0A\00", align 1
@tda8290_init_tuner.tda8275_init = internal global [14 x i8] c"\00\00\00@\DC\04\AF?*\04\FF\00\00@", align 1
@tda8290_init_tuner.tda8275a_init = internal global [14 x i8] c"\00\00\00\00\DC\05\8B\0C\04 \FF\00\00K", align 1
@tda8290_init_if.set_VS = internal global [2 x i8] c"0o", align 1
@tda8290_init_if.set_GP00_CF = internal global [2 x i8] c" \01", align 1
@tda8290_init_if.set_GP01_CF = internal global [2 x i8] c" \0B", align 1
@tda8295_init_if.set_adc_ctl = internal global [2 x i8] c"3\14", align 1
@tda8295_init_if.set_adc_ctl2 = internal global [2 x i8] c"4\00", align 1
@tda8295_init_if.set_pll_reg6 = internal global [2 x i8] c">c", align 1
@tda8295_init_if.set_pll_reg0 = internal global [2 x i8] c"8#", align 1
@tda8295_init_if.set_pll_reg7 = internal global [2 x i8] c"?\01", align 1
@tda8295_init_if.set_pll_reg10 = internal global [2 x i8] c"Ba", align 1
@tda8295_init_if.set_gpio_reg0 = internal global [2 x i8] c"D\0B", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_deemphasis_50252, ptr @__UNIQUE_ID_deemphasis_50type251, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_tda829x_attach, ptr @__ksymtab_tda829x_probe, ptr @__param_debug, ptr @__param_deemphasis_50], section "llvm.metadata"
@switch.table.tda829x_attach = private unnamed_addr constant [18 x ptr] [ptr @.str.1, ptr @.str.2, ptr @.str.1, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.1, ptr @.str.1, ptr @.str.5, ptr @.str.6, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.1, ptr @.str.7, ptr @.str.8], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda829x_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef readonly %3) #0 {
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca [2 x %struct.i2c_msg], align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca %struct.i2c_msg, align 4
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca [2 x %struct.i2c_msg], align 4
  %23 = alloca [2 x i8], align 2
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca [2 x %struct.i2c_msg], align 4
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca %struct.i2c_msg, align 4
  %30 = alloca %struct.i2c_msg, align 4
  %31 = alloca i8, align 1
  %32 = alloca %struct.i2c_msg, align 8
  %33 = alloca %struct.i2c_msg, align 4
  %34 = alloca [2 x %struct.i2c_msg], align 4
  %35 = alloca [2 x i8], align 2
  %36 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %37 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 44) #7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %576, label %39

39:                                               ; preds = %4
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  store ptr %37, ptr %40, align 4
  store i8 %2, ptr %37, align 8
  %41 = getelementptr inbounds %struct.tuner_i2c_props, ptr %37, i32 0, i32 1
  store ptr %1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.tuner_i2c_props, ptr %37, i32 0, i32 3
  store ptr @.str, ptr %42, align 4
  %43 = icmp eq ptr %3, null
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load i32, ptr %3, align 4
  %46 = getelementptr inbounds %struct.tda8290_priv, ptr %37, i32 0, i32 4, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.tda829x_config, ptr %3, i32 0, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tda8290_priv, ptr %37, i32 0, i32 5
  store ptr %48, ptr %49, align 8
  br label %50

50:                                               ; preds = %44, %39
  %51 = tail call fastcc i32 @tda8290_probe(ptr noundef nonnull %37)
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tda8290_priv, ptr %37, i32 0, i32 3
  store i8 1, ptr %54, align 2
  %55 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %55, ptr noundef nonnull align 4 dereferenceable(36) @tda8290_ops, i32 36, i1 false)
  br label %56

56:                                               ; preds = %53, %50
  %57 = tail call fastcc i32 @tda8295_probe(ptr noundef nonnull %37)
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct.tda8290_priv, ptr %37, i32 0, i32 3
  store i8 2, ptr %60, align 2
  %61 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %61, ptr noundef nonnull align 4 dereferenceable(36) @tda8295_ops, i32 36, i1 false)
  br label %62

62:                                               ; preds = %59, %56
  br i1 %43, label %75, label %63

63:                                               ; preds = %62
  %64 = getelementptr inbounds %struct.tda829x_config, ptr %3, i32 0, i32 1
  %65 = load i8, ptr %64, align 4
  %66 = and i8 %65, 2
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  store ptr null, ptr %69, align 4
  %70 = load i8, ptr %64, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i8 [ %65, %63 ], [ %70, %68 ]
  %73 = and i8 %72, 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %75, label %308

75:                                               ; preds = %71, %62
  %76 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %35) #8
  store i16 48, ptr %35, align 2
  %77 = getelementptr inbounds [2 x i8], ptr %35, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %34) #8
  %78 = getelementptr inbounds i8, ptr %34, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %78, i8 0, i32 16, i1 false) #8, !annotation !8
  %79 = load i8, ptr %76, align 4
  %80 = zext i8 %79 to i16
  store i16 %80, ptr %34, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 1
  store i16 0, ptr %81, align 2
  store i16 1, ptr %78, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 0, i32 3
  store ptr %35, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1
  store i16 %80, ptr %83, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 1
  store i16 1, ptr %84, align 2
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 2
  store i16 1, ptr %85, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %34, i32 1, i32 3
  store ptr %77, ptr %86, align 4
  %87 = getelementptr inbounds %struct.tuner_i2c_props, ptr %76, i32 0, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %34, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %34) #8
  store i8 1, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %33) #8
  %90 = getelementptr inbounds i8, ptr %33, i32 4
  store i32 2, ptr %90, align 4, !annotation !8
  %91 = load i8, ptr %76, align 4
  %92 = zext i8 %91 to i16
  store i16 %92, ptr %33, align 4
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 1
  store i16 0, ptr %93, align 2
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %33, i32 0, i32 3
  store ptr %35, ptr %94, align 4
  %95 = load ptr, ptr %87, align 4
  %96 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %33, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %33) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %35) #8
  %97 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %31) #8
  store i8 0, ptr %31, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %32) #8
  store i64 4295032832, ptr %32, align 8
  %98 = getelementptr inbounds %struct.i2c_msg, ptr %32, i32 0, i32 3
  store ptr %31, ptr %98, align 8
  %99 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %75
  %103 = call i32 %100(ptr noundef %0, i32 noundef 1) #8
  br label %104

104:                                              ; preds = %102, %75
  %105 = getelementptr inbounds %struct.tuner_i2c_props, ptr %97, i32 0, i32 1
  store i16 96, ptr %32, align 8
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %32, i32 noundef 1) #8
  %108 = icmp eq i32 %107, 1
  %109 = select i1 %108, i32 96, i32 0
  %110 = zext i1 %108 to i32
  store i16 97, ptr %32, align 8
  %111 = load ptr, ptr %105, align 4
  %112 = call i32 @i2c_transfer(ptr noundef %111, ptr noundef nonnull %32, i32 noundef 1) #8
  %113 = icmp eq i32 %112, 1
  %114 = shl nuw nsw i32 %109, 8
  %115 = or i32 %114, 97
  %116 = select i1 %113, i32 %115, i32 %109
  %117 = zext i1 %113 to i32
  %118 = add nuw nsw i32 %117, %110
  store i16 98, ptr %32, align 8
  %119 = load ptr, ptr %105, align 4
  %120 = call i32 @i2c_transfer(ptr noundef %119, ptr noundef nonnull %32, i32 noundef 1) #8
  %121 = icmp eq i32 %120, 1
  %122 = shl nuw nsw i32 %116, 8
  %123 = or i32 %122, 98
  %124 = select i1 %121, i32 %123, i32 %116
  %125 = zext i1 %121 to i32
  %126 = add nuw nsw i32 %118, %125
  store i16 99, ptr %32, align 8
  %127 = load ptr, ptr %105, align 4
  %128 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %32, i32 noundef 1) #8
  %129 = icmp eq i32 %128, 1
  %130 = shl i32 %124, 8
  %131 = or i32 %130, 99
  %132 = select i1 %129, i32 %131, i32 %124
  %133 = zext i1 %129 to i32
  %134 = add nuw nsw i32 %126, %133
  %135 = load ptr, ptr %99, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %104
  %138 = call i32 %135(ptr noundef %0, i32 noundef 0) #8
  br label %139

139:                                              ; preds = %137, %104
  %140 = icmp ugt i32 %134, 1
  br i1 %140, label %141, label %174

141:                                              ; preds = %139
  %142 = trunc i32 %132 to i16
  %143 = and i16 %142, 255
  store i16 %143, ptr %32, align 8
  %144 = load ptr, ptr %105, align 4
  %145 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %32, i32 noundef 1) #8
  %146 = icmp eq i32 %145, 1
  br i1 %146, label %147, label %174

147:                                              ; preds = %141
  %148 = lshr i32 %132, 8
  %149 = icmp eq i32 %134, 1
  br i1 %149, label %174, label %150

150:                                              ; preds = %147
  %151 = trunc i32 %148 to i16
  %152 = and i16 %151, 255
  store i16 %152, ptr %32, align 8
  %153 = load ptr, ptr %105, align 4
  %154 = call i32 @i2c_transfer(ptr noundef %153, ptr noundef nonnull %32, i32 noundef 1) #8
  %155 = icmp eq i32 %154, 1
  br i1 %155, label %156, label %174

156:                                              ; preds = %150
  %157 = lshr i32 %132, 16
  %158 = icmp eq i32 %134, 2
  br i1 %158, label %174, label %159

159:                                              ; preds = %156
  %160 = trunc i32 %157 to i16
  %161 = and i16 %160, 255
  store i16 %161, ptr %32, align 8
  %162 = load ptr, ptr %105, align 4
  %163 = call i32 @i2c_transfer(ptr noundef %162, ptr noundef nonnull %32, i32 noundef 1) #8
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %174

165:                                              ; preds = %159
  %166 = lshr i32 %132, 24
  %167 = icmp eq i32 %134, 3
  br i1 %167, label %174, label %168

168:                                              ; preds = %165
  %169 = trunc i32 %166 to i16
  store i16 %169, ptr %32, align 8
  %170 = load ptr, ptr %105, align 4
  %171 = call i32 @i2c_transfer(ptr noundef %170, ptr noundef nonnull %32, i32 noundef 1) #8
  %172 = icmp eq i32 %171, 1
  %173 = select i1 %172, i32 0, i32 %166
  br label %174

174:                                              ; preds = %168, %165, %159, %156, %150, %147, %141, %139
  %175 = phi i32 [ %132, %139 ], [ %148, %147 ], [ %132, %141 ], [ %148, %150 ], [ %157, %156 ], [ %157, %159 ], [ %166, %165 ], [ %173, %168 ]
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %190

177:                                              ; preds = %174
  %178 = getelementptr inbounds %struct.tuner_i2c_props, ptr %97, i32 0, i32 3
  %179 = load ptr, ptr %178, align 4
  %180 = load ptr, ptr %105, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %185, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.i2c_adapter, ptr %180, i32 0, i32 11
  %184 = load i32, ptr %183, align 4
  br label %185

185:                                              ; preds = %182, %177
  %186 = phi i32 [ %184, %182 ], [ -1, %177 ]
  %187 = load i8, ptr %97, align 4
  %188 = zext i8 %187 to i32
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %179, i32 noundef %186, i32 noundef %188, i32 noundef 96) #9
  br label %204

190:                                              ; preds = %174
  %191 = and i32 %175, 255
  %192 = getelementptr inbounds %struct.tuner_i2c_props, ptr %97, i32 0, i32 3
  %193 = load ptr, ptr %192, align 4
  %194 = load ptr, ptr %105, align 4
  %195 = icmp eq ptr %194, null
  br i1 %195, label %199, label %196

196:                                              ; preds = %190
  %197 = getelementptr inbounds %struct.i2c_adapter, ptr %194, i32 0, i32 11
  %198 = load i32, ptr %197, align 4
  br label %199

199:                                              ; preds = %196, %190
  %200 = phi i32 [ %198, %196 ], [ -1, %190 ]
  %201 = load i8, ptr %97, align 4
  %202 = zext i8 %201 to i32
  %203 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %193, i32 noundef %200, i32 noundef %202, i32 noundef %191) #9
  br label %204

204:                                              ; preds = %199, %185
  %205 = phi i32 [ 96, %185 ], [ %191, %199 ]
  %206 = trunc i32 %205 to i8
  %207 = getelementptr inbounds %struct.tda8290_priv, ptr %97, i32 0, i32 2
  store i8 %206, ptr %207, align 1
  %208 = trunc i32 %205 to i16
  store i16 %208, ptr %32, align 8
  %209 = load ptr, ptr %99, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211

211:                                              ; preds = %204
  %212 = call i32 %209(ptr noundef %0, i32 noundef 1) #8
  br label %213

213:                                              ; preds = %211, %204
  %214 = load ptr, ptr %105, align 4
  %215 = call i32 @i2c_transfer(ptr noundef %214, ptr noundef nonnull %32, i32 noundef 1) #8
  %216 = icmp eq i32 %215, 1
  br i1 %216, label %235, label %217

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.tuner_i2c_props, ptr %97, i32 0, i32 3
  %219 = load ptr, ptr %218, align 4
  %220 = load ptr, ptr %105, align 4
  %221 = icmp eq ptr %220, null
  br i1 %221, label %225, label %222

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.i2c_adapter, ptr %220, i32 0, i32 11
  %224 = load i32, ptr %223, align 4
  br label %225

225:                                              ; preds = %222, %217
  %226 = phi i32 [ %224, %222 ], [ -1, %217 ]
  %227 = load i8, ptr %97, align 4
  %228 = zext i8 %227 to i32
  %229 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, ptr noundef %219, i32 noundef %226, i32 noundef %228) #9
  %230 = load ptr, ptr %99, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %225
  %233 = call i32 %230(ptr noundef %0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #8
  br label %561

234:                                              ; preds = %225
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #8
  br label %561

235:                                              ; preds = %213
  %236 = load i8, ptr %31, align 1
  %237 = add i8 %236, 125
  %238 = icmp ult i8 %237, 2
  br i1 %238, label %239, label %262

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.tda8290_priv, ptr %97, i32 0, i32 3
  %241 = load i8, ptr %240, align 2
  %242 = or i8 %241, 16
  store i8 %242, ptr %240, align 2
  %243 = getelementptr inbounds %struct.tda8290_priv, ptr %97, i32 0, i32 4, i32 2
  %244 = load i32, ptr %243, align 4
  store i32 %244, ptr getelementptr inbounds (%struct.tda18271_config, ptr @tda829x_tda18271_config, i32 0, i32 6), align 4
  %245 = getelementptr inbounds %struct.tda8290_priv, ptr %97, i32 0, i32 5
  %246 = load ptr, ptr %245, align 4
  store ptr %246, ptr @tda829x_tda18271_config, align 4
  %247 = call ptr @__symbol_get(ptr noundef nonnull @.str.38) #8
  %248 = icmp eq ptr %247, null
  br i1 %248, label %249, label %253

249:                                              ; preds = %239
  %250 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.39) #8
  %251 = call ptr @__symbol_get(ptr noundef nonnull @.str.38) #8
  %252 = icmp eq ptr %251, null
  br i1 %252, label %260, label %253

253:                                              ; preds = %249, %239
  %254 = phi ptr [ %251, %249 ], [ %247, %239 ]
  %255 = load i8, ptr %207, align 1
  %256 = load ptr, ptr %105, align 4
  %257 = call ptr %254(ptr noundef %0, i8 noundef zeroext %255, ptr noundef %256, ptr noundef nonnull @tda829x_tda18271_config) #8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %259, label %290

259:                                              ; preds = %253
  call void @__symbol_put(ptr noundef nonnull @.str.38) #8
  br label %290

260:                                              ; preds = %249
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40) #9
  br label %290

262:                                              ; preds = %235
  %263 = and i8 %236, 60
  %264 = icmp eq i8 %263, 0
  %265 = getelementptr inbounds %struct.tda8290_priv, ptr %97, i32 0, i32 3
  %266 = load i8, ptr %265, align 2
  %267 = select i1 %264, i8 4, i8 8
  %268 = or i8 %266, %267
  store i8 %268, ptr %265, align 2
  %269 = call ptr @__symbol_get(ptr noundef nonnull @.str.41) #8
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %275

271:                                              ; preds = %262
  %272 = call i32 (i1, ptr, ...) @__request_module(i1 noundef zeroext true, ptr noundef nonnull @.str.42) #8
  %273 = call ptr @__symbol_get(ptr noundef nonnull @.str.41) #8
  %274 = icmp eq ptr %273, null
  br i1 %274, label %284, label %275

275:                                              ; preds = %271, %262
  %276 = phi ptr [ %273, %271 ], [ %269, %262 ]
  %277 = load i8, ptr %207, align 1
  %278 = zext i8 %277 to i32
  %279 = load ptr, ptr %105, align 4
  %280 = getelementptr inbounds %struct.tda8290_priv, ptr %97, i32 0, i32 4
  %281 = call ptr %276(ptr noundef %0, i32 noundef %278, ptr noundef %279, ptr noundef %280) #8
  %282 = icmp eq ptr %281, null
  br i1 %282, label %283, label %286

283:                                              ; preds = %275
  call void @__symbol_put(ptr noundef nonnull @.str.41) #8
  br label %286

284:                                              ; preds = %271
  %285 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43) #9
  br label %286

286:                                              ; preds = %284, %283, %275
  %287 = load i8, ptr %97, align 4
  %288 = zext i8 %287 to i32
  %289 = getelementptr inbounds %struct.tda8290_priv, ptr %97, i32 0, i32 4, i32 3
  store i32 %288, ptr %289, align 4
  br label %290

290:                                              ; preds = %286, %260, %259, %253
  %291 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 2
  %292 = load ptr, ptr %291, align 4
  %293 = icmp eq ptr %292, null
  br i1 %293, label %296, label %294

294:                                              ; preds = %290
  %295 = call i32 %292(ptr noundef %0) #8
  br label %296

296:                                              ; preds = %294, %290
  %297 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 3
  %298 = load ptr, ptr %297, align 4
  %299 = icmp eq ptr %298, null
  br i1 %299, label %302, label %300

300:                                              ; preds = %296
  %301 = call i32 %298(ptr noundef %0) #8
  br label %302

302:                                              ; preds = %300, %296
  %303 = load ptr, ptr %99, align 4
  %304 = icmp eq ptr %303, null
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #8
  br label %308

306:                                              ; preds = %302
  %307 = call i32 %303(ptr noundef %0, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %32) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %31) #8
  br label %308

308:                                              ; preds = %306, %305, %71
  %309 = getelementptr inbounds %struct.tda8290_priv, ptr %37, i32 0, i32 3
  %310 = load i8, ptr %309, align 2
  %311 = add i8 %310, -1
  %312 = icmp ult i8 %311, 18
  br i1 %312, label %313, label %561

313:                                              ; preds = %308
  %314 = zext i8 %311 to i32
  %315 = lshr i32 197427, %314
  %316 = and i32 %315, 1
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %561, label %318

318:                                              ; preds = %313
  %319 = sext i8 %311 to i32
  %320 = getelementptr inbounds [18 x ptr], ptr @switch.table.tda829x_attach, i32 0, i32 %319
  %321 = load ptr, ptr %320, align 4
  %322 = load ptr, ptr %42, align 4
  %323 = load ptr, ptr %41, align 4
  %324 = icmp eq ptr %323, null
  br i1 %324, label %328, label %325

325:                                              ; preds = %318
  %326 = getelementptr inbounds %struct.i2c_adapter, ptr %323, i32 0, i32 11
  %327 = load i32, ptr %326, align 4
  br label %328

328:                                              ; preds = %325, %318
  %329 = phi i32 [ %327, %325 ], [ -1, %318 ]
  %330 = load i8, ptr %37, align 8
  %331 = zext i8 %330 to i32
  %332 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %322, i32 noundef %329, i32 noundef %331, ptr noundef nonnull %321) #9
  %333 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33
  store ptr %321, ptr %333, align 4
  %334 = load i8, ptr %309, align 2
  %335 = zext i8 %334 to i32
  %336 = and i32 %335, 1
  %337 = icmp eq i32 %336, 0
  br i1 %337, label %401, label %338

338:                                              ; preds = %328
  %339 = and i32 %335, 12
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %368, label %341

341:                                              ; preds = %338
  %342 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %30) #8
  %343 = getelementptr inbounds i8, ptr %30, i32 4
  store i32 14, ptr %343, align 4, !annotation !8
  %344 = getelementptr inbounds %struct.tda8290_priv, ptr %342, i32 0, i32 2
  %345 = load i8, ptr %344, align 1
  %346 = zext i8 %345 to i16
  store i16 %346, ptr %30, align 4
  %347 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 1
  store i16 0, ptr %347, align 2
  %348 = getelementptr inbounds %struct.i2c_msg, ptr %30, i32 0, i32 3
  %349 = getelementptr inbounds %struct.tda8290_priv, ptr %342, i32 0, i32 3
  %350 = load i8, ptr %349, align 2
  %351 = and i8 %350, 8
  %352 = icmp eq i8 %351, 0
  %353 = select i1 %352, ptr @tda8290_init_tuner.tda8275_init, ptr @tda8290_init_tuner.tda8275a_init
  store ptr %353, ptr %348, align 4
  %354 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %355 = load ptr, ptr %354, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %359, label %357

357:                                              ; preds = %341
  %358 = call i32 %355(ptr noundef %0, i32 noundef 1) #8
  br label %359

359:                                              ; preds = %357, %341
  %360 = getelementptr inbounds %struct.tuner_i2c_props, ptr %342, i32 0, i32 1
  %361 = load ptr, ptr %360, align 4
  %362 = call i32 @i2c_transfer(ptr noundef %361, ptr noundef nonnull %30, i32 noundef 1) #8
  %363 = load ptr, ptr %354, align 4
  %364 = icmp eq ptr %363, null
  br i1 %364, label %367, label %365

365:                                              ; preds = %359
  %366 = call i32 %363(ptr noundef %0, i32 noundef 0) #8
  br label %367

367:                                              ; preds = %365, %359
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %30) #8
  br label %368

368:                                              ; preds = %367, %338
  %369 = load ptr, ptr %40, align 4
  %370 = getelementptr inbounds %struct.tda8290_priv, ptr %369, i32 0, i32 4, i32 2
  %371 = load i32, ptr %370, align 4
  %372 = add i32 %371, -1
  %373 = icmp ult i32 %372, 2
  br i1 %373, label %374, label %383

374:                                              ; preds = %368
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %29) #8
  %375 = getelementptr inbounds i8, ptr %29, i32 4
  store i32 2, ptr %375, align 4, !annotation !8
  %376 = load i8, ptr %369, align 4
  %377 = zext i8 %376 to i16
  store i16 %377, ptr %29, align 4
  %378 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 1
  store i16 0, ptr %378, align 2
  %379 = getelementptr inbounds %struct.i2c_msg, ptr %29, i32 0, i32 3
  store ptr @tda8290_init_if.set_GP00_CF, ptr %379, align 4
  %380 = getelementptr inbounds %struct.tuner_i2c_props, ptr %369, i32 0, i32 1
  %381 = load ptr, ptr %380, align 4
  %382 = call i32 @i2c_transfer(ptr noundef %381, ptr noundef nonnull %29, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %29) #8
  br label %392

383:                                              ; preds = %368
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #8
  %384 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 2, ptr %384, align 4, !annotation !8
  %385 = load i8, ptr %369, align 4
  %386 = zext i8 %385 to i16
  store i16 %386, ptr %28, align 4
  %387 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %387, align 2
  %388 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr @tda8290_init_if.set_GP01_CF, ptr %388, align 4
  %389 = getelementptr inbounds %struct.tuner_i2c_props, ptr %369, i32 0, i32 1
  %390 = load ptr, ptr %389, align 4
  %391 = call i32 @i2c_transfer(ptr noundef %390, ptr noundef nonnull %28, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #8
  br label %392

392:                                              ; preds = %383, %374
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #8
  %393 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %393, align 4, !annotation !8
  %394 = load i8, ptr %369, align 4
  %395 = zext i8 %394 to i16
  store i16 %395, ptr %27, align 4
  %396 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %396, align 2
  %397 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr @tda8290_init_if.set_VS, ptr %397, align 4
  %398 = getelementptr inbounds %struct.tuner_i2c_props, ptr %369, i32 0, i32 1
  %399 = load ptr, ptr %398, align 4
  %400 = call i32 @i2c_transfer(ptr noundef %399, ptr noundef nonnull %27, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #8
  br label %576

401:                                              ; preds = %328
  %402 = and i32 %335, 2
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %576, label %404

404:                                              ; preds = %401
  %405 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #8
  store i16 48, ptr %26, align 2
  %406 = getelementptr inbounds [2 x i8], ptr %26, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %25) #8
  %407 = getelementptr inbounds i8, ptr %25, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %407, i8 0, i32 16, i1 false) #8, !annotation !8
  %408 = load i8, ptr %405, align 4
  %409 = zext i8 %408 to i16
  store i16 %409, ptr %25, align 4
  %410 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  store i16 0, ptr %410, align 2
  store i16 1, ptr %407, align 4
  %411 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %26, ptr %411, align 4
  %412 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1
  store i16 %409, ptr %412, align 4
  %413 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 1
  store i16 1, ptr %413, align 2
  %414 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 2
  store i16 1, ptr %414, align 4
  %415 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 1, i32 3
  store ptr %406, ptr %415, align 4
  %416 = getelementptr inbounds %struct.tuner_i2c_props, ptr %405, i32 0, i32 1
  %417 = load ptr, ptr %416, align 4
  %418 = call i32 @i2c_transfer(ptr noundef %417, ptr noundef nonnull %25, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %25) #8
  store i8 1, ptr %406, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #8
  %419 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 2, ptr %419, align 4, !annotation !8
  %420 = load i8, ptr %405, align 4
  %421 = zext i8 %420 to i16
  store i16 %421, ptr %24, align 4
  %422 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %422, align 2
  %423 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %26, ptr %423, align 4
  %424 = load ptr, ptr %416, align 4
  %425 = call i32 @i2c_transfer(ptr noundef %424, ptr noundef nonnull %24, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #8
  %426 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %23) #8
  store i16 1, ptr %23, align 2
  %427 = getelementptr inbounds [2 x i8], ptr %23, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %22) #8
  %428 = getelementptr inbounds i8, ptr %22, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %428, i8 0, i32 16, i1 false) #8, !annotation !8
  %429 = load i8, ptr %426, align 4
  %430 = zext i8 %429 to i16
  store i16 %430, ptr %22, align 4
  %431 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %431, align 2
  store i16 1, ptr %428, align 4
  %432 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr %23, ptr %432, align 4
  %433 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1
  store i16 %430, ptr %433, align 4
  %434 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 1
  store i16 1, ptr %434, align 2
  %435 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 2
  store i16 1, ptr %435, align 4
  %436 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 1, i32 3
  store ptr %427, ptr %436, align 4
  %437 = getelementptr inbounds %struct.tuner_i2c_props, ptr %426, i32 0, i32 1
  %438 = load ptr, ptr %437, align 4
  %439 = call i32 @i2c_transfer(ptr noundef %438, ptr noundef nonnull %22, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %22) #8
  store i8 0, ptr %427, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #8
  %440 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %440, align 4, !annotation !8
  %441 = load i8, ptr %426, align 4
  %442 = zext i8 %441 to i16
  store i16 %442, ptr %21, align 4
  %443 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %443, align 2
  %444 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %23, ptr %444, align 4
  %445 = load ptr, ptr %437, align 4
  %446 = call i32 @i2c_transfer(ptr noundef %445, ptr noundef nonnull %21, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %23) #8
  call fastcc void @tda8295_set_video_std(ptr noundef %0) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #8
  %447 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 2, ptr %447, align 4, !annotation !8
  %448 = load i8, ptr %405, align 4
  %449 = zext i8 %448 to i16
  store i16 %449, ptr %20, align 4
  %450 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %450, align 2
  %451 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr @tda8295_init_if.set_adc_ctl, ptr %451, align 4
  %452 = load ptr, ptr %416, align 4
  %453 = call i32 @i2c_transfer(ptr noundef %452, ptr noundef nonnull %20, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  %454 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %454, align 4, !annotation !8
  %455 = load i8, ptr %405, align 4
  %456 = zext i8 %455 to i16
  store i16 %456, ptr %19, align 4
  %457 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %457, align 2
  %458 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr @tda8295_init_if.set_adc_ctl2, ptr %458, align 4
  %459 = load ptr, ptr %416, align 4
  %460 = call i32 @i2c_transfer(ptr noundef %459, ptr noundef nonnull %19, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #8
  %461 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %461, align 4, !annotation !8
  %462 = load i8, ptr %405, align 4
  %463 = zext i8 %462 to i16
  store i16 %463, ptr %18, align 4
  %464 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %464, align 2
  %465 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr @tda8295_init_if.set_pll_reg6, ptr %465, align 4
  %466 = load ptr, ptr %416, align 4
  %467 = call i32 @i2c_transfer(ptr noundef %466, ptr noundef nonnull %18, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #8
  %468 = getelementptr inbounds i8, ptr %17, i32 4
  store i32 2, ptr %468, align 4, !annotation !8
  %469 = load i8, ptr %405, align 4
  %470 = zext i8 %469 to i16
  store i16 %470, ptr %17, align 4
  %471 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  store i16 0, ptr %471, align 2
  %472 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr @tda8295_init_if.set_pll_reg0, ptr %472, align 4
  %473 = load ptr, ptr %416, align 4
  %474 = call i32 @i2c_transfer(ptr noundef %473, ptr noundef nonnull %17, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #8
  %475 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 2, ptr %475, align 4, !annotation !8
  %476 = load i8, ptr %405, align 4
  %477 = zext i8 %476 to i16
  store i16 %477, ptr %16, align 4
  %478 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %478, align 2
  %479 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr @tda8295_init_if.set_pll_reg7, ptr %479, align 4
  %480 = load ptr, ptr %416, align 4
  %481 = call i32 @i2c_transfer(ptr noundef %480, ptr noundef nonnull %16, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #8
  %482 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 2, ptr %482, align 4, !annotation !8
  %483 = load i8, ptr %405, align 4
  %484 = zext i8 %483 to i16
  store i16 %484, ptr %15, align 4
  %485 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %485, align 2
  %486 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr @tda8295_init_if.set_pll_reg10, ptr %486, align 4
  %487 = load ptr, ptr %416, align 4
  %488 = call i32 @i2c_transfer(ptr noundef %487, ptr noundef nonnull %15, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  %489 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %489, align 4, !annotation !8
  %490 = load i8, ptr %405, align 4
  %491 = zext i8 %490 to i16
  store i16 %491, ptr %14, align 4
  %492 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %492, align 2
  %493 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr @tda8295_init_if.set_gpio_reg0, ptr %493, align 4
  %494 = load ptr, ptr %416, align 4
  %495 = call i32 @i2c_transfer(ptr noundef %494, ptr noundef nonnull %14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  %496 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  store i16 2, ptr %13, align 2
  %497 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #8
  %498 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %498, i8 0, i32 16, i1 false) #8, !annotation !8
  %499 = load i8, ptr %496, align 4
  %500 = zext i8 %499 to i16
  store i16 %500, ptr %12, align 4
  %501 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %501, align 2
  store i16 1, ptr %498, align 4
  %502 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %502, align 4
  %503 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  store i16 %500, ptr %503, align 4
  %504 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %504, align 2
  %505 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %505, align 4
  %506 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %497, ptr %506, align 4
  %507 = getelementptr inbounds %struct.tuner_i2c_props, ptr %496, i32 0, i32 1
  %508 = load ptr, ptr %507, align 4
  %509 = call i32 @i2c_transfer(ptr noundef %508, ptr noundef nonnull %12, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #8
  %510 = load i8, ptr %497, align 1
  %511 = or i8 %510, 64
  store i8 %511, ptr %497, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  %512 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %512, align 4, !annotation !8
  %513 = load i8, ptr %496, align 4
  %514 = zext i8 %513 to i16
  store i16 %514, ptr %11, align 4
  %515 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %515, align 2
  %516 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %13, ptr %516, align 4
  %517 = load ptr, ptr %507, align 4
  %518 = call i32 @i2c_transfer(ptr noundef %517, ptr noundef nonnull %11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  %519 = load ptr, ptr %40, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  store i16 68, ptr %9, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #8
  store i16 70, ptr %10, align 2
  %520 = getelementptr inbounds [2 x i8], ptr %9, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %8) #8
  %521 = getelementptr inbounds i8, ptr %8, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %521, i8 0, i32 16, i1 false) #8, !annotation !8
  %522 = load i8, ptr %519, align 4
  %523 = zext i8 %522 to i16
  store i16 %523, ptr %8, align 4
  %524 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %524, align 2
  store i16 1, ptr %521, align 4
  %525 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %525, align 4
  %526 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1
  store i16 %523, ptr %526, align 4
  %527 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 1
  store i16 1, ptr %527, align 2
  %528 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 2
  store i16 1, ptr %528, align 4
  %529 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 1, i32 3
  store ptr %520, ptr %529, align 4
  %530 = getelementptr inbounds %struct.tuner_i2c_props, ptr %519, i32 0, i32 1
  %531 = load ptr, ptr %530, align 4
  %532 = call i32 @i2c_transfer(ptr noundef %531, ptr noundef nonnull %8, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %8) #8
  %533 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  %534 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %534, i8 0, i32 16, i1 false) #8, !annotation !8
  %535 = load i8, ptr %519, align 4
  %536 = zext i8 %535 to i16
  store i16 %536, ptr %7, align 4
  %537 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %537, align 2
  store i16 1, ptr %534, align 4
  %538 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %10, ptr %538, align 4
  %539 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %536, ptr %539, align 4
  %540 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %540, align 2
  %541 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %541, align 4
  %542 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %533, ptr %542, align 4
  %543 = load ptr, ptr %530, align 4
  %544 = call i32 @i2c_transfer(ptr noundef %543, ptr noundef nonnull %7, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  %545 = load i8, ptr %520, align 1
  %546 = and i8 %545, -16
  store i8 %546, ptr %520, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %547 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %547, align 4, !annotation !8
  %548 = load i8, ptr %519, align 4
  %549 = zext i8 %548 to i16
  store i16 %549, ptr %6, align 4
  %550 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %550, align 2
  %551 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %9, ptr %551, align 4
  %552 = load ptr, ptr %530, align 4
  %553 = call i32 @i2c_transfer(ptr noundef %552, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %554 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %554, align 4, !annotation !8
  %555 = load i8, ptr %519, align 4
  %556 = zext i8 %555 to i16
  store i16 %556, ptr %5, align 4
  %557 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %557, align 2
  %558 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %10, ptr %558, align 4
  %559 = load ptr, ptr %530, align 4
  %560 = call i32 @i2c_transfer(ptr noundef %559, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  br label %576

561:                                              ; preds = %313, %308, %234, %232
  %562 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(36) %562, i8 0, i32 36, i1 false)
  %563 = load ptr, ptr %40, align 4
  %564 = getelementptr inbounds %struct.tda8290_priv, ptr %563, i32 0, i32 3
  %565 = load i8, ptr %564, align 2
  %566 = and i8 %565, 28
  %567 = icmp eq i8 %566, 0
  br i1 %567, label %574, label %568

568:                                              ; preds = %561
  %569 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 1
  %570 = load ptr, ptr %569, align 4
  %571 = icmp eq ptr %570, null
  br i1 %571, label %574, label %572

572:                                              ; preds = %568
  call void %570(ptr noundef %0) #8
  %573 = load ptr, ptr %40, align 4
  br label %574

574:                                              ; preds = %572, %568, %561
  %575 = phi ptr [ %563, %568 ], [ %573, %572 ], [ %563, %561 ]
  call void @kfree(ptr noundef %575) #8
  store ptr null, ptr %40, align 4
  br label %576

576:                                              ; preds = %574, %404, %401, %392, %4
  %577 = phi ptr [ null, %574 ], [ null, %4 ], [ %0, %401 ], [ %0, %404 ], [ %0, %392 ]
  ret ptr %577
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda8290_probe(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 31, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 16, i1 false), !annotation !8
  %6 = load i8, ptr %0, align 4
  %7 = zext i8 %6 to i16
  store i16 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  store i16 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tuner_i2c_props, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 2) #8
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i8, ptr %2, align 1
  %21 = zext i8 %20 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.tda8290_probe, i32 noundef %21) #9
  br label %36

23:                                               ; preds = %1
  %24 = load i8, ptr %3, align 1
  %25 = icmp eq i8 %24, -119
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load i32, ptr @debug, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %36, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %15, align 4
  %31 = getelementptr inbounds %struct.i2c_adapter, ptr %30, i32 0, i32 11
  %32 = load i32, ptr %31, align 4
  %33 = load i8, ptr %0, align 4
  %34 = zext i8 %33 to i32
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.tda8290_probe, i32 noundef %32, i32 noundef %34) #9
  br label %36

36:                                               ; preds = %29, %26, %23, %19
  %37 = phi i32 [ -19, %19 ], [ 0, %29 ], [ 0, %26 ], [ -19, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret i32 %37
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda8295_probe(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #8
  store i8 47, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #8
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 16, i1 false), !annotation !8
  %6 = load i8, ptr %0, align 4
  %7 = zext i8 %6 to i16
  store i16 %7, ptr %4, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  store i16 1, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %7, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %3, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tuner_i2c_props, ptr %0, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %4, i32 noundef 2) #8
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i8, ptr %2, align 1
  %21 = zext i8 %20 to i32
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.tda8295_probe, i32 noundef %21) #9
  br label %39

23:                                               ; preds = %1
  %24 = load i8, ptr %3, align 1
  %25 = and i8 %24, -2
  %26 = icmp eq i8 %25, -118
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %39, label %30

30:                                               ; preds = %27
  %31 = icmp eq i8 %24, -118
  %32 = select i1 %31, ptr @.str.30, ptr @.str.31
  %33 = load ptr, ptr %15, align 4
  %34 = getelementptr inbounds %struct.i2c_adapter, ptr %33, i32 0, i32 11
  %35 = load i32, ptr %34, align 4
  %36 = load i8, ptr %0, align 4
  %37 = zext i8 %36 to i32
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.tda8295_probe, ptr noundef nonnull %32, i32 noundef %35, i32 noundef %37) #9
  br label %39

39:                                               ; preds = %30, %27, %23, %19
  %40 = phi i32 [ -19, %19 ], [ 0, %30 ], [ 0, %27 ], [ -19, %23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #8
  ret i32 %40
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda829x_release(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tda8290_priv, ptr %3, i32 0, i32 3
  %5 = load i8, ptr %4, align 2
  %6 = and i8 %5, 28
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %8
  tail call void %10(ptr noundef %0) #8
  %13 = load ptr, ptr %2, align 4
  br label %14

14:                                               ; preds = %12, %8, %1
  %15 = phi ptr [ %3, %8 ], [ %13, %12 ], [ %3, %1 ]
  tail call void @kfree(ptr noundef %15) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @tda829x_probe(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca %struct.tuner_i2c_props, align 4
  %12 = alloca i8, align 1
  %13 = alloca [8 x i8], align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %11) #8
  store i32 0, ptr %11, align 4, !annotation !8
  store i8 %1, ptr %11, align 4
  %14 = getelementptr inbounds %struct.tuner_i2c_props, ptr %11, i32 0, i32 1
  store ptr %0, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tuner_i2c_props, ptr %11, i32 0, i32 2
  store i32 0, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %11, i32 0, i32 3
  store ptr null, ptr %16, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %12) #8
  store i8 0, ptr %12, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #8
  store i64 0, ptr %13, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  %17 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %17, i8 0, i32 16, i1 false) #8, !annotation !8
  %18 = zext i8 %1 to i16
  store i16 %18, ptr %10, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %19, align 2
  store i16 1, ptr %17, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr @tda829x_probe.soft_reset, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %18, ptr %21, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 8, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %13, ptr %24, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %10, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  %26 = load i8, ptr %13, align 8
  %27 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 1
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, %26
  %30 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 2
  %31 = load i8, ptr %30, align 2
  %32 = icmp eq i8 %31, %26
  %33 = select i1 %29, i1 %32, i1 false
  %34 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 3
  %35 = load i8, ptr %34, align 1
  %36 = icmp eq i8 %35, %26
  %37 = select i1 %33, i1 %36, i1 false
  %38 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 4
  %39 = load i8, ptr %38, align 4
  %40 = icmp eq i8 %39, %26
  %41 = select i1 %37, i1 %40, i1 false
  %42 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 5
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, %26
  %45 = select i1 %41, i1 %44, i1 false
  %46 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 6
  %47 = load i8, ptr %46, align 2
  %48 = icmp eq i8 %47, %26
  %49 = select i1 %45, i1 %48, i1 false
  %50 = getelementptr inbounds [8 x i8], ptr %13, i32 0, i32 7
  %51 = load i8, ptr %50, align 1
  %52 = icmp eq i8 %51, %26
  %53 = select i1 %49, i1 %52, i1 false
  br i1 %53, label %103, label %54

54:                                               ; preds = %2
  %55 = call fastcc i32 @tda8290_probe(ptr noundef nonnull %11)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %103, label %57

57:                                               ; preds = %54
  %58 = call fastcc i32 @tda8295_probe(ptr noundef nonnull %11)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %103, label %60

60:                                               ; preds = %57
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %61 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %61, align 4, !annotation !8
  store i16 %18, ptr %9, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %62, align 2
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr @tda829x_probe.easy_mode_b, ptr %63, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %65 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %65, align 4, !annotation !8
  store i16 %18, ptr %8, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %66, align 2
  %67 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr @tda829x_probe.soft_reset, ptr %67, align 4
  %68 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  %69 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %69, i8 0, i32 16, i1 false) #8, !annotation !8
  store i16 %18, ptr %7, align 4
  %70 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %70, align 2
  store i16 1, ptr %69, align 4
  %71 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr @tda829x_probe.addr_dto_lsb, ptr %71, align 4
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %18, ptr %72, align 4
  %73 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %73, align 2
  %74 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %74, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %12, ptr %75, align 4
  %76 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %7, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  %77 = load i8, ptr %12, align 1
  %78 = icmp eq i8 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %80 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %80, align 4, !annotation !8
  store i16 %18, ptr %6, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %81, align 2
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr @tda829x_probe.easy_mode_g, ptr %82, align 4
  %83 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %84 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %84, align 4, !annotation !8
  store i16 %18, ptr %5, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %85, align 2
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr @tda829x_probe.soft_reset, ptr %86, align 4
  %87 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %88 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %88, i8 0, i32 16, i1 false) #8, !annotation !8
  store i16 %18, ptr %4, align 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %89, align 2
  store i16 1, ptr %88, align 4
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr @tda829x_probe.addr_dto_lsb, ptr %90, align 4
  %91 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %18, ptr %91, align 4
  %92 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %92, align 2
  %93 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %93, align 4
  %94 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %12, ptr %94, align 4
  %95 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %4, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  %96 = load i8, ptr %12, align 1
  %97 = icmp eq i8 %96, 123
  br i1 %97, label %103, label %98

98:                                               ; preds = %79, %60
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %99 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 3, ptr %99, align 4, !annotation !8
  store i16 %18, ptr %3, align 4
  %100 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %100, align 2
  %101 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr @tda829x_probe.restore_9886, ptr %101, align 4
  %102 = call i32 @i2c_transfer(ptr noundef %0, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br label %103

103:                                              ; preds = %98, %79, %57, %54, %2
  %104 = phi i32 [ -19, %98 ], [ 0, %57 ], [ 0, %54 ], [ 0, %79 ], [ -19, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %11) #8
  ret i32 %104
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda8290_set_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca %struct.i2c_msg, align 4
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca [2 x %struct.i2c_msg], align 4
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca [2 x %struct.i2c_msg], align 4
  %14 = alloca %struct.i2c_msg, align 4
  %15 = alloca [2 x %struct.i2c_msg], align 4
  %16 = alloca [2 x %struct.i2c_msg], align 4
  %17 = alloca [2 x %struct.i2c_msg], align 4
  %18 = alloca %struct.i2c_msg, align 4
  %19 = alloca %struct.i2c_msg, align 4
  %20 = alloca %struct.i2c_msg, align 4
  %21 = alloca %struct.i2c_msg, align 4
  %22 = alloca %struct.i2c_msg, align 4
  %23 = alloca %struct.i2c_msg, align 4
  %24 = alloca %struct.i2c_msg, align 4
  %25 = alloca %struct.i2c_msg, align 4
  %26 = alloca %struct.i2c_msg, align 4
  %27 = alloca %struct.i2c_msg, align 4
  %28 = alloca %struct.i2c_msg, align 4
  %29 = alloca [2 x i8], align 2
  %30 = alloca [2 x i8], align 2
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %32 = load ptr, ptr %31, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %29) #8
  store i16 1, ptr %29, align 2, !annotation !8
  %33 = getelementptr inbounds i8, ptr %29, i32 1
  %34 = getelementptr inbounds %struct.tda8290_priv, ptr %32, i32 0, i32 1
  %35 = load i8, ptr %34, align 4
  store i8 %35, ptr %33, align 1
  tail call fastcc void @set_audio(ptr noundef %0, ptr noundef %1)
  %36 = getelementptr inbounds %struct.tda8290_priv, ptr %32, i32 0, i32 4, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = icmp ne i32 %37, 0
  %39 = load i32, ptr @debug, align 4
  %40 = icmp ne i32 %39, 0
  %41 = select i1 %38, i1 %40, i1 false
  br i1 %41, label %42, label %56

42:                                               ; preds = %2
  %43 = getelementptr inbounds %struct.tuner_i2c_props, ptr %32, i32 0, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.tuner_i2c_props, ptr %32, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.i2c_adapter, ptr %46, i32 0, i32 11
  %50 = load i32, ptr %49, align 4
  br label %51

51:                                               ; preds = %48, %42
  %52 = phi i32 [ %50, %48 ], [ -1, %42 ]
  %53 = load i8, ptr %32, align 4
  %54 = zext i8 %53 to i32
  %55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %44, i32 noundef %52, i32 noundef %54, i32 noundef %37) #9
  br label %56

56:                                               ; preds = %51, %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %28) #8
  %57 = getelementptr inbounds i8, ptr %28, i32 4
  store i32 2, ptr %57, align 4, !annotation !8
  %58 = load i8, ptr %32, align 4
  %59 = zext i8 %58 to i16
  store i16 %59, ptr %28, align 4
  %60 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 1
  store i16 0, ptr %60, align 2
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %28, i32 0, i32 3
  store ptr %29, ptr %61, align 4
  %62 = getelementptr inbounds %struct.tuner_i2c_props, ptr %32, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %28, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %28) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #8
  %65 = getelementptr inbounds i8, ptr %27, i32 4
  store i32 2, ptr %65, align 4, !annotation !8
  %66 = load i8, ptr %32, align 4
  %67 = zext i8 %66 to i16
  store i16 %67, ptr %27, align 4
  %68 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 1
  store i16 0, ptr %68, align 2
  %69 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr @tda8290_set_params.agc_out_on, ptr %69, align 4
  %70 = load ptr, ptr %62, align 4
  %71 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %27, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %26) #8
  %72 = getelementptr inbounds i8, ptr %26, i32 4
  store i32 2, ptr %72, align 4, !annotation !8
  %73 = load i8, ptr %32, align 4
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %26, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 1
  store i16 0, ptr %75, align 2
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %26, i32 0, i32 3
  store ptr @tda8290_set_params.soft_reset, ptr %76, align 4
  %77 = load ptr, ptr %62, align 4
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %26, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %26) #8
  call void @msleep(i32 noundef 1) #8
  %79 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %80 = load i32, ptr %79, align 4
  %81 = icmp eq i32 %80, 1
  br i1 %81, label %82, label %108

82:                                               ; preds = %56
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %30) #8
  store i16 275, ptr %30, align 2
  %83 = load i32, ptr @deemphasis_50, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %87, label %85

85:                                               ; preds = %82
  %86 = getelementptr inbounds [2 x i8], ptr %30, i32 0, i32 1
  store i8 2, ptr %86, align 1
  br label %87

87:                                               ; preds = %85, %82
  %88 = getelementptr inbounds i8, ptr %25, i32 4
  %89 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 1
  %90 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  br label %91

91:                                               ; preds = %91, %87
  %92 = phi i32 [ 0, %87 ], [ %98, %91 ]
  %93 = getelementptr [13 x %struct.anon.73], ptr @fm_mode, i32 0, i32 %92
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #8
  store i32 2, ptr %88, align 4, !annotation !8
  %94 = load i8, ptr %32, align 4
  %95 = zext i8 %94 to i16
  store i16 %95, ptr %25, align 4
  store i16 0, ptr %89, align 2
  store ptr %93, ptr %90, align 4
  %96 = load ptr, ptr %62, align 4
  %97 = call i32 @i2c_transfer(ptr noundef %96, ptr noundef nonnull %25, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #8
  %98 = add nuw nsw i32 %92, 1
  %99 = icmp eq i32 %98, 13
  br i1 %99, label %100, label %91

100:                                              ; preds = %91
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %24) #8
  %101 = getelementptr inbounds i8, ptr %24, i32 4
  store i32 2, ptr %101, align 4, !annotation !8
  %102 = load i8, ptr %32, align 4
  %103 = zext i8 %102 to i16
  store i16 %103, ptr %24, align 4
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 1
  store i16 0, ptr %104, align 2
  %105 = getelementptr inbounds %struct.i2c_msg, ptr %24, i32 0, i32 3
  store ptr %30, ptr %105, align 4
  %106 = load ptr, ptr %62, align 4
  %107 = call i32 @i2c_transfer(ptr noundef %106, ptr noundef nonnull %24, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %24) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %30) #8
  br label %159

108:                                              ; preds = %56
  %109 = load i8, ptr %34, align 4
  %110 = xor i8 %109, -128
  store i8 %110, ptr getelementptr inbounds ([2 x i8], ptr @tda8290_set_params.expert_mode, i32 0, i32 1), align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #8
  %111 = getelementptr inbounds i8, ptr %23, i32 4
  store i32 2, ptr %111, align 4, !annotation !8
  %112 = load i8, ptr %32, align 4
  %113 = zext i8 %112 to i16
  store i16 %113, ptr %23, align 4
  %114 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 1
  store i16 0, ptr %114, align 2
  %115 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr @tda8290_set_params.expert_mode, ptr %115, align 4
  %116 = load ptr, ptr %62, align 4
  %117 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %23, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %22) #8
  %118 = getelementptr inbounds i8, ptr %22, i32 4
  store i32 2, ptr %118, align 4, !annotation !8
  %119 = load i8, ptr %32, align 4
  %120 = zext i8 %119 to i16
  store i16 %120, ptr %22, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 1
  store i16 0, ptr %121, align 2
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %22, i32 0, i32 3
  store ptr @tda8290_set_params.gainset_off, ptr %122, align 4
  %123 = load ptr, ptr %62, align 4
  %124 = call i32 @i2c_transfer(ptr noundef %123, ptr noundef nonnull %22, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %22) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #8
  %125 = getelementptr inbounds i8, ptr %21, i32 4
  store i32 2, ptr %125, align 4, !annotation !8
  %126 = load i8, ptr %32, align 4
  %127 = zext i8 %126 to i16
  store i16 %127, ptr %21, align 4
  %128 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 1
  store i16 0, ptr %128, align 2
  %129 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr @tda8290_set_params.if_agc_spd, ptr %129, align 4
  %130 = load ptr, ptr %62, align 4
  %131 = call i32 @i2c_transfer(ptr noundef %130, ptr noundef nonnull %21, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #8
  %132 = load i8, ptr %34, align 4
  %133 = and i8 %132, 96
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %143, label %135

135:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %20) #8
  %136 = getelementptr inbounds i8, ptr %20, i32 4
  store i32 2, ptr %136, align 4, !annotation !8
  %137 = load i8, ptr %32, align 4
  %138 = zext i8 %137 to i16
  store i16 %138, ptr %20, align 4
  %139 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 1
  store i16 0, ptr %139, align 2
  %140 = getelementptr inbounds %struct.i2c_msg, ptr %20, i32 0, i32 3
  store ptr @tda8290_set_params.adc_head_9, ptr %140, align 4
  %141 = load ptr, ptr %62, align 4
  %142 = call i32 @i2c_transfer(ptr noundef %141, ptr noundef nonnull %20, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %20) #8
  br label %151

143:                                              ; preds = %108
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #8
  %144 = getelementptr inbounds i8, ptr %19, i32 4
  store i32 2, ptr %144, align 4, !annotation !8
  %145 = load i8, ptr %32, align 4
  %146 = zext i8 %145 to i16
  store i16 %146, ptr %19, align 4
  %147 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 1
  store i16 0, ptr %147, align 2
  %148 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr @tda8290_set_params.adc_head_6, ptr %148, align 4
  %149 = load ptr, ptr %62, align 4
  %150 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %19, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #8
  br label %151

151:                                              ; preds = %143, %135
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %18) #8
  %152 = getelementptr inbounds i8, ptr %18, i32 4
  store i32 2, ptr %152, align 4, !annotation !8
  %153 = load i8, ptr %32, align 4
  %154 = zext i8 %153 to i16
  store i16 %154, ptr %18, align 4
  %155 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 1
  store i16 0, ptr %155, align 2
  %156 = getelementptr inbounds %struct.i2c_msg, ptr %18, i32 0, i32 3
  store ptr @tda8290_set_params.pll_bw_nom, ptr %156, align 4
  %157 = load ptr, ptr %62, align 4
  %158 = call i32 @i2c_transfer(ptr noundef %157, ptr noundef nonnull %18, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %18) #8
  br label %159

159:                                              ; preds = %151, %100
  %160 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %161 = load ptr, ptr %160, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %159
  %164 = call i32 %161(ptr noundef %0, i32 noundef 1) #8
  br label %165

165:                                              ; preds = %163, %159
  %166 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 7
  %167 = load ptr, ptr %166, align 4
  %168 = icmp eq ptr %167, null
  br i1 %168, label %171, label %169

169:                                              ; preds = %165
  %170 = call i32 %167(ptr noundef %0, ptr noundef %1) #8
  br label %171

171:                                              ; preds = %169, %165
  %172 = getelementptr inbounds i8, ptr %17, i32 4
  %173 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 1
  %174 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  %175 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 1
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 2
  %178 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 1, i32 3
  %179 = getelementptr inbounds %struct.tuner_i2c_props, ptr %32, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %172, i8 0, i32 16, i1 false) #8, !annotation !8
  %180 = load i8, ptr %32, align 4
  %181 = zext i8 %180 to i16
  store i16 %181, ptr %17, align 4
  store i16 0, ptr %173, align 2
  store i16 1, ptr %172, align 4
  store ptr @tda8290_set_params.addr_pll_stat, ptr %174, align 4
  store i16 %181, ptr %175, align 4
  store i16 1, ptr %176, align 2
  store i16 1, ptr %177, align 4
  store ptr @tda8290_set_params.pll_stat, ptr %178, align 4
  %182 = load ptr, ptr %62, align 4
  %183 = call i32 @i2c_transfer(ptr noundef %182, ptr noundef nonnull %17, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #8
  %184 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  %185 = icmp sgt i8 %184, -1
  br i1 %185, label %225, label %186

186:                                              ; preds = %262, %240, %171
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %16) #8
  %187 = getelementptr inbounds i8, ptr %16, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %187, i8 0, i32 16, i1 false) #8, !annotation !8
  %188 = load i8, ptr %32, align 4
  %189 = zext i8 %188 to i16
  store i16 %189, ptr %16, align 4
  %190 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %190, align 2
  store i16 1, ptr %187, align 4
  %191 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr @tda8290_set_params.addr_adc_sat, ptr %191, align 4
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1
  store i16 %189, ptr %192, align 4
  %193 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 1
  store i16 1, ptr %193, align 2
  %194 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 2
  store i16 1, ptr %194, align 4
  %195 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 1, i32 3
  store ptr @tda8290_set_params.adc_sat, ptr %195, align 4
  %196 = load ptr, ptr %62, align 4
  %197 = call i32 @i2c_transfer(ptr noundef %196, ptr noundef nonnull %16, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %16) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #8
  %198 = getelementptr inbounds i8, ptr %15, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %198, i8 0, i32 16, i1 false) #8, !annotation !8
  %199 = load i8, ptr %32, align 4
  %200 = zext i8 %199 to i16
  store i16 %200, ptr %15, align 4
  %201 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %201, align 2
  store i16 1, ptr %198, align 4
  %202 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr @tda8290_set_params.addr_agc_stat, ptr %202, align 4
  %203 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1
  store i16 %200, ptr %203, align 4
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 1
  store i16 1, ptr %204, align 2
  %205 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 2
  store i16 1, ptr %205, align 4
  %206 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 1, i32 3
  store ptr @tda8290_set_params.agc_stat, ptr %206, align 4
  %207 = load ptr, ptr %62, align 4
  %208 = call i32 @i2c_transfer(ptr noundef %207, ptr noundef nonnull %15, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #8
  %209 = load i32, ptr @debug, align 4
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %285, label %211

211:                                              ; preds = %186
  %212 = load ptr, ptr %179, align 4
  %213 = load ptr, ptr %62, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %218, label %215

215:                                              ; preds = %211
  %216 = getelementptr inbounds %struct.i2c_adapter, ptr %213, i32 0, i32 11
  %217 = load i32, ptr %216, align 4
  br label %218

218:                                              ; preds = %215, %211
  %219 = phi i32 [ %217, %215 ], [ -1, %211 ]
  %220 = load i8, ptr %32, align 4
  %221 = zext i8 %220 to i32
  %222 = load i8, ptr @tda8290_set_params.agc_stat, align 1
  %223 = zext i8 %222 to i32
  %224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %212, i32 noundef %219, i32 noundef %221, i32 noundef %223) #9
  br label %285

225:                                              ; preds = %171
  %226 = load i32, ptr @debug, align 4
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %240, label %228

228:                                              ; preds = %225
  %229 = load ptr, ptr %179, align 4
  %230 = load ptr, ptr %62, align 4
  %231 = icmp eq ptr %230, null
  br i1 %231, label %235, label %232

232:                                              ; preds = %228
  %233 = getelementptr inbounds %struct.i2c_adapter, ptr %230, i32 0, i32 11
  %234 = load i32, ptr %233, align 4
  br label %235

235:                                              ; preds = %232, %228
  %236 = phi i32 [ %234, %232 ], [ -1, %228 ]
  %237 = load i8, ptr %32, align 4
  %238 = zext i8 %237 to i32
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %229, i32 noundef %236, i32 noundef %238) #9
  br label %240

240:                                              ; preds = %235, %225
  call void @msleep(i32 noundef 100) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %172, i8 0, i32 16, i1 false) #8, !annotation !8
  %241 = load i8, ptr %32, align 4
  %242 = zext i8 %241 to i16
  store i16 %242, ptr %17, align 4
  store i16 0, ptr %173, align 2
  store i16 1, ptr %172, align 4
  store ptr @tda8290_set_params.addr_pll_stat, ptr %174, align 4
  store i16 %242, ptr %175, align 4
  store i16 1, ptr %176, align 2
  store i16 1, ptr %177, align 4
  store ptr @tda8290_set_params.pll_stat, ptr %178, align 4
  %243 = load ptr, ptr %62, align 4
  %244 = call i32 @i2c_transfer(ptr noundef %243, ptr noundef nonnull %17, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #8
  %245 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  %246 = icmp sgt i8 %245, -1
  br i1 %246, label %247, label %186

247:                                              ; preds = %240
  %248 = load i32, ptr @debug, align 4
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %262, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %179, align 4
  %252 = load ptr, ptr %62, align 4
  %253 = icmp eq ptr %252, null
  br i1 %253, label %257, label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds %struct.i2c_adapter, ptr %252, i32 0, i32 11
  %256 = load i32, ptr %255, align 4
  br label %257

257:                                              ; preds = %254, %250
  %258 = phi i32 [ %256, %254 ], [ -1, %250 ]
  %259 = load i8, ptr %32, align 4
  %260 = zext i8 %259 to i32
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %251, i32 noundef %258, i32 noundef %260) #9
  br label %262

262:                                              ; preds = %257, %247
  call void @msleep(i32 noundef 100) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %17) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %172, i8 0, i32 16, i1 false) #8, !annotation !8
  %263 = load i8, ptr %32, align 4
  %264 = zext i8 %263 to i16
  store i16 %264, ptr %17, align 4
  store i16 0, ptr %173, align 2
  store i16 1, ptr %172, align 4
  store ptr @tda8290_set_params.addr_pll_stat, ptr %174, align 4
  store i16 %264, ptr %175, align 4
  store i16 1, ptr %176, align 2
  store i16 1, ptr %177, align 4
  store ptr @tda8290_set_params.pll_stat, ptr %178, align 4
  %265 = load ptr, ptr %62, align 4
  %266 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %17, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %17) #8
  %267 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  %268 = icmp sgt i8 %267, -1
  br i1 %268, label %269, label %186

269:                                              ; preds = %262
  %270 = load i32, ptr @debug, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %284, label %272

272:                                              ; preds = %269
  %273 = load ptr, ptr %179, align 4
  %274 = load ptr, ptr %62, align 4
  %275 = icmp eq ptr %274, null
  br i1 %275, label %279, label %276

276:                                              ; preds = %272
  %277 = getelementptr inbounds %struct.i2c_adapter, ptr %274, i32 0, i32 11
  %278 = load i32, ptr %277, align 4
  br label %279

279:                                              ; preds = %276, %272
  %280 = phi i32 [ %278, %276 ], [ -1, %272 ]
  %281 = load i8, ptr %32, align 4
  %282 = zext i8 %281 to i32
  %283 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %273, i32 noundef %280, i32 noundef %282) #9
  br label %284

284:                                              ; preds = %279, %269
  call void @msleep(i32 noundef 100) #8
  br label %285

285:                                              ; preds = %284, %218, %186
  %286 = load i8, ptr @tda8290_set_params.agc_stat, align 1
  %287 = icmp ugt i8 %286, 115
  br i1 %287, label %294, label %288

288:                                              ; preds = %285
  %289 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  %290 = icmp sgt i8 %289, -1
  %291 = load i8, ptr @tda8290_set_params.adc_sat, align 1
  %292 = icmp ult i8 %291, 20
  %293 = select i1 %290, i1 %292, i1 false
  br i1 %293, label %294, label %432

294:                                              ; preds = %288, %285
  %295 = load i32, ptr @debug, align 4
  %296 = icmp eq i32 %295, 0
  br i1 %296, label %315, label %297

297:                                              ; preds = %294
  %298 = load ptr, ptr %179, align 4
  %299 = load ptr, ptr %62, align 4
  %300 = icmp eq ptr %299, null
  br i1 %300, label %304, label %301

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.i2c_adapter, ptr %299, i32 0, i32 11
  %303 = load i32, ptr %302, align 4
  br label %304

304:                                              ; preds = %301, %297
  %305 = phi i32 [ %303, %301 ], [ -1, %297 ]
  %306 = load i8, ptr %32, align 4
  %307 = zext i8 %306 to i32
  %308 = zext i8 %286 to i32
  %309 = load i8, ptr @tda8290_set_params.adc_sat, align 1
  %310 = zext i8 %309 to i32
  %311 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  %312 = and i8 %311, -128
  %313 = zext i8 %312 to i32
  %314 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %298, i32 noundef %305, i32 noundef %307, i32 noundef %308, i32 noundef %310, i32 noundef %313) #9
  br label %315

315:                                              ; preds = %304, %294
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %14) #8
  %316 = getelementptr inbounds i8, ptr %14, i32 4
  store i32 2, ptr %316, align 4, !annotation !8
  %317 = load i8, ptr %32, align 4
  %318 = zext i8 %317 to i16
  store i16 %318, ptr %14, align 4
  %319 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 1
  store i16 0, ptr %319, align 2
  %320 = getelementptr inbounds %struct.i2c_msg, ptr %14, i32 0, i32 3
  store ptr @tda8290_set_params.gainset_2, ptr %320, align 4
  %321 = load ptr, ptr %62, align 4
  %322 = call i32 @i2c_transfer(ptr noundef %321, ptr noundef nonnull %14, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %14) #8
  call void @msleep(i32 noundef 100) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %13) #8
  %323 = getelementptr inbounds i8, ptr %13, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %323, i8 0, i32 16, i1 false) #8, !annotation !8
  %324 = load i8, ptr %32, align 4
  %325 = zext i8 %324 to i16
  store i16 %325, ptr %13, align 4
  %326 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 1
  store i16 0, ptr %326, align 2
  store i16 1, ptr %323, align 4
  %327 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr @tda8290_set_params.addr_agc_stat, ptr %327, align 4
  %328 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1
  store i16 %325, ptr %328, align 4
  %329 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 1
  store i16 1, ptr %329, align 2
  %330 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 2
  store i16 1, ptr %330, align 4
  %331 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 1, i32 3
  store ptr @tda8290_set_params.agc_stat, ptr %331, align 4
  %332 = load ptr, ptr %62, align 4
  %333 = call i32 @i2c_transfer(ptr noundef %332, ptr noundef nonnull %13, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #8
  %334 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %334, i8 0, i32 16, i1 false) #8, !annotation !8
  %335 = load i8, ptr %32, align 4
  %336 = zext i8 %335 to i16
  store i16 %336, ptr %12, align 4
  %337 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %337, align 2
  store i16 1, ptr %334, align 4
  %338 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr @tda8290_set_params.addr_pll_stat, ptr %338, align 4
  %339 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  store i16 %336, ptr %339, align 4
  %340 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %340, align 2
  %341 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %341, align 4
  %342 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr @tda8290_set_params.pll_stat, ptr %342, align 4
  %343 = load ptr, ptr %62, align 4
  %344 = call i32 @i2c_transfer(ptr noundef %343, ptr noundef nonnull %12, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #8
  %345 = load i8, ptr @tda8290_set_params.agc_stat, align 1
  %346 = icmp ugt i8 %345, 115
  %347 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  %348 = icmp sgt i8 %347, -1
  %349 = select i1 %346, i1 true, i1 %348
  br i1 %349, label %350, label %432

350:                                              ; preds = %315
  %351 = load i32, ptr @debug, align 4
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %368, label %353

353:                                              ; preds = %350
  %354 = load ptr, ptr %179, align 4
  %355 = load ptr, ptr %62, align 4
  %356 = icmp eq ptr %355, null
  br i1 %356, label %360, label %357

357:                                              ; preds = %353
  %358 = getelementptr inbounds %struct.i2c_adapter, ptr %355, i32 0, i32 11
  %359 = load i32, ptr %358, align 4
  br label %360

360:                                              ; preds = %357, %353
  %361 = phi i32 [ %359, %357 ], [ -1, %353 ]
  %362 = load i8, ptr %32, align 4
  %363 = zext i8 %362 to i32
  %364 = zext i8 %345 to i32
  %365 = and i8 %347, -128
  %366 = zext i8 %365 to i32
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %354, i32 noundef %361, i32 noundef %363, i32 noundef %364, i32 noundef %366) #9
  br label %368

368:                                              ; preds = %360, %350
  %369 = getelementptr inbounds %struct.tda8290_priv, ptr %32, i32 0, i32 4, i32 4
  %370 = load ptr, ptr %369, align 4
  %371 = icmp eq ptr %370, null
  br i1 %371, label %373, label %372

372:                                              ; preds = %368
  call void %370(ptr noundef %0) #8
  br label %373

373:                                              ; preds = %372, %368
  call void @msleep(i32 noundef 100) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #8
  %374 = getelementptr inbounds i8, ptr %11, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %374, i8 0, i32 16, i1 false) #8, !annotation !8
  %375 = load i8, ptr %32, align 4
  %376 = zext i8 %375 to i16
  store i16 %376, ptr %11, align 4
  %377 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %377, align 2
  store i16 1, ptr %374, align 4
  %378 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr @tda8290_set_params.addr_agc_stat, ptr %378, align 4
  %379 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1
  store i16 %376, ptr %379, align 4
  %380 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 1
  store i16 1, ptr %380, align 2
  %381 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 2
  store i16 1, ptr %381, align 4
  %382 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 1, i32 3
  store ptr @tda8290_set_params.agc_stat, ptr %382, align 4
  %383 = load ptr, ptr %62, align 4
  %384 = call i32 @i2c_transfer(ptr noundef %383, ptr noundef nonnull %11, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  %385 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %385, i8 0, i32 16, i1 false) #8, !annotation !8
  %386 = load i8, ptr %32, align 4
  %387 = zext i8 %386 to i16
  store i16 %387, ptr %10, align 4
  %388 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %388, align 2
  store i16 1, ptr %385, align 4
  %389 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr @tda8290_set_params.addr_pll_stat, ptr %389, align 4
  %390 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %387, ptr %390, align 4
  %391 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %391, align 2
  %392 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %392, align 4
  %393 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr @tda8290_set_params.pll_stat, ptr %393, align 4
  %394 = load ptr, ptr %62, align 4
  %395 = call i32 @i2c_transfer(ptr noundef %394, ptr noundef nonnull %10, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  %396 = load i8, ptr @tda8290_set_params.agc_stat, align 1
  %397 = icmp ugt i8 %396, 115
  %398 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  %399 = icmp sgt i8 %398, -1
  %400 = select i1 %397, i1 true, i1 %399
  br i1 %400, label %401, label %432

401:                                              ; preds = %373
  %402 = load i32, ptr @debug, align 4
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %417, label %404

404:                                              ; preds = %401
  %405 = load ptr, ptr %179, align 4
  %406 = load ptr, ptr %62, align 4
  %407 = icmp eq ptr %406, null
  br i1 %407, label %411, label %408

408:                                              ; preds = %404
  %409 = getelementptr inbounds %struct.i2c_adapter, ptr %406, i32 0, i32 11
  %410 = load i32, ptr %409, align 4
  br label %411

411:                                              ; preds = %408, %404
  %412 = phi i32 [ %410, %408 ], [ -1, %404 ]
  %413 = load i8, ptr %32, align 4
  %414 = zext i8 %413 to i32
  %415 = zext i8 %396 to i32
  %416 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef %405, i32 noundef %412, i32 noundef %414, i32 noundef %415) #9
  br label %417

417:                                              ; preds = %411, %401
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #8
  %418 = getelementptr inbounds i8, ptr %9, i32 4
  store i32 2, ptr %418, align 4, !annotation !8
  %419 = load i8, ptr %32, align 4
  %420 = zext i8 %419 to i16
  store i16 %420, ptr %9, align 4
  %421 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %421, align 2
  %422 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr @tda8290_set_params.adc_head_12, ptr %422, align 4
  %423 = load ptr, ptr %62, align 4
  %424 = call i32 @i2c_transfer(ptr noundef %423, ptr noundef nonnull %9, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %425 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %425, align 4, !annotation !8
  %426 = load i8, ptr %32, align 4
  %427 = zext i8 %426 to i16
  store i16 %427, ptr %8, align 4
  %428 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %428, align 2
  %429 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr @tda8290_set_params.pll_bw_low, ptr %429, align 4
  %430 = load ptr, ptr %62, align 4
  %431 = call i32 @i2c_transfer(ptr noundef %430, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @msleep(i32 noundef 100) #8
  br label %432

432:                                              ; preds = %417, %373, %315, %288
  %433 = load i8, ptr %34, align 4
  %434 = and i8 %433, 96
  %435 = icmp eq i8 %434, 0
  br i1 %435, label %494, label %436

436:                                              ; preds = %432
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  %437 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %437, i8 0, i32 16, i1 false) #8, !annotation !8
  %438 = load i8, ptr %32, align 4
  %439 = zext i8 %438 to i16
  store i16 %439, ptr %7, align 4
  %440 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %440, align 2
  store i16 1, ptr %437, align 4
  %441 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr @tda8290_set_params.addr_adc_sat, ptr %441, align 4
  %442 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %439, ptr %442, align 4
  %443 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %443, align 2
  %444 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %444, align 4
  %445 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr @tda8290_set_params.adc_sat, ptr %445, align 4
  %446 = load ptr, ptr %62, align 4
  %447 = call i32 @i2c_transfer(ptr noundef %446, ptr noundef nonnull %7, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  %448 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %448, i8 0, i32 16, i1 false) #8, !annotation !8
  %449 = load i8, ptr %32, align 4
  %450 = zext i8 %449 to i16
  store i16 %450, ptr %6, align 4
  %451 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %451, align 2
  store i16 1, ptr %448, align 4
  %452 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr @tda8290_set_params.addr_pll_stat, ptr %452, align 4
  %453 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %450, ptr %453, align 4
  %454 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %454, align 2
  %455 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %455, align 4
  %456 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr @tda8290_set_params.pll_stat, ptr %456, align 4
  %457 = load ptr, ptr %62, align 4
  %458 = call i32 @i2c_transfer(ptr noundef %457, ptr noundef nonnull %6, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  %459 = load i8, ptr @tda8290_set_params.adc_sat, align 1
  %460 = icmp ugt i8 %459, 20
  %461 = load i8, ptr @tda8290_set_params.pll_stat, align 1
  %462 = icmp sgt i8 %461, -1
  %463 = select i1 %460, i1 true, i1 %462
  br i1 %463, label %464, label %494

464:                                              ; preds = %436
  %465 = load i32, ptr @debug, align 4
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %479, label %467

467:                                              ; preds = %464
  %468 = load ptr, ptr %179, align 4
  %469 = load ptr, ptr %62, align 4
  %470 = icmp eq ptr %469, null
  br i1 %470, label %474, label %471

471:                                              ; preds = %467
  %472 = getelementptr inbounds %struct.i2c_adapter, ptr %469, i32 0, i32 11
  %473 = load i32, ptr %472, align 4
  br label %474

474:                                              ; preds = %471, %467
  %475 = phi i32 [ %473, %471 ], [ -1, %467 ]
  %476 = load i8, ptr %32, align 4
  %477 = zext i8 %476 to i32
  %478 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %468, i32 noundef %475, i32 noundef %477) #9
  br label %479

479:                                              ; preds = %474, %464
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %480 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %480, align 4, !annotation !8
  %481 = load i8, ptr %32, align 4
  %482 = zext i8 %481 to i16
  store i16 %482, ptr %5, align 4
  %483 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %483, align 2
  %484 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr @tda8290_set_params.agc_rst_on, ptr %484, align 4
  %485 = load ptr, ptr %62, align 4
  %486 = call i32 @i2c_transfer(ptr noundef %485, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @msleep(i32 noundef 40) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %487 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %487, align 4, !annotation !8
  %488 = load i8, ptr %32, align 4
  %489 = zext i8 %488 to i16
  store i16 %489, ptr %4, align 4
  %490 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %490, align 2
  %491 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr @tda8290_set_params.agc_rst_off, ptr %491, align 4
  %492 = load ptr, ptr %62, align 4
  %493 = call i32 @i2c_transfer(ptr noundef %492, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  br label %494

494:                                              ; preds = %479, %436, %432
  %495 = load ptr, ptr %160, align 4
  %496 = icmp eq ptr %495, null
  br i1 %496, label %499, label %497

497:                                              ; preds = %494
  %498 = call i32 %495(ptr noundef %0, i32 noundef 0) #8
  br label %499

499:                                              ; preds = %497, %494
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %500 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %500, align 4, !annotation !8
  %501 = load i8, ptr %32, align 4
  %502 = zext i8 %501 to i16
  store i16 %502, ptr %3, align 4
  %503 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %503, align 2
  %504 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr @tda8290_set_params.if_agc_set, ptr %504, align 4
  %505 = load ptr, ptr %62, align 4
  %506 = call i32 @i2c_transfer(ptr noundef %505, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %29) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8290_has_signal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [1 x i8], align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 27, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %8 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #8, !annotation !8
  %9 = load i8, ptr %7, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %3, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %11, align 2
  store i16 1, ptr %8, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %20 = load i8, ptr %5, align 1
  %21 = ashr i8 %20, 7
  %22 = sext i8 %21 to i16
  store i16 %22, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda8290_standby(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = getelementptr inbounds %struct.tda8290_priv, ptr %6, i32 0, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %4, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  store i16 2, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr @tda8290_standby.cb1, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = tail call i32 %15(ptr noundef %0, i32 noundef 1) #8
  br label %19

19:                                               ; preds = %17, %1
  %20 = getelementptr inbounds %struct.tda8290_priv, ptr %6, i32 0, i32 3
  %21 = load i8, ptr %20, align 2
  %22 = and i8 %21, 8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i8 -112, ptr getelementptr inbounds ([2 x i8], ptr @tda8290_standby.cb1, i32 0, i32 1), align 1
  br label %25

25:                                               ; preds = %24, %19
  %26 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %4, i32 noundef 1) #8
  %29 = load ptr, ptr %14, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = call i32 %29(ptr noundef %0, i32 noundef 0) #8
  br label %33

33:                                               ; preds = %31, %25
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %34 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %34, align 4, !annotation !8
  %35 = load i8, ptr %6, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %3, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr @tda8290_standby.tda8290_agc_tri, ptr %38, align 4
  %39 = load ptr, ptr %26, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  %41 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %41, align 4, !annotation !8
  %42 = load i8, ptr %6, align 4
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %2, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %44, align 2
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr @tda8290_standby.tda8290_standby, ptr %45, align 4
  %46 = load ptr, ptr %26, align 4
  %47 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8290_i2c_bridge(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %9 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %9, align 4, !annotation !8
  %10 = load i8, ptr %6, align 4
  %11 = zext i8 %10 to i16
  store i16 %11, ptr %4, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %12, align 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr @tda8290_i2c_bridge.enable, ptr %13, align 4
  %14 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  call void @msleep(i32 noundef 20) #8
  br label %26

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %18 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %18, align 4, !annotation !8
  %19 = load i8, ptr %6, align 4
  %20 = zext i8 %19 to i16
  store i16 %20, ptr %3, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr @tda8290_i2c_bridge.disable, ptr %22, align 4
  %23 = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br label %26

26:                                               ; preds = %17, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @set_audio(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 46848
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.tda8290_priv, ptr %4, i32 0, i32 1
  store i8 1, ptr %10, align 4
  br label %42

11:                                               ; preds = %2
  %12 = and i64 %6, 65539
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.tda8290_priv, ptr %4, i32 0, i32 1
  store i8 2, ptr %15, align 4
  br label %42

16:                                               ; preds = %11
  %17 = and i64 %6, 786444
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.tda8290_priv, ptr %4, i32 0, i32 1
  store i8 4, ptr %20, align 4
  br label %42

21:                                               ; preds = %16
  %22 = and i64 %6, 16
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.tda8290_priv, ptr %4, i32 0, i32 1
  store i8 8, ptr %25, align 4
  br label %42

26:                                               ; preds = %21
  %27 = and i64 %6, 3277024
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.tda8290_priv, ptr %4, i32 0, i32 1
  store i8 16, ptr %30, align 4
  br label %42

31:                                               ; preds = %26
  %32 = and i64 %6, 4194304
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.tda8290_priv, ptr %4, i32 0, i32 1
  store i8 32, ptr %35, align 4
  br label %42

36:                                               ; preds = %31
  %37 = and i64 %6, 8388608
  %38 = icmp eq i64 %37, 0
  %39 = getelementptr inbounds %struct.tda8290_priv, ptr %4, i32 0, i32 1
  br i1 %38, label %41, label %40

40:                                               ; preds = %36
  store i8 64, ptr %39, align 4
  br label %42

41:                                               ; preds = %36
  store i8 16, ptr %39, align 4
  br label %42

42:                                               ; preds = %41, %40, %34, %29, %24, %19, %14, %9
  %43 = phi ptr [ @.str.19, %9 ], [ @.str.20, %14 ], [ @.str.21, %19 ], [ @.str.22, %24 ], [ @.str.23, %29 ], [ @.str.24, %34 ], [ @.str.25, %40 ], [ @.str.26, %41 ]
  %44 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.tda8290_priv, ptr %4, i32 0, i32 3
  %49 = load i8, ptr %48, align 2
  %50 = and i8 %49, 2
  %51 = icmp eq i8 %50, 0
  %52 = select i1 %51, i8 1, i8 -128
  %53 = getelementptr inbounds %struct.tda8290_priv, ptr %4, i32 0, i32 1
  store i8 %52, ptr %53, align 4
  %54 = load i32, ptr @debug, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %87, label %56

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.tuner_i2c_props, ptr %4, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.tuner_i2c_props, ptr %4, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.i2c_adapter, ptr %60, i32 0, i32 11
  %64 = load i32, ptr %63, align 4
  br label %65

65:                                               ; preds = %62, %56
  %66 = phi i32 [ %64, %62 ], [ -1, %56 ]
  %67 = load i8, ptr %4, align 4
  %68 = zext i8 %67 to i32
  %69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %58, i32 noundef %66, i32 noundef %68) #9
  br label %87

70:                                               ; preds = %42
  %71 = load i32, ptr @debug, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.tuner_i2c_props, ptr %4, i32 0, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.tuner_i2c_props, ptr %4, i32 0, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %73
  %80 = getelementptr inbounds %struct.i2c_adapter, ptr %77, i32 0, i32 11
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %73
  %83 = phi i32 [ %81, %79 ], [ -1, %73 ]
  %84 = load i8, ptr %4, align 4
  %85 = zext i8 %84 to i32
  %86 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %75, i32 noundef %83, i32 noundef %85, ptr noundef nonnull %43) #9
  br label %87

87:                                               ; preds = %82, %70, %65, %47
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda8295_set_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca [2 x %struct.i2c_msg], align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 4
  %12 = alloca [2 x %struct.i2c_msg], align 4
  %13 = alloca [2 x i8], align 2
  %14 = alloca [2 x i8], align 2
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #8
  store i16 29, ptr %14, align 2
  tail call fastcc void @set_audio(ptr noundef %0, ptr noundef %1)
  %17 = load i32, ptr @debug, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %34, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.tuner_i2c_props, ptr %16, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tuner_i2c_props, ptr %16, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %27 = load i32, ptr %26, align 4
  br label %28

28:                                               ; preds = %25, %19
  %29 = phi i32 [ %27, %25 ], [ -1, %19 ]
  %30 = load i8, ptr %16, align 4
  %31 = zext i8 %30 to i32
  %32 = load i32, ptr %1, align 8
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %21, i32 noundef %29, i32 noundef %31, ptr noundef nonnull @__func__.tda8295_set_params, i32 noundef %32) #9
  br label %34

34:                                               ; preds = %28, %2
  %35 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  store i16 48, ptr %13, align 2
  %36 = getelementptr inbounds [2 x i8], ptr %13, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %12) #8
  %37 = getelementptr inbounds i8, ptr %12, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %37, i8 0, i32 16, i1 false) #8, !annotation !8
  %38 = load i8, ptr %35, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %12, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 1
  store i16 0, ptr %40, align 2
  store i16 1, ptr %37, align 4
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %13, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1
  store i16 %39, ptr %42, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 1
  store i16 1, ptr %43, align 2
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 2
  store i16 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 1, i32 3
  store ptr %36, ptr %45, align 4
  %46 = getelementptr inbounds %struct.tuner_i2c_props, ptr %35, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %12, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %12) #8
  store i8 1, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #8
  %49 = getelementptr inbounds i8, ptr %11, i32 4
  store i32 2, ptr %49, align 4, !annotation !8
  %50 = load i8, ptr %35, align 4
  %51 = zext i8 %50 to i16
  store i16 %51, ptr %11, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 1
  store i16 0, ptr %52, align 2
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %13, ptr %53, align 4
  %54 = load ptr, ptr %46, align 4
  %55 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %11, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  %56 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #8
  store i16 2, ptr %10, align 2
  %57 = getelementptr inbounds [2 x i8], ptr %10, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  %58 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %58, i8 0, i32 16, i1 false) #8, !annotation !8
  %59 = load i8, ptr %56, align 4
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %9, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %61, align 2
  store i16 1, ptr %58, align 4
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %10, ptr %62, align 4
  %63 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  store i16 %60, ptr %63, align 4
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %64, align 2
  %65 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %65, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %57, ptr %66, align 4
  %67 = getelementptr inbounds %struct.tuner_i2c_props, ptr %56, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %9, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  %70 = load i8, ptr %57, align 1
  %71 = and i8 %70, -65
  store i8 %71, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %72 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %72, align 4, !annotation !8
  %73 = load i8, ptr %56, align 4
  %74 = zext i8 %73 to i16
  store i16 %74, ptr %8, align 4
  %75 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %75, align 2
  %76 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %10, ptr %76, align 4
  %77 = load ptr, ptr %67, align 4
  %78 = call i32 @i2c_transfer(ptr noundef %77, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  %79 = getelementptr inbounds [2 x i8], ptr %14, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #8
  %80 = getelementptr inbounds i8, ptr %7, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %80, i8 0, i32 16, i1 false) #8, !annotation !8
  %81 = load i8, ptr %16, align 4
  %82 = zext i8 %81 to i16
  store i16 %82, ptr %7, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %83, align 2
  store i16 1, ptr %80, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %14, ptr %84, align 4
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1
  store i16 %82, ptr %85, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 1
  store i16 1, ptr %86, align 2
  %87 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 2
  store i16 1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 1, i32 3
  store ptr %79, ptr %88, align 4
  %89 = getelementptr inbounds %struct.tuner_i2c_props, ptr %16, i32 0, i32 1
  %90 = load ptr, ptr %89, align 4
  %91 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %7, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #8
  call fastcc void @tda8295_set_video_std(ptr noundef %0)
  store i8 3, ptr %79, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %92 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %92, align 4, !annotation !8
  %93 = load i8, ptr %16, align 4
  %94 = zext i8 %93 to i16
  store i16 %94, ptr %6, align 4
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %95, align 2
  %96 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %14, ptr %96, align 4
  %97 = load ptr, ptr %89, align 4
  %98 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @msleep(i32 noundef 20) #8
  %99 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 7
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %34
  %103 = call i32 %100(ptr noundef %0, i32 noundef 1) #8
  br label %104

104:                                              ; preds = %102, %34
  %105 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 7
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %110, label %108

108:                                              ; preds = %104
  %109 = call i32 %106(ptr noundef %0, ptr noundef %1) #8
  br label %110

110:                                              ; preds = %108, %104
  %111 = getelementptr inbounds %struct.tda8290_priv, ptr %16, i32 0, i32 4, i32 4
  %112 = load ptr, ptr %111, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  call void %112(ptr noundef %0) #8
  br label %115

115:                                              ; preds = %114, %110
  %116 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 38, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %117 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %117, i8 0, i32 16, i1 false) #8, !annotation !8
  %118 = load i8, ptr %116, align 4
  %119 = zext i8 %118 to i16
  store i16 %119, ptr %3, align 4
  %120 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %120, align 2
  store i16 1, ptr %117, align 4
  %121 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %121, align 4
  %122 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %119, ptr %122, align 4
  %123 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %123, align 2
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 1, ptr %124, align 4
  %125 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %5, ptr %125, align 4
  %126 = getelementptr inbounds %struct.tuner_i2c_props, ptr %116, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %129 = load i8, ptr %5, align 1
  %130 = and i8 %129, 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  %131 = icmp eq i8 %130, 0
  %132 = load i32, ptr @debug, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %131, label %148, label %134

134:                                              ; preds = %115
  br i1 %133, label %162, label %135

135:                                              ; preds = %134
  %136 = getelementptr inbounds %struct.tuner_i2c_props, ptr %16, i32 0, i32 3
  %137 = load ptr, ptr %136, align 4
  %138 = load ptr, ptr %89, align 4
  %139 = icmp eq ptr %138, null
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.i2c_adapter, ptr %138, i32 0, i32 11
  %142 = load i32, ptr %141, align 4
  br label %143

143:                                              ; preds = %140, %135
  %144 = phi i32 [ %142, %140 ], [ -1, %135 ]
  %145 = load i8, ptr %16, align 4
  %146 = zext i8 %145 to i32
  %147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %137, i32 noundef %144, i32 noundef %146) #9
  br label %162

148:                                              ; preds = %115
  br i1 %133, label %162, label %149

149:                                              ; preds = %148
  %150 = getelementptr inbounds %struct.tuner_i2c_props, ptr %16, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = load ptr, ptr %89, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = getelementptr inbounds %struct.i2c_adapter, ptr %152, i32 0, i32 11
  %156 = load i32, ptr %155, align 4
  br label %157

157:                                              ; preds = %154, %149
  %158 = phi i32 [ %156, %154 ], [ -1, %149 ]
  %159 = load i8, ptr %16, align 4
  %160 = zext i8 %159 to i32
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %151, i32 noundef %158, i32 noundef %160) #9
  br label %162

162:                                              ; preds = %157, %148, %143, %134
  %163 = load ptr, ptr %99, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = call i32 %163(ptr noundef %0, i32 noundef 0) #8
  br label %167

167:                                              ; preds = %165, %162
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8295_has_signal(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #8
  store i8 38, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %8 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %8, i8 0, i32 16, i1 false) #8, !annotation !8
  %9 = load i8, ptr %7, align 4
  %10 = zext i8 %9 to i16
  store i16 %10, ptr %3, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %11, align 2
  store i16 1, ptr %8, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %10, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 1, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %5, ptr %16, align 4
  %17 = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  %20 = load i8, ptr %5, align 1
  %21 = and i8 %20, 1
  %22 = sub nsw i8 0, %21
  %23 = sext i8 %22 to i16
  store i16 %23, ptr %1, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda8295_standby(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i16 2, ptr %7, align 2
  %10 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false) #8, !annotation !8
  %12 = load i8, ptr %9, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %14, align 2
  store i16 1, ptr %11, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %15, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %13, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %10, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tuner_i2c_props, ptr %9, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %6, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  %23 = load i8, ptr %10, align 1
  %24 = or i8 %23, 64
  store i8 %24, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %25 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %25, align 4, !annotation !8
  %26 = load i8, ptr %9, align 4
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %5, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %28, align 2
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %7, ptr %29, align 4
  %30 = load ptr, ptr %20, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  %32 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 48, ptr %4, align 2
  %33 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %34 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %34, i8 0, i32 16, i1 false) #8, !annotation !8
  %35 = load i8, ptr %32, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %3, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %37, align 2
  store i16 1, ptr %34, align 4
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %38, align 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %36, ptr %39, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 1, ptr %41, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %33, ptr %42, align 4
  %43 = getelementptr inbounds %struct.tuner_i2c_props, ptr %32, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = call i32 @i2c_transfer(ptr noundef %44, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  store i8 3, ptr %33, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  %46 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %46, align 4, !annotation !8
  %47 = load i8, ptr %32, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %2, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %49, align 2
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %4, ptr %50, align 4
  %51 = load ptr, ptr %43, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda8295_i2c_bridge(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = alloca %struct.i2c_msg, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %11 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %11, align 4, !annotation !8
  %12 = load i8, ptr %8, align 4
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %6, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr @tda8295_i2c_bridge.enable, ptr %15, align 4
  %16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %6, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @msleep(i32 noundef 20) #8
  br label %50

19:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #8
  %20 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %20, i8 0, i32 16, i1 false) #8, !annotation !8
  %21 = load i8, ptr %8, align 4
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %5, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %23, align 2
  store i16 1, ptr %20, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr @tda8295_i2c_bridge.disable, ptr %24, align 4
  %25 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  store i16 %22, ptr %25, align 4
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %26, align 2
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %27, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr getelementptr inbounds ([2 x i8], ptr @tda8295_i2c_bridge.disable, i32 0, i32 1), ptr %28, align 4
  %29 = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %5, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #8
  %32 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @tda8295_i2c_bridge.disable, i32 0, i32 1), align 1
  %33 = and i8 %32, -5
  store i8 %33, ptr getelementptr inbounds ([3 x i8], ptr @tda8295_i2c_bridge.buf, i32 0, i32 2), align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #8
  %34 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 3, ptr %34, align 4, !annotation !8
  %35 = load i8, ptr %8, align 4
  %36 = zext i8 %35 to i16
  store i16 %36, ptr %4, align 4
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %37, align 2
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr @tda8295_i2c_bridge.buf, ptr %38, align 4
  %39 = load ptr, ptr %29, align 4
  %40 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %4, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #8
  call void @msleep(i32 noundef 5) #8
  %41 = load i8, ptr getelementptr inbounds ([2 x i8], ptr @tda8295_i2c_bridge.disable, i32 0, i32 1), align 1
  %42 = or i8 %41, 4
  store i8 %42, ptr getelementptr inbounds ([2 x i8], ptr @tda8295_i2c_bridge.disable, i32 0, i32 1), align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %43 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %43, align 4, !annotation !8
  %44 = load i8, ptr %8, align 4
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %3, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr @tda8295_i2c_bridge.disable, ptr %47, align 4
  %48 = load ptr, ptr %29, align 4
  %49 = call i32 @i2c_transfer(ptr noundef %48, ptr noundef nonnull %3, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  br label %50

50:                                               ; preds = %19, %10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda8295_set_video_std(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [2 x %struct.i2c_msg], align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = alloca [2 x i8], align 2
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 7
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  store i16 0, ptr %9, align 2, !annotation !8
  %12 = getelementptr inbounds i8, ptr %9, i32 1
  %13 = getelementptr inbounds %struct.tda8290_priv, ptr %11, i32 0, i32 1
  %14 = load i8, ptr %13, align 4
  store i8 %14, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %15 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = load i8, ptr %11, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %8, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %18, align 2
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %19, align 4
  %20 = getelementptr inbounds %struct.tuner_i2c_props, ptr %11, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %8, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  %23 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i16 1, ptr %7, align 2
  %24 = getelementptr inbounds [2 x i8], ptr %7, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #8
  %25 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %25, i8 0, i32 16, i1 false) #8, !annotation !8
  %26 = load i8, ptr %23, align 4
  %27 = zext i8 %26 to i16
  store i16 %27, ptr %6, align 4
  %28 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %28, align 2
  store i16 1, ptr %25, align 4
  %29 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %7, ptr %29, align 4
  %30 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %27, ptr %30, align 4
  %31 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %31, align 2
  %32 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %32, align 4
  %33 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %24, ptr %33, align 4
  %34 = getelementptr inbounds %struct.tuner_i2c_props, ptr %23, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %6, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #8
  store i8 1, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %37 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %37, align 4, !annotation !8
  %38 = load i8, ptr %23, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %5, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %7, ptr %41, align 4
  %42 = load ptr, ptr %34, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %5, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  call void @msleep(i32 noundef 20) #8
  %44 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i16 1, ptr %4, align 2
  %45 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #8
  %46 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %46, i8 0, i32 16, i1 false) #8, !annotation !8
  %47 = load i8, ptr %44, align 4
  %48 = zext i8 %47 to i16
  store i16 %48, ptr %3, align 4
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %49, align 2
  store i16 1, ptr %46, align 4
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %50, align 4
  %51 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1
  store i16 %48, ptr %51, align 4
  %52 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 1
  store i16 1, ptr %52, align 2
  %53 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 2
  store i16 1, ptr %53, align 4
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 1, i32 3
  store ptr %45, ptr %54, align 4
  %55 = getelementptr inbounds %struct.tuner_i2c_props, ptr %44, i32 0, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %3, i32 noundef 2) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #8
  store i8 0, ptr %45, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #8
  %58 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %58, align 4, !annotation !8
  %59 = load i8, ptr %44, align 4
  %60 = zext i8 %59 to i16
  store i16 %60, ptr %2, align 4
  %61 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %61, align 2
  %62 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %4, ptr %62, align 4
  %63 = load ptr, ptr %55, align 4
  %64 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %2, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__symbol_get(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__request_module(i1 noundef zeroext, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__symbol_put(ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind allocsize(2) }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"uwtable", i32 1}
!7 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
!8 = !{!"auto-init"}
