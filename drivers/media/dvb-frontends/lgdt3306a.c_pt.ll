; ModuleID = '/llk/IR/drivers/media/dvb-frontends/lgdt3306a.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/lgdt3306a.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_lgdt3306a_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22lgdt3306a_attach\22\09\09\09\09\09"
module asm "__kstrtabns_lgdt3306a_attach:\09\09\09\09\09"
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
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.lgdt3306a_state = type { ptr, ptr, %struct.dvb_frontend, i32, i32, i32, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.71], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.71 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.72 }>
%union.anon.72 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.lgdt3306a_config = type { i8, i16, i16, i8, i32, i32, i32, i32, ptr, ptr }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_mux_core = type { ptr, ptr, i8, ptr, ptr, ptr, i32, i32, [0 x ptr] }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [53 x i8] c"parm=debug:set debug level (info=1, reg=2 (or-able))\00", section ".modinfo", align 1
@__param_str_forced_manual = internal constant [14 x i8] c"forced_manual\00", align 1
@forced_manual = internal global i32 0, align 4
@__param_forced_manual = internal constant %struct.kernel_param { ptr @__param_str_forced_manual, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @forced_manual } }, section "__param", align 4
@__UNIQUE_ID_forced_manualtype251 = internal constant [27 x i8] c"parmtype=forced_manual:int\00", section ".modinfo", align 1
@__UNIQUE_ID_forced_manual252 = internal constant [83 x i8] c"parm=forced_manual:if set, QAM64 and QAM256 will only lock to modulation specified\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [24 x i8] c"\017lgdt3306a: (%d-%04x)\0A\00", align 1
@lgdt3306a_ops = internal unnamed_addr constant %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"LG Electronics LGDT3306A VSB/QAM Frontend\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 54000000, i32 858000000, i32 62500, i32 0, i32 0, i32 0, i32 0, i32 2203648 }, [8 x i8] c"\0B\02\00\00\00\00\00\00", ptr null, ptr @lgdt3306a_release, ptr null, ptr @lgdt3306a_init, ptr @lgdt3306a_fe_sleep, ptr null, ptr null, ptr null, ptr @lgdt3306a_tune, ptr @lgdt3306a_get_frontend_algo, ptr @lgdt3306a_set_parameters, ptr @lgdt3306a_get_tune_settings, ptr @lgdt3306a_get_frontend, ptr @lgdt3306a_read_status, ptr @lgdt3306a_read_ber, ptr @lgdt3306a_read_signal_strength, ptr @lgdt3306a_read_snr, ptr @lgdt3306a_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lgdt3306a_i2c_gate_ctrl, ptr @lgdt3306a_ts_bus_ctrl, ptr null, ptr @lgdt3306a_search, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"\013lgdt3306a: error %d on line %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"\014lgdt3306a: expected 0x74, got 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"\014lgdt3306a: expected 0xc6, got 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"\014lgdt3306a: expected 0x03, got 0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"\014lgdt3306a: unable to detect LGDT3306A hardware\0A\00", align 1
@__kstrtab_lgdt3306a_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_lgdt3306a_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_lgdt3306a_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @lgdt3306a_attach to i32), ptr @__kstrtab_lgdt3306a_attach, ptr @__kstrtabns_lgdt3306a_attach }, section "___ksymtab+lgdt3306a_attach", align 4
@lgdt3306a_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"lgdt3306a\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description253 = internal constant [67 x i8] c"description=LG Electronics LGDT3306A ATSC/QAM-B Demodulator Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [45 x i8] c"author=Fred Richter <frichter@hauppauge.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version256 = internal constant [12 x i8] c"version=0.2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [58 x i8] c"\013lgdt3306a: error (addr %02x reg %04x error (ret == %i)\0A\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"\017lgdt3306a: reg: 0x%04x, val: 0x%02x\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"\017lgdt3306a: \0A\00", align 1
@.str.9 = private unnamed_addr constant [19 x i8] c"\017lgdt3306a: (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"\013lgdt3306a: error (addr %02x %02x <- %02x, err = %i)\0A\00", align 1
@.str.11 = private unnamed_addr constant [46 x i8] c"\017lgdt3306a: reg: 0x%04x, bit: %d, level: %d\0A\00", align 1
@regval2 = internal unnamed_addr global [164 x i8] zeroinitializer, align 1
@regtab = internal unnamed_addr constant [164 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 61, i16 64, i16 65, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 80, i16 112, i16 113, i16 115, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 128, i16 133, i16 136, i16 137, i16 140, i16 141, i16 142, i16 143, i16 144, i16 145, i16 156, i16 157, i16 161, i16 162, i16 163, i16 166, i16 244, i16 245, i16 246, i16 247, i16 248, i16 249, i16 250, i16 251, i16 252, i16 253, i16 254, i16 255, i16 4096, i16 4101, i16 4105, i16 4106, i16 4122, i16 4150, i16 4156, i16 4157, i16 4159, i16 4189, i16 4191, i16 4192, i16 4193, i16 4197, i16 4198, i16 4200, i16 4206, i16 4207, i16 4210, i16 4211, i16 4212, i16 4224, i16 4225, i16 4265, i16 4279, i16 8479, i16 8490, i16 8482, i16 8491, i16 8492, i16 8493, i16 8501, i16 8513, i16 8546, i16 8563, i16 8569, i16 8570, i16 8574, i16 8575, i16 8576, i16 8577, i16 8581, i16 8593, i16 8601, i16 8602, i16 8609, i16 10309, i16 10310, i16 10311, i16 10313, i16 10314, i16 12288, i16 12289, i16 12337, i16 12338, i16 12457, i16 12458], align 2
@regval1 = internal global [164 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"\017lgdt3306a:  %04X = %02X\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"\013lgdt3306a: Bad xtalMHz=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"\017lgdt3306a: complete\0A\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"\017lgdt3306a: re_tune=%u\0A\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"\017lgdt3306a: (%d, %d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"\017lgdt3306a:  (already set, skipping ...)\0A\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"\017lgdt3306a: modulation=%d\0A\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"\014lgdt3306a: IF=%d KHz is not supported, 3250 assumed\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"\017lgdt3306a: if_freq=%d KHz->[%04x]\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"\017lgdt3306a: edge=%d, valid=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"\017lgdt3306a: (%u, %d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"\017lgdt3306a: strength=%d\0A\00", align 1
@.str.24 = private unnamed_addr constant [57 x i8] c"\017lgdt3306a: fe->ops.tuner_ops.get_rf_strength() failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"\017lgdt3306a: NL_LOCK(%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"\017lgdt3306a: NLLockStatus=%d\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"\017lgdt3306a: NeverLock=%d\00", align 1
@.str.28 = private unnamed_addr constant [27 x i8] c"\017lgdt3306a: no fec lock!\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"\017lgdt3306a: cnt=%d errors=%d snr=%d\0A\00", align 1
@.str.30 = private unnamed_addr constant [26 x i8] c"\017lgdt3306a: not locked!\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"\017lgdt3306a: locked(%d)\0A\00", align 1
@.str.32 = private unnamed_addr constant [25 x i8] c"\017lgdt3306a: not locked\0A\00", align 1
@.str.33 = private unnamed_addr constant [27 x i8] c"\017lgdt3306a: SYNC_LOCK=%x\0A\00", align 1
@.str.36 = private unnamed_addr constant [26 x i8] c"\017lgdt3306a: FEC_LOCK=%x\0A\00", align 1
@.str.37 = private unnamed_addr constant [34 x i8] c"\014lgdt3306a: UNKNOWN whatLock=%d\0A\00", align 1
@.str.38 = private unnamed_addr constant [18 x i8] c"\017lgdt3306a: VSB\0A\00", align 1
@.str.39 = private unnamed_addr constant [21 x i8] c"\017lgdt3306a: QAM256\0A\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"\017lgdt3306a: QAM64\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"\014lgdt3306a: UNKNOWN\0A\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"\017lgdt3306a: no sync lock!\0A\00", align 1
@.str.43 = private unnamed_addr constant [74 x i8] c"\017lgdt3306a: snrRef=%d mainStrong=%d aiccrejStatus=%d currChDiffACQ=0x%x\0A\00", align 1
@.str.44 = private unnamed_addr constant [67 x i8] c"\017lgdt3306a: snrRef=%d maxPowerMan=0x%x nCombDet=%d fbDlyCir=0x%x\0A\00", align 1
@.str.45 = private unnamed_addr constant [42 x i8] c"\017lgdt3306a: mse=%u, pwr=%u, snr_x100=%d\0A\00", align 1
@valx_x10 = internal unnamed_addr constant [14 x i32] [i32 10, i32 11, i32 13, i32 15, i32 17, i32 20, i32 25, i32 33, i32 41, i32 50, i32 59, i32 73, i32 87, i32 100], align 4
@log10x_x1000 = internal unnamed_addr constant [14 x i32] [i32 0, i32 41, i32 114, i32 176, i32 230, i32 301, i32 398, i32 518, i32 613, i32 699, i32 771, i32 863, i32 939, i32 1000], align 4
@.str.46 = private unnamed_addr constant [21 x i8] c"\017lgdt3306a: ber=%u\0A\00", align 1
@.str.47 = private unnamed_addr constant [26 x i8] c"\017lgdt3306a: strength=%u\0A\00", align 1
@.str.48 = private unnamed_addr constant [26 x i8] c"\017lgdt3306a: ucblocks=%u\0A\00", align 1
@.str.49 = private unnamed_addr constant [31 x i8] c"\017lgdt3306a: deny_i2c_rptr=%d\0A\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"\017lgdt3306a: acquire=%d\0A\00", align 1
@.str.51 = private unnamed_addr constant [26 x i8] c"\017lgdt3306a: failed (%d)\0A\00", align 1
@lgdt3306a_driver = internal global %struct.i2c_driver { i32 0, ptr @lgdt3306a_probe, ptr @lgdt3306a_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.52, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @lgdt3306a_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.52 = private unnamed_addr constant [10 x i8] c"lgdt3306a\00", align 1
@.str.53 = private unnamed_addr constant [50 x i8] c"LG Electronics LGDT3306A successfully identified\0A\00", align 1
@.str.54 = private unnamed_addr constant [19 x i8] c"probe failed = %d\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_forced_manual252, ptr @__UNIQUE_ID_forced_manualtype251, ptr @__UNIQUE_ID_license255, ptr @__UNIQUE_ID_version256, ptr @__ksymtab_lgdt3306a_attach, ptr @__param_debug, ptr @__param_forced_manual], section "llvm.metadata"

@__mod_i2c__lgdt3306a_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @lgdt3306a_id_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @lgdt3306a_attach(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = icmp eq ptr %1, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %11 = load i32, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %7
  %13 = phi i32 [ %11, %9 ], [ 0, %7 ]
  %14 = icmp eq ptr %0, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i8, ptr %0, align 4
  %17 = zext i8 %16 to i32
  br label %18

18:                                               ; preds = %15, %12
  %19 = phi i32 [ %17, %15 ], [ 0, %12 ]
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %13, i32 noundef %19) #11
  br label %21

21:                                               ; preds = %18, %2
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %23 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 1064) #12
  %24 = icmp eq ptr %23, null
  br i1 %24, label %83, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.lgdt3306a_state, ptr %23, i32 0, i32 1
  store ptr %0, ptr %26, align 4
  store ptr %1, ptr %23, align 8
  %27 = getelementptr inbounds %struct.lgdt3306a_state, ptr %23, i32 0, i32 2
  %28 = getelementptr inbounds %struct.lgdt3306a_state, ptr %23, i32 0, i32 2, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(544) %28, ptr noundef nonnull align 4 dereferenceable(544) @lgdt3306a_ops, i32 544, i1 false)
  %29 = getelementptr inbounds %struct.lgdt3306a_state, ptr %23, i32 0, i32 2, i32 3
  store ptr %23, ptr %29, align 8
  %30 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef nonnull %23, i16 noundef zeroext 0, ptr noundef nonnull %3)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %25
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %30, i32 noundef 1820) #11
  br label %83

