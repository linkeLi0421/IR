; ModuleID = '/llk/IR/drivers/media/tuners/tda827x.c_pt.bc'
source_filename = "../drivers/media/tuners/tda827x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda827x_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda827x_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda827x_attach:\09\09\09\09\09"
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
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tda827xa_data = type { i32, i8, i8, i8, i8, i8 }
%struct.tda827x_data = type { i32, i8, i8, i8, i8, i8, i8 }
%struct.tda827x_priv = type { i32, ptr, ptr, i32, i8, i32, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.tda827x_config = type { ptr, ptr, i32, i32, ptr }
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

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [57 x i8] c"parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"\017tda827x: %s:\0A\00", align 1
@__func__.tda827x_attach = private unnamed_addr constant [15 x i8] c"tda827x_attach\00", align 1
@tda827xo_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Philips TDA827X\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 55000000, i32 860000000, i32 250000, i32 0, i32 0, i32 0 }, ptr @tda827x_release, ptr @tda827x_initial_init, ptr @tda827x_initial_sleep, ptr null, ptr null, ptr @tda827xo_set_params, ptr @tda827xo_set_analog_params, ptr null, ptr @tda827x_get_frequency, ptr @tda827x_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"\017tda827x: type set to %s\0A\00", align 1
@__kstrtab_tda827x_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda827x_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda827x_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda827x_attach to i32), ptr @__kstrtab_tda827x_attach, ptr @__kstrtabns_tda827x_attach }, section "___ksymtab_gpl+tda827x_attach", align 4
@__UNIQUE_ID_description251 = internal constant [31 x i8] c"description=DVB TDA827x driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [55 x i8] c"author=Hartmut Hackmann <hartmut.hackmann@t-online.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [44 x i8] c"author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license254 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"%s: could not read from tuner at addr: 0x%02x\0A\00", align 1
@__func__.tda827x_probe_version = private unnamed_addr constant [22 x i8] c"tda827x_probe_version\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"\017tda827x: tda827x tuner found\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"\017tda827x: tda827xa tuner found\0A\00", align 1
@tda827xa_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Philips TDA827XA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 44000000, i32 906000000, i32 62500, i32 0, i32 0, i32 0 }, ptr @tda827x_release, ptr @tda827x_init, ptr @tda827xa_sleep, ptr null, ptr null, ptr @tda827xa_set_params, ptr @tda827xa_set_analog_params, ptr null, ptr @tda827x_get_frequency, ptr @tda827x_get_bandwidth, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__func__.tda827x_init = private unnamed_addr constant [13 x i8] c"tda827x_init\00", align 1
@tda827xo_sleep.buf = internal global [2 x i8] c"0\D0", align 1
@__func__.tda827xo_sleep = private unnamed_addr constant [15 x i8] c"tda827xo_sleep\00", align 1
@tda827xa_sleep.buf = internal global [2 x i8] c"0\90", align 1
@__func__.tda827xa_sleep = private unnamed_addr constant [15 x i8] c"tda827xa_sleep\00", align 1
@tda827xa_dvbt = internal unnamed_addr constant [27 x %struct.tda827xa_data] [%struct.tda827xa_data { i32 56875000, i8 3, i8 4, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 67250000, i8 0, i8 3, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 81250000, i8 1, i8 3, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 97500000, i8 2, i8 3, i8 0, i8 0, i8 1 }, %struct.tda827xa_data { i32 113750000, i8 3, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 134500000, i8 0, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 154000000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 162500000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 183000000, i8 2, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 195000000, i8 2, i8 2, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 227500000, i8 3, i8 2, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 269000000, i8 0, i8 1, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 290000000, i8 1, i8 1, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 325000000, i8 1, i8 1, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 390000000, i8 2, i8 1, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 455000000, i8 3, i8 1, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 520000000, i8 0, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 538000000, i8 0, i8 0, i8 1, i8 3, i8 1 }, %struct.tda827xa_data { i32 550000000, i8 1, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 620000000, i8 1, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 650000000, i8 1, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 700000000, i8 2, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 780000000, i8 2, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 820000000, i8 3, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 870000000, i8 3, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 911000000, i8 3, i8 0, i8 2, i8 4, i8 0 }, %struct.tda827xa_data zeroinitializer], align 4
@__func__.tda827xa_set_params = private unnamed_addr constant [20 x i8] c"tda827xa_set_params\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"\017tda827x: %s select tda827xa_dvbc\0A\00", align 1
@tda827xa_dvbc = internal unnamed_addr constant [27 x %struct.tda827xa_data] [%struct.tda827xa_data { i32 50125000, i8 2, i8 4, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 58500000, i8 3, i8 4, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 69250000, i8 0, i8 3, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 83625000, i8 1, i8 3, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 97500000, i8 2, i8 3, i8 2, i8 0, i8 3 }, %struct.tda827xa_data { i32 100250000, i8 2, i8 3, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 117000000, i8 3, i8 3, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 138500000, i8 0, i8 2, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 167250000, i8 1, i8 2, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 187000000, i8 2, i8 2, i8 2, i8 1, i8 1 }, %struct.tda827xa_data { i32 200500000, i8 2, i8 2, i8 2, i8 2, i8 1 }, %struct.tda827xa_data { i32 234000000, i8 3, i8 2, i8 2, i8 2, i8 3 }, %struct.tda827xa_data { i32 277000000, i8 0, i8 1, i8 2, i8 2, i8 3 }, %struct.tda827xa_data { i32 325000000, i8 1, i8 1, i8 2, i8 2, i8 1 }, %struct.tda827xa_data { i32 334500000, i8 1, i8 1, i8 2, i8 3, i8 3 }, %struct.tda827xa_data { i32 401000000, i8 2, i8 1, i8 2, i8 3, i8 3 }, %struct.tda827xa_data { i32 468000000, i8 3, i8 1, i8 2, i8 3, i8 1 }, %struct.tda827xa_data { i32 535000000, i8 0, i8 0, i8 1, i8 3, i8 1 }, %struct.tda827xa_data { i32 554000000, i8 0, i8 0, i8 2, i8 3, i8 1 }, %struct.tda827xa_data { i32 638000000, i8 1, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 669000000, i8 1, i8 0, i8 2, i8 4, i8 1 }, %struct.tda827xa_data { i32 720000000, i8 2, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 802000000, i8 2, i8 0, i8 2, i8 4, i8 1 }, %struct.tda827xa_data { i32 835000000, i8 3, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 885000000, i8 3, i8 0, i8 1, i8 4, i8 1 }, %struct.tda827xa_data { i32 911000000, i8 3, i8 0, i8 2, i8 4, i8 1 }, %struct.tda827xa_data zeroinitializer], align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"\017tda827x: tda8275a AGC2 gain is: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"\013%s: could not write to tuner at addr: 0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [61 x i8] c"\017tda827x: tda827x_config not defined, cannot set LNA gain!\0A\00", align 1
@.str.9 = private unnamed_addr constant [37 x i8] c"\017tda827x: setting LNA to high gain\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\017tda827x: setting LNA to low gain\0A\00", align 1
@tda827xa_analog = internal unnamed_addr constant [26 x %struct.tda827xa_data] [%struct.tda827xa_data { i32 56875000, i8 3, i8 4, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 67250000, i8 0, i8 3, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 81250000, i8 1, i8 3, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 97500000, i8 2, i8 3, i8 0, i8 0, i8 3 }, %struct.tda827xa_data { i32 113750000, i8 3, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 134500000, i8 0, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 154000000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 162500000, i8 1, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 183000000, i8 2, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827xa_data { i32 195000000, i8 2, i8 2, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 227500000, i8 3, i8 2, i8 0, i8 2, i8 3 }, %struct.tda827xa_data { i32 269000000, i8 0, i8 1, i8 0, i8 2, i8 3 }, %struct.tda827xa_data { i32 325000000, i8 1, i8 1, i8 0, i8 2, i8 1 }, %struct.tda827xa_data { i32 390000000, i8 2, i8 1, i8 0, i8 3, i8 3 }, %struct.tda827xa_data { i32 455000000, i8 3, i8 1, i8 0, i8 3, i8 3 }, %struct.tda827xa_data { i32 520000000, i8 0, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 538000000, i8 0, i8 0, i8 1, i8 3, i8 1 }, %struct.tda827xa_data { i32 554000000, i8 1, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827xa_data { i32 620000000, i8 1, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 650000000, i8 1, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 700000000, i8 2, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 780000000, i8 2, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 820000000, i8 3, i8 0, i8 0, i8 4, i8 0 }, %struct.tda827xa_data { i32 870000000, i8 3, i8 0, i8 1, i8 4, i8 0 }, %struct.tda827xa_data { i32 911000000, i8 3, i8 0, i8 2, i8 4, i8 0 }, %struct.tda827xa_data zeroinitializer], align 4
@.str.11 = private unnamed_addr constant [29 x i8] c"\017tda827x: AGC2 gain is: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"MN\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"GH\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"DK\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"\017tda827x: setting tda827x to radio FM\0A\00", align 1
@.str.21 = private unnamed_addr constant [41 x i8] c"\017tda827x: setting tda827x to system %s\0A\00", align 1
@__func__.tda827xo_set_params = private unnamed_addr constant [20 x i8] c"tda827xo_set_params\00", align 1
@tda827x_table = internal unnamed_addr constant [29 x %struct.tda827x_data] [%struct.tda827x_data { i32 62000000, i8 3, i8 2, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827x_data { i32 66000000, i8 3, i8 3, i8 0, i8 0, i8 3, i8 1 }, %struct.tda827x_data { i32 76000000, i8 3, i8 1, i8 0, i8 0, i8 3, i8 0 }, %struct.tda827x_data { i32 84000000, i8 3, i8 2, i8 0, i8 0, i8 3, i8 0 }, %struct.tda827x_data { i32 93000000, i8 3, i8 2, i8 0, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 98000000, i8 3, i8 3, i8 0, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 109000000, i8 3, i8 3, i8 1, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 123000000, i8 2, i8 2, i8 1, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 133000000, i8 2, i8 3, i8 1, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 151000000, i8 2, i8 1, i8 1, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 154000000, i8 2, i8 2, i8 1, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 181000000, i8 2, i8 2, i8 1, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 185000000, i8 2, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 217000000, i8 2, i8 3, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 244000000, i8 1, i8 2, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 265000000, i8 1, i8 3, i8 2, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 302000000, i8 1, i8 1, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 324000000, i8 1, i8 2, i8 2, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 370000000, i8 1, i8 2, i8 3, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 454000000, i8 1, i8 3, i8 3, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 493000000, i8 0, i8 2, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 530000000, i8 0, i8 3, i8 3, i8 0, i8 1, i8 1 }, %struct.tda827x_data { i32 554000000, i8 0, i8 1, i8 3, i8 0, i8 1, i8 0 }, %struct.tda827x_data { i32 604000000, i8 0, i8 1, i8 4, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 696000000, i8 0, i8 2, i8 4, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 740000000, i8 0, i8 2, i8 4, i8 1, i8 0, i8 0 }, %struct.tda827x_data { i32 820000000, i8 0, i8 3, i8 4, i8 0, i8 0, i8 0 }, %struct.tda827x_data { i32 865000000, i8 0, i8 3, i8 4, i8 1, i8 0, i8 0 }, %struct.tda827x_data zeroinitializer], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license254, ptr @__ksymtab_tda827x_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda827x_attach(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda827x_attach) #8
  br label %9

9:                                                ; preds = %7, %4
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  store i32 %1, ptr %11, align 8
  %14 = getelementptr inbounds %struct.tda827x_priv, ptr %11, i32 0, i32 1
  store ptr %2, ptr %14, align 4
  %15 = getelementptr inbounds %struct.tda827x_priv, ptr %11, i32 0, i32 2
  store ptr %3, ptr %15, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %16, ptr noundef nonnull align 4 dereferenceable(220) @tda827xo_tuner_ops, i32 220, i1 false)
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %11, ptr %17, align 4
  %18 = load i32, ptr @debug, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %13
  %21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %16) #8
  br label %22

22:                                               ; preds = %20, %13, %9
  %23 = phi ptr [ null, %9 ], [ %0, %20 ], [ %0, %13 ]
  ret ptr %23
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda827x_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #10
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda827x_initial_init(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @tda827x_probe_version(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ %7, %4 ], [ %2, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda827x_initial_sleep(ptr noundef %0) #0 {
  %2 = tail call fastcc i32 @tda827x_probe_version(ptr noundef %0)
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %4, %1
  %9 = phi i32 [ %7, %4 ], [ %2, %1 ]
  ret i32 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda827xo_set_params(ptr noundef %0) #0 {
  %2 = alloca [14 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(14) %2, i8 0, i32 14, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = load i32, ptr %6, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda827xo_set_params) #8
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = icmp ult i32 %19, 6000001
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %19, 7000001
  %25 = select i1 %24, i32 4625000, i32 5125000
  br label %26

26:                                               ; preds = %23, %21, %17
  %27 = phi i32 [ 5125000, %17 ], [ 4125000, %21 ], [ %25, %23 ]
  %28 = load i32, ptr %4, align 4
  %29 = icmp ugt i32 %28, 62000000
  br i1 %29, label %30, label %83

30:                                               ; preds = %26
  %31 = icmp ugt i32 %28, 66000000
  br i1 %31, label %32, label %83

32:                                               ; preds = %30
  %33 = icmp ugt i32 %28, 76000000
  br i1 %33, label %34, label %83

34:                                               ; preds = %32
  %35 = icmp ugt i32 %28, 84000000
  br i1 %35, label %36, label %83

36:                                               ; preds = %34
  %37 = icmp ugt i32 %28, 93000000
  br i1 %37, label %38, label %83

38:                                               ; preds = %36
  %39 = icmp ugt i32 %28, 98000000
  br i1 %39, label %40, label %83

40:                                               ; preds = %38
  %41 = icmp ugt i32 %28, 109000000
  br i1 %41, label %42, label %83

42:                                               ; preds = %40
  %43 = icmp ugt i32 %28, 123000000
  br i1 %43, label %44, label %83

44:                                               ; preds = %42
  %45 = icmp ugt i32 %28, 133000000
  br i1 %45, label %46, label %83

46:                                               ; preds = %44
  %47 = icmp ugt i32 %28, 151000000
  br i1 %47, label %48, label %83

48:                                               ; preds = %46
  %49 = icmp ugt i32 %28, 154000000
  br i1 %49, label %50, label %83

50:                                               ; preds = %48
  %51 = icmp ugt i32 %28, 181000000
  br i1 %51, label %52, label %83

52:                                               ; preds = %50
  %53 = icmp ugt i32 %28, 185000000
  br i1 %53, label %54, label %83

54:                                               ; preds = %52
  %55 = icmp ugt i32 %28, 217000000
  br i1 %55, label %56, label %83

56:                                               ; preds = %54
  %57 = icmp ugt i32 %28, 244000000
  br i1 %57, label %58, label %83

58:                                               ; preds = %56
  %59 = icmp ugt i32 %28, 265000000
  br i1 %59, label %60, label %83

60:                                               ; preds = %58
  %61 = icmp ugt i32 %28, 302000000
  br i1 %61, label %62, label %83

62:                                               ; preds = %60
  %63 = icmp ugt i32 %28, 324000000
  br i1 %63, label %64, label %83

64:                                               ; preds = %62
  %65 = icmp ugt i32 %28, 370000000
  br i1 %65, label %66, label %83

66:                                               ; preds = %64
  %67 = icmp ugt i32 %28, 454000000
  br i1 %67, label %68, label %83

68:                                               ; preds = %66
  %69 = icmp ugt i32 %28, 493000000
  br i1 %69, label %70, label %83

70:                                               ; preds = %68
  %71 = icmp ugt i32 %28, 530000000
  br i1 %71, label %72, label %83

72:                                               ; preds = %70
  %73 = icmp ugt i32 %28, 554000000
  br i1 %73, label %74, label %83

74:                                               ; preds = %72
  %75 = icmp ugt i32 %28, 604000000
  br i1 %75, label %76, label %83

76:                                               ; preds = %74
  %77 = icmp ugt i32 %28, 696000000
  br i1 %77, label %78, label %83

78:                                               ; preds = %76
  %79 = icmp ugt i32 %28, 740000000
  br i1 %79, label %80, label %83

80:                                               ; preds = %78
  %81 = icmp ugt i32 %28, 820000000
  %82 = select i1 %81, i32 27, i32 26
  br label %83

83:                                               ; preds = %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %26
  %84 = phi i32 [ 0, %26 ], [ 1, %30 ], [ 2, %32 ], [ 3, %34 ], [ 4, %36 ], [ 5, %38 ], [ 6, %40 ], [ 7, %42 ], [ 8, %44 ], [ 9, %46 ], [ 10, %48 ], [ 11, %50 ], [ 12, %52 ], [ 13, %54 ], [ 14, %56 ], [ 15, %58 ], [ 16, %60 ], [ 17, %62 ], [ 18, %64 ], [ 19, %66 ], [ 20, %68 ], [ 21, %70 ], [ 22, %72 ], [ 23, %74 ], [ 24, %76 ], [ 25, %78 ], [ %82, %80 ]
  %85 = add i32 %27, %28
  %86 = sdiv i32 %85, 250000
  %87 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %84, i32 1
  %88 = load i8, ptr %87, align 4
  %89 = zext i8 %88 to i32
  %90 = add nuw nsw i32 %89, 2
  %91 = shl i32 %86, %90
  store i8 0, ptr %2, align 1
  %92 = lshr i32 %91, 8
  %93 = trunc i32 %92 to i8
  %94 = or i8 %93, 64
  %95 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 1
  store i8 %94, ptr %95, align 1
  %96 = trunc i32 %91 to i8
  %97 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 2
  store i8 %96, ptr %97, align 1
  %98 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 3
  store i8 0, ptr %98, align 1
  %99 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 4
  store i8 82, ptr %99, align 1
  %100 = shl i8 %88, 6
  %101 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %84, i32 6
  %102 = load i8, ptr %101, align 1
  %103 = shl i8 %102, 5
  %104 = add i8 %103, %100
  %105 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %84, i32 2
  %106 = load i8, ptr %105, align 1
  %107 = shl i8 %106, 3
  %108 = add i8 %104, %107
  %109 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %84, i32 3
  %110 = load i8, ptr %109, align 2
  %111 = add i8 %108, %110
  %112 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 5
  store i8 %111, ptr %112, align 1
  %113 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %84, i32 5
  %114 = load i8, ptr %113, align 4
  %115 = shl i8 %114, 4
  %116 = add i8 %115, -113
  %117 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 6
  store i8 %116, ptr %117, align 1
  %118 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 7
  store i8 -65, ptr %118, align 1
  %119 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 8
  store i8 42, ptr %119, align 1
  %120 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 9
  store i8 5, ptr %120, align 1
  %121 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 10
  store i8 -1, ptr %121, align 1
  %122 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 11
  store i8 0, ptr %122, align 1
  %123 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 12
  store i8 0, ptr %123, align 1
  %124 = getelementptr inbounds [14 x i8], ptr %2, i32 0, i32 13
  store i8 64, ptr %124, align 1
  store i16 14, ptr %11, align 4
  %125 = load ptr, ptr %5, align 4
  %126 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %127 = load ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, null
  br i1 %128, label %131, label %129

129:                                              ; preds = %83
  %130 = call i32 %127(ptr noundef %0, i32 noundef 1) #10
  br label %131

131:                                              ; preds = %129, %83
  %132 = getelementptr inbounds %struct.tda827x_priv, ptr %125, i32 0, i32 1
  %133 = load ptr, ptr %132, align 4
  %134 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %3, i32 noundef 1) #10
  %135 = load ptr, ptr %126, align 4
  %136 = icmp eq ptr %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %131
  %138 = call i32 %135(ptr noundef %0, i32 noundef 0) #10
  br label %139

139:                                              ; preds = %137, %131
  %140 = icmp slt i32 %134, 0
  %141 = icmp eq i32 %134, 1
  %142 = or i1 %140, %141
  %143 = select i1 %142, i32 %134, i32 -5
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %173, label %145

145:                                              ; preds = %139
  call void @msleep(i32 noundef 500) #10
  store i8 48, ptr %2, align 1
  %146 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %84, i32 4
  %147 = load i8, ptr %146, align 1
  %148 = add i8 %147, 80
  store i8 %148, ptr %95, align 1
  store i16 2, ptr %11, align 4
  %149 = load ptr, ptr %5, align 4
  %150 = load ptr, ptr %126, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %154, label %152

152:                                              ; preds = %145
  %153 = call i32 %150(ptr noundef %0, i32 noundef 1) #10
  br label %154

154:                                              ; preds = %152, %145
  %155 = getelementptr inbounds %struct.tda827x_priv, ptr %149, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %3, i32 noundef 1) #10
  %158 = load ptr, ptr %126, align 4
  %159 = icmp eq ptr %158, null
  br i1 %159, label %162, label %160

160:                                              ; preds = %154
  %161 = call i32 %158(ptr noundef %0, i32 noundef 0) #10
  br label %162

162:                                              ; preds = %160, %154
  %163 = icmp slt i32 %157, 0
  %164 = icmp eq i32 %157, 1
  %165 = or i1 %163, %164
  %166 = select i1 %165, i32 %157, i32 -5
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %162
  %169 = load i32, ptr %4, align 4
  %170 = getelementptr inbounds %struct.tda827x_priv, ptr %6, i32 0, i32 5
  store i32 %169, ptr %170, align 4
  %171 = load i32, ptr %18, align 4
  %172 = getelementptr inbounds %struct.tda827x_priv, ptr %6, i32 0, i32 6
  store i32 %171, ptr %172, align 4
  br label %178

173:                                              ; preds = %162, %139
  %174 = phi i32 [ %143, %139 ], [ %166, %162 ]
  %175 = load i32, ptr %6, align 4
  %176 = shl i32 %175, 1
  %177 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tda827xo_set_params, i32 noundef %176) #8
  br label %178

178:                                              ; preds = %173, %168
  %179 = phi i32 [ %174, %173 ], [ 0, %168 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %2) #10
  ret i32 %179
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda827xo_set_analog_params(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [8 x i8], align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #10
  store i64 -8142508125212114944, ptr %3, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %8 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %8, align 4, !annotation !8
  %9 = load i32, ptr %7, align 4
  %10 = trunc i32 %9 to i16
  store i16 %10, ptr %5, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %14 = load i32, ptr %1, align 8
  tail call fastcc void @tda827x_set_std(ptr noundef %0, ptr noundef %1)
  %15 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 1
  %18 = udiv i32 %14, 1000
  %19 = select i1 %17, i32 %18, i32 %14
  %20 = getelementptr inbounds %struct.tda827x_priv, ptr %7, i32 0, i32 3
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %19, %21
  %23 = mul i32 %22, 62500
  %24 = icmp ugt i32 %23, 62000000
  br i1 %24, label %25, label %78

25:                                               ; preds = %2
  %26 = icmp ugt i32 %23, 66000000
  br i1 %26, label %27, label %78

27:                                               ; preds = %25
  %28 = icmp ugt i32 %23, 76000000
  br i1 %28, label %29, label %78

29:                                               ; preds = %27
  %30 = icmp ugt i32 %23, 84000000
  br i1 %30, label %31, label %78

31:                                               ; preds = %29
  %32 = icmp ugt i32 %23, 93000000
  br i1 %32, label %33, label %78

33:                                               ; preds = %31
  %34 = icmp ugt i32 %23, 98000000
  br i1 %34, label %35, label %78

35:                                               ; preds = %33
  %36 = icmp ugt i32 %23, 109000000
  br i1 %36, label %37, label %78

37:                                               ; preds = %35
  %38 = icmp ugt i32 %23, 123000000
  br i1 %38, label %39, label %78

39:                                               ; preds = %37
  %40 = icmp ugt i32 %23, 133000000
  br i1 %40, label %41, label %78

41:                                               ; preds = %39
  %42 = icmp ugt i32 %23, 151000000
  br i1 %42, label %43, label %78

43:                                               ; preds = %41
  %44 = icmp ugt i32 %23, 154000000
  br i1 %44, label %45, label %78

45:                                               ; preds = %43
  %46 = icmp ugt i32 %23, 181000000
  br i1 %46, label %47, label %78

47:                                               ; preds = %45
  %48 = icmp ugt i32 %23, 185000000
  br i1 %48, label %49, label %78

49:                                               ; preds = %47
  %50 = icmp ugt i32 %23, 217000000
  br i1 %50, label %51, label %78

51:                                               ; preds = %49
  %52 = icmp ugt i32 %23, 244000000
  br i1 %52, label %53, label %78

53:                                               ; preds = %51
  %54 = icmp ugt i32 %23, 265000000
  br i1 %54, label %55, label %78

55:                                               ; preds = %53
  %56 = icmp ugt i32 %23, 302000000
  br i1 %56, label %57, label %78

57:                                               ; preds = %55
  %58 = icmp ugt i32 %23, 324000000
  br i1 %58, label %59, label %78

59:                                               ; preds = %57
  %60 = icmp ugt i32 %23, 370000000
  br i1 %60, label %61, label %78

61:                                               ; preds = %59
  %62 = icmp ugt i32 %23, 454000000
  br i1 %62, label %63, label %78

63:                                               ; preds = %61
  %64 = icmp ugt i32 %23, 493000000
  br i1 %64, label %65, label %78

65:                                               ; preds = %63
  %66 = icmp ugt i32 %23, 530000000
  br i1 %66, label %67, label %78

67:                                               ; preds = %65
  %68 = icmp ugt i32 %23, 554000000
  br i1 %68, label %69, label %78

69:                                               ; preds = %67
  %70 = icmp ugt i32 %23, 604000000
  br i1 %70, label %71, label %78

71:                                               ; preds = %69
  %72 = icmp ugt i32 %23, 696000000
  br i1 %72, label %73, label %78

73:                                               ; preds = %71
  %74 = icmp ugt i32 %23, 740000000
  br i1 %74, label %75, label %78

75:                                               ; preds = %73
  %76 = icmp ugt i32 %23, 820000000
  %77 = select i1 %76, i32 27, i32 26
  br label %78

78:                                               ; preds = %75, %73, %71, %69, %67, %65, %63, %61, %59, %57, %55, %53, %51, %49, %47, %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25, %2
  %79 = phi i32 [ 0, %2 ], [ 1, %25 ], [ 2, %27 ], [ 3, %29 ], [ 4, %31 ], [ 5, %33 ], [ 6, %35 ], [ 7, %37 ], [ 8, %39 ], [ 9, %41 ], [ 10, %43 ], [ 11, %45 ], [ 12, %47 ], [ 13, %49 ], [ 14, %51 ], [ 15, %53 ], [ 16, %55 ], [ 17, %57 ], [ 18, %59 ], [ 19, %61 ], [ 20, %63 ], [ 21, %65 ], [ 22, %67 ], [ 23, %69 ], [ 24, %71 ], [ 25, %73 ], [ %77, %75 ]
  %80 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %79, i32 1
  %81 = load i8, ptr %80, align 4
  %82 = zext i8 %81 to i32
  %83 = shl i32 %22, %82
  %84 = lshr i32 %83, 8
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 1
  store i8 %85, ptr %86, align 1
  %87 = trunc i32 %83 to i8
  %88 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 2
  store i8 %87, ptr %88, align 2
  %89 = getelementptr inbounds %struct.tda827x_priv, ptr %7, i32 0, i32 4
  %90 = load i8, ptr %89, align 4
  %91 = shl i8 %90, 5
  %92 = add i8 %91, 82
  %93 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 4
  store i8 %92, ptr %93, align 4
  %94 = shl i8 %81, 6
  %95 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %79, i32 6
  %96 = load i8, ptr %95, align 1
  %97 = shl i8 %96, 5
  %98 = add i8 %97, %94
  %99 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %79, i32 2
  %100 = load i8, ptr %99, align 1
  %101 = shl i8 %100, 3
  %102 = add i8 %98, %101
  %103 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %79, i32 3
  %104 = load i8, ptr %103, align 2
  %105 = add i8 %102, %104
  %106 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 5
  store i8 %105, ptr %106, align 1
  %107 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %79, i32 5
  %108 = load i8, ptr %107, align 4
  %109 = shl i8 %108, 4
  %110 = add i8 %109, -113
  %111 = getelementptr inbounds [8 x i8], ptr %3, i32 0, i32 6
  store i8 %110, ptr %111, align 2
  store ptr %3, ptr %13, align 4
  store i16 8, ptr %12, align 4
  %112 = load ptr, ptr %6, align 4
  %113 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %118, label %116

116:                                              ; preds = %78
  %117 = call i32 %114(ptr noundef %0, i32 noundef 1) #10
  br label %118

118:                                              ; preds = %116, %78
  %119 = getelementptr inbounds %struct.tda827x_priv, ptr %112, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %5, i32 noundef 1) #10
  %122 = load ptr, ptr %113, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  store ptr %4, ptr %13, align 4
  store i16 2, ptr %12, align 4
  store i8 -128, ptr %4, align 2
  %125 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %125, align 1
  %126 = load ptr, ptr %6, align 4
  br label %135