34:                                               ; preds = %25
  %35 = load i8, ptr %3, align 1
  %36 = and i8 %35, 116
  %37 = icmp eq i8 %36, 116
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = zext i8 %36 to i32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %39) #11
  br label %41

41:                                               ; preds = %38, %34
  %42 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef nonnull %23, i16 noundef zeroext 1, ptr noundef nonnull %3)
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %42, i32 noundef 1830) #11
  br label %83

46:                                               ; preds = %41
  %47 = load i8, ptr %3, align 1
  %48 = and i8 %47, -10
  %49 = icmp eq i8 %48, -58
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = zext i8 %48 to i32
  %52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %51) #11
  br label %53

53:                                               ; preds = %50, %46
  %54 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef nonnull %23, i16 noundef zeroext 2, ptr noundef nonnull %3)
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %54, i32 noundef 1840) #11
  br label %83

58:                                               ; preds = %53
  %59 = load i8, ptr %3, align 1
  %60 = and i8 %59, 115
  %61 = icmp eq i8 %60, 3
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = zext i8 %60 to i32
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %63) #11
  br label %65

65:                                               ; preds = %62, %58
  %66 = getelementptr inbounds %struct.lgdt3306a_state, ptr %23, i32 0, i32 4
  store i32 -1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.lgdt3306a_state, ptr %23, i32 0, i32 3
  store i32 -1, ptr %67, align 8
  %68 = load i32, ptr @debug, align 4
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %65
  %72 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %73

73:                                               ; preds = %71, %65
  store i32 -1, ptr %66, align 4
  %74 = call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef nonnull %23, i32 noundef 1) #10
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %73
  %77 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %74, i32 noundef 796) #11
  br label %85

78:                                               ; preds = %73
  %79 = call fastcc i32 @lgdt3306a_power(ptr noundef nonnull %23, i32 noundef 0) #10
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %79, i32 noundef 800) #11
  br label %85

83:                                               ; preds = %56, %44, %32, %21
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  call void @kfree(ptr noundef %23) #10
  br label %85

85:                                               ; preds = %83, %81, %78, %76
  %86 = phi ptr [ null, %83 ], [ %27, %76 ], [ %27, %78 ], [ %27, %81 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret ptr %86
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_read_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  %6 = zext i16 %1 to i32
  %7 = lshr i16 %1, 8
  %8 = trunc i16 %7 to i8
  store i8 %8, ptr %4, align 2
  %9 = getelementptr inbounds i8, ptr %4, i32 1
  %10 = trunc i16 %1 to i8
  store i8 %10, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #10
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %11, i8 0, i32 16, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.lgdt3306a_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 2, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %20 = load i8, ptr %13, align 4
  %21 = zext i8 %20 to i16
  store i16 %21, ptr %19, align 4
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  store i16 1, ptr %22, align 2
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  store i16 1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  store ptr %2, ptr %24, align 4
  %25 = load ptr, ptr %0, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %5, i32 noundef 2) #10
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %35, label %28

28:                                               ; preds = %3
  %29 = load ptr, ptr %12, align 4
  %30 = load i8, ptr %29, align 4
  %31 = zext i8 %30 to i32
  %32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %31, i32 noundef %6, i32 noundef %26) #11
  %33 = icmp slt i32 %26, 0
  %34 = select i1 %33, i32 %26, i32 -121
  br label %43

35:                                               ; preds = %3
  %36 = load i32, ptr @debug, align 4
  %37 = and i32 %36, 2
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i8, ptr %2, align 1
  %41 = zext i8 %40 to i32
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %6, i32 noundef %41) #11
  br label %43

43:                                               ; preds = %39, %35, %28
  %44 = phi i32 [ %34, %28 ], [ 0, %39 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  ret i32 %44
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @lgdt3306a_driver) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @lgdt3306a_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_mpeg_tristate(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %1) #11
  br label %9

9:                                                ; preds = %7, %2
  %10 = icmp eq i32 %1, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %9
  %12 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 112, ptr noundef nonnull %3)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %11
  %15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %12, i32 noundef 297) #11
  br label %45

16:                                               ; preds = %11
  %17 = load i8, ptr %3, align 1
  %18 = and i8 %17, 87
  store i8 %18, ptr %3, align 1
  %19 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 112, i8 noundef zeroext %18)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 305) #11
  br label %45

23:                                               ; preds = %16
  %24 = call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %0, i16 noundef zeroext 3, i32 noundef 6, i32 noundef 1)
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %45

26:                                               ; preds = %23
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %24, i32 noundef 310) #11
  br label %45

28:                                               ; preds = %9
  %29 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %0, i16 noundef zeroext 3, i32 noundef 6, i32 noundef 0)
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %29, i32 noundef 316) #11
  br label %45

33:                                               ; preds = %28
  %34 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 112, ptr noundef nonnull %3)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %34, i32 noundef 320) #11
  br label %45

38:                                               ; preds = %33
  %39 = load i8, ptr %3, align 1
  %40 = or i8 %39, -88
  store i8 %40, ptr %3, align 1
  %41 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 112, i8 noundef zeroext %40)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %41, i32 noundef 325) #11
  br label %45

45:                                               ; preds = %43, %38, %36, %31, %26, %23, %21, %14
  %46 = phi i32 [ %12, %14 ], [ %19, %21 ], [ %24, %26 ], [ %24, %23 ], [ %29, %31 ], [ %34, %36 ], [ %41, %43 ], [ %41, %38 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 %46
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_power(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load i32, ptr @debug, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %1) #11
  br label %8

8:                                                ; preds = %6, %2
  %9 = icmp eq i32 %1, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %8
  %11 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 7, i32 noundef 0)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef 353) #11
  br label %56

15:                                               ; preds = %10
  %16 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 0)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %16, i32 noundef 358) #11
  br label %56

20:                                               ; preds = %8
  %21 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 7, i32 noundef 1)
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %21, i32 noundef 364) #11
  br label %56

25:                                               ; preds = %20
  %26 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 0, i32 noundef 1)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %26, i32 noundef 369) #11
  br label %56

30:                                               ; preds = %25, %15
  tail call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(164) @regval2, i8 -1, i32 164, i1 false) #10
  %31 = load i32, ptr @debug, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %56, label %34

34:                                               ; preds = %30
  %35 = and i32 %31, -3
  store i32 %35, ptr @debug, align 4
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %37

37:                                               ; preds = %52, %34
  %38 = phi i32 [ 0, %34 ], [ %53, %52 ]
  %39 = getelementptr [164 x i16], ptr @regtab, i32 0, i32 %38
  %40 = load i16, ptr %39, align 2
  %41 = getelementptr [164 x i8], ptr @regval1, i32 0, i32 %38
  %42 = tail call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext %40, ptr noundef %41) #10
  %43 = load i8, ptr %41, align 1
  %44 = getelementptr [164 x i8], ptr @regval2, i32 0, i32 %38
  %45 = load i8, ptr %44, align 1
  %46 = icmp eq i8 %43, %45
  br i1 %46, label %52, label %47

47:                                               ; preds = %37
  %48 = zext i8 %43 to i32
  %49 = sext i16 %40 to i32
  %50 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %49, i32 noundef %48) #11
  %51 = load i8, ptr %41, align 1
  store i8 %51, ptr %44, align 1
  br label %52

52:                                               ; preds = %47, %37
  %53 = add nuw nsw i32 %38, 1
  %54 = icmp eq i32 %53, 164
  br i1 %54, label %55, label %37

55:                                               ; preds = %52
  store i32 %31, ptr @debug, align 4
  br label %56

56:                                               ; preds = %55, %30, %28, %23, %18, %13
  %57 = phi i32 [ %11, %13 ], [ %16, %18 ], [ %21, %23 ], [ %26, %28 ], [ 0, %30 ], [ 0, %55 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_write_reg(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca [3 x i8], align 1
  %5 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #10
  %6 = lshr i16 %1, 8
  %7 = trunc i16 %6 to i8
  store i8 %7, ptr %4, align 1
  %8 = getelementptr inbounds i8, ptr %4, i32 1
  %9 = trunc i16 %1 to i8
  store i8 %9, ptr %8, align 1
  %10 = getelementptr inbounds i8, ptr %4, i32 2
  store i8 %2, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #10
  %11 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 0, ptr %11, align 4, !annotation !8
  %12 = getelementptr inbounds %struct.lgdt3306a_state, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i16
  store i16 %15, ptr %5, align 4
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %16, align 2
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 2
  store i16 3, ptr %17, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %18, align 4
  %19 = load i32, ptr @debug, align 4
  %20 = and i32 %19, 2
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = zext i16 %1 to i32
  %24 = zext i8 %2 to i32
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %23, i32 noundef %24) #11
  br label %26

26:                                               ; preds = %22, %3
  %27 = load ptr, ptr %0, align 4
  %28 = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %5, i32 noundef 1) #10
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %18, align 4
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i32
  %34 = getelementptr i8, ptr %31, i32 1
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = getelementptr i8, ptr %31, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %33, i32 noundef %36, i32 noundef %39, i32 noundef %28) #11
  %41 = icmp slt i32 %28, 0
  %42 = select i1 %41, i32 %28, i32 -121
  br label %43

43:                                               ; preds = %30, %26
  %44 = phi i32 [ %42, %30 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #10
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_set_reg_bit(ptr nocapture noundef readonly %0, i16 noundef zeroext %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %6 = load i32, ptr @debug, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = zext i16 %1 to i32
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %10, i32 noundef %2, i32 noundef %3) #11
  br label %12

12:                                               ; preds = %9, %4
  %13 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext %1, ptr noundef nonnull %5)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef 191) #11
  br label %31

17:                                               ; preds = %12
  %18 = shl nuw i32 1, %2
  %19 = load i8, ptr %5, align 1
  %20 = trunc i32 %18 to i8
  %21 = xor i8 %20, -1
  %22 = and i8 %19, %21
  %23 = and i32 %3, 1
  %24 = shl nuw i32 %23, %2
  %25 = trunc i32 %24 to i8
  %26 = or i8 %22, %25
  store i8 %26, ptr %5, align 1
  %27 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext %1, i8 noundef zeroext %26)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %27, i32 noundef 198) #11
  br label %31

31:                                               ; preds = %29, %17, %15
  %32 = phi i32 [ %13, %15 ], [ %27, %29 ], [ %27, %17 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @lgdt3306a_release(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %9

9:                                                ; preds = %7, %1
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_init(ptr nocapture noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1, !annotation !8
  %5 = load i32, ptr @debug, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %10

10:                                               ; preds = %8, %1
  %11 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %4, i16 noundef zeroext 1, i32 noundef 0, i32 noundef 1)
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef 824) #11
  br label %177

15:                                               ; preds = %10
  %16 = load i32, ptr @debug, align 4
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 0) #11
  br label %21

21:                                               ; preds = %19, %15
  %22 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %4, i16 noundef zeroext 2, i32 noundef 3, i32 noundef 0) #10
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %22, i32 noundef 829) #11
  br label %177

26:                                               ; preds = %21
  %27 = load i32, ptr @debug, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 1) #11
  br label %32

32:                                               ; preds = %30, %26
  %33 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %4, i16 noundef zeroext 2, i32 noundef 2, i32 noundef 1) #10
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %33, i32 noundef 834) #11
  br label %177

37:                                               ; preds = %32
  %38 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %4, i16 noundef zeroext 4, i32 noundef 7, i32 noundef 1)
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %38, i32 noundef 841) #11
  br label %177

42:                                               ; preds = %37
  %43 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %4, i16 noundef zeroext 4, i32 noundef 2, i32 noundef 0)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %43, i32 noundef 848) #11
  br label %177

47:                                               ; preds = %42
  %48 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %4, i16 noundef zeroext 4, i32 noundef 3, i32 noundef 0)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %48, i32 noundef 855) #11
  br label %177

52:                                               ; preds = %47
  %53 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %4, i16 noundef zeroext 5, i32 noundef 6, i32 noundef 0)
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %53, i32 noundef 862) #11
  br label %177