127:                                              ; preds = %118
  %128 = call i32 %122(ptr noundef %0, i32 noundef 0) #10
  %129 = load ptr, ptr %113, align 4
  store ptr %4, ptr %13, align 4
  store i16 2, ptr %12, align 4
  store i8 -128, ptr %4, align 2
  %130 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  store i8 0, ptr %130, align 1
  %131 = load ptr, ptr %6, align 4
  %132 = icmp eq ptr %129, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = call i32 %129(ptr noundef %0, i32 noundef 1) #10
  br label %135

135:                                              ; preds = %133, %127, %124
  %136 = phi ptr [ %126, %124 ], [ %131, %133 ], [ %131, %127 ]
  %137 = phi ptr [ %125, %124 ], [ %130, %133 ], [ %130, %127 ]
  %138 = getelementptr inbounds %struct.tda827x_priv, ptr %136, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %5, i32 noundef 1) #10
  %141 = load ptr, ptr %113, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  store i8 96, ptr %4, align 2
  store i8 -65, ptr %137, align 1
  %144 = load ptr, ptr %6, align 4
  br label %152

145:                                              ; preds = %135
  %146 = call i32 %141(ptr noundef %0, i32 noundef 0) #10
  %147 = load ptr, ptr %113, align 4
  store i8 96, ptr %4, align 2
  store i8 -65, ptr %137, align 1
  %148 = load ptr, ptr %6, align 4
  %149 = icmp eq ptr %147, null
  br i1 %149, label %152, label %150

150:                                              ; preds = %145
  %151 = call i32 %147(ptr noundef %0, i32 noundef 1) #10
  br label %152

152:                                              ; preds = %150, %145, %143
  %153 = phi ptr [ %144, %143 ], [ %148, %150 ], [ %148, %145 ]
  %154 = getelementptr inbounds %struct.tda827x_priv, ptr %153, i32 0, i32 1
  %155 = load ptr, ptr %154, align 4
  %156 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %5, i32 noundef 1) #10
  %157 = load ptr, ptr %113, align 4
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %163

159:                                              ; preds = %152
  store i8 48, ptr %4, align 2
  %160 = load i8, ptr %93, align 4
  %161 = xor i8 %160, -128
  store i8 %161, ptr %137, align 1
  %162 = load ptr, ptr %6, align 4
  br label %172

163:                                              ; preds = %152
  %164 = call i32 %157(ptr noundef %0, i32 noundef 0) #10
  %165 = load ptr, ptr %113, align 4
  store i8 48, ptr %4, align 2
  %166 = load i8, ptr %93, align 4
  %167 = xor i8 %166, -128
  store i8 %167, ptr %137, align 1
  %168 = load ptr, ptr %6, align 4
  %169 = icmp eq ptr %165, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %163
  %171 = call i32 %165(ptr noundef %0, i32 noundef 1) #10
  br label %172

172:                                              ; preds = %170, %163, %159
  %173 = phi ptr [ %162, %159 ], [ %168, %170 ], [ %168, %163 ]
  %174 = getelementptr inbounds %struct.tda827x_priv, ptr %173, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = call i32 @i2c_transfer(ptr noundef %175, ptr noundef nonnull %5, i32 noundef 1) #10
  %177 = load ptr, ptr %113, align 4
  %178 = icmp eq ptr %177, null
  br i1 %178, label %181, label %179

179:                                              ; preds = %172
  %180 = call i32 %177(ptr noundef %0, i32 noundef 0) #10
  br label %181

181:                                              ; preds = %179, %172
  call void @msleep(i32 noundef 1) #10
  store i8 48, ptr %4, align 2
  %182 = load i8, ptr %93, align 4
  %183 = add i8 %182, 4
  store i8 %183, ptr %137, align 1
  %184 = load ptr, ptr %6, align 4
  %185 = load ptr, ptr %113, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %181
  %188 = call i32 %185(ptr noundef %0, i32 noundef 1) #10
  br label %189

189:                                              ; preds = %187, %181
  %190 = getelementptr inbounds %struct.tda827x_priv, ptr %184, i32 0, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = call i32 @i2c_transfer(ptr noundef %191, ptr noundef nonnull %5, i32 noundef 1) #10
  %193 = load ptr, ptr %113, align 4
  %194 = icmp eq ptr %193, null
  br i1 %194, label %197, label %195

195:                                              ; preds = %189
  %196 = call i32 %193(ptr noundef %0, i32 noundef 0) #10
  br label %197

197:                                              ; preds = %195, %189
  call void @msleep(i32 noundef 1) #10
  store i8 48, ptr %4, align 2
  %198 = load i8, ptr %93, align 4
  store i8 %198, ptr %137, align 1
  %199 = load ptr, ptr %6, align 4
  %200 = load ptr, ptr %113, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %197
  %203 = call i32 %200(ptr noundef %0, i32 noundef 1) #10
  br label %204

204:                                              ; preds = %202, %197
  %205 = getelementptr inbounds %struct.tda827x_priv, ptr %199, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %5, i32 noundef 1) #10
  %208 = load ptr, ptr %113, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %204
  %211 = call i32 %208(ptr noundef %0, i32 noundef 0) #10
  br label %212

212:                                              ; preds = %210, %204
  call void @msleep(i32 noundef 550) #10
  store i8 48, ptr %4, align 2
  %213 = load i8, ptr %93, align 4
  %214 = and i8 %213, -4
  %215 = getelementptr [29 x %struct.tda827x_data], ptr @tda827x_table, i32 0, i32 %79, i32 4
  %216 = load i8, ptr %215, align 1
  %217 = add i8 %214, %216
  store i8 %217, ptr %137, align 1
  %218 = load ptr, ptr %6, align 4
  %219 = load ptr, ptr %113, align 4
  %220 = icmp eq ptr %219, null
  br i1 %220, label %223, label %221

221:                                              ; preds = %212
  %222 = call i32 %219(ptr noundef %0, i32 noundef 1) #10
  br label %223

223:                                              ; preds = %221, %212
  %224 = getelementptr inbounds %struct.tda827x_priv, ptr %218, i32 0, i32 1
  %225 = load ptr, ptr %224, align 4
  %226 = call i32 @i2c_transfer(ptr noundef %225, ptr noundef nonnull %5, i32 noundef 1) #10
  %227 = load ptr, ptr %113, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %229, label %231

229:                                              ; preds = %223
  store i8 96, ptr %4, align 2
  store i8 63, ptr %137, align 1
  %230 = load ptr, ptr %6, align 4
  br label %238

231:                                              ; preds = %223
  %232 = call i32 %227(ptr noundef %0, i32 noundef 0) #10
  %233 = load ptr, ptr %113, align 4
  store i8 96, ptr %4, align 2
  store i8 63, ptr %137, align 1
  %234 = load ptr, ptr %6, align 4
  %235 = icmp eq ptr %233, null
  br i1 %235, label %238, label %236

236:                                              ; preds = %231
  %237 = call i32 %233(ptr noundef %0, i32 noundef 1) #10
  br label %238

238:                                              ; preds = %236, %231, %229
  %239 = phi ptr [ %230, %229 ], [ %234, %236 ], [ %234, %231 ]
  %240 = getelementptr inbounds %struct.tda827x_priv, ptr %239, i32 0, i32 1
  %241 = load ptr, ptr %240, align 4
  %242 = call i32 @i2c_transfer(ptr noundef %241, ptr noundef nonnull %5, i32 noundef 1) #10
  %243 = load ptr, ptr %113, align 4
  %244 = icmp eq ptr %243, null
  br i1 %244, label %245, label %247

245:                                              ; preds = %238
  store i8 -128, ptr %4, align 2
  store i8 8, ptr %137, align 1
  %246 = load ptr, ptr %6, align 4
  br label %254

247:                                              ; preds = %238
  %248 = call i32 %243(ptr noundef %0, i32 noundef 0) #10
  %249 = load ptr, ptr %113, align 4
  store i8 -128, ptr %4, align 2
  store i8 8, ptr %137, align 1
  %250 = load ptr, ptr %6, align 4
  %251 = icmp eq ptr %249, null
  br i1 %251, label %254, label %252

252:                                              ; preds = %247
  %253 = call i32 %249(ptr noundef %0, i32 noundef 1) #10
  br label %254

254:                                              ; preds = %252, %247, %245
  %255 = phi ptr [ %246, %245 ], [ %250, %252 ], [ %250, %247 ]
  %256 = getelementptr inbounds %struct.tda827x_priv, ptr %255, i32 0, i32 1
  %257 = load ptr, ptr %256, align 4
  %258 = call i32 @i2c_transfer(ptr noundef %257, ptr noundef nonnull %5, i32 noundef 1) #10
  %259 = load ptr, ptr %113, align 4
  %260 = icmp eq ptr %259, null
  br i1 %260, label %263, label %261

261:                                              ; preds = %254
  %262 = call i32 %259(ptr noundef %0, i32 noundef 0) #10
  br label %263

263:                                              ; preds = %261, %254
  %264 = load i32, ptr %1, align 8
  %265 = getelementptr inbounds %struct.tda827x_priv, ptr %7, i32 0, i32 5
  store i32 %264, ptr %265, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda827x_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda827x_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #5 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda827x_probe_version(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1, !annotation !8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = load i32, ptr %5, align 4
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 %13(ptr noundef %0, i32 noundef 1) #10
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.tda827x_priv, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %3, i32 noundef 1) #10
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call i32 %21(ptr noundef %0, i32 noundef 0) #10
  br label %25

25:                                               ; preds = %23, %17
  %26 = icmp slt i32 %20, 0
  %27 = icmp eq i32 %20, 1
  %28 = or i1 %26, %27
  %29 = select i1 %28, i32 %20, i32 -5
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load i16, ptr %3, align 4
  %33 = zext i16 %32 to i32
  %34 = shl nuw nsw i32 %33, 1
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.tda827x_probe_version, i32 noundef %34) #8
  br label %63

36:                                               ; preds = %25
  %37 = load i8, ptr %2, align 1
  %38 = and i8 %37, 60
  %39 = icmp eq i8 %38, 0
  %40 = load i32, ptr @debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %39, label %42, label %53

42:                                               ; preds = %36
  br i1 %41, label %45, label %43

43:                                               ; preds = %42
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #8
  br label %45

45:                                               ; preds = %43, %42
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 2
  store ptr @tda827x_init, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 3
  store ptr @tda827xo_sleep, ptr %47, align 4
  %48 = getelementptr inbounds %struct.tda827x_priv, ptr %5, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.tda827x_config, ptr %49, i32 0, i32 4
  store ptr @tda827xo_agcf, ptr %52, align 4
  br label %63

53:                                               ; preds = %36
  br i1 %41, label %56, label %54

54:                                               ; preds = %53
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #8
  br label %56

56:                                               ; preds = %54, %53
  %57 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %57, ptr noundef nonnull align 4 dereferenceable(220) @tda827xa_tuner_ops, i32 220, i1 false)
  %58 = getelementptr inbounds %struct.tda827x_priv, ptr %5, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct.tda827x_config, ptr %59, i32 0, i32 4
  store ptr @tda827xa_agcf, ptr %62, align 4
  br label %63

63:                                               ; preds = %61, %56, %51, %45, %31
  %64 = phi i32 [ %29, %31 ], [ 0, %56 ], [ 0, %61 ], [ 0, %45 ], [ 0, %51 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  ret i32 %64
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda827x_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda827x_init) #8
  br label %8

8:                                                ; preds = %6, %1
  %9 = getelementptr inbounds %struct.tda827x_priv, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %8
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = tail call i32 %13(ptr noundef %0) #10
  br label %17

17:                                               ; preds = %15, %12, %8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda827xo_sleep(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load i32, ptr %4, align 4
  %7 = trunc i32 %6 to i16
  store i16 %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  store i16 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr @tda827xo_sleep.buf, ptr %10, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda827xo_sleep) #8
  %15 = load ptr, ptr %3, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi ptr [ %15, %13 ], [ %4, %1 ]
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 %19(ptr noundef %0, i32 noundef 1) #10
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds %struct.tda827x_priv, ptr %17, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %2, i32 noundef 1) #10
  %27 = load ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call i32 %27(ptr noundef %0, i32 noundef 0) #10
  br label %31

31:                                               ; preds = %29, %23
  %32 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tda827x_config, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 %37(ptr noundef %0) #10
  br label %41

41:                                               ; preds = %39, %35, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda827xo_agcf(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i16 3200, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = load i32, ptr %5, align 4
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 %13(ptr noundef %0, i32 noundef 1) #10
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.tda827x_priv, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %3, i32 noundef 1) #10
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call i32 %21(ptr noundef %0, i32 noundef 0) #10
  br label %25