57:                                               ; preds = %52
  %58 = getelementptr inbounds %struct.lgdt3306a_state, ptr %4, i32 0, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.lgdt3306a_config, ptr %59, i32 0, i32 7
  %61 = load i32, ptr %60, align 4
  switch i32 %61, label %124 [
    i32 24, label %62
    i32 25, label %93
  ]

62:                                               ; preds = %57
  %63 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %4, i16 noundef zeroext 5, ptr noundef nonnull %2)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %63, i32 noundef 868) #11
  br label %177

67:                                               ; preds = %62
  %68 = load i8, ptr %2, align 1
  %69 = and i8 %68, -64
  %70 = or i8 %69, 37
  store i8 %70, ptr %2, align 1
  %71 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 5, i8 noundef zeroext %70)
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %71, i32 noundef 873) #11
  br label %177

75:                                               ; preds = %67
  %76 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 6, i8 noundef zeroext 100)
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %76, i32 noundef 876) #11
  br label %177

80:                                               ; preds = %75
  %81 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %4, i16 noundef zeroext 13, ptr noundef nonnull %2)
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %81, i32 noundef 881) #11
  br label %177

85:                                               ; preds = %80
  %86 = load i8, ptr %2, align 1
  %87 = and i8 %86, -64
  %88 = or i8 %87, 24
  store i8 %88, ptr %2, align 1
  %89 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 13, i8 noundef zeroext %88)
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %126

91:                                               ; preds = %85
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %89, i32 noundef 886) #11
  br label %177

93:                                               ; preds = %57
  %94 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %4, i16 noundef zeroext 5, ptr noundef nonnull %2)
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %94, i32 noundef 892) #11
  br label %177

98:                                               ; preds = %93
  %99 = load i8, ptr %2, align 1
  %100 = and i8 %99, -64
  %101 = or i8 %100, 37
  store i8 %101, ptr %2, align 1
  %102 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 5, i8 noundef zeroext %101)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %98
  %105 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %102, i32 noundef 897) #11
  br label %177

106:                                              ; preds = %98
  %107 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 6, i8 noundef zeroext 100)
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %107, i32 noundef 900) #11
  br label %177

111:                                              ; preds = %106
  %112 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %4, i16 noundef zeroext 13, ptr noundef nonnull %2)
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %112, i32 noundef 905) #11
  br label %177

116:                                              ; preds = %111
  %117 = load i8, ptr %2, align 1
  %118 = and i8 %117, -64
  %119 = or i8 %118, 25
  store i8 %119, ptr %2, align 1
  %120 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 13, i8 noundef zeroext %119)
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %120, i32 noundef 910) #11
  br label %177

124:                                              ; preds = %57
  %125 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %61) #11
  br label %126

126:                                              ; preds = %124, %116, %85
  %127 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 16, i8 noundef zeroext 52)
  %128 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 17, i8 noundef zeroext 0)
  %129 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 20, i8 noundef zeroext 0)
  %130 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %4, i16 noundef zeroext 4156, ptr noundef nonnull %2)
  %131 = load i8, ptr %2, align 1
  %132 = and i8 %131, 15
  %133 = or i8 %132, 32
  store i8 %133, ptr %2, align 1
  %134 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 4156, i8 noundef zeroext %133)
  %135 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %4, i16 noundef zeroext 4157, ptr noundef nonnull %2)
  %136 = load i8, ptr %2, align 1
  %137 = or i8 %136, 3
  store i8 %137, ptr %2, align 1
  %138 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 4157, i8 noundef zeroext %137)
  %139 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %4, i16 noundef zeroext 4150, ptr noundef nonnull %2)
  %140 = load i8, ptr %2, align 1
  %141 = and i8 %140, -16
  %142 = or i8 %141, 12
  store i8 %142, ptr %2, align 1
  %143 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 4150, i8 noundef zeroext %142)
  %144 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %4, i16 noundef zeroext 8479, ptr noundef nonnull %2)
  %145 = load i8, ptr %2, align 1
  %146 = and i8 %145, -17
  store i8 %146, ptr %2, align 1
  %147 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 8479, i8 noundef zeroext %146)
  %148 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %4, i16 noundef zeroext 10313, ptr noundef nonnull %2)
  %149 = load i8, ptr %2, align 1
  %150 = and i8 %149, -17
  store i8 %150, ptr %2, align 1
  %151 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %4, i16 noundef zeroext 10313, i8 noundef zeroext %150)
  %152 = call fastcc i32 @lgdt3306a_set_vsb(ptr noundef %4)
  %153 = load ptr, ptr %58, align 4
  %154 = getelementptr inbounds %struct.lgdt3306a_config, ptr %153, i32 0, i32 4
  %155 = load i32, ptr %154, align 4
  %156 = call fastcc i32 @lgdt3306a_mpeg_mode(ptr noundef %4, i32 noundef %155)
  %157 = call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef %4, i32 noundef 1)
  %158 = load i32, ptr @debug, align 4
  %159 = and i32 %158, 1
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %163, label %161

161:                                              ; preds = %126
  %162 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %163

163:                                              ; preds = %161, %126
  %164 = getelementptr inbounds %struct.lgdt3306a_state, ptr %4, i32 0, i32 4
  store i32 -1, ptr %164, align 4
  %165 = call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef %4, i32 noundef 1) #10
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %165, i32 noundef 796) #11
  br label %174

169:                                              ; preds = %163
  %170 = call fastcc i32 @lgdt3306a_power(ptr noundef %4, i32 noundef 0) #10
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %169
  %173 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %170, i32 noundef 800) #11
  br label %174

174:                                              ; preds = %172, %169, %167
  %175 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %175, align 1
  %176 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  store i8 0, ptr %176, align 1
  br label %177

177:                                              ; preds = %174, %122, %114, %109, %104, %96, %91, %83, %78, %73, %65, %55, %50, %45, %40, %35, %24, %13
  %178 = phi i32 [ 0, %174 ], [ %11, %13 ], [ %22, %24 ], [ %33, %35 ], [ %38, %40 ], [ %43, %45 ], [ %48, %50 ], [ %53, %55 ], [ %63, %65 ], [ %71, %73 ], [ %76, %78 ], [ %81, %83 ], [ %89, %91 ], [ %94, %96 ], [ %102, %104 ], [ %107, %109 ], [ %112, %114 ], [ %120, %122 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  ret i32 %178
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_fe_sleep(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %struct.lgdt3306a_state, ptr %3, i32 0, i32 4
  store i32 -1, ptr %10, align 4
  %11 = tail call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef %3, i32 noundef 1) #10
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %11, i32 noundef 796) #11
  br label %20

15:                                               ; preds = %9
  %16 = tail call fastcc i32 @lgdt3306a_power(ptr noundef %3, i32 noundef 0) #10
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %16, i32 noundef 800) #11
  br label %20

20:                                               ; preds = %18, %15, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_tune(ptr noundef %0, i1 noundef zeroext %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef %4) #0 {
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @debug, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %5
  %12 = zext i1 %1 to i32
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %12) #11
  br label %14

14:                                               ; preds = %11, %5
  br i1 %1, label %15, label %19

15:                                               ; preds = %14
  %16 = getelementptr inbounds %struct.lgdt3306a_state, ptr %7, i32 0, i32 4
  store i32 -1, ptr %16, align 4
  %17 = tail call i32 @lgdt3306a_set_parameters(ptr noundef %0)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15, %14
  store i32 125, ptr %3, align 4
  %20 = tail call i32 @lgdt3306a_read_status(ptr noundef %0, ptr noundef %4)
  br label %21

21:                                               ; preds = %19, %15
  %22 = phi i32 [ %20, %19 ], [ %17, %15 ]
  ret i32 %22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @lgdt3306a_get_frontend_algo(ptr nocapture noundef readnone %0) #8 {
  ret i32 4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_set_parameters(ptr noundef %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr @debug, align 4
  %8 = and i32 %7, 1
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load i32, ptr %4, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %11, i32 noundef %13) #11
  br label %15

15:                                               ; preds = %10, %1
  %16 = getelementptr inbounds %struct.lgdt3306a_state, ptr %6, i32 0, i32 4
  %17 = load i32, ptr %16, align 4
  %18 = load i32, ptr %4, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.lgdt3306a_state, ptr %6, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i32, ptr @debug, align 4
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %303, label %30

30:                                               ; preds = %26
  %31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #11
  br label %303

32:                                               ; preds = %20, %15
  store i32 -1, ptr %16, align 4
  %33 = getelementptr inbounds %struct.lgdt3306a_state, ptr %6, i32 0, i32 3
  store i32 -1, ptr %33, align 4
  %34 = tail call fastcc i32 @lgdt3306a_power(ptr noundef %6, i32 noundef 1)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %34, i32 noundef 992) #11
  br label %303

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %38
  %43 = tail call i32 %40(ptr noundef %0) #10
  %44 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = tail call i32 %45(ptr noundef %0, i32 noundef 0) #10
  br label %49

49:                                               ; preds = %47, %42, %38
  %50 = load i32, ptr @debug, align 4
  %51 = and i32 %50, 1
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %55

55:                                               ; preds = %53, %49
  %56 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 1
  %57 = load i32, ptr %56, align 4
  switch i32 %57, label %169 [
    i32 7, label %58
    i32 3, label %60
    i32 5, label %60
    i32 6, label %60
  ]

58:                                               ; preds = %55
  %59 = tail call fastcc i32 @lgdt3306a_set_vsb(ptr noundef %6) #10
  br label %164

60:                                               ; preds = %55, %55, %55
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %61 = load i32, ptr @debug, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %57) #11
  br label %66

66:                                               ; preds = %64, %60
  %67 = tail call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 8, i8 noundef zeroext 8) #10
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %67, i32 noundef 550) #11
  br label %162

71:                                               ; preds = %66
  %72 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 2, ptr noundef nonnull %3) #10
  %73 = load i8, ptr %3, align 1
  %74 = and i8 %73, -13
  %75 = or i8 %74, 8
  store i8 %75, ptr %3, align 1
  %76 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 2, i8 noundef zeroext %75) #10
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %76, i32 noundef 558) #11
  br label %162

80:                                               ; preds = %71
  %81 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 9, ptr noundef nonnull %3) #10
  %82 = load i8, ptr %3, align 1
  %83 = and i8 %82, -29
  store i8 %83, ptr %3, align 1
  %84 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 9, i8 noundef zeroext %83) #10
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %84, i32 noundef 565) #11
  br label %162

88:                                               ; preds = %80
  %89 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 9, ptr noundef nonnull %3) #10
  %90 = load i8, ptr %3, align 1
  %91 = and i8 %90, -4
  %92 = load i32, ptr @forced_manual, align 4
  %93 = icmp ne i32 %92, 0
  %94 = icmp ne i32 %57, 6
  %95 = and i1 %94, %93
  %96 = select i1 %95, i8 1, i8 2
  %97 = or i8 %96, %91
  store i8 %97, ptr %3, align 1
  %98 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 9, i8 noundef zeroext %97) #10
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %88
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %98, i32 noundef 578) #11
  br label %162

102:                                              ; preds = %88
  %103 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 4122, ptr noundef nonnull %3) #10
  %104 = load i8, ptr %3, align 1
  %105 = and i8 %104, -8
  %106 = icmp eq i32 %57, 3
  %107 = select i1 %106, i8 2, i8 4
  %108 = or i8 %105, %107
  store i8 %108, ptr %3, align 1
  %109 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 4122, i8 noundef zeroext %108) #10
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %109, i32 noundef 590) #11
  br label %162

113:                                              ; preds = %102
  %114 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 13, ptr noundef nonnull %3) #10
  %115 = load i8, ptr %3, align 1
  %116 = or i8 %115, 64
  store i8 %116, ptr %3, align 1
  %117 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 13, i8 noundef zeroext %116) #10
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %117, i32 noundef 598) #11
  br label %162

121:                                              ; preds = %113
  %122 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 36, ptr noundef nonnull %3) #10
  store i8 0, ptr %3, align 1
  %123 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 36, i8 noundef zeroext 0) #10
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %123, i32 noundef 605) #11
  br label %162

127:                                              ; preds = %121
  %128 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 10, ptr noundef nonnull %3) #10
  %129 = load i8, ptr %3, align 1
  %130 = or i8 %129, 2
  store i8 %130, ptr %3, align 1
  %131 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 10, i8 noundef zeroext %130) #10
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %127
  %134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %131, i32 noundef 613) #11
  br label %162

135:                                              ; preds = %127
  %136 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 10313, ptr noundef nonnull %3) #10
  %137 = load i8, ptr %3, align 1
  %138 = and i8 %137, -33
  store i8 %138, ptr %3, align 1
  %139 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 10313, i8 noundef zeroext %138) #10
  %140 = icmp slt i32 %139, 0
  br i1 %140, label %141, label %143

141:                                              ; preds = %135
  %142 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %139, i32 noundef 620) #11
  br label %162

143:                                              ; preds = %135
  %144 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 12331, ptr noundef nonnull %3) #10
  %145 = load i8, ptr %3, align 1
  %146 = and i8 %145, 127
  store i8 %146, ptr %3, align 1
  %147 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 12331, i8 noundef zeroext %146) #10
  %148 = icmp slt i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %143
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %147, i32 noundef 627) #11
  br label %162

151:                                              ; preds = %143
  %152 = call fastcc i32 @lgdt3306a_soft_reset(ptr noundef %6) #10
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %152, i32 noundef 632) #11
  br label %162

156:                                              ; preds = %151
  %157 = load i32, ptr @debug, align 4
  %158 = and i32 %157, 1
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %156
  %161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %162

162:                                              ; preds = %160, %156, %154, %149, %141, %133, %125, %119, %111, %100, %86, %78, %69
  %163 = phi i32 [ 0, %160 ], [ 0, %156 ], [ %67, %69 ], [ %76, %78 ], [ %84, %86 ], [ %98, %100 ], [ %109, %111 ], [ %117, %119 ], [ %123, %125 ], [ %131, %133 ], [ %139, %141 ], [ %147, %149 ], [ %152, %154 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %164

164:                                              ; preds = %162, %58
  %165 = phi i32 [ %163, %162 ], [ %59, %58 ]
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %165, i32 noundef 659) #11
  br label %169

169:                                              ; preds = %167, %55
  %170 = phi i32 [ %165, %167 ], [ -22, %55 ]
  %171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %170, i32 noundef 1007) #11
  br label %303

172:                                              ; preds = %164
  %173 = load i32, ptr %56, align 4
  store i32 %173, ptr %33, align 4
  %174 = load i32, ptr @debug, align 4
  %175 = and i32 %174, 1
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %179, label %177

177:                                              ; preds = %172
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %179

179:                                              ; preds = %177, %172
  %180 = load i32, ptr %56, align 4
  switch i32 %180, label %181 [
    i32 7, label %183
    i32 3, label %187
    i32 5, label %187
    i32 6, label %187
  ]

181:                                              ; preds = %179
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef -22, i32 noundef 1011) #11
  br label %303

183:                                              ; preds = %179
  %184 = getelementptr inbounds %struct.lgdt3306a_state, ptr %6, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.lgdt3306a_config, ptr %185, i32 0, i32 2
  br label %191

187:                                              ; preds = %179, %179, %179
  %188 = getelementptr inbounds %struct.lgdt3306a_state, ptr %6, i32 0, i32 1
  %189 = load ptr, ptr %188, align 4
  %190 = getelementptr inbounds %struct.lgdt3306a_config, ptr %189, i32 0, i32 1
  br label %191

191:                                              ; preds = %187, %183
  %192 = phi ptr [ %190, %187 ], [ %186, %183 ]
  %193 = load i16, ptr %192, align 2
  %194 = zext i16 %193 to i32
  switch i16 %193, label %195 [
    i16 3250, label %201
    i16 3500, label %197
    i16 4000, label %198
    i16 5000, label %199
    i16 5380, label %200
  ]

195:                                              ; preds = %191
  %196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %194) #11
  br label %201

197:                                              ; preds = %191
  br label %201

198:                                              ; preds = %191
  br label %201

199:                                              ; preds = %191
  br label %201

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %200, %199, %198, %197, %195, %191
  %202 = phi i8 [ 86, %200 ], [ 80, %199 ], [ 64, %198 ], [ 56, %197 ], [ 52, %191 ], [ 52, %195 ]
  %203 = phi i8 [ 20, %200 ], [ 0, %199 ], [ 0, %198 ], [ 0, %197 ], [ 0, %191 ], [ 0, %195 ]
  %204 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 16, i8 noundef zeroext %202) #10
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %219

206:                                              ; preds = %201
  %207 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 17, i8 noundef zeroext %203) #10
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %206
  %210 = load i32, ptr @debug, align 4
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %224, label %213

213:                                              ; preds = %209
  %214 = zext i8 %202 to i32
  %215 = shl nuw nsw i32 %214, 8
  %216 = zext i8 %203 to i32
  %217 = or i32 %215, %216
  %218 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %194, i32 noundef %217) #11
  br label %224

219:                                              ; preds = %206, %201
  %220 = phi i32 [ %204, %201 ], [ %207, %206 ]
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %220, i32 noundef 1015) #11
  br label %303

224:                                              ; preds = %219, %213, %209
  %225 = getelementptr inbounds %struct.lgdt3306a_state, ptr %6, i32 0, i32 1
  %226 = load ptr, ptr %225, align 4
  %227 = getelementptr inbounds %struct.lgdt3306a_config, ptr %226, i32 0, i32 4
  %228 = load i32, ptr %227, align 4
  %229 = call fastcc i32 @lgdt3306a_mpeg_mode(ptr noundef %6, i32 noundef %228)
  %230 = icmp slt i32 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %224
  %232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %229, i32 noundef 1021) #11
  br label %303

233:                                              ; preds = %224
  %234 = load ptr, ptr %225, align 4
  %235 = getelementptr inbounds %struct.lgdt3306a_config, ptr %234, i32 0, i32 5
  %236 = load i32, ptr %235, align 4
  %237 = getelementptr inbounds %struct.lgdt3306a_config, ptr %234, i32 0, i32 6
  %238 = load i32, ptr %237, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1, !annotation !8
  %239 = load i32, ptr @debug, align 4
  %240 = and i32 %239, 1
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %244, label %242

242:                                              ; preds = %233
  %243 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %236, i32 noundef %238) #11
  br label %244

244:                                              ; preds = %242, %233
  %245 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 112, ptr noundef nonnull %2) #10
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %244
  %248 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %245, i32 noundef 270) #11
  br label %262

249:                                              ; preds = %244
  %250 = load i8, ptr %2, align 1
  %251 = and i8 %250, -7
  %252 = icmp eq i32 %236, 0
  %253 = or i8 %251, 4
  %254 = select i1 %252, i8 %253, i8 %251
  %255 = icmp eq i32 %238, 1
  %256 = or i8 %254, 2
  %257 = select i1 %255, i8 %256, i8 %254
  store i8 %257, ptr %2, align 1
  %258 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %6, i16 noundef zeroext 112, i8 noundef zeroext %257) #10
  %259 = icmp slt i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %249
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %258, i32 noundef 281) #11
  br label %262

262:                                              ; preds = %260, %247
  %263 = phi i32 [ %258, %260 ], [ %245, %247 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %263, i32 noundef 1027) #11
  br label %303

265:                                              ; preds = %249
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %266 = call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef %6, i32 noundef 0)
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %266, i32 noundef 1031) #11
  br label %303

270:                                              ; preds = %265
  %271 = call fastcc i32 @lgdt3306a_soft_reset(ptr noundef %6)
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %270
  %274 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %271, i32 noundef 1035) #11
  br label %303

275:                                              ; preds = %270
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(164) @regval2, i8 -1, i32 164, i1 false) #10
  %276 = load i32, ptr @debug, align 4
  %277 = and i32 %276, 4
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %301, label %279

279:                                              ; preds = %275
  %280 = and i32 %276, -3
  store i32 %280, ptr @debug, align 4
  %281 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %282

282:                                              ; preds = %297, %279
  %283 = phi i32 [ 0, %279 ], [ %298, %297 ]
  %284 = getelementptr [164 x i16], ptr @regtab, i32 0, i32 %283
  %285 = load i16, ptr %284, align 2
  %286 = getelementptr [164 x i8], ptr @regval1, i32 0, i32 %283
  %287 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext %285, ptr noundef %286) #10
  %288 = load i8, ptr %286, align 1
  %289 = getelementptr [164 x i8], ptr @regval2, i32 0, i32 %283
  %290 = load i8, ptr %289, align 1
  %291 = icmp eq i8 %288, %290
  br i1 %291, label %297, label %292

292:                                              ; preds = %282
  %293 = zext i8 %288 to i32
  %294 = sext i16 %285 to i32
  %295 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %294, i32 noundef %293) #11
  %296 = load i8, ptr %286, align 1
  store i8 %296, ptr %289, align 1
  br label %297

297:                                              ; preds = %292, %282
  %298 = add nuw nsw i32 %283, 1
  %299 = icmp eq i32 %298, 164
  br i1 %299, label %300, label %282

300:                                              ; preds = %297
  store i32 %276, ptr @debug, align 4
  br label %301

301:                                              ; preds = %300, %275
  %302 = load i32, ptr %4, align 4
  store i32 %302, ptr %16, align 4
  br label %303

303:                                              ; preds = %301, %273, %268, %262, %231, %222, %181, %169, %36, %30, %26
  %304 = phi i32 [ 0, %30 ], [ 0, %26 ], [ 0, %301 ], [ %34, %36 ], [ %170, %169 ], [ -22, %181 ], [ %220, %222 ], [ %229, %231 ], [ %263, %262 ], [ %266, %268 ], [ %271, %273 ]
  ret i32 %304
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_get_tune_settings(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #0 {
  store i32 100, ptr %1, align 4
  %3 = load i32, ptr @debug, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %8

8:                                                ; preds = %6, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_get_frontend(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.lgdt3306a_state, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.lgdt3306a_state, ptr %4, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, i32 noundef %10, i32 noundef %12) #11
  br label %14

14:                                               ; preds = %8, %2
  %15 = getelementptr inbounds %struct.lgdt3306a_state, ptr %4, i32 0, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %1, i32 0, i32 1
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.lgdt3306a_state, ptr %4, i32 0, i32 4
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_read_status(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #10
  store i16 0, ptr %11, align 2
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32, i32 13
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %31, label %17

17:                                               ; preds = %2
  %18 = call i32 %15(ptr noundef %0, ptr noundef nonnull %11) #10
  %19 = icmp eq i32 %18, 0
  %20 = load i32, ptr @debug, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %19, label %23, label %28

23:                                               ; preds = %17
  br i1 %22, label %31, label %24

24:                                               ; preds = %23
  %25 = load i16, ptr %11, align 2
  %26 = zext i16 %25 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %26) #11
  br label %31

28:                                               ; preds = %17
  br i1 %22, label %31, label %29

29:                                               ; preds = %28
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #11
  br label %31

31:                                               ; preds = %29, %28, %24, %23, %2
  %32 = phi i32 [ 0, %24 ], [ 0, %23 ], [ %18, %29 ], [ %18, %28 ], [ 0, %2 ]
  store i32 0, ptr %1, align 4
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  %33 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 128, ptr noundef nonnull %10) #10
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %31
  %36 = load i8, ptr %10, align 1
  %37 = and i8 %36, 3
  %38 = zext i8 %37 to i32
  %39 = load i32, ptr @debug, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %38) #11
  br label %44

44:                                               ; preds = %42, %35, %31
  %45 = phi i32 [ %33, %31 ], [ %38, %42 ], [ %38, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %47, label %54

47:                                               ; preds = %111, %96, %81, %66, %44
  %48 = phi i32 [ 0, %44 ], [ 1, %66 ], [ 2, %81 ], [ 3, %96 ], [ 4, %111 ]
  %49 = load i32, ptr @debug, align 4
  %50 = and i32 %49, 1
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %120, label %52

52:                                               ; preds = %47
  %53 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %48) #11
  br label %120