25:                                               ; preds = %23, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda827xa_agcf(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i16 11392, ptr %2, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %6 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %6, align 4, !annotation !8
  %7 = load i32, ptr %5, align 4
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 2, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 %13(ptr noundef %0, i32 noundef 1) #10
  br label %17

17:                                               ; preds = %15, %1
  %18 = getelementptr inbounds %struct.tda827x_priv, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %3, i32 noundef 1) #10
  %21 = load ptr, ptr %12, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %17
  %24 = call i32 %21(ptr noundef %0, i32 noundef 0) #10
  br label %25

25:                                               ; preds = %23, %17
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda827xa_sleep(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %5 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load i32, ptr %4, align 4
  %7 = trunc i32 %6 to i16
  store i16 %7, ptr %2, align 4
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %8, align 2
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 2
  store i16 2, ptr %9, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr @tda827xa_sleep.buf, ptr %10, align 4
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda827xa_sleep) #8
  %15 = load ptr, ptr %3, align 4
  br label %16

16:                                               ; preds = %13, %1
  %17 = phi ptr [ %15, %13 ], [ %4, %1 ]
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 %19(ptr noundef %0, i32 noundef 1) #10
  br label %23

23:                                               ; preds = %21, %16
  %24 = getelementptr inbounds %struct.tda827x_priv, ptr %17, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %2, i32 noundef 1) #10
  %27 = load ptr, ptr %18, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %23
  %30 = call i32 %27(ptr noundef %0, i32 noundef 0) #10
  br label %31

31:                                               ; preds = %29, %23
  %32 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.tda827x_config, ptr %33, i32 0, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = call i32 %37(ptr noundef %0) #10
  br label %41

41:                                               ; preds = %39, %35, %31
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda827xa_set_params(ptr noundef %0) #0 {
  %2 = alloca [11 x i8], align 1
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %2, i8 0, i32 11, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %7 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = load i32, ptr %6, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %3, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 2
  store i16 11, ptr %11, align 4
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %12, align 4
  %13 = load i32, ptr @debug, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.tda827xa_set_params) #8
  br label %17

17:                                               ; preds = %15, %1
  call fastcc void @tda827xa_lna_gain(ptr noundef %0, i32 noundef 1, ptr noundef null)
  call void @msleep(i32 noundef 20) #10
  %18 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %17
  %22 = icmp ult i32 %19, 6000001
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = icmp ult i32 %19, 7000001
  %25 = select i1 %24, i32 4500000, i32 5000000
  br label %26

26:                                               ; preds = %23, %21, %17
  %27 = phi i32 [ 5000000, %17 ], [ 4000000, %21 ], [ %25, %23 ]
  %28 = load i32, ptr %4, align 4
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %30 = load i32, ptr %29, align 4
  switch i32 %30, label %36 [
    i32 1, label %31
    i32 18, label %31
  ]

31:                                               ; preds = %26, %26
  %32 = load i32, ptr @debug, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.tda827xa_set_params) #8
  br label %36

36:                                               ; preds = %34, %31, %26
  %37 = phi ptr [ @tda827xa_dvbt, %26 ], [ @tda827xa_dvbc, %34 ], [ @tda827xa_dvbc, %31 ]
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %43, %36
  %40 = phi i32 [ %38, %36 ], [ %46, %43 ]
  %41 = phi i32 [ 0, %36 ], [ %44, %43 ]
  %42 = icmp ult i32 %40, %28
  br i1 %42, label %43, label %48

43:                                               ; preds = %39
  %44 = add i32 %41, 1
  %45 = getelementptr %struct.tda827xa_data, ptr %37, i32 %44
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %39

48:                                               ; preds = %43, %39
  %49 = add nuw nsw i32 %27, 31250
  %50 = add i32 %49, %28
  %51 = sdiv i32 %50, 62500
  %52 = getelementptr %struct.tda827xa_data, ptr %37, i32 %41, i32 2
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = shl i32 %51, %54
  store i8 0, ptr %2, align 1
  %56 = lshr i32 %55, 8
  %57 = trunc i32 %56 to i8
  %58 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 1
  store i8 %57, ptr %58, align 1
  %59 = trunc i32 %55 to i8
  %60 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 2
  store i8 %59, ptr %60, align 1
  %61 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 3
  store i8 0, ptr %61, align 1
  %62 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 4
  store i8 22, ptr %62, align 1
  %63 = shl i8 %53, 5
  %64 = getelementptr %struct.tda827xa_data, ptr %37, i32 %41, i32 1
  %65 = load i8, ptr %64, align 4
  %66 = shl i8 %65, 3
  %67 = add i8 %66, %63
  %68 = getelementptr %struct.tda827xa_data, ptr %37, i32 %41, i32 4
  %69 = load i8, ptr %68, align 1
  %70 = add i8 %67, %69
  %71 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 5
  store i8 %70, ptr %71, align 1
  %72 = getelementptr %struct.tda827xa_data, ptr %37, i32 %41, i32 5
  %73 = load i8, ptr %72, align 4
  %74 = shl i8 %73, 4
  %75 = add i8 %74, 75
  %76 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 6
  store i8 %75, ptr %76, align 1
  %77 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 7
  store i8 28, ptr %77, align 1
  %78 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 8
  store i8 6, ptr %78, align 1
  %79 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 9
  store i8 36, ptr %79, align 1
  %80 = getelementptr inbounds [11 x i8], ptr %2, i32 0, i32 10
  store i8 0, ptr %80, align 1
  store i16 11, ptr %11, align 4
  %81 = load ptr, ptr %5, align 4
  %82 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %48
  %86 = call i32 %83(ptr noundef %0, i32 noundef 1) #10
  br label %87

87:                                               ; preds = %85, %48
  %88 = getelementptr inbounds %struct.tda827x_priv, ptr %81, i32 0, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %3, i32 noundef 1) #10
  %91 = load ptr, ptr %82, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %87
  %94 = call i32 %91(ptr noundef %0, i32 noundef 0) #10
  br label %95

95:                                               ; preds = %93, %87
  %96 = icmp slt i32 %90, 0
  %97 = icmp eq i32 %90, 1
  %98 = or i1 %96, %97
  %99 = select i1 %98, i32 %90, i32 -5
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %304, label %101

101:                                              ; preds = %95
  store i8 -112, ptr %2, align 1
  store i8 -1, ptr %58, align 1
  store i8 96, ptr %60, align 1
  store i8 0, ptr %61, align 1
  store i8 89, ptr %62, align 1
  store i16 5, ptr %11, align 4
  %102 = load ptr, ptr %5, align 4
  %103 = load ptr, ptr %82, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %107, label %105

105:                                              ; preds = %101
  %106 = call i32 %103(ptr noundef %0, i32 noundef 1) #10
  br label %107

107:                                              ; preds = %105, %101
  %108 = getelementptr inbounds %struct.tda827x_priv, ptr %102, i32 0, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = call i32 @i2c_transfer(ptr noundef %109, ptr noundef nonnull %3, i32 noundef 1) #10
  %111 = load ptr, ptr %82, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %107
  %114 = call i32 %111(ptr noundef %0, i32 noundef 0) #10
  br label %115

115:                                              ; preds = %113, %107
  %116 = icmp slt i32 %110, 0
  %117 = icmp eq i32 %110, 1
  %118 = or i1 %116, %117
  %119 = select i1 %118, i32 %110, i32 -5
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %304, label %121

121:                                              ; preds = %115
  store i8 -96, ptr %2, align 1
  store i8 64, ptr %58, align 1
  store i16 2, ptr %11, align 4
  %122 = load ptr, ptr %5, align 4
  %123 = load ptr, ptr %82, align 4
  %124 = icmp eq ptr %123, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %121
  %126 = call i32 %123(ptr noundef %0, i32 noundef 1) #10
  br label %127

127:                                              ; preds = %125, %121
  %128 = getelementptr inbounds %struct.tda827x_priv, ptr %122, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %3, i32 noundef 1) #10
  %131 = load ptr, ptr %82, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %135, label %133

133:                                              ; preds = %127
  %134 = call i32 %131(ptr noundef %0, i32 noundef 0) #10
  br label %135

135:                                              ; preds = %133, %127
  %136 = icmp slt i32 %130, 0
  %137 = icmp eq i32 %130, 1
  %138 = or i1 %136, %137
  %139 = select i1 %138, i32 %130, i32 -5
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %304, label %141

141:                                              ; preds = %135
  call void @msleep(i32 noundef 11) #10
  store i16 1, ptr %10, align 2
  %142 = load ptr, ptr %5, align 4
  %143 = load ptr, ptr %82, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %147, label %145

145:                                              ; preds = %141
  %146 = call i32 %143(ptr noundef %0, i32 noundef 1) #10
  br label %147

147:                                              ; preds = %145, %141
  %148 = getelementptr inbounds %struct.tda827x_priv, ptr %142, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %3, i32 noundef 1) #10
  %151 = load ptr, ptr %82, align 4
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %147
  %154 = call i32 %151(ptr noundef %0, i32 noundef 0) #10
  br label %155

155:                                              ; preds = %153, %147
  %156 = icmp slt i32 %150, 0
  %157 = icmp eq i32 %150, 1
  %158 = or i1 %156, %157
  %159 = select i1 %158, i32 %150, i32 -5
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %304, label %161

161:                                              ; preds = %155
  store i16 0, ptr %10, align 2
  %162 = load i8, ptr %58, align 1
  %163 = lshr i8 %162, 4
  store i8 %163, ptr %58, align 1
  %164 = load i32, ptr @debug, align 4
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %170, label %166

166:                                              ; preds = %161
  %167 = zext i8 %163 to i32
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %167) #8
  %169 = load i8, ptr %58, align 1
  br label %170

170:                                              ; preds = %166, %161
  %171 = phi i8 [ %169, %166 ], [ %163, %161 ]
  %172 = icmp ult i8 %171, 2
  br i1 %172, label %173, label %193

173:                                              ; preds = %170
  call fastcc void @tda827xa_lna_gain(ptr noundef %0, i32 noundef 0, ptr noundef null)
  store i8 96, ptr %2, align 1
  store i8 12, ptr %58, align 1
  %174 = load ptr, ptr %5, align 4
  %175 = load ptr, ptr %82, align 4
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177

177:                                              ; preds = %173
  %178 = call i32 %175(ptr noundef %0, i32 noundef 1) #10
  br label %179