54:                                               ; preds = %44
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  %55 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 128, ptr noundef nonnull %10) #10
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %54
  %58 = load i8, ptr %10, align 1
  %59 = and i8 %58, 3
  %60 = zext i8 %59 to i32
  %61 = load i32, ptr @debug, align 4
  %62 = and i32 %61, 1
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %66, label %64

64:                                               ; preds = %57
  %65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %60) #11
  br label %66

66:                                               ; preds = %64, %57, %54
  %67 = phi i32 [ %55, %54 ], [ %60, %64 ], [ %60, %57 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %68 = icmp eq i32 %67, 2
  br i1 %68, label %47, label %69

69:                                               ; preds = %66
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  %70 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 128, ptr noundef nonnull %10) #10
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %81

72:                                               ; preds = %69
  %73 = load i8, ptr %10, align 1
  %74 = and i8 %73, 3
  %75 = zext i8 %74 to i32
  %76 = load i32, ptr @debug, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %72
  %80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %75) #11
  br label %81

81:                                               ; preds = %79, %72, %69
  %82 = phi i32 [ %70, %69 ], [ %75, %79 ], [ %75, %72 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %47, label %84

84:                                               ; preds = %81
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  %85 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 128, ptr noundef nonnull %10) #10
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load i8, ptr %10, align 1
  %89 = and i8 %88, 3
  %90 = zext i8 %89 to i32
  %91 = load i32, ptr @debug, align 4
  %92 = and i32 %91, 1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %87
  %95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %90) #11
  br label %96

96:                                               ; preds = %94, %87, %84
  %97 = phi i32 [ %85, %84 ], [ %90, %94 ], [ %90, %87 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %98 = icmp eq i32 %97, 2
  br i1 %98, label %47, label %99

99:                                               ; preds = %96
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1
  %100 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 128, ptr noundef nonnull %10) #10
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %99
  %103 = load i8, ptr %10, align 1
  %104 = and i8 %103, 3
  %105 = zext i8 %104 to i32
  %106 = load i32, ptr @debug, align 4
  %107 = and i32 %106, 1
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %102
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %105) #11
  br label %111

111:                                              ; preds = %109, %102, %99
  %112 = phi i32 [ %100, %99 ], [ %105, %109 ], [ %105, %102 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %113 = icmp eq i32 %112, 2
  br i1 %113, label %47, label %114

114:                                              ; preds = %111
  %115 = load i32, ptr @debug, align 4
  %116 = and i32 %115, 1
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %424, label %118

118:                                              ; preds = %114
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %112) #11
  br label %424

120:                                              ; preds = %52, %47
  %121 = load i32, ptr %1, align 4
  %122 = or i32 %121, 3
  store i32 %122, ptr %1, align 4
  %123 = getelementptr inbounds %struct.lgdt3306a_state, ptr %13, i32 0, i32 3
  %124 = load i32, ptr %123, align 4
  switch i32 %124, label %411 [
    i32 5, label %125
    i32 3, label %125
    i32 6, label %125
    i32 7, label %185
  ]

125:                                              ; preds = %120, %120, %120
  br label %129

126:                                              ; preds = %168
  %127 = add nuw nsw i32 %130, 1
  %128 = icmp eq i32 %127, 10
  br i1 %128, label %172, label %129

129:                                              ; preds = %126, %125
  %130 = phi i32 [ %127, %126 ], [ 0, %125 ]
  call void @msleep(i32 noundef 30) #10
  %131 = call fastcc i32 @lgdt3306a_check_lock_status(ptr noundef %13, i32 noundef 1) #10
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %140

133:                                              ; preds = %140, %129
  %134 = phi i32 [ 0, %129 ], [ 1, %140 ]
  %135 = load i32, ptr @debug, align 4
  %136 = and i32 %135, 1
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %155, label %138

138:                                              ; preds = %133
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %134) #11
  br label %155

140:                                              ; preds = %129
  call void @msleep(i32 noundef 30) #10
  %141 = call fastcc i32 @lgdt3306a_check_lock_status(ptr noundef %13, i32 noundef 1) #10
  %142 = icmp eq i32 %141, 1
  br i1 %142, label %133, label %143

143:                                              ; preds = %140
  %144 = load i32, ptr @debug, align 4
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %143
  %148 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #11
  br label %149

149:                                              ; preds = %147, %143
  %150 = icmp eq i32 %141, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %149
  %152 = load i32, ptr @debug, align 4
  %153 = and i32 %152, 1
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %411, label %176

155:                                              ; preds = %149, %138, %133
  call void @msleep(i32 noundef 20) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #10
  store i8 0, ptr %9, align 1, !annotation !8
  %156 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 250, ptr noundef nonnull %9) #10
  %157 = icmp eq i32 %156, 0
  %158 = trunc i32 %156 to i8
  %159 = load i8, ptr %9, align 1
  %160 = select i1 %157, i8 %159, i8 %158
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #10
  %161 = call fastcc i32 @lgdt3306a_calculate_snr_x100(ptr noundef %13) #10
  %162 = load i32, ptr @debug, align 4
  %163 = and i32 %162, 1
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %155
  %166 = zext i8 %160 to i32
  %167 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %130, i32 noundef %166, i32 noundef %161) #11
  br label %168

168:                                              ; preds = %165, %155
  %169 = icmp ugt i32 %161, 1499
  %170 = icmp ne i8 %160, -1
  %171 = select i1 %169, i1 %170, i1 false
  br i1 %171, label %179, label %126

172:                                              ; preds = %126
  %173 = load i32, ptr @debug, align 4
  %174 = and i32 %173, 1
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %411, label %176

176:                                              ; preds = %172, %151
  %177 = phi ptr [ @.str.28, %151 ], [ @.str.30, %172 ]
  %178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %177) #11
  br label %411

179:                                              ; preds = %168
  %180 = load i32, ptr %1, align 4
  %181 = or i32 %180, 28
  store i32 %181, ptr %1, align 4
  br label %411

182:                                              ; preds = %318
  %183 = add nuw nsw i32 %186, 1
  %184 = icmp eq i32 %183, 10
  br i1 %184, label %322, label %185

185:                                              ; preds = %182, %120
  %186 = phi i32 [ %183, %182 ], [ 0, %120 ]
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  %187 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 166, ptr noundef nonnull %8) #10
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %185
  %190 = load i8, ptr %8, align 1
  %191 = lshr i8 %190, 7
  %192 = zext i8 %191 to i32
  %193 = load i32, ptr @debug, align 4
  %194 = and i32 %193, 1
  %195 = icmp eq i32 %194, 0
  br i1 %195, label %198, label %196

196:                                              ; preds = %189
  %197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %192) #11
  br label %198

198:                                              ; preds = %196, %189, %185
  %199 = phi i32 [ %187, %185 ], [ %192, %196 ], [ %192, %189 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %200 = icmp eq i32 %199, 1
  br i1 %200, label %201, label %208

201:                                              ; preds = %220, %198
  %202 = phi i32 [ 0, %198 ], [ 1, %220 ]
  %203 = load i32, ptr @debug, align 4
  %204 = and i32 %203, 1
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %232, label %206

206:                                              ; preds = %201
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, i32 noundef %202) #11
  br label %232

208:                                              ; preds = %198
  call void @msleep(i32 noundef 30) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #10
  store i8 0, ptr %8, align 1
  %209 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 166, ptr noundef nonnull %8) #10
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %208
  %212 = load i8, ptr %8, align 1
  %213 = lshr i8 %212, 7
  %214 = zext i8 %213 to i32
  %215 = load i32, ptr @debug, align 4
  %216 = and i32 %215, 1
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %220, label %218

218:                                              ; preds = %211
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %214) #11
  br label %220

220:                                              ; preds = %218, %211, %208
  %221 = phi i32 [ %209, %208 ], [ %214, %218 ], [ %214, %211 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #10
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %201, label %223

223:                                              ; preds = %220
  %224 = load i32, ptr @debug, align 4
  %225 = and i32 %224, 1
  %226 = icmp eq i32 %225, 0
  br i1 %226, label %411, label %227

227:                                              ; preds = %223
  %228 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #11
  %229 = load i32, ptr @debug, align 4
  %230 = and i32 %229, 1
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %411, label %326

232:                                              ; preds = %206, %201
  call void @msleep(i32 noundef 20) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1, !annotation !8
  %233 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8636, ptr noundef nonnull %7) #10
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %304

235:                                              ; preds = %232
  %236 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8609, ptr noundef nonnull %6) #10
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %304

238:                                              ; preds = %235
  %239 = load i8, ptr %6, align 1
  %240 = and i8 %239, 63
  %241 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8601, ptr noundef nonnull %6) #10
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %243, label %304

243:                                              ; preds = %238
  %244 = load i8, ptr %6, align 1
  %245 = lshr i8 %244, 6
  %246 = and i8 %245, 1
  %247 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 144, ptr noundef nonnull %6) #10
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %304

249:                                              ; preds = %243
  %250 = load i32, ptr @debug, align 4
  %251 = and i32 %250, 1
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %262, label %253

253:                                              ; preds = %249
  %254 = load i8, ptr %6, align 1
  %255 = lshr i8 %254, 4
  %256 = zext i8 %240 to i32
  %257 = zext i8 %246 to i32
  %258 = zext i8 %255 to i32
  %259 = load i8, ptr %7, align 1
  %260 = zext i8 %259 to i32
  %261 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %256, i32 noundef %257, i32 noundef %258, i32 noundef %260) #11
  br label %262

262:                                              ; preds = %253, %249
  %263 = icmp eq i8 %246, 0
  %264 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8501, ptr noundef nonnull %6) #10
  %265 = icmp eq i32 %264, 0
  br i1 %263, label %266, label %285

266:                                              ; preds = %262
  br i1 %265, label %267, label %304

267:                                              ; preds = %266
  %268 = load i8, ptr %6, align 1
  %269 = and i8 %268, 15
  %270 = or i8 %269, -96
  store i8 %270, ptr %6, align 1
  %271 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %13, i16 noundef zeroext 8501, i8 noundef zeroext %270) #10
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %304

273:                                              ; preds = %267
  %274 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8513, ptr noundef nonnull %6) #10
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %304

276:                                              ; preds = %273
  %277 = load i8, ptr %6, align 1
  %278 = and i8 %277, 63
  %279 = or i8 %278, -128
  store i8 %279, ptr %6, align 1
  %280 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %13, i16 noundef zeroext 8513, i8 noundef zeroext %279) #10
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %282, label %304

282:                                              ; preds = %276
  %283 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %13, i16 noundef zeroext 8482, i8 noundef zeroext 112) #10
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %305, label %304

285:                                              ; preds = %262
  br i1 %265, label %286, label %304

286:                                              ; preds = %285
  %287 = load i8, ptr %6, align 1
  %288 = and i8 %287, 15
  %289 = or i8 %288, 112
  store i8 %289, ptr %6, align 1
  %290 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %13, i16 noundef zeroext 8501, i8 noundef zeroext %289) #10
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %292, label %304

292:                                              ; preds = %286
  %293 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8513, ptr noundef nonnull %6) #10
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %304

295:                                              ; preds = %292
  %296 = load i8, ptr %6, align 1
  %297 = and i8 %296, 63
  %298 = or i8 %297, 64
  store i8 %298, ptr %6, align 1
  %299 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %13, i16 noundef zeroext 8513, i8 noundef zeroext %298) #10
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %304

301:                                              ; preds = %295
  %302 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %13, i16 noundef zeroext 8482, i8 noundef zeroext 64) #10
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %305, label %304

304:                                              ; preds = %301, %295, %292, %286, %285, %282, %276, %273, %267, %266, %243, %238, %235, %232
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  br label %322

305:                                              ; preds = %301, %282
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %306 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 250, ptr noundef nonnull %5) #10
  %307 = icmp eq i32 %306, 0
  %308 = trunc i32 %306 to i8
  %309 = load i8, ptr %5, align 1
  %310 = select i1 %307, i8 %309, i8 %308
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %311 = call fastcc i32 @lgdt3306a_calculate_snr_x100(ptr noundef %13) #10
  %312 = load i32, ptr @debug, align 4
  %313 = and i32 %312, 1
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %305
  %316 = zext i8 %310 to i32
  %317 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %186, i32 noundef %316, i32 noundef %311) #11
  br label %318

318:                                              ; preds = %315, %305
  %319 = icmp ugt i32 %311, 1499
  %320 = icmp ne i8 %310, -1
  %321 = select i1 %319, i1 %320, i1 false
  br i1 %321, label %329, label %182

322:                                              ; preds = %304, %182
  %323 = load i32, ptr @debug, align 4
  %324 = and i32 %323, 1
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %411, label %326

326:                                              ; preds = %322, %227
  %327 = phi ptr [ @.str.42, %227 ], [ @.str.30, %322 ]
  %328 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %327) #11
  br label %411

329:                                              ; preds = %318
  %330 = load i32, ptr %1, align 4
  %331 = or i32 %330, 28
  store i32 %331, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %332 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8609, ptr noundef nonnull %3) #10
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %334, label %409

334:                                              ; preds = %329
  %335 = load i8, ptr %3, align 1
  %336 = and i8 %335, 63
  %337 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8581, ptr noundef nonnull %4) #10
  %338 = icmp eq i32 %337, 0
  br i1 %338, label %339, label %409

339:                                              ; preds = %334
  %340 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8593, ptr noundef nonnull %3) #10
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %409

342:                                              ; preds = %339
  %343 = load i8, ptr %3, align 1
  %344 = lshr i8 %343, 7
  %345 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8576, ptr noundef nonnull %3) #10
  %346 = icmp eq i32 %345, 0
  br i1 %346, label %347, label %409

347:                                              ; preds = %342
  %348 = load i8, ptr %3, align 1
  %349 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 8577, ptr noundef nonnull %3) #10
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %409

351:                                              ; preds = %347
  %352 = and i8 %348, 3
  %353 = zext i8 %352 to i16
  %354 = shl nuw nsw i16 %353, 8
  %355 = load i8, ptr %3, align 1
  %356 = zext i8 %355 to i16
  %357 = or i16 %354, %356
  %358 = load i32, ptr @debug, align 4
  %359 = and i32 %358, 1
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %368, label %361

361:                                              ; preds = %351
  %362 = zext i8 %336 to i32
  %363 = load i8, ptr %4, align 1
  %364 = zext i8 %363 to i32
  %365 = zext i8 %344 to i32
  %366 = zext i16 %357 to i32
  %367 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %362, i32 noundef %364, i32 noundef %365, i32 noundef %366) #11
  br label %368

368:                                              ; preds = %361, %351
  %369 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 4193, ptr noundef nonnull %3) #10
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %409

371:                                              ; preds = %368
  %372 = load i8, ptr %3, align 1
  %373 = and i8 %372, -8
  %374 = icmp ugt i8 %336, 18
  %375 = load i8, ptr %4, align 1
  %376 = icmp ugt i8 %375, 104
  %377 = select i1 %374, i1 %376, i1 false
  %378 = icmp eq i8 %344, 1
  %379 = select i1 %377, i1 %378, i1 false
  br i1 %379, label %380, label %384

380:                                              ; preds = %371
  %381 = icmp eq i16 %357, 1023
  %382 = icmp ult i16 %357, 108
  %383 = or i1 %381, %382
  br i1 %383, label %386, label %384

384:                                              ; preds = %380, %371
  %385 = or i8 %373, 4
  br label %386

386:                                              ; preds = %384, %380
  %387 = phi i8 [ %385, %384 ], [ %373, %380 ]
  store i8 %387, ptr %3, align 1
  %388 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %13, i16 noundef zeroext 4193, i8 noundef zeroext %387) #10
  %389 = icmp eq i32 %388, 0
  br i1 %389, label %390, label %409

390:                                              ; preds = %386
  %391 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 36, ptr noundef nonnull %3) #10
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %409

393:                                              ; preds = %390
  %394 = load i8, ptr %3, align 1
  %395 = and i8 %394, 15
  %396 = or i8 %395, 80
  %397 = icmp slt i8 %343, 0
  %398 = select i1 %397, i8 %395, i8 %396
  store i8 %398, ptr %3, align 1
  %399 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %13, i16 noundef zeroext 36, i8 noundef zeroext %398) #10
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %409

401:                                              ; preds = %393
  %402 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %13, i16 noundef zeroext 4157, ptr noundef nonnull %3) #10
  %403 = icmp eq i32 %402, 0
  br i1 %403, label %404, label %409

404:                                              ; preds = %401
  %405 = load i8, ptr %3, align 1
  %406 = and i8 %405, -49
  %407 = or i8 %406, 32
  store i8 %407, ptr %3, align 1
  %408 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %13, i16 noundef zeroext 4157, i8 noundef zeroext %407) #10
  br label %409

409:                                              ; preds = %404, %401, %393, %390, %386, %368, %347, %342, %339, %334, %329
  %410 = phi i32 [ %408, %404 ], [ %332, %329 ], [ %337, %334 ], [ %340, %339 ], [ %345, %342 ], [ %349, %347 ], [ %369, %368 ], [ %388, %386 ], [ %391, %390 ], [ %399, %393 ], [ %402, %401 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %411

411:                                              ; preds = %409, %326, %322, %227, %223, %179, %176, %172, %151, %120
  %412 = phi i32 [ %410, %409 ], [ %32, %179 ], [ -22, %120 ], [ %32, %151 ], [ %32, %172 ], [ %32, %176 ], [ %32, %227 ], [ %32, %322 ], [ %32, %223 ], [ %32, %326 ]
  %413 = load i32, ptr %1, align 4
  %414 = and i32 %413, 8
  %415 = icmp eq i32 %414, 0
  %416 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43
  store i8 1, ptr %416, align 1
  %417 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1
  br i1 %415, label %423, label %418

418:                                              ; preds = %411
  store i8 1, ptr %417, align 1
  %419 = call fastcc i32 @lgdt3306a_calculate_snr_x100(ptr noundef %13)
  %420 = mul i32 %419, 10
  %421 = zext i32 %420 to i64
  %422 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 43, i32 1, i32 0, i32 1
  store i64 %421, ptr %422, align 1
  br label %424

423:                                              ; preds = %411
  store i8 0, ptr %417, align 1
  br label %424

424:                                              ; preds = %423, %418, %118, %114
  %425 = phi i32 [ %412, %418 ], [ %412, %423 ], [ %32, %114 ], [ %32, %118 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #10
  ret i32 %425
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_read_ber(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %9 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %8, i16 noundef zeroext 252, ptr noundef nonnull %3)
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i8, ptr %3, align 1
  %13 = zext i8 %12 to i32
  %14 = shl nuw nsw i32 %13, 16
  br label %17

15:                                               ; preds = %2
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef 1704) #11
  br label %17

17:                                               ; preds = %15, %11
  %18 = phi i32 [ %14, %11 ], [ 0, %15 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %19 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %8, i16 noundef zeroext 253, ptr noundef nonnull %4)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i8, ptr %4, align 1
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  br label %27

25:                                               ; preds = %17
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %19, i32 noundef 1705) #11
  br label %27

27:                                               ; preds = %25, %21
  %28 = phi i32 [ %24, %21 ], [ 0, %25 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %29 = or i32 %28, %18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %30 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %8, i16 noundef zeroext 254, ptr noundef nonnull %5)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i8, ptr %5, align 1
  %34 = zext i8 %33 to i32
  br label %37

35:                                               ; preds = %27
  %36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %30, i32 noundef 1706) #11
  br label %37

37:                                               ; preds = %35, %32
  %38 = phi i32 [ %34, %32 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %39 = or i32 %29, %38
  %40 = shl nuw i32 %39, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  %41 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %8, i16 noundef zeroext 255, ptr noundef nonnull %6)
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i8, ptr %6, align 1
  %45 = zext i8 %44 to i32
  br label %48

46:                                               ; preds = %37
  %47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %41, i32 noundef 1707) #11
  br label %48

48:                                               ; preds = %46, %43
  %49 = phi i32 [ %45, %43 ], [ 0, %46 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  %50 = or i32 %40, %49
  store i32 %50, ptr %1, align 4
  %51 = load i32, ptr @debug, align 4
  %52 = and i32 %51, 1
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, i32 noundef %50) #11
  br label %56

56:                                               ; preds = %54, %48
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_read_signal_strength(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #10
  store i16 0, ptr %4, align 2, !annotation !8
  store i16 0, ptr %1, align 2
  %7 = getelementptr inbounds %struct.lgdt3306a_state, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %50 [
    i32 7, label %19
    i32 3, label %9
    i32 5, label %9
    i32 6, label %9
  ]

9:                                                ; preds = %2, %2, %2
  %10 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %6, i16 noundef zeroext 166, ptr noundef nonnull %3)
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %10, i32 noundef 1658) #11
  br label %50

14:                                               ; preds = %9
  %15 = load i8, ptr %3, align 1
  %16 = and i8 %15, 4
  %17 = icmp eq i8 %16, 0
  %18 = select i1 %17, i32 2200, i32 2800
  br label %19

19:                                               ; preds = %14, %2
  %20 = phi i32 [ 1600, %2 ], [ %18, %14 ]
  %21 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 18
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 %22(ptr noundef %0, ptr noundef nonnull %4) #10
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %23, i32 noundef 1671) #11
  br label %50

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct.lgdt3306a_state, ptr %6, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = add nsw i32 %20, -100
  %31 = icmp ugt i32 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = icmp ugt i32 %29, %20
  br i1 %33, label %34, label %42

34:                                               ; preds = %32
  %35 = sub i32 %29, %20
  %36 = udiv i32 %35, 50
  %37 = call i32 @llvm.umin.i32(i32 %36, i32 22)
  %38 = mul nuw nsw i32 %37, 65535
  %39 = add nuw nsw i32 %38, 5111730
  %40 = udiv i32 %39, 100
  %41 = trunc i32 %40 to i16
  br label %42

42:                                               ; preds = %34, %32, %27
  %43 = phi i16 [ %41, %34 ], [ 0, %27 ], [ -22939, %32 ]
  store i16 %43, ptr %1, align 2
  %44 = load i32, ptr @debug, align 4
  %45 = and i32 %44, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = zext i16 %43 to i32
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %48) #11
  br label %50

50:                                               ; preds = %47, %42, %25, %12, %2
  %51 = phi i32 [ -22, %2 ], [ %23, %47 ], [ %23, %42 ], [ %10, %12 ], [ %23, %25 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_read_snr(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = tail call fastcc i32 @lgdt3306a_calculate_snr_x100(ptr noundef %4)
  %6 = getelementptr inbounds %struct.lgdt3306a_state, ptr %4, i32 0, i32 5
  store i32 %5, ptr %6, align 4
  %7 = udiv i32 %5, 10
  %8 = trunc i32 %7 to i16
  store i16 %8, ptr %1, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_read_ucblocks(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  store i32 0, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %6 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %5, i16 noundef zeroext 244, ptr noundef nonnull %3)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i8, ptr %3, align 1
  %10 = zext i8 %9 to i32
  br label %13

11:                                               ; preds = %2
  %12 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %6, i32 noundef 1722) #11
  br label %13

13:                                               ; preds = %11, %8
  %14 = phi i32 [ %10, %8 ], [ 0, %11 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  store i32 %14, ptr %1, align 4
  %15 = load i32, ptr @debug, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %14) #11
  br label %20

20:                                               ; preds = %18, %13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_i2c_gate_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.lgdt3306a_state, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.lgdt3306a_config, ptr %6, i32 0, i32 3
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 1
  %10 = icmp eq i8 %9, 0
  %11 = load i32, ptr @debug, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %10, label %17, label %14

14:                                               ; preds = %2
  br i1 %13, label %24, label %15

15:                                               ; preds = %14
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef 1) #11
  br label %24

17:                                               ; preds = %2
  br i1 %13, label %20, label %18

18:                                               ; preds = %17
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %1) #11
  br label %20

20:                                               ; preds = %18, %17
  %21 = icmp eq i32 %1, 0
  %22 = zext i1 %21 to i32
  %23 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %4, i16 noundef zeroext 2, i32 noundef 7, i32 noundef %22)
  br label %24