179:                                              ; preds = %177, %173
  %180 = getelementptr inbounds %struct.tda827x_priv, ptr %174, i32 0, i32 1
  %181 = load ptr, ptr %180, align 4
  %182 = call i32 @i2c_transfer(ptr noundef %181, ptr noundef nonnull %3, i32 noundef 1) #10
  %183 = load ptr, ptr %82, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185

185:                                              ; preds = %179
  %186 = call i32 %183(ptr noundef %0, i32 noundef 0) #10
  br label %187

187:                                              ; preds = %185, %179
  %188 = icmp slt i32 %182, 0
  %189 = icmp eq i32 %182, 1
  %190 = or i1 %188, %189
  %191 = select i1 %190, i32 %182, i32 -5
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %304, label %193

193:                                              ; preds = %187, %170
  store i8 -64, ptr %2, align 1
  store i8 -103, ptr %58, align 1
  %194 = load ptr, ptr %5, align 4
  %195 = load ptr, ptr %82, align 4
  %196 = icmp eq ptr %195, null
  br i1 %196, label %199, label %197

197:                                              ; preds = %193
  %198 = call i32 %195(ptr noundef %0, i32 noundef 1) #10
  br label %199

199:                                              ; preds = %197, %193
  %200 = getelementptr inbounds %struct.tda827x_priv, ptr %194, i32 0, i32 1
  %201 = load ptr, ptr %200, align 4
  %202 = call i32 @i2c_transfer(ptr noundef %201, ptr noundef nonnull %3, i32 noundef 1) #10
  %203 = load ptr, ptr %82, align 4
  %204 = icmp eq ptr %203, null
  br i1 %204, label %207, label %205

205:                                              ; preds = %199
  %206 = call i32 %203(ptr noundef %0, i32 noundef 0) #10
  br label %207

207:                                              ; preds = %205, %199
  %208 = icmp slt i32 %202, 0
  %209 = icmp eq i32 %202, 1
  %210 = or i1 %208, %209
  %211 = select i1 %210, i32 %202, i32 -5
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %304, label %213

213:                                              ; preds = %207
  store i8 96, ptr %2, align 1
  store i8 60, ptr %58, align 1
  %214 = load ptr, ptr %5, align 4
  %215 = load ptr, ptr %82, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %213
  %218 = call i32 %215(ptr noundef %0, i32 noundef 1) #10
  br label %219

219:                                              ; preds = %217, %213
  %220 = getelementptr inbounds %struct.tda827x_priv, ptr %214, i32 0, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = call i32 @i2c_transfer(ptr noundef %221, ptr noundef nonnull %3, i32 noundef 1) #10
  %223 = load ptr, ptr %82, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %219
  %226 = call i32 %223(ptr noundef %0, i32 noundef 0) #10
  br label %227

227:                                              ; preds = %225, %219
  %228 = icmp slt i32 %222, 0
  %229 = icmp eq i32 %222, 1
  %230 = or i1 %228, %229
  %231 = select i1 %230, i32 %222, i32 -5
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %304, label %233

233:                                              ; preds = %227
  store i8 48, ptr %2, align 1
  %234 = getelementptr %struct.tda827xa_data, ptr %37, i32 %41, i32 3
  %235 = load i8, ptr %234, align 2
  %236 = add i8 %235, 16
  store i8 %236, ptr %58, align 1
  %237 = load ptr, ptr %5, align 4
  %238 = load ptr, ptr %82, align 4
  %239 = icmp eq ptr %238, null
  br i1 %239, label %242, label %240

240:                                              ; preds = %233
  %241 = call i32 %238(ptr noundef %0, i32 noundef 1) #10
  br label %242

242:                                              ; preds = %240, %233
  %243 = getelementptr inbounds %struct.tda827x_priv, ptr %237, i32 0, i32 1
  %244 = load ptr, ptr %243, align 4
  %245 = call i32 @i2c_transfer(ptr noundef %244, ptr noundef nonnull %3, i32 noundef 1) #10
  %246 = load ptr, ptr %82, align 4
  %247 = icmp eq ptr %246, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %242
  %249 = call i32 %246(ptr noundef %0, i32 noundef 0) #10
  br label %250

250:                                              ; preds = %248, %242
  %251 = icmp slt i32 %245, 0
  %252 = icmp eq i32 %245, 1
  %253 = or i1 %251, %252
  %254 = select i1 %253, i32 %245, i32 -5
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %304, label %256

256:                                              ; preds = %250
  call void @msleep(i32 noundef 163) #10
  store i8 -64, ptr %2, align 1
  store i8 57, ptr %58, align 1
  %257 = load ptr, ptr %5, align 4
  %258 = load ptr, ptr %82, align 4
  %259 = icmp eq ptr %258, null
  br i1 %259, label %262, label %260

260:                                              ; preds = %256
  %261 = call i32 %258(ptr noundef %0, i32 noundef 1) #10
  br label %262

262:                                              ; preds = %260, %256
  %263 = getelementptr inbounds %struct.tda827x_priv, ptr %257, i32 0, i32 1
  %264 = load ptr, ptr %263, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %3, i32 noundef 1) #10
  %266 = load ptr, ptr %82, align 4
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268

268:                                              ; preds = %262
  %269 = call i32 %266(ptr noundef %0, i32 noundef 0) #10
  br label %270

270:                                              ; preds = %268, %262
  %271 = icmp slt i32 %265, 0
  %272 = icmp eq i32 %265, 1
  %273 = or i1 %271, %272
  %274 = select i1 %273, i32 %265, i32 -5
  %275 = icmp slt i32 %274, 0
  br i1 %275, label %304, label %276

276:                                              ; preds = %270
  call void @msleep(i32 noundef 3) #10
  store i8 80, ptr %2, align 1
  %277 = load i8, ptr %72, align 4
  %278 = shl i8 %277, 4
  %279 = add i8 %278, 79
  store i8 %279, ptr %58, align 1
  %280 = load ptr, ptr %5, align 4
  %281 = load ptr, ptr %82, align 4
  %282 = icmp eq ptr %281, null
  br i1 %282, label %285, label %283

283:                                              ; preds = %276
  %284 = call i32 %281(ptr noundef %0, i32 noundef 1) #10
  br label %285

285:                                              ; preds = %283, %276
  %286 = getelementptr inbounds %struct.tda827x_priv, ptr %280, i32 0, i32 1
  %287 = load ptr, ptr %286, align 4
  %288 = call i32 @i2c_transfer(ptr noundef %287, ptr noundef nonnull %3, i32 noundef 1) #10
  %289 = load ptr, ptr %82, align 4
  %290 = icmp eq ptr %289, null
  br i1 %290, label %293, label %291

291:                                              ; preds = %285
  %292 = call i32 %289(ptr noundef %0, i32 noundef 0) #10
  br label %293

293:                                              ; preds = %291, %285
  %294 = icmp slt i32 %288, 0
  %295 = icmp eq i32 %288, 1
  %296 = or i1 %294, %295
  %297 = select i1 %296, i32 %288, i32 -5
  %298 = icmp slt i32 %297, 0
  br i1 %298, label %304, label %299

299:                                              ; preds = %293
  %300 = load i32, ptr %4, align 4
  %301 = getelementptr inbounds %struct.tda827x_priv, ptr %6, i32 0, i32 5
  store i32 %300, ptr %301, align 4
  %302 = load i32, ptr %18, align 4
  %303 = getelementptr inbounds %struct.tda827x_priv, ptr %6, i32 0, i32 6
  store i32 %302, ptr %303, align 4
  br label %309

304:                                              ; preds = %293, %270, %250, %227, %207, %187, %155, %135, %115, %95
  %305 = phi i32 [ %99, %95 ], [ %119, %115 ], [ %139, %135 ], [ %159, %155 ], [ %191, %187 ], [ %211, %207 ], [ %231, %227 ], [ %254, %250 ], [ %274, %270 ], [ %297, %293 ]
  %306 = load i32, ptr %6, align 4
  %307 = shl i32 %306, 1
  %308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.tda827xa_set_params, i32 noundef %307) #8
  br label %309

309:                                              ; preds = %304, %299
  %310 = phi i32 [ %305, %304 ], [ 0, %299 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %2) #10
  ret i32 %310
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda827xa_set_analog_params(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [11 x i8], align 1
  %4 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(11) %3, i8 0, i32 11, i1 false), !annotation !8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %7 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %7, align 4, !annotation !8
  %8 = load i32, ptr %6, align 4
  %9 = trunc i32 %8 to i16
  store i16 %9, ptr %4, align 4
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %10, align 2
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %12, align 4
  %13 = load i32, ptr %1, align 8
  call fastcc void @tda827x_set_std(ptr noundef %0, ptr noundef %1)
  call fastcc void @tda827xa_lna_gain(ptr noundef %0, i32 noundef 1, ptr noundef %1)
  call void @msleep(i32 noundef 10) #10
  %14 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 1
  %17 = udiv i32 %13, 1000
  %18 = select i1 %16, i32 %17, i32 %13
  %19 = getelementptr inbounds %struct.tda827x_priv, ptr %6, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = add i32 %18, %20
  %22 = mul i32 %21, 62500
  %23 = icmp ugt i32 %22, 56875000
  br i1 %23, label %24, label %71

24:                                               ; preds = %2
  %25 = icmp ugt i32 %22, 67250000
  br i1 %25, label %26, label %71

26:                                               ; preds = %24
  %27 = icmp ugt i32 %22, 81250000
  br i1 %27, label %28, label %71

28:                                               ; preds = %26
  %29 = icmp ugt i32 %22, 97500000
  br i1 %29, label %30, label %71

30:                                               ; preds = %28
  %31 = icmp ugt i32 %22, 113750000
  br i1 %31, label %32, label %71

32:                                               ; preds = %30
  %33 = icmp ugt i32 %22, 134500000
  br i1 %33, label %34, label %71

34:                                               ; preds = %32
  %35 = icmp ugt i32 %22, 154000000
  br i1 %35, label %36, label %71

36:                                               ; preds = %34
  %37 = icmp ugt i32 %22, 162500000
  br i1 %37, label %38, label %71

38:                                               ; preds = %36
  %39 = icmp ugt i32 %22, 183000000
  br i1 %39, label %40, label %71

40:                                               ; preds = %38
  %41 = icmp ugt i32 %22, 195000000
  br i1 %41, label %42, label %71

42:                                               ; preds = %40
  %43 = icmp ugt i32 %22, 227500000
  br i1 %43, label %44, label %71

44:                                               ; preds = %42
  %45 = icmp ugt i32 %22, 269000000
  br i1 %45, label %46, label %71