24:                                               ; preds = %20, %15, %14
  %25 = phi i32 [ %23, %20 ], [ 0, %15 ], [ 0, %14 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_ts_bus_ctrl(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = and i32 %5, 1
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %1) #11
  br label %10

10:                                               ; preds = %8, %2
  %11 = icmp eq i32 %1, 0
  %12 = zext i1 %11 to i32
  %13 = tail call fastcc i32 @lgdt3306a_mpeg_tristate(ptr noundef %4, i32 noundef %12)
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_search(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4
  %3 = tail call i32 @lgdt3306a_set_parameters(ptr noundef %0)
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = call i32 @lgdt3306a_read_status(ptr noundef %0, ptr noundef nonnull %2)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %5
  %9 = load i32, ptr %2, align 4
  %10 = and i32 %9, 16
  %11 = icmp eq i32 %10, 0
  %12 = select i1 %11, i32 16, i32 1
  br label %20

13:                                               ; preds = %5, %1
  %14 = phi i32 [ %3, %1 ], [ %6, %5 ]
  %15 = load i32, ptr @debug, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, i32 noundef %14) #11
  br label %20

20:                                               ; preds = %18, %13, %8
  %21 = phi i32 [ %12, %8 ], [ -2147483648, %18 ], [ -2147483648, %13 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_set_vsb(ptr noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1, !annotation !8
  %3 = load i32, ptr @debug, align 4
  %4 = and i32 %3, 1
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %8

8:                                                ; preds = %6, %1
  %9 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 2, ptr noundef nonnull %2)
  %10 = load i8, ptr %2, align 1
  %11 = and i8 %10, -13
  %12 = or i8 %11, 4
  store i8 %12, ptr %2, align 1
  %13 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 2, i8 noundef zeroext %12)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef 393) #11
  br label %122

17:                                               ; preds = %8
  %18 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 8, i8 noundef zeroext -128)
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %18, i32 noundef 398) #11
  br label %122

22:                                               ; preds = %17
  %23 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 9, ptr noundef nonnull %2)
  %24 = load i8, ptr %2, align 1
  %25 = and i8 %24, -29
  %26 = or i8 %25, 12
  store i8 %26, ptr %2, align 1
  %27 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 9, i8 noundef zeroext %26)
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %27, i32 noundef 406) #11
  br label %122

31:                                               ; preds = %22
  %32 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 9, ptr noundef nonnull %2)
  %33 = load i8, ptr %2, align 1
  %34 = and i8 %33, -4
  store i8 %34, ptr %2, align 1
  %35 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 9, i8 noundef zeroext %34)
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %35, i32 noundef 413) #11
  br label %122

39:                                               ; preds = %31
  %40 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 13, ptr noundef nonnull %2)
  %41 = load i8, ptr %2, align 1
  %42 = and i8 %41, -65
  store i8 %42, ptr %2, align 1
  %43 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 13, i8 noundef zeroext %42)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %43, i32 noundef 420) #11
  br label %122

47:                                               ; preds = %39
  %48 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 36, i8 noundef zeroext 90)
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %48, i32 noundef 455) #11
  br label %122

52:                                               ; preds = %47
  %53 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 46, i8 noundef zeroext 90)
  %54 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 47, i8 noundef zeroext 0)
  %55 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 48, i8 noundef zeroext 0)
  %56 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 43, i8 noundef zeroext 54)
  %57 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 44, i8 noundef zeroext 0)
  %58 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 45, i8 noundef zeroext 0)
  %59 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 40, i8 noundef zeroext 42)
  %60 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 41, i8 noundef zeroext 0)
  %61 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 42, i8 noundef zeroext 0)
  %62 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 37, i8 noundef zeroext 6)
  %63 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 38, i8 noundef zeroext 0)
  %64 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 39, i8 noundef zeroext 0)
  %65 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 30, ptr noundef nonnull %2)
  %66 = load i8, ptr %2, align 1
  %67 = and i8 %66, 15
  %68 = or i8 %67, -96
  store i8 %68, ptr %2, align 1
  %69 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 30, i8 noundef zeroext %68)
  %70 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 34, i8 noundef zeroext 8)
  %71 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 35, i8 noundef zeroext -1)
  %72 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 8479, ptr noundef nonnull %2)
  %73 = load i8, ptr %2, align 1
  %74 = and i8 %73, -17
  store i8 %74, ptr %2, align 1
  %75 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 8479, i8 noundef zeroext %74)
  %76 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 8563, i8 noundef zeroext 1)
  %77 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 4193, ptr noundef nonnull %2)
  %78 = load i8, ptr %2, align 1
  %79 = and i8 %78, -8
  %80 = or i8 %79, 4
  store i8 %80, ptr %2, align 1
  %81 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 4193, i8 noundef zeroext %80)
  %82 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 4157, ptr noundef nonnull %2)
  %83 = load i8, ptr %2, align 1
  %84 = and i8 %83, -49
  store i8 %84, ptr %2, align 1
  %85 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 4157, i8 noundef zeroext %84)
  %86 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 8482, i8 noundef zeroext 64)
  %87 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 8513, ptr noundef nonnull %2)
  %88 = load i8, ptr %2, align 1
  %89 = and i8 %88, 63
  store i8 %89, ptr %2, align 1
  %90 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 8513, i8 noundef zeroext %89)
  %91 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 8501, ptr noundef nonnull %2)
  %92 = load i8, ptr %2, align 1
  %93 = and i8 %92, 15
  %94 = or i8 %93, 112
  store i8 %94, ptr %2, align 1
  %95 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 8501, i8 noundef zeroext %94)
  %96 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 3, ptr noundef nonnull %2)
  %97 = load i8, ptr %2, align 1
  %98 = and i8 %97, -9
  store i8 %98, ptr %2, align 1
  %99 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 3, i8 noundef zeroext %98)
  %100 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 28, ptr noundef nonnull %2)
  %101 = load i8, ptr %2, align 1
  %102 = and i8 %101, 127
  store i8 %102, ptr %2, align 1
  %103 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 28, i8 noundef zeroext %102)
  %104 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 8569, ptr noundef nonnull %2)
  %105 = load i8, ptr %2, align 1
  %106 = and i8 %105, -8
  store i8 %106, ptr %2, align 1
  %107 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 8569, i8 noundef zeroext %106)
  %108 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 8570, ptr noundef nonnull %2)
  %109 = load i8, ptr %2, align 1
  %110 = and i8 %109, -8
  store i8 %110, ptr %2, align 1
  %111 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 8570, i8 noundef zeroext %110)
  %112 = call fastcc i32 @lgdt3306a_soft_reset(ptr noundef %0)
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %52
  %115 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %112, i32 noundef 533) #11
  br label %122

116:                                              ; preds = %52
  %117 = load i32, ptr @debug, align 4
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %122

122:                                              ; preds = %120, %116, %114, %50, %45, %37, %29, %20, %15
  %123 = phi i32 [ 0, %120 ], [ 0, %116 ], [ %13, %15 ], [ %18, %20 ], [ %27, %29 ], [ %35, %37 ], [ %43, %45 ], [ %48, %50 ], [ %112, %114 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  ret i32 %123
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_mpeg_mode(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = load i32, ptr @debug, align 4
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %1) #11
  br label %9

9:                                                ; preds = %7, %2
  %10 = icmp eq i32 %1, 0
  %11 = zext i1 %10 to i32
  %12 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %0, i16 noundef zeroext 113, i32 noundef 7, i32 noundef %11)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %12, i32 noundef 233) #11
  br label %35

16:                                               ; preds = %9
  %17 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %0, i16 noundef zeroext 113, i32 noundef 6, i32 noundef 0)
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %17, i32 noundef 241) #11
  br label %35

21:                                               ; preds = %16
  %22 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 112, ptr noundef nonnull %3)
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %22, i32 noundef 245) #11
  br label %35

26:                                               ; preds = %21
  %27 = load i8, ptr %3, align 1
  %28 = and i8 %27, -17
  %29 = select i1 %10, i8 0, i8 16
  %30 = or i8 %28, %29
  store i8 %30, ptr %3, align 1
  %31 = call fastcc i32 @lgdt3306a_write_reg(ptr noundef %0, i16 noundef zeroext 112, i8 noundef zeroext %30)
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %31, i32 noundef 254) #11
  br label %35

35:                                               ; preds = %33, %26, %24, %19, %14
  %36 = phi i32 [ %12, %14 ], [ %17, %19 ], [ %22, %24 ], [ %31, %33 ], [ %31, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  ret i32 %36
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_soft_reset(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = load i32, ptr @debug, align 4
  %3 = and i32 %2, 1
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %7

7:                                                ; preds = %5, %1
  %8 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 7, i32 noundef 0)
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %8, i32 noundef 212) #11
  br label %17

12:                                               ; preds = %7
  tail call void @msleep(i32 noundef 20) #10
  %13 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %0, i16 noundef zeroext 0, i32 noundef 7, i32 noundef 1)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %13, i32 noundef 217) #11
  br label %17

17:                                               ; preds = %15, %12, %10
  %18 = phi i32 [ %8, %10 ], [ %13, %15 ], [ %13, %12 ]
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_calculate_snr_x100(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #10
  store i8 0, ptr %2, align 1, !annotation !8
  %6 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 236, ptr noundef nonnull %2)
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i8, ptr %2, align 1
  br label %12

10:                                               ; preds = %1
  %11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %6, i32 noundef 1492) #11
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i8 [ %9, %8 ], [ 0, %10 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #10
  %14 = zext i8 %13 to i32
  %15 = shl nuw nsw i32 %14, 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1, !annotation !8
  %16 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 237, ptr noundef nonnull %3)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %12
  %19 = load i8, ptr %3, align 1
  br label %22

20:                                               ; preds = %12
  %21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %16, i32 noundef 1493) #11
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i8 [ %19, %18 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %24 = zext i8 %23 to i32
  %25 = or i32 %15, %24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %26 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 232, ptr noundef nonnull %4)
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load i8, ptr %4, align 1
  %30 = zext i8 %29 to i32
  %31 = shl nuw nsw i32 %30, 8
  br label %34

32:                                               ; preds = %22
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %26, i32 noundef 1494) #11
  br label %34

34:                                               ; preds = %32, %28
  %35 = phi i32 [ %31, %28 ], [ 0, %32 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  %36 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 233, ptr noundef nonnull %5)
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i8, ptr %5, align 1
  %40 = zext i8 %39 to i32
  br label %43

41:                                               ; preds = %34
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %36, i32 noundef 1495) #11
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i32 [ %40, %38 ], [ 0, %41 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  %45 = or i32 %35, %44
  %46 = icmp eq i32 %25, 0
  br i1 %46, label %128, label %47

47:                                               ; preds = %43
  %48 = mul nuw nsw i32 %45, 10000
  %49 = udiv i32 %48, %25
  switch i32 %49, label %51 [
    i32 0, label %120
    i32 10, label %50
  ]

50:                                               ; preds = %47
  br label %120

51:                                               ; preds = %47
  %52 = icmp ult i32 %49, 10
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  %54 = icmp ugt i32 %49, 99
  br i1 %54, label %61, label %72

55:                                               ; preds = %55, %51
  %56 = phi i32 [ %59, %55 ], [ 0, %51 ]
  %57 = phi i32 [ %58, %55 ], [ %49, %51 ]
  %58 = mul nuw nsw i32 %57, 10
  %59 = add i32 %56, -1
  %60 = icmp ult i32 %58, 10
  br i1 %60, label %55, label %67

61:                                               ; preds = %61, %53
  %62 = phi i32 [ %65, %61 ], [ 0, %53 ]
  %63 = phi i32 [ %64, %61 ], [ %49, %53 ]
  %64 = udiv i32 %63, 10
  %65 = add i32 %62, 1
  %66 = icmp ugt i32 %63, 999
  br i1 %66, label %61, label %67

67:                                               ; preds = %61, %55
  %68 = phi i32 [ %58, %55 ], [ %64, %61 ]
  %69 = phi i32 [ %59, %55 ], [ %65, %61 ]
  %70 = mul i32 %69, 1000
  %71 = icmp eq i32 %68, 10
  br i1 %71, label %120, label %72

72:                                               ; preds = %67, %53
  %73 = phi i32 [ %70, %67 ], [ 0, %53 ]
  %74 = phi i32 [ %68, %67 ], [ %49, %53 ]
  %75 = icmp ugt i32 %74, 11
  br i1 %75, label %76, label %102

76:                                               ; preds = %72
  %77 = icmp ugt i32 %74, 13
  br i1 %77, label %78, label %102

78:                                               ; preds = %76
  %79 = icmp ugt i32 %74, 15
  br i1 %79, label %80, label %102

80:                                               ; preds = %78
  %81 = icmp ugt i32 %74, 17
  br i1 %81, label %82, label %102

82:                                               ; preds = %80
  %83 = icmp ugt i32 %74, 20
  br i1 %83, label %84, label %102

84:                                               ; preds = %82
  %85 = icmp ugt i32 %74, 25
  br i1 %85, label %86, label %102

86:                                               ; preds = %84
  %87 = icmp ugt i32 %74, 33
  br i1 %87, label %88, label %102

88:                                               ; preds = %86
  %89 = icmp ugt i32 %74, 41
  br i1 %89, label %90, label %102

90:                                               ; preds = %88
  %91 = icmp ugt i32 %74, 50
  br i1 %91, label %92, label %102

92:                                               ; preds = %90
  %93 = icmp ugt i32 %74, 59
  br i1 %93, label %94, label %102

94:                                               ; preds = %92
  %95 = icmp ugt i32 %74, 73
  br i1 %95, label %96, label %102

96:                                               ; preds = %94
  %97 = icmp ugt i32 %74, 87
  br i1 %97, label %98, label %102

98:                                               ; preds = %96
  %99 = icmp ugt i32 %74, 100
  br i1 %99, label %100, label %102

100:                                              ; preds = %98
  %101 = add i32 %73, 1000
  br label %120

102:                                              ; preds = %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %72
  %103 = phi i32 [ 1, %72 ], [ 2, %76 ], [ 3, %78 ], [ 4, %80 ], [ 5, %82 ], [ 6, %84 ], [ 7, %86 ], [ 8, %88 ], [ 9, %90 ], [ 10, %92 ], [ 11, %94 ], [ 12, %96 ], [ 13, %98 ]
  %104 = add nsw i32 %103, -1
  %105 = getelementptr [14 x i32], ptr @valx_x10, i32 0, i32 %104
  %106 = load i32, ptr %105, align 4
  %107 = sub i32 %74, %106
  %108 = getelementptr [14 x i32], ptr @valx_x10, i32 0, i32 %103
  %109 = load i32, ptr %108, align 4
  %110 = sub i32 %109, %106
  %111 = getelementptr [14 x i32], ptr @log10x_x1000, i32 0, i32 %103
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr [14 x i32], ptr @log10x_x1000, i32 0, i32 %104
  %114 = load i32, ptr %113, align 4
  %115 = sub i32 %112, %114
  %116 = add i32 %114, %73
  %117 = mul i32 %115, %107
  %118 = udiv i32 %117, %110
  %119 = add i32 %116, %118
  br label %120

120:                                              ; preds = %102, %100, %67, %50, %47
  %121 = phi i32 [ 0, %50 ], [ %101, %100 ], [ %119, %102 ], [ -1000000, %47 ], [ %70, %67 ]
  %122 = add i32 %121, -3000
  %123 = load i32, ptr @debug, align 4
  %124 = and i32 %123, 1
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45, i32 noundef %25, i32 noundef %45, i32 noundef %122) #11
  br label %128

128:                                              ; preds = %126, %120, %43
  %129 = phi i32 [ 0, %43 ], [ %122, %126 ], [ %122, %120 ]
  ret i32 %129
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @lgdt3306a_check_lock_status(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1
  switch i32 %1, label %69 [
    i32 0, label %5
    i32 1, label %17
  ]

5:                                                ; preds = %2
  %6 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 166, ptr noundef nonnull %4)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %71

8:                                                ; preds = %5
  %9 = load i8, ptr %4, align 1
  %10 = lshr i8 %9, 7
  %11 = zext i8 %10 to i32
  %12 = load i32, ptr @debug, align 4
  %13 = and i32 %12, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %71, label %15

15:                                               ; preds = %8
  %16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %11) #11
  br label %71

17:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #10
  store i8 0, ptr %3, align 1
  %18 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 129, ptr noundef nonnull %3) #10
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %46

20:                                               ; preds = %17
  %21 = load i8, ptr %3, align 1
  %22 = zext i8 %21 to i32
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %30, label %25

25:                                               ; preds = %20
  %26 = load i32, ptr @debug, align 4
  %27 = and i32 %26, 1
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  br label %62

30:                                               ; preds = %20
  %31 = and i32 %22, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %30
  %34 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 166, ptr noundef nonnull %3) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i8, ptr %3, align 1
  %38 = lshr i8 %37, 2
  store i8 %38, ptr %3, align 1
  %39 = and i8 %37, 4
  %40 = icmp eq i8 %39, 0
  %41 = load i32, ptr @debug, align 4
  %42 = and i32 %41, 1
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %40, i32 1, i32 2
  %45 = select i1 %40, ptr @.str.40, ptr @.str.39
  br i1 %43, label %50, label %46

46:                                               ; preds = %36, %33, %30, %25, %17
  %47 = phi ptr [ @.str.38, %25 ], [ @.str.41, %17 ], [ @.str.41, %33 ], [ @.str.41, %30 ], [ %45, %36 ]
  %48 = phi i32 [ 0, %25 ], [ 255, %17 ], [ 255, %33 ], [ 255, %30 ], [ %44, %36 ]
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %47) #11
  br label %50

50:                                               ; preds = %46, %36
  %51 = phi i32 [ %48, %46 ], [ %44, %36 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #10
  %52 = add nsw i32 %51, -1
  %53 = icmp ult i32 %52, 2
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = call fastcc i32 @lgdt3306a_read_reg(ptr noundef %0, i16 noundef zeroext 128, ptr noundef nonnull %4)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %54
  %58 = load i8, ptr %4, align 1
  %59 = lshr i8 %58, 4
  %60 = and i8 %59, 1
  %61 = zext i8 %60 to i32
  br label %62

62:                                               ; preds = %57, %50, %29
  %63 = phi i32 [ %61, %57 ], [ 255, %50 ], [ 255, %29 ]
  %64 = load i32, ptr @debug, align 4
  %65 = and i32 %64, 1
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %62
  %68 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %63) #11
  br label %71

69:                                               ; preds = %2
  %70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.37, i32 noundef %1) #11
  br label %71

71:                                               ; preds = %69, %67, %62, %54, %15, %8, %5
  %72 = phi i32 [ %6, %5 ], [ %55, %54 ], [ 255, %69 ], [ %63, %67 ], [ %63, %62 ], [ %11, %15 ], [ %11, %8 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  ret i32 %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %4 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call ptr @kmemdup(ptr noundef %5, i32 noundef 32, i32 noundef 3264) #10
  %7 = icmp eq ptr %6, null
  br i1 %7, label %44, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %10 = load i16, ptr %9, align 2
  %11 = trunc i16 %10 to i8
  store i8 %11, ptr %6, align 4
  %12 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = tail call ptr @lgdt3306a_attach(ptr noundef nonnull %6, ptr noundef %13)
  %15 = icmp eq ptr %14, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.dvb_frontend, ptr %14, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %18, ptr %19, align 8
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.lgdt3306a_state, ptr %20, i32 0, i32 2, i32 1, i32 3
  store ptr null, ptr %21, align 4
  %22 = load ptr, ptr %12, align 8
  %23 = tail call ptr @i2c_mux_alloc(ptr noundef %22, ptr noundef %3, i32 noundef 1, i32 noundef 0, i32 noundef 1, ptr noundef nonnull @lgdt3306a_select, ptr noundef nonnull @lgdt3306a_deselect) #10
  %24 = getelementptr inbounds %struct.lgdt3306a_state, ptr %20, i32 0, i32 6
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %40, label %26

26:                                               ; preds = %16
  %27 = getelementptr inbounds %struct.i2c_mux_core, ptr %23, i32 0, i32 3
  store ptr %0, ptr %27, align 4
  %28 = load ptr, ptr %24, align 4
  %29 = tail call i32 @i2c_mux_add_adapter(ptr noundef %28, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %14, i32 0, i32 1, i32 28
  store ptr null, ptr %32, align 4
  %33 = load ptr, ptr %24, align 4
  %34 = getelementptr inbounds %struct.i2c_mux_core, ptr %33, i32 0, i32 8
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.lgdt3306a_config, ptr %6, i32 0, i32 9
  %37 = load ptr, ptr %36, align 4
  store ptr %35, ptr %37, align 4
  %38 = getelementptr inbounds %struct.lgdt3306a_config, ptr %6, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  store ptr %14, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.53) #11
  br label %46

40:                                               ; preds = %26, %16
  %41 = phi i32 [ %29, %26 ], [ -12, %16 ]
  tail call void @kfree(ptr noundef %20) #10
  br label %42

42:                                               ; preds = %40, %8
  %43 = phi i32 [ %41, %40 ], [ -19, %8 ]
  tail call void @kfree(ptr noundef nonnull %6) #10
  br label %44

44:                                               ; preds = %42, %2
  %45 = phi i32 [ %43, %42 ], [ -12, %2 ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.54, i32 noundef %45) #11
  br label %46

46:                                               ; preds = %44, %31
  %47 = phi i32 [ %45, %44 ], [ 0, %31 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_remove(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.lgdt3306a_state, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @i2c_mux_del_adapters(ptr noundef %5) #10
  %6 = getelementptr inbounds %struct.lgdt3306a_state, ptr %3, i32 0, i32 2, i32 1, i32 3
  store ptr null, ptr %6, align 4
  %7 = getelementptr inbounds %struct.lgdt3306a_state, ptr %3, i32 0, i32 2, i32 3
  store ptr null, ptr %7, align 4
  %8 = getelementptr inbounds %struct.lgdt3306a_state, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #10
  tail call void @kfree(ptr noundef %3) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @i2c_mux_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_select(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.lgdt3306a_state, ptr %6, i32 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.lgdt3306a_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.lgdt3306a_config, ptr %10, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  %15 = load i32, ptr @debug, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %14, label %21, label %18

18:                                               ; preds = %2
  br i1 %17, label %26, label %19

19:                                               ; preds = %18
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef 1) #11
  br label %26

21:                                               ; preds = %2
  br i1 %17, label %24, label %22

22:                                               ; preds = %21
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 1) #11
  br label %24

24:                                               ; preds = %22, %21
  %25 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %8, i16 noundef zeroext 2, i32 noundef 7, i32 noundef 0) #10
  br label %26

26:                                               ; preds = %24, %19, %18
  %27 = phi i32 [ %25, %24 ], [ 0, %19 ], [ 0, %18 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @lgdt3306a_deselect(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.i2c_mux_core, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.i2c_client, ptr %4, i32 0, i32 4, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.lgdt3306a_state, ptr %6, i32 0, i32 2, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.lgdt3306a_state, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.lgdt3306a_config, ptr %10, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 1
  %14 = icmp eq i8 %13, 0
  %15 = load i32, ptr @debug, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %14, label %21, label %18

18:                                               ; preds = %2
  br i1 %17, label %26, label %19

19:                                               ; preds = %18
  %20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef 1) #11
  br label %26

21:                                               ; preds = %2
  br i1 %17, label %24, label %22

22:                                               ; preds = %21
  %23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef 0) #11
  br label %24

24:                                               ; preds = %22, %21
  %25 = tail call fastcc i32 @lgdt3306a_set_reg_bit(ptr noundef %8, i16 noundef zeroext 2, i32 noundef 7, i32 noundef 1) #10
  br label %26

26:                                               ; preds = %24, %19, %18
  %27 = phi i32 [ %25, %24 ], [ 0, %19 ], [ 0, %18 ]
  ret i32 %27
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_mux_add_adapter(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_mux_del_adapters(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