46:                                               ; preds = %44
  %47 = icmp ugt i32 %22, 325000000
  br i1 %47, label %48, label %71

48:                                               ; preds = %46
  %49 = icmp ugt i32 %22, 390000000
  br i1 %49, label %50, label %71

50:                                               ; preds = %48
  %51 = icmp ugt i32 %22, 455000000
  br i1 %51, label %52, label %71

52:                                               ; preds = %50
  %53 = icmp ugt i32 %22, 520000000
  br i1 %53, label %54, label %71

54:                                               ; preds = %52
  %55 = icmp ugt i32 %22, 538000000
  br i1 %55, label %56, label %71

56:                                               ; preds = %54
  %57 = icmp ugt i32 %22, 554000000
  br i1 %57, label %58, label %71

58:                                               ; preds = %56
  %59 = icmp ugt i32 %22, 620000000
  br i1 %59, label %60, label %71

60:                                               ; preds = %58
  %61 = icmp ugt i32 %22, 650000000
  br i1 %61, label %62, label %71

62:                                               ; preds = %60
  %63 = icmp ugt i32 %22, 700000000
  br i1 %63, label %64, label %71

64:                                               ; preds = %62
  %65 = icmp ugt i32 %22, 780000000
  br i1 %65, label %66, label %71

66:                                               ; preds = %64
  %67 = icmp ugt i32 %22, 820000000
  br i1 %67, label %68, label %71

68:                                               ; preds = %66
  %69 = icmp ugt i32 %22, 870000000
  %70 = select i1 %69, i32 24, i32 23
  br label %71

71:                                               ; preds = %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %2
  %72 = phi i32 [ 0, %2 ], [ 1, %24 ], [ 2, %26 ], [ 3, %28 ], [ 4, %30 ], [ 5, %32 ], [ 6, %34 ], [ 7, %36 ], [ 8, %38 ], [ 9, %40 ], [ 10, %42 ], [ 11, %44 ], [ 12, %46 ], [ 13, %48 ], [ 14, %50 ], [ 15, %52 ], [ 16, %54 ], [ 17, %56 ], [ 18, %58 ], [ 19, %60 ], [ 20, %62 ], [ 21, %64 ], [ 22, %66 ], [ %70, %68 ]
  %73 = getelementptr [26 x %struct.tda827xa_data], ptr @tda827xa_analog, i32 0, i32 %72, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = zext i8 %74 to i32
  %76 = shl i32 %21, %75
  store i8 0, ptr %3, align 1
  %77 = lshr i32 %76, 8
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 1
  store i8 %78, ptr %79, align 1
  %80 = trunc i32 %76 to i8
  %81 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 2
  store i8 %80, ptr %81, align 1
  %82 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 3
  store i8 0, ptr %82, align 1
  %83 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 4
  store i8 22, ptr %83, align 1
  %84 = shl i8 %74, 5
  %85 = getelementptr [26 x %struct.tda827xa_data], ptr @tda827xa_analog, i32 0, i32 %72, i32 1
  %86 = load i8, ptr %85, align 4
  %87 = shl i8 %86, 3
  %88 = add i8 %87, %84
  %89 = getelementptr [26 x %struct.tda827xa_data], ptr @tda827xa_analog, i32 0, i32 %72, i32 4
  %90 = load i8, ptr %89, align 1
  %91 = add i8 %88, %90
  %92 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 5
  store i8 %91, ptr %92, align 1
  %93 = getelementptr [26 x %struct.tda827xa_data], ptr @tda827xa_analog, i32 0, i32 %72, i32 5
  %94 = load i8, ptr %93, align 4
  %95 = shl i8 %94, 4
  %96 = add i8 %95, -117
  %97 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 6
  store i8 %96, ptr %97, align 1
  %98 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 7
  store i8 28, ptr %98, align 1
  %99 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 8
  store i8 4, ptr %99, align 1
  %100 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 9
  store i8 32, ptr %100, align 1
  %101 = getelementptr inbounds [11 x i8], ptr %3, i32 0, i32 10
  store i8 0, ptr %101, align 1
  store i16 11, ptr %11, align 4
  %102 = load ptr, ptr %5, align 4
  %103 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %108, label %106

106:                                              ; preds = %71
  %107 = call i32 %104(ptr noundef %0, i32 noundef 1) #10
  br label %108

108:                                              ; preds = %106, %71
  %109 = getelementptr inbounds %struct.tda827x_priv, ptr %102, i32 0, i32 1
  %110 = load ptr, ptr %109, align 4
  %111 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %4, i32 noundef 1) #10
  %112 = load ptr, ptr %103, align 4
  %113 = icmp eq ptr %112, null
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = call i32 %112(ptr noundef %0, i32 noundef 0) #10
  %116 = load ptr, ptr %103, align 4
  br label %117

117:                                              ; preds = %114, %108
  %118 = phi ptr [ null, %108 ], [ %116, %114 ]
  store i8 -112, ptr %3, align 1
  store i8 -1, ptr %79, align 1
  store i8 -32, ptr %81, align 1
  store i8 0, ptr %82, align 1
  %119 = getelementptr inbounds %struct.tda827x_priv, ptr %6, i32 0, i32 4
  %120 = load i8, ptr %119, align 4
  %121 = shl i8 %120, 1
  %122 = add i8 %121, -103
  store i8 %122, ptr %83, align 1
  store i16 5, ptr %11, align 4
  %123 = load ptr, ptr %5, align 4
  %124 = icmp eq ptr %118, null
  br i1 %124, label %127, label %125

125:                                              ; preds = %117
  %126 = call i32 %118(ptr noundef %0, i32 noundef 1) #10
  br label %127

127:                                              ; preds = %125, %117
  %128 = getelementptr inbounds %struct.tda827x_priv, ptr %123, i32 0, i32 1
  %129 = load ptr, ptr %128, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %4, i32 noundef 1) #10
  %131 = load ptr, ptr %103, align 4
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  store i8 -96, ptr %3, align 1
  store i8 -64, ptr %79, align 1
  store i16 2, ptr %11, align 4
  %134 = load ptr, ptr %5, align 4
  br label %142

135:                                              ; preds = %127
  %136 = call i32 %131(ptr noundef %0, i32 noundef 0) #10
  %137 = load ptr, ptr %103, align 4
  store i8 -96, ptr %3, align 1
  store i8 -64, ptr %79, align 1
  store i16 2, ptr %11, align 4
  %138 = load ptr, ptr %5, align 4
  %139 = icmp eq ptr %137, null
  br i1 %139, label %142, label %140

140:                                              ; preds = %135
  %141 = call i32 %137(ptr noundef %0, i32 noundef 1) #10
  br label %142

142:                                              ; preds = %140, %135, %133
  %143 = phi ptr [ %134, %133 ], [ %138, %140 ], [ %138, %135 ]
  %144 = getelementptr inbounds %struct.tda827x_priv, ptr %143, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = call i32 @i2c_transfer(ptr noundef %145, ptr noundef nonnull %4, i32 noundef 1) #10
  %147 = load ptr, ptr %103, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %142
  %150 = call i32 %147(ptr noundef %0, i32 noundef 0) #10
  %151 = load ptr, ptr %103, align 4
  br label %152

152:                                              ; preds = %149, %142
  %153 = phi ptr [ null, %142 ], [ %151, %149 ]
  store i8 48, ptr %3, align 1
  %154 = getelementptr [26 x %struct.tda827xa_data], ptr @tda827xa_analog, i32 0, i32 %72, i32 3
  %155 = load i8, ptr %154, align 2
  %156 = add i8 %155, 16
  store i8 %156, ptr %79, align 1
  %157 = load ptr, ptr %5, align 4
  %158 = icmp eq ptr %153, null
  br i1 %158, label %161, label %159

159:                                              ; preds = %152
  %160 = call i32 %153(ptr noundef %0, i32 noundef 1) #10
  br label %161

161:                                              ; preds = %159, %152
  %162 = getelementptr inbounds %struct.tda827x_priv, ptr %157, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = call i32 @i2c_transfer(ptr noundef %163, ptr noundef nonnull %4, i32 noundef 1) #10
  %165 = load ptr, ptr %103, align 4
  %166 = icmp eq ptr %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  store i16 1, ptr %10, align 2
  %168 = load ptr, ptr %5, align 4
  br label %176

169:                                              ; preds = %161
  %170 = call i32 %165(ptr noundef %0, i32 noundef 0) #10
  %171 = load ptr, ptr %103, align 4
  store i16 1, ptr %10, align 2
  %172 = load ptr, ptr %5, align 4
  %173 = icmp eq ptr %171, null
  br i1 %173, label %176, label %174

174:                                              ; preds = %169
  %175 = call i32 %171(ptr noundef %0, i32 noundef 1) #10
  br label %176

176:                                              ; preds = %174, %169, %167
  %177 = phi ptr [ %168, %167 ], [ %172, %174 ], [ %172, %169 ]
  %178 = getelementptr inbounds %struct.tda827x_priv, ptr %177, i32 0, i32 1
  %179 = load ptr, ptr %178, align 4
  %180 = call i32 @i2c_transfer(ptr noundef %179, ptr noundef nonnull %4, i32 noundef 1) #10
  %181 = load ptr, ptr %103, align 4
  %182 = icmp eq ptr %181, null
  br i1 %182, label %185, label %183

183:                                              ; preds = %176
  %184 = call i32 %181(ptr noundef %0, i32 noundef 0) #10
  br label %185

185:                                              ; preds = %183, %176
  store i16 0, ptr %10, align 2
  %186 = load i8, ptr %79, align 1
  %187 = lshr i8 %186, 4
  store i8 %187, ptr %79, align 1
  %188 = load i32, ptr @debug, align 4
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %194, label %190

190:                                              ; preds = %185
  %191 = zext i8 %187 to i32
  %192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %191) #8
  %193 = load i8, ptr %79, align 1
  br label %194

194:                                              ; preds = %190, %185
  %195 = phi i8 [ %193, %190 ], [ %187, %185 ]
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %194
  call fastcc void @tda827xa_lna_gain(ptr noundef %0, i32 noundef 0, ptr noundef %1)
  br label %198

198:                                              ; preds = %197, %194
  call void @msleep(i32 noundef 100) #10
  store i8 96, ptr %3, align 1
  store i8 60, ptr %79, align 1
  %199 = load ptr, ptr %5, align 4
  %200 = load ptr, ptr %103, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %204, label %202

202:                                              ; preds = %198
  %203 = call i32 %200(ptr noundef %0, i32 noundef 1) #10
  br label %204

204:                                              ; preds = %202, %198
  %205 = getelementptr inbounds %struct.tda827x_priv, ptr %199, i32 0, i32 1
  %206 = load ptr, ptr %205, align 4
  %207 = call i32 @i2c_transfer(ptr noundef %206, ptr noundef nonnull %4, i32 noundef 1) #10
  %208 = load ptr, ptr %103, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %204
  %211 = call i32 %208(ptr noundef %0, i32 noundef 0) #10
  br label %212

212:                                              ; preds = %210, %204
  call void @msleep(i32 noundef 163) #10
  store i8 80, ptr %3, align 1
  %213 = add i8 %95, -113
  store i8 %213, ptr %79, align 1
  %214 = load ptr, ptr %5, align 4
  %215 = load ptr, ptr %103, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %212
  %218 = call i32 %215(ptr noundef %0, i32 noundef 1) #10
  br label %219

219:                                              ; preds = %217, %212
  %220 = getelementptr inbounds %struct.tda827x_priv, ptr %214, i32 0, i32 1
  %221 = load ptr, ptr %220, align 4
  %222 = call i32 @i2c_transfer(ptr noundef %221, ptr noundef nonnull %4, i32 noundef 1) #10
  %223 = load ptr, ptr %103, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %225, label %227

225:                                              ; preds = %219
  store i8 -128, ptr %3, align 1
  store i8 40, ptr %79, align 1
  %226 = load ptr, ptr %5, align 4
  br label %234

227:                                              ; preds = %219
  %228 = call i32 %223(ptr noundef %0, i32 noundef 0) #10
  %229 = load ptr, ptr %103, align 4
  store i8 -128, ptr %3, align 1
  store i8 40, ptr %79, align 1
  %230 = load ptr, ptr %5, align 4
  %231 = icmp eq ptr %229, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %227
  %233 = call i32 %229(ptr noundef %0, i32 noundef 1) #10
  br label %234

234:                                              ; preds = %232, %227, %225
  %235 = phi ptr [ %226, %225 ], [ %230, %232 ], [ %230, %227 ]
  %236 = getelementptr inbounds %struct.tda827x_priv, ptr %235, i32 0, i32 1
  %237 = load ptr, ptr %236, align 4
  %238 = call i32 @i2c_transfer(ptr noundef %237, ptr noundef nonnull %4, i32 noundef 1) #10
  %239 = load ptr, ptr %103, align 4
  %240 = icmp eq ptr %239, null
  br i1 %240, label %241, label %243

241:                                              ; preds = %234
  store i8 -80, ptr %3, align 1
  store i8 1, ptr %79, align 1
  %242 = load ptr, ptr %5, align 4
  br label %250

243:                                              ; preds = %234
  %244 = call i32 %239(ptr noundef %0, i32 noundef 0) #10
  %245 = load ptr, ptr %103, align 4
  store i8 -80, ptr %3, align 1
  store i8 1, ptr %79, align 1
  %246 = load ptr, ptr %5, align 4
  %247 = icmp eq ptr %245, null
  br i1 %247, label %250, label %248

248:                                              ; preds = %243
  %249 = call i32 %245(ptr noundef %0, i32 noundef 1) #10
  br label %250

250:                                              ; preds = %248, %243, %241
  %251 = phi ptr [ %242, %241 ], [ %246, %248 ], [ %246, %243 ]
  %252 = getelementptr inbounds %struct.tda827x_priv, ptr %251, i32 0, i32 1
  %253 = load ptr, ptr %252, align 4
  %254 = call i32 @i2c_transfer(ptr noundef %253, ptr noundef nonnull %4, i32 noundef 1) #10
  %255 = load ptr, ptr %103, align 4
  %256 = icmp eq ptr %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %250
  store i8 -64, ptr %3, align 1
  %258 = load i8, ptr %119, align 4
  %259 = shl i8 %258, 1
  %260 = add i8 %259, 25
  store i8 %260, ptr %79, align 1
  %261 = load ptr, ptr %5, align 4
  br label %272

262:                                              ; preds = %250
  %263 = call i32 %255(ptr noundef %0, i32 noundef 0) #10
  %264 = load ptr, ptr %103, align 4
  store i8 -64, ptr %3, align 1
  %265 = load i8, ptr %119, align 4
  %266 = shl i8 %265, 1
  %267 = add i8 %266, 25
  store i8 %267, ptr %79, align 1
  %268 = load ptr, ptr %5, align 4
  %269 = icmp eq ptr %264, null
  br i1 %269, label %272, label %270

270:                                              ; preds = %262
  %271 = call i32 %264(ptr noundef %0, i32 noundef 1) #10
  br label %272

272:                                              ; preds = %270, %262, %257
  %273 = phi ptr [ %261, %257 ], [ %268, %270 ], [ %268, %262 ]
  %274 = getelementptr inbounds %struct.tda827x_priv, ptr %273, i32 0, i32 1
  %275 = load ptr, ptr %274, align 4
  %276 = call i32 @i2c_transfer(ptr noundef %275, ptr noundef nonnull %4, i32 noundef 1) #10
  %277 = load ptr, ptr %103, align 4
  %278 = icmp eq ptr %277, null
  br i1 %278, label %281, label %279

279:                                              ; preds = %272
  %280 = call i32 %277(ptr noundef %0, i32 noundef 0) #10
  br label %281

281:                                              ; preds = %279, %272
  %282 = load i32, ptr %1, align 8
  %283 = getelementptr inbounds %struct.tda827x_priv, ptr %6, i32 0, i32 5
  store i32 %282, ptr %283, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %3) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda827xa_lna_gain(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 290, ptr %4, align 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %8 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i64 0, ptr %5, align 8
  store i16 2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %9, align 8
  %10 = getelementptr inbounds %struct.tda827x_priv, ptr %7, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, ptr @debug, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %90, label %16

16:                                               ; preds = %13
  %17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %90

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.tda827x_config, ptr %11, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = trunc i32 %20 to i16
  store i16 %21, ptr %5, align 8
  %22 = getelementptr inbounds %struct.tda827x_config, ptr %11, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %23, 0
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %24, i1 true, i1 %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %18
  %29 = icmp eq i32 %1, 0
  %30 = select i1 %29, ptr @.str.10, ptr @.str.9
  %31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %30) #8
  br label %32

32:                                               ; preds = %28, %18
  %33 = load ptr, ptr %10, align 4
  %34 = getelementptr inbounds %struct.tda827x_config, ptr %33, i32 0, i32 2
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %90 [
    i32 3, label %80
    i32 1, label %36
    i32 2, label %36
  ]

36:                                               ; preds = %32, %32
  %37 = icmp eq ptr %2, null
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.analog_parameters, ptr %2, i32 0, i32 3
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 46848
  %42 = icmp ne i64 %41, 0
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %38, %36
  %45 = phi i32 [ 0, %36 ], [ 1, %38 ]
  %46 = phi i32 [ 0, %36 ], [ %43, %38 ]
  %47 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %59, label %50

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.tda827x_priv, ptr %7, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 %48(ptr noundef %54, i32 noundef 0, i32 noundef %45, i32 noundef %46) #10
  %56 = load ptr, ptr %10, align 4
  %57 = getelementptr inbounds %struct.tda827x_config, ptr %56, i32 0, i32 2
  %58 = load i32, ptr %57, align 4
  br label %59

59:                                               ; preds = %50, %44
  %60 = phi i32 [ %58, %50 ], [ %35, %44 ]
  %61 = icmp eq i32 %1, 0
  %62 = getelementptr inbounds [2 x i8], ptr %4, i32 0, i32 1
  %63 = icmp eq i32 %60, 2
  %64 = xor i1 %61, %63
  %65 = zext i1 %64 to i8
  store i8 %65, ptr %62, align 1
  %66 = load ptr, ptr %6, align 4
  %67 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70

70:                                               ; preds = %59
  %71 = call i32 %68(ptr noundef %0, i32 noundef 1) #10
  br label %72

72:                                               ; preds = %70, %59
  %73 = getelementptr inbounds %struct.tda827x_priv, ptr %66, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %5, i32 noundef 1) #10
  %76 = load ptr, ptr %67, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %72
  %79 = call i32 %76(ptr noundef %0, i32 noundef 0) #10
  br label %90

80:                                               ; preds = %32
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %82 = load ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, null
  br i1 %83, label %90, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.tda827x_priv, ptr %7, i32 0, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.i2c_adapter, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 %82(ptr noundef %88, i32 noundef 0, i32 noundef 0, i32 noundef %1) #10
  br label %90

90:                                               ; preds = %84, %80, %78, %72, %32, %16, %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda827x_set_std(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 4
  store i8 0, ptr %5, align 4
  %6 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 46848
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 3
  store i32 92, ptr %11, align 4
  store i8 1, ptr %5, align 4
  br label %43

12:                                               ; preds = %2
  %13 = and i64 %7, 65539
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 3
  store i32 108, ptr %16, align 4
  br label %43

17:                                               ; preds = %12
  %18 = and i64 %7, 786444
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 3
  store i32 124, ptr %21, align 4
  br label %43

22:                                               ; preds = %17
  %23 = and i64 %7, 16
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 3
  store i32 124, ptr %26, align 4
  br label %43

27:                                               ; preds = %22
  %28 = and i64 %7, 3277024
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 3
  store i32 124, ptr %31, align 4
  br label %43

32:                                               ; preds = %27
  %33 = and i64 %7, 4194304
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 3
  store i32 124, ptr %36, align 4
  br label %43

37:                                               ; preds = %32
  %38 = and i64 %7, 8388608
  %39 = icmp eq i64 %38, 0
  %40 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 3
  br i1 %39, label %42, label %41

41:                                               ; preds = %37
  store i32 20, ptr %40, align 4
  br label %43

42:                                               ; preds = %37
  store i32 124, ptr %40, align 4
  br label %43

43:                                               ; preds = %42, %41, %35, %30, %25, %20, %15, %10
  %44 = phi ptr [ @.str.12, %10 ], [ @.str.13, %15 ], [ @.str.14, %20 ], [ @.str.15, %25 ], [ @.str.16, %30 ], [ @.str.17, %35 ], [ @.str.18, %41 ], [ @.str.19, %42 ]
  %45 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.tda827x_priv, ptr %4, i32 0, i32 3
  store i32 88, ptr %49, align 4
  %50 = load i32, ptr @debug, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %59

54:                                               ; preds = %43
  %55 = load i32, ptr @debug, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %54
  %58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %44) #8
  br label %59

59:                                               ; preds = %57, %54, %52, %48
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { nounwind }

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
