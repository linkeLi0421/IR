; ModuleID = '/llk/IR/drivers/media/tuners/tda18271-fe.c_pt.bc'
source_filename = "../drivers/media/tuners/tda18271-fe.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda18271_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda18271_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda18271_attach:\09\09\09\09\09"
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
%struct.lock_class_key = type {}
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.tda18271_priv = type { [39 x i8], %struct.list_head, %struct.tuner_i2c_props, i32, i32, i32, i32, i32, i32, i32, i8, i8, ptr, %struct.tda18271_std_map, [8 x %struct.tda18271_rf_tracking_filter_cal], %struct.mutex, i16, i32, i32 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.tda18271_std_map = type { %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item, %struct.tda18271_std_map_item }
%struct.tda18271_std_map_item = type { i16, i16 }
%struct.tda18271_rf_tracking_filter_cal = type { i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.tda18271_config = type { ptr, i32, i32, i32, i32, i8, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tda18271_debug = dso_local global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @tda18271_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [75 x i8] c"parm=debug:set debug level (info=1, map=2, reg=4, adv=8, cal=16 (or-able))\00", section ".modinfo", align 1
@__param_str_cal = internal constant [4 x i8] c"cal\00", align 1
@tda18271_cal_on_startup = internal global i32 -1, align 4
@__param_cal = internal constant %struct.kernel_param { ptr @__param_str_cal, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @tda18271_cal_on_startup } }, section "__param", align 4
@__UNIQUE_ID_caltype251 = internal constant [17 x i8] c"parmtype=cal:int\00", section ".modinfo", align 1
@__UNIQUE_ID_cal252 = internal constant [59 x i8] c"parm=cal:perform RF tracking filter calibration on startup\00", section ".modinfo", align 1
@tda18271_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tda18271_list_mutex, i64 12), ptr getelementptr (i8, ptr @tda18271_list_mutex, i64 12) } }, align 4
@hybrid_tuner_instance_list = internal global %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, align 4
@.str = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"tda18271\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@tda18271_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@__func__.tda18271_attach = private unnamed_addr constant [16 x i8] c"tda18271_attach\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"error %d on line %d\0A\00", align 1
@tda18271_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"NXP TDA18271HD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 45000000, i32 864000000, i32 62500, i32 0, i32 0, i32 0 }, ptr @tda18271_release, ptr @tda18271_init, ptr @tda18271_sleep, ptr null, ptr null, ptr @tda18271_set_params, ptr @tda18271_set_analog_params, ptr @tda18271_set_config, ptr @tda18271_get_frequency, ptr @tda18271_get_bandwidth, ptr @tda18271_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_tda18271_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda18271_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda18271_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda18271_attach to i32), ptr @__kstrtab_tda18271_attach, ptr @__kstrtabns_tda18271_attach }, section "___ksymtab_gpl+tda18271_attach", align 4
@__UNIQUE_ID_description253 = internal constant [57 x i8] c"description=NXP TDA18271HD analog / digital tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [44 x i8] c"author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version256 = internal constant [12 x i8] c"version=0.4\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.6 = private unnamed_addr constant [61 x i8] c"\016tda18271: Error reading device ID @ %d-%04x, bailing out.\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"TDA18271HD/C1\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"TDA18271HD/C2\00", align 1
@.str.9 = private unnamed_addr constant [75 x i8] c"\016tda18271: Unknown device (%i) detected @ %d-%04x, device not supported.\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"\016tda18271: %s detected @ %d-%04x\0A\00", align 1
@__func__.tda18271c2_rf_cal_init = private unnamed_addr constant [23 x i8] c"tda18271c2_rf_cal_init\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"\016tda18271: RF tracking filter calibration complete\0A\00", align 1
@.str.12 = private unnamed_addr constant [52 x i8] c"\016tda18271: RF tracking filter calibration failed!\0A\00", align 1
@.str.13 = private unnamed_addr constant [55 x i8] c"\016tda18271: performing RF tracking filter calibration\0A\00", align 1
@__func__.tda18271_calc_rf_filter_curve = private unnamed_addr constant [30 x i8] c"tda18271_calc_rf_filter_curve\00", align 1
@__func__.tda18271_powerscan_init = private unnamed_addr constant [24 x i8] c"tda18271_powerscan_init\00", align 1
@__func__.tda18271_rf_tracking_filters_init = private unnamed_addr constant [34 x i8] c"tda18271_rf_tracking_filters_init\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"\017\00", align 1
@.str.15 = private unnamed_addr constant [20 x i8] c"freq = %d, rf = %d\0A\00", align 1
@__func__.tda18271_powerscan = private unnamed_addr constant [19 x i8] c"tda18271_powerscan\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = private unnamed_addr constant [52 x i8] c"bcal = %d, freq_in = %d, freq_out = %d (freq = %d)\0A\00", align 1
@__func__.tda18271_por = private unnamed_addr constant [13 x i8] c"tda18271_por\00", align 1
@__func__.tda18271_toggle_output = private unnamed_addr constant [23 x i8] c"tda18271_toggle_output\00", align 1
@.str.17 = private unnamed_addr constant [58 x i8] c"%s mode: xtal oscillator %s, slave tuner loop through %s\0A\00", align 1
@.str.18 = private unnamed_addr constant [8 x i8] c"standby\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@__func__.tda18271_update_std_map = private unnamed_addr constant [24 x i8] c"tda18271_update_std_map\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"Using custom std config for %s\0A\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"atv b\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"atv dk\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"atv gh\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"atv i\00", align 1
@.str.28 = private unnamed_addr constant [6 x i8] c"atv l\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"atv l'\00", align 1
@.str.30 = private unnamed_addr constant [7 x i8] c"atv mn\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"atsc 6\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"dvbt 6\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"dvbt 7\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"dvbt 8\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"qam 6\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"qam 7\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"qam 8\00", align 1
@__func__.tda18271_init = private unnamed_addr constant [14 x i8] c"tda18271_init\00", align 1
@__func__.tda18271_ir_cal_init = private unnamed_addr constant [21 x i8] c"tda18271_ir_cal_init\00", align 1
@.str.38 = private unnamed_addr constant [3 x i8] c"\014\00", align 1
@__func__.tda18271_set_params = private unnamed_addr constant [20 x i8] c"tda18271_set_params\00", align 1
@.str.39 = private unnamed_addr constant [32 x i8] c"modulation type not supported!\0A\00", align 1
@__func__.tda18271_tune = private unnamed_addr constant [14 x i8] c"tda18271_tune\00", align 1
@.str.40 = private unnamed_addr constant [55 x i8] c"freq = %d, ifc = %d, bw = %d, agc_mode = %d, std = %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [25 x i8] c"failed to configure agc\0A\00", align 1
@__func__.tda18271_agc = private unnamed_addr constant [13 x i8] c"tda18271_agc\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"no agc configuration provided\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"invoking callback\0A\00", align 1
@.str.44 = private unnamed_addr constant [31 x i8] c"unsupported configuration: %d\0A\00", align 1
@__func__.tda18271c1_rf_tracking_filter_calibration = private unnamed_addr constant [42 x i8] c"tda18271c1_rf_tracking_filter_calibration\00", align 1
@__func__.tda18271c2_rf_tracking_filters_correction = private unnamed_addr constant [42 x i8] c"tda18271c2_rf_tracking_filters_correction\00", align 1
@__func__.tda18271_channel_configuration = private unnamed_addr constant [31 x i8] c"tda18271_channel_configuration\00", align 1
@.str.45 = private unnamed_addr constant [3 x i8] c"MN\00", align 1
@.str.46 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.47 = private unnamed_addr constant [3 x i8] c"GH\00", align 1
@.str.48 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.49 = private unnamed_addr constant [3 x i8] c"DK\00", align 1
@.str.50 = private unnamed_addr constant [2 x i8] c"L\00", align 1
@.str.51 = private unnamed_addr constant [3 x i8] c"L'\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"xx\00", align 1
@__func__.tda18271_set_analog_params = private unnamed_addr constant [27 x i8] c"tda18271_set_analog_params\00", align 1
@.str.53 = private unnamed_addr constant [31 x i8] c"setting tda18271 to system %s\0A\00", align 1
@__func__.tda18271_dump_std_map = private unnamed_addr constant [22 x i8] c"tda18271_dump_std_map\00", align 1
@.str.54 = private unnamed_addr constant [45 x i8] c"========== STANDARD MAP SETTINGS ==========\0A\00", align 1
@.str.55 = private unnamed_addr constant [77 x i8] c"(%s) if_freq = %d, agc_mode = %d, std = %d, if_lvl = %d, rfagc_top = 0x%02x\0A\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"  fm  \00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"atv b \00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"atv i \00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"atv l \00", align 1
@.str.60 = private unnamed_addr constant [7 x i8] c"qam 6 \00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"qam 7 \00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"qam 8 \00", align 1
@.str.63 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_cal252, ptr @__UNIQUE_ID_caltype251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_license255, ptr @__UNIQUE_ID_version256, ptr @__ksymtab_tda18271_attach, ptr @__param_cal, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @tda18271_attach(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, ptr noundef readonly %3) #0 {
  tail call void @mutex_lock(ptr noundef nonnull @tda18271_list_mutex) #9
  %5 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %6 = icmp eq ptr %5, @hybrid_tuner_instance_list
  br i1 %6, label %38, label %7

7:                                                ; preds = %4
  %8 = icmp eq ptr %2, null
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 11
  br label %10

10:                                               ; preds = %25, %7
  %11 = phi ptr [ %5, %7 ], [ %26, %25 ]
  br i1 %8, label %25, label %12

12:                                               ; preds = %10
  %13 = getelementptr i8, ptr %11, i32 8
  %14 = getelementptr i8, ptr %11, i32 12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  %20 = load i32, ptr %9, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i8, ptr %13, align 4
  %24 = icmp eq i8 %23, %1
  br i1 %24, label %28, label %25

25:                                               ; preds = %22, %17, %12, %10
  %26 = load ptr, ptr %11, align 4
  %27 = icmp eq ptr %26, @hybrid_tuner_instance_list
  br i1 %27, label %38, label %10

28:                                               ; preds = %22
  %29 = getelementptr i8, ptr %11, i32 -40
  %30 = getelementptr i8, ptr %11, i32 20
  %31 = load ptr, ptr %30, align 4
  %32 = zext i8 %1 to i32
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %31, i32 noundef %19, i32 noundef %32) #10
  %34 = getelementptr i8, ptr %11, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %60

38:                                               ; preds = %28, %25, %4
  %39 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %40 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %39, i32 noundef 3520, i32 noundef 576) #11
  %41 = icmp eq ptr %40, null
  br i1 %41, label %174, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.tda18271_priv, ptr %40, i32 0, i32 2
  store i8 %1, ptr %43, align 8
  %44 = getelementptr inbounds %struct.tda18271_priv, ptr %40, i32 0, i32 2, i32 1
  store ptr %2, ptr %44, align 4
  %45 = getelementptr inbounds %struct.tda18271_priv, ptr %40, i32 0, i32 2, i32 3
  store ptr @.str.1, ptr %45, align 4
  %46 = icmp eq ptr %2, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i32 [ %49, %47 ], [ -1, %42 ]
  %52 = zext i8 %1 to i32
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %51, i32 noundef %52) #10
  %54 = getelementptr inbounds %struct.tda18271_priv, ptr %40, i32 0, i32 1
  %55 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr %54, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr @hybrid_tuner_instance_list, ptr %54, align 8
  %56 = getelementptr inbounds %struct.tda18271_priv, ptr %40, i32 0, i32 1, i32 1
  store ptr %55, ptr %56, align 4
  store volatile ptr %54, ptr %55, align 4
  %57 = getelementptr inbounds %struct.tda18271_priv, ptr %40, i32 0, i32 2, i32 2
  %58 = load i32, ptr %57, align 8
  %59 = add i32 %58, 1
  store i32 %59, ptr %57, align 8
  br label %60

60:                                               ; preds = %50, %28
  %61 = phi i32 [ %59, %50 ], [ %36, %28 ]
  %62 = phi ptr [ %40, %50 ], [ %29, %28 ]
  switch i32 %61, label %174 [
    i32 0, label %530
    i32 1, label %63
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %62, ptr %64, align 4
  %65 = icmp eq ptr %3, null
  br i1 %65, label %81, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 5
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 4
  store i32 %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 6
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 9
  store i32 %74, ptr %75, align 4
  %76 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 4
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 8
  store i32 %77, ptr %78, align 4
  %79 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 3
  %80 = load i32, ptr %79, align 4
  br label %86

81:                                               ; preds = %63
  %82 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 5
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 4
  store i32 0, ptr %83, align 4
  %84 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 9
  store i32 0, ptr %84, align 4
  %85 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 8
  store i32 0, ptr %85, align 4
  br label %86

86:                                               ; preds = %81, %66
  %87 = phi i32 [ %80, %66 ], [ 0, %81 ]
  %88 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 7
  store i32 %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 10
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, -2
  store i8 %91, ptr %89, align 4
  %92 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 15
  tail call void @__mutex_init(ptr noundef %92, ptr noundef nonnull @.str.3, ptr noundef nonnull @tda18271_attach.__key) #9
  %93 = load ptr, ptr %64, align 4
  %94 = getelementptr inbounds %struct.tda18271_priv, ptr %93, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %94) #9
  %95 = tail call i32 @tda18271_read_regs(ptr noundef %0) #9
  tail call void @mutex_unlock(ptr noundef %94) #9
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %106, label %97

97:                                               ; preds = %86
  %98 = getelementptr inbounds %struct.tda18271_priv, ptr %93, i32 0, i32 2
  %99 = getelementptr inbounds %struct.tda18271_priv, ptr %93, i32 0, i32 2, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.i2c_adapter, ptr %100, i32 0, i32 11
  %102 = load i32, ptr %101, align 4
  %103 = load i8, ptr %98, align 4
  %104 = zext i8 %103 to i32
  %105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %102, i32 noundef %104) #10
  br label %120

106:                                              ; preds = %86
  %107 = load i8, ptr %93, align 1
  %108 = zext i8 %107 to i32
  %109 = and i32 %108, 127
  switch i32 %109, label %111 [
    i32 3, label %122
    i32 4, label %110
  ]

110:                                              ; preds = %106
  br label %122

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.tda18271_priv, ptr %93, i32 0, i32 2
  %113 = getelementptr inbounds %struct.tda18271_priv, ptr %93, i32 0, i32 2, i32 1
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.i2c_adapter, ptr %114, i32 0, i32 11
  %116 = load i32, ptr %115, align 4
  %117 = load i8, ptr %112, align 4
  %118 = zext i8 %117 to i32
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %108, i32 noundef %116, i32 noundef %118) #10
  br label %120

120:                                              ; preds = %111, %97
  %121 = phi i32 [ -22, %111 ], [ -5, %97 ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %62, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_attach, ptr noundef nonnull @.str.5, i32 noundef %121, i32 noundef 1271) #9
  br label %530

122:                                              ; preds = %110, %106
  %123 = phi i32 [ 1, %110 ], [ 0, %106 ]
  %124 = phi ptr [ @.str.8, %110 ], [ @.str.7, %106 ]
  %125 = getelementptr inbounds %struct.tda18271_priv, ptr %93, i32 0, i32 6
  store i32 %123, ptr %125, align 4
  %126 = getelementptr inbounds %struct.tda18271_priv, ptr %93, i32 0, i32 2
  %127 = getelementptr inbounds %struct.tda18271_priv, ptr %93, i32 0, i32 2, i32 1
  %128 = load ptr, ptr %127, align 4
  %129 = getelementptr inbounds %struct.i2c_adapter, ptr %128, i32 0, i32 11
  %130 = load i32, ptr %129, align 4
  %131 = load i8, ptr %126, align 4
  %132 = zext i8 %131 to i32
  %133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef nonnull %124, i32 noundef %130, i32 noundef %132) #10
  %134 = tail call i32 @tda18271_assign_map_layout(ptr noundef %0) #9
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %122
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %62, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_attach, ptr noundef nonnull @.str.5, i32 noundef %134, i32 noundef 1275) #9
  br label %530

137:                                              ; preds = %122
  %138 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 5
  %139 = load i8, ptr %138, align 4
  %140 = and i8 %139, 2
  %141 = icmp eq i8 %140, 0
  br i1 %141, label %152, label %142

142:                                              ; preds = %137
  %143 = load i32, ptr @tda18271_cal_on_startup, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  br i1 %65, label %234, label %146

146:                                              ; preds = %145
  %147 = and i8 %139, 1
  %148 = zext i8 %147 to i32
  br label %149

149:                                              ; preds = %146, %142
  %150 = phi i32 [ %148, %146 ], [ %143, %142 ]
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %228, label %152

152:                                              ; preds = %149, %137
  tail call void @mutex_lock(ptr noundef %92) #9
  %153 = tail call i32 @tda18271_init_regs(ptr noundef %0) #9
  %154 = load i32, ptr @tda18271_cal_on_startup, align 4
  %155 = icmp eq i32 %154, -1
  br i1 %155, label %156, label %161

156:                                              ; preds = %152
  br i1 %65, label %169, label %157

157:                                              ; preds = %156
  %158 = load i8, ptr %138, align 4
  %159 = and i8 %158, 1
  %160 = zext i8 %159 to i32
  br label %161

161:                                              ; preds = %157, %152
  %162 = phi i32 [ %160, %157 ], [ %154, %152 ]
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %161
  %165 = getelementptr inbounds %struct.tda18271_priv, ptr %62, i32 0, i32 6
  %166 = load i32, ptr %165, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %169

168:                                              ; preds = %164
  tail call fastcc void @tda18271c2_rf_cal_init(ptr noundef %0)
  br label %169

169:                                              ; preds = %168, %164, %161, %156
  %170 = tail call fastcc i32 @tda18271_toggle_output(ptr noundef %0)
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %62, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_attach, ptr noundef nonnull @.str.5, i32 noundef %170, i32 noundef 1292) #9
  br label %173

173:                                              ; preds = %172, %169
  tail call void @mutex_unlock(ptr noundef %92) #9
  br label %228

174:                                              ; preds = %60, %38
  %175 = phi ptr [ %62, %60 ], [ null, %38 ]
  %176 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %175, ptr %176, align 4
  %177 = icmp eq ptr %3, null
  br i1 %177, label %215, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 2
  %180 = load i32, ptr %179, align 4
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %184, label %182

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.tda18271_priv, ptr %175, i32 0, i32 5
  store i32 %180, ptr %183, align 4
  br label %184

184:                                              ; preds = %182, %178
  %185 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 1
  %186 = load i32, ptr %185, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %190, label %188

188:                                              ; preds = %184
  %189 = getelementptr inbounds %struct.tda18271_priv, ptr %175, i32 0, i32 4
  store i32 %186, ptr %189, align 4
  br label %190

190:                                              ; preds = %188, %184
  %191 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 6
  %192 = load i32, ptr %191, align 4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.tda18271_priv, ptr %175, i32 0, i32 9
  store i32 %192, ptr %195, align 4
  br label %196

196:                                              ; preds = %194, %190
  %197 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 4
  %198 = load i32, ptr %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.tda18271_priv, ptr %175, i32 0, i32 8
  store i32 %198, ptr %201, align 4
  br label %202

202:                                              ; preds = %200, %196
  %203 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 3
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %208, label %206

206:                                              ; preds = %202
  %207 = getelementptr inbounds %struct.tda18271_priv, ptr %175, i32 0, i32 7
  store i32 %204, ptr %207, align 4
  br label %208

208:                                              ; preds = %206, %202
  %209 = load ptr, ptr %3, align 4
  %210 = icmp eq ptr %209, null
  br i1 %210, label %212, label %211

211:                                              ; preds = %208
  tail call fastcc void @tda18271_update_std_map(ptr noundef %0, ptr noundef nonnull %209)
  br label %212

212:                                              ; preds = %211, %208
  %213 = load i32, ptr @tda18271_cal_on_startup, align 4
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %218, label %223

215:                                              ; preds = %174
  %216 = load i32, ptr @tda18271_cal_on_startup, align 4
  %217 = icmp eq i32 %216, -1
  br i1 %217, label %234, label %223

218:                                              ; preds = %212
  %219 = getelementptr inbounds %struct.tda18271_config, ptr %3, i32 0, i32 5
  %220 = load i8, ptr %219, align 4
  %221 = and i8 %220, 1
  %222 = zext i8 %221 to i32
  br label %223

223:                                              ; preds = %218, %215, %212
  %224 = phi i32 [ %222, %218 ], [ %213, %212 ], [ %216, %215 ]
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %228, label %226

226:                                              ; preds = %223
  %227 = tail call i32 @tda18271_init(ptr noundef %0)
  br label %228

228:                                              ; preds = %226, %223, %173, %149
  %229 = icmp eq ptr %3, null
  br i1 %229, label %234, label %230

230:                                              ; preds = %228
  %231 = load ptr, ptr %3, align 4
  %232 = icmp eq ptr %231, null
  br i1 %232, label %234, label %233

233:                                              ; preds = %230
  tail call fastcc void @tda18271_update_std_map(ptr noundef %0, ptr noundef nonnull %231)
  br label %234

234:                                              ; preds = %233, %230, %228, %215, %145
  tail call void @mutex_unlock(ptr noundef nonnull @tda18271_list_mutex) #9
  %235 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %235, ptr noundef nonnull align 4 dereferenceable(220) @tda18271_tuner_ops, i32 220, i1 false)
  %236 = load i32, ptr @tda18271_debug, align 4
  %237 = and i32 %236, 10
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %531, label %239

239:                                              ; preds = %234
  %240 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %241 = load ptr, ptr %240, align 4
  %242 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13
  %243 = and i32 %236, 1
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %531, label %245

245:                                              ; preds = %239
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.54) #9
  %246 = load i32, ptr @tda18271_debug, align 4
  %247 = and i32 %246, 1
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %531, label %249

249:                                              ; preds = %245
  %250 = load i16, ptr %242, align 4
  %251 = zext i16 %250 to i32
  %252 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 0, i32 1
  %253 = load i16, ptr %252, align 2
  %254 = and i16 %253, 3
  %255 = zext i16 %254 to i32
  %256 = lshr i16 %253, 2
  %257 = and i16 %256, 7
  %258 = zext i16 %257 to i32
  %259 = lshr i16 %253, 6
  %260 = and i16 %259, 7
  %261 = zext i16 %260 to i32
  %262 = lshr i16 %253, 9
  %263 = zext i16 %262 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %251, i32 noundef %255, i32 noundef %258, i32 noundef %261, i32 noundef %263) #9
  %264 = load i32, ptr @tda18271_debug, align 4
  %265 = and i32 %264, 1
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %531, label %267

267:                                              ; preds = %249
  %268 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 1
  %269 = load i16, ptr %268, align 4
  %270 = zext i16 %269 to i32
  %271 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 1, i32 1
  %272 = load i16, ptr %271, align 2
  %273 = and i16 %272, 3
  %274 = zext i16 %273 to i32
  %275 = lshr i16 %272, 2
  %276 = and i16 %275, 7
  %277 = zext i16 %276 to i32
  %278 = lshr i16 %272, 6
  %279 = and i16 %278, 7
  %280 = zext i16 %279 to i32
  %281 = lshr i16 %272, 9
  %282 = zext i16 %281 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.57, i32 noundef %270, i32 noundef %274, i32 noundef %277, i32 noundef %280, i32 noundef %282) #9
  %283 = load i32, ptr @tda18271_debug, align 4
  %284 = and i32 %283, 1
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %531, label %286

286:                                              ; preds = %267
  %287 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 2
  %288 = load i16, ptr %287, align 4
  %289 = zext i16 %288 to i32
  %290 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 2, i32 1
  %291 = load i16, ptr %290, align 2
  %292 = and i16 %291, 3
  %293 = zext i16 %292 to i32
  %294 = lshr i16 %291, 2
  %295 = and i16 %294, 7
  %296 = zext i16 %295 to i32
  %297 = lshr i16 %291, 6
  %298 = and i16 %297, 7
  %299 = zext i16 %298 to i32
  %300 = lshr i16 %291, 9
  %301 = zext i16 %300 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.25, i32 noundef %289, i32 noundef %293, i32 noundef %296, i32 noundef %299, i32 noundef %301) #9
  %302 = load i32, ptr @tda18271_debug, align 4
  %303 = and i32 %302, 1
  %304 = icmp eq i32 %303, 0
  br i1 %304, label %531, label %305

305:                                              ; preds = %286
  %306 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 3
  %307 = load i16, ptr %306, align 4
  %308 = zext i16 %307 to i32
  %309 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 3, i32 1
  %310 = load i16, ptr %309, align 2
  %311 = and i16 %310, 3
  %312 = zext i16 %311 to i32
  %313 = lshr i16 %310, 2
  %314 = and i16 %313, 7
  %315 = zext i16 %314 to i32
  %316 = lshr i16 %310, 6
  %317 = and i16 %316, 7
  %318 = zext i16 %317 to i32
  %319 = lshr i16 %310, 9
  %320 = zext i16 %319 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.26, i32 noundef %308, i32 noundef %312, i32 noundef %315, i32 noundef %318, i32 noundef %320) #9
  %321 = load i32, ptr @tda18271_debug, align 4
  %322 = and i32 %321, 1
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %531, label %324

324:                                              ; preds = %305
  %325 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 4
  %326 = load i16, ptr %325, align 4
  %327 = zext i16 %326 to i32
  %328 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 4, i32 1
  %329 = load i16, ptr %328, align 2
  %330 = and i16 %329, 3
  %331 = zext i16 %330 to i32
  %332 = lshr i16 %329, 2
  %333 = and i16 %332, 7
  %334 = zext i16 %333 to i32
  %335 = lshr i16 %329, 6
  %336 = and i16 %335, 7
  %337 = zext i16 %336 to i32
  %338 = lshr i16 %329, 9
  %339 = zext i16 %338 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.58, i32 noundef %327, i32 noundef %331, i32 noundef %334, i32 noundef %337, i32 noundef %339) #9
  %340 = load i32, ptr @tda18271_debug, align 4
  %341 = and i32 %340, 1
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %531, label %343

343:                                              ; preds = %324
  %344 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 5
  %345 = load i16, ptr %344, align 4
  %346 = zext i16 %345 to i32
  %347 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 5, i32 1
  %348 = load i16, ptr %347, align 2
  %349 = and i16 %348, 3
  %350 = zext i16 %349 to i32
  %351 = lshr i16 %348, 2
  %352 = and i16 %351, 7
  %353 = zext i16 %352 to i32
  %354 = lshr i16 %348, 6
  %355 = and i16 %354, 7
  %356 = zext i16 %355 to i32
  %357 = lshr i16 %348, 9
  %358 = zext i16 %357 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.59, i32 noundef %346, i32 noundef %350, i32 noundef %353, i32 noundef %356, i32 noundef %358) #9
  %359 = load i32, ptr @tda18271_debug, align 4
  %360 = and i32 %359, 1
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %531, label %362

362:                                              ; preds = %343
  %363 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 6
  %364 = load i16, ptr %363, align 4
  %365 = zext i16 %364 to i32
  %366 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 6, i32 1
  %367 = load i16, ptr %366, align 2
  %368 = and i16 %367, 3
  %369 = zext i16 %368 to i32
  %370 = lshr i16 %367, 2
  %371 = and i16 %370, 7
  %372 = zext i16 %371 to i32
  %373 = lshr i16 %367, 6
  %374 = and i16 %373, 7
  %375 = zext i16 %374 to i32
  %376 = lshr i16 %367, 9
  %377 = zext i16 %376 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.29, i32 noundef %365, i32 noundef %369, i32 noundef %372, i32 noundef %375, i32 noundef %377) #9
  %378 = load i32, ptr @tda18271_debug, align 4
  %379 = and i32 %378, 1
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %531, label %381

381:                                              ; preds = %362
  %382 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 7
  %383 = load i16, ptr %382, align 4
  %384 = zext i16 %383 to i32
  %385 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 7, i32 1
  %386 = load i16, ptr %385, align 2
  %387 = and i16 %386, 3
  %388 = zext i16 %387 to i32
  %389 = lshr i16 %386, 2
  %390 = and i16 %389, 7
  %391 = zext i16 %390 to i32
  %392 = lshr i16 %386, 6
  %393 = and i16 %392, 7
  %394 = zext i16 %393 to i32
  %395 = lshr i16 %386, 9
  %396 = zext i16 %395 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.30, i32 noundef %384, i32 noundef %388, i32 noundef %391, i32 noundef %394, i32 noundef %396) #9
  %397 = load i32, ptr @tda18271_debug, align 4
  %398 = and i32 %397, 1
  %399 = icmp eq i32 %398, 0
  br i1 %399, label %531, label %400

400:                                              ; preds = %381
  %401 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 8
  %402 = load i16, ptr %401, align 4
  %403 = zext i16 %402 to i32
  %404 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 8, i32 1
  %405 = load i16, ptr %404, align 2
  %406 = and i16 %405, 3
  %407 = zext i16 %406 to i32
  %408 = lshr i16 %405, 2
  %409 = and i16 %408, 7
  %410 = zext i16 %409 to i32
  %411 = lshr i16 %405, 6
  %412 = and i16 %411, 7
  %413 = zext i16 %412 to i32
  %414 = lshr i16 %405, 9
  %415 = zext i16 %414 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.31, i32 noundef %403, i32 noundef %407, i32 noundef %410, i32 noundef %413, i32 noundef %415) #9
  %416 = load i32, ptr @tda18271_debug, align 4
  %417 = and i32 %416, 1
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %531, label %419

419:                                              ; preds = %400
  %420 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 9
  %421 = load i16, ptr %420, align 4
  %422 = zext i16 %421 to i32
  %423 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 9, i32 1
  %424 = load i16, ptr %423, align 2
  %425 = and i16 %424, 3
  %426 = zext i16 %425 to i32
  %427 = lshr i16 %424, 2
  %428 = and i16 %427, 7
  %429 = zext i16 %428 to i32
  %430 = lshr i16 %424, 6
  %431 = and i16 %430, 7
  %432 = zext i16 %431 to i32
  %433 = lshr i16 %424, 9
  %434 = zext i16 %433 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.32, i32 noundef %422, i32 noundef %426, i32 noundef %429, i32 noundef %432, i32 noundef %434) #9
  %435 = load i32, ptr @tda18271_debug, align 4
  %436 = and i32 %435, 1
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %531, label %438

438:                                              ; preds = %419
  %439 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 10
  %440 = load i16, ptr %439, align 4
  %441 = zext i16 %440 to i32
  %442 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 10, i32 1
  %443 = load i16, ptr %442, align 2
  %444 = and i16 %443, 3
  %445 = zext i16 %444 to i32
  %446 = lshr i16 %443, 2
  %447 = and i16 %446, 7
  %448 = zext i16 %447 to i32
  %449 = lshr i16 %443, 6
  %450 = and i16 %449, 7
  %451 = zext i16 %450 to i32
  %452 = lshr i16 %443, 9
  %453 = zext i16 %452 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.33, i32 noundef %441, i32 noundef %445, i32 noundef %448, i32 noundef %451, i32 noundef %453) #9
  %454 = load i32, ptr @tda18271_debug, align 4
  %455 = and i32 %454, 1
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %531, label %457

457:                                              ; preds = %438
  %458 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 11
  %459 = load i16, ptr %458, align 4
  %460 = zext i16 %459 to i32
  %461 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 11, i32 1
  %462 = load i16, ptr %461, align 2
  %463 = and i16 %462, 3
  %464 = zext i16 %463 to i32
  %465 = lshr i16 %462, 2
  %466 = and i16 %465, 7
  %467 = zext i16 %466 to i32
  %468 = lshr i16 %462, 6
  %469 = and i16 %468, 7
  %470 = zext i16 %469 to i32
  %471 = lshr i16 %462, 9
  %472 = zext i16 %471 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.34, i32 noundef %460, i32 noundef %464, i32 noundef %467, i32 noundef %470, i32 noundef %472) #9
  %473 = load i32, ptr @tda18271_debug, align 4
  %474 = and i32 %473, 1
  %475 = icmp eq i32 %474, 0
  br i1 %475, label %531, label %476

476:                                              ; preds = %457
  %477 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 12
  %478 = load i16, ptr %477, align 4
  %479 = zext i16 %478 to i32
  %480 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 12, i32 1
  %481 = load i16, ptr %480, align 2
  %482 = and i16 %481, 3
  %483 = zext i16 %482 to i32
  %484 = lshr i16 %481, 2
  %485 = and i16 %484, 7
  %486 = zext i16 %485 to i32
  %487 = lshr i16 %481, 6
  %488 = and i16 %487, 7
  %489 = zext i16 %488 to i32
  %490 = lshr i16 %481, 9
  %491 = zext i16 %490 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.60, i32 noundef %479, i32 noundef %483, i32 noundef %486, i32 noundef %489, i32 noundef %491) #9
  %492 = load i32, ptr @tda18271_debug, align 4
  %493 = and i32 %492, 1
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %531, label %495

495:                                              ; preds = %476
  %496 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 13
  %497 = load i16, ptr %496, align 4
  %498 = zext i16 %497 to i32
  %499 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 13, i32 1
  %500 = load i16, ptr %499, align 2
  %501 = and i16 %500, 3
  %502 = zext i16 %501 to i32
  %503 = lshr i16 %500, 2
  %504 = and i16 %503, 7
  %505 = zext i16 %504 to i32
  %506 = lshr i16 %500, 6
  %507 = and i16 %506, 7
  %508 = zext i16 %507 to i32
  %509 = lshr i16 %500, 9
  %510 = zext i16 %509 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.61, i32 noundef %498, i32 noundef %502, i32 noundef %505, i32 noundef %508, i32 noundef %510) #9
  %511 = load i32, ptr @tda18271_debug, align 4
  %512 = and i32 %511, 1
  %513 = icmp eq i32 %512, 0
  br i1 %513, label %531, label %514

514:                                              ; preds = %495
  %515 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 14
  %516 = load i16, ptr %515, align 4
  %517 = zext i16 %516 to i32
  %518 = getelementptr inbounds %struct.tda18271_priv, ptr %241, i32 0, i32 13, i32 14, i32 1
  %519 = load i16, ptr %518, align 2
  %520 = and i16 %519, 3
  %521 = zext i16 %520 to i32
  %522 = lshr i16 %519, 2
  %523 = and i16 %522, 7
  %524 = zext i16 %523 to i32
  %525 = lshr i16 %519, 6
  %526 = and i16 %525, 7
  %527 = zext i16 %526 to i32
  %528 = lshr i16 %519, 9
  %529 = zext i16 %528 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %241, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_dump_std_map, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.62, i32 noundef %517, i32 noundef %521, i32 noundef %524, i32 noundef %527, i32 noundef %529) #9
  br label %531

530:                                              ; preds = %136, %120, %60
  tail call void @mutex_unlock(ptr noundef nonnull @tda18271_list_mutex) #9
  tail call void @tda18271_release(ptr noundef %0)
  br label %531

531:                                              ; preds = %530, %514, %495, %476, %457, %438, %419, %400, %381, %362, %343, %324, %305, %286, %267, %249, %245, %239, %234
  %532 = phi ptr [ null, %530 ], [ %0, %234 ], [ %0, %239 ], [ %0, %245 ], [ %0, %249 ], [ %0, %267 ], [ %0, %286 ], [ %0, %305 ], [ %0, %324 ], [ %0, %343 ], [ %0, %362 ], [ %0, %381 ], [ %0, %400 ], [ %0, %419 ], [ %0, %438 ], [ %0, %457 ], [ %0, %476 ], [ %0, %495 ], [ %0, %514 ]
  ret ptr %532
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_tda_printk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_assign_map_layout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_init_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda18271c2_rf_cal_init(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i32], align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca [3 x i32], align 4
  %10 = alloca [3 x i32], align 4
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 3
  %14 = load i8, ptr %13, align 1
  %15 = and i8 %14, 16
  %16 = icmp eq i8 %15, 0
  %17 = getelementptr inbounds %struct.tda18271_priv, ptr %12, i32 0, i32 10
  %18 = load i8, ptr %17, align 4
  br i1 %16, label %19, label %21

19:                                               ; preds = %1
  %20 = and i8 %18, -2
  store i8 %20, ptr %17, align 4
  br label %21

21:                                               ; preds = %19, %1
  %22 = phi i8 [ %20, %19 ], [ %18, %1 ]
  %23 = getelementptr inbounds %struct.tda18271_priv, ptr %12, i32 0, i32 10
  %24 = and i8 %22, 1
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %356

26:                                               ; preds = %21
  %27 = load ptr, ptr %11, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  tail call void @msleep(i32 noundef 200) #9
  %29 = load ptr, ptr %11, align 4
  %30 = getelementptr i8, ptr %29, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, -32
  %33 = or i8 %32, 18
  store i8 %33, ptr %30, align 1
  %34 = getelementptr i8, ptr %29, i32 6
  %35 = load i8, ptr %34, align 1
  %36 = and i8 %35, -32
  store i8 %36, ptr %34, align 1
  %37 = tail call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 2) #9
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %26
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %29, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_powerscan_init, ptr noundef nonnull @.str.5, i32 noundef %37, i32 noundef 540) #9
  br label %69

40:                                               ; preds = %26
  %41 = getelementptr i8, ptr %29, i32 33
  %42 = load i8, ptr %41, align 1
  %43 = and i8 %42, -4
  store i8 %43, ptr %41, align 1
  %44 = tail call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 33, i32 noundef 1) #9
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %29, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_powerscan_init, ptr noundef nonnull @.str.5, i32 noundef %44, i32 noundef 545) #9
  br label %69

47:                                               ; preds = %40
  %48 = getelementptr i8, ptr %29, i32 36
  %49 = load i8, ptr %48, align 1
  %50 = and i8 %49, -4
  store i8 %50, ptr %48, align 1
  %51 = getelementptr i8, ptr %29, i32 38
  %52 = load i8, ptr %51, align 1
  %53 = or i8 %52, 6
  store i8 %53, ptr %51, align 1
  %54 = tail call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 36, i32 noundef 3) #9
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %47
  %57 = getelementptr %struct.tda18271_priv, ptr %27, i32 0, i32 14, i32 0
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %317, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds [3 x i32], ptr %7, i32 0, i32 1
  %62 = getelementptr inbounds [3 x i32], ptr %7, i32 0, i32 2
  %63 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 2
  %64 = getelementptr inbounds [3 x i32], ptr %10, i32 0, i32 2
  %65 = getelementptr inbounds [3 x i32], ptr %9, i32 0, i32 1
  %66 = getelementptr inbounds [3 x i32], ptr %10, i32 0, i32 1
  %67 = getelementptr inbounds [3 x i32], ptr %8, i32 0, i32 2
  %68 = getelementptr inbounds [3 x i32], ptr %8, i32 0, i32 1
  br label %71

69:                                               ; preds = %47, %46, %39
  %70 = phi i32 [ %54, %47 ], [ %44, %46 ], [ %37, %39 ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_calc_rf_filter_curve, ptr noundef nonnull @.str.5, i32 noundef %70, i32 noundef 643) #9
  br label %315

71:                                               ; preds = %310, %60
  %72 = phi i32 [ %58, %60 ], [ %313, %310 ]
  %73 = phi i32 [ 0, %60 ], [ %311, %310 ]
  %74 = mul i32 %72, 1000
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 %74, ptr %6, align 4
  %75 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %8, i8 0, i32 12, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %9, i8 0, i32 12, i1 false) #9, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %10, i8 0, i32 12, i1 false) #9, !annotation !8
  %76 = call i32 @tda18271_lookup_rf_band(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null) #9
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %71
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %75, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_rf_tracking_filters_init, ptr noundef nonnull @.str.5, i32 noundef %76, i32 noundef 576) #9
  br label %308

79:                                               ; preds = %71
  %80 = getelementptr inbounds %struct.tda18271_priv, ptr %75, i32 0, i32 14
  %81 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %80, i32 %76, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = mul i32 %82, 1000
  store i32 %83, ptr %7, align 4
  %84 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %80, i32 %76, i32 3
  %85 = load i32, ptr %84, align 4
  %86 = mul i32 %85, 1000
  store i32 %86, ptr %61, align 4
  %87 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %80, i32 %76, i32 4
  %88 = load i32, ptr %87, align 4
  %89 = mul i32 %88, 1000
  store i32 %89, ptr %62, align 4
  %90 = getelementptr i8, ptr %75, i32 29
  %91 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %80, i32 %76, i32 10
  %92 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %80, i32 %76, i32 11
  %93 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %80, i32 %76, i32 7
  %94 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %80, i32 %76, i32 8
  %95 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %80, i32 %76, i32 6
  %96 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %80, i32 %76, i32 9
  %97 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %80, i32 %76, i32 5
  %98 = icmp eq i32 %83, 0
  br i1 %98, label %310, label %99

99:                                               ; preds = %300, %79
  %100 = phi i32 [ %304, %300 ], [ 0, %79 ]
  %101 = phi i32 [ %306, %300 ], [ %83, %79 ]
  %102 = load i32, ptr @tda18271_debug, align 4
  %103 = and i32 %102, 16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %99
  %106 = load i32, ptr %6, align 4
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %75, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_rf_tracking_filters_init, ptr noundef nonnull @.str.15, i32 noundef %106, i32 noundef %100) #9
  br label %107

107:                                              ; preds = %105, %99
  %108 = getelementptr [3 x i32], ptr %8, i32 0, i32 %100
  %109 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i16 0, ptr %4, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 %101, ptr %5, align 4
  %110 = call i32 @tda18271_calc_rf_band(ptr noundef %0, ptr noundef nonnull %5) #9
  %111 = call i32 @tda18271_calc_rf_cal(ptr noundef %0, ptr noundef nonnull %5) #9
  %112 = call i32 @tda18271_calc_gain_taper(ptr noundef %0, ptr noundef nonnull %5) #9
  %113 = call i32 @tda18271_lookup_cid_target(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %114 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1) #9
  %115 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 29, i32 noundef 1) #9
  %116 = load i32, ptr %5, align 4
  %117 = add i32 %116, 1000000
  store i32 %117, ptr %5, align 4
  %118 = call i32 @tda18271_calc_main_pll(ptr noundef %0, i32 noundef %117) #9
  %119 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 12, i32 noundef 4) #9
  call void @msleep(i32 noundef 5) #9
  %120 = getelementptr i8, ptr %109, i32 6
  %121 = load i8, ptr %120, align 1
  %122 = and i8 %121, -4
  %123 = or i8 %122, 1
  store i8 %123, ptr %120, align 1
  %124 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 6, i32 noundef 1) #9
  %125 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1) #9
  %126 = call i32 @tda18271_read_extended(ptr noundef %0) #9
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %107
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %109, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_powerscan, ptr noundef nonnull @.str.5, i32 noundef %126, i32 noundef 467) #9
  br label %196

129:                                              ; preds = %107
  store i32 %101, ptr %108, align 4
  %130 = getelementptr i8, ptr %109, i32 25
  %131 = add i32 %101, 1000000
  br label %132

132:                                              ; preds = %148, %129
  %133 = phi i32 [ %149, %148 ], [ 0, %129 ]
  %134 = load i8, ptr %130, align 1
  %135 = and i8 %134, 63
  %136 = load i8, ptr %3, align 1
  %137 = icmp ult i8 %135, %136
  br i1 %137, label %138, label %181

138:                                              ; preds = %132
  %139 = add i32 %131, %133
  store i32 %139, ptr %5, align 4
  %140 = call i32 @tda18271_calc_main_pll(ptr noundef %0, i32 noundef %139) #9
  %141 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 12, i32 noundef 4) #9
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %142(i32 noundef 21474800) #9
  %143 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1) #9
  %144 = call i32 @tda18271_read_extended(ptr noundef %0) #9
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %168, %138
  %147 = phi i32 [ %170, %168 ], [ %144, %138 ]
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %109, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_powerscan, ptr noundef nonnull @.str.5, i32 noundef %147, i32 noundef 495) #9
  br label %196

148:                                              ; preds = %138
  %149 = add nuw nsw i32 %133, 200
  %150 = load i16, ptr %4, align 2
  %151 = zext i16 %150 to i32
  %152 = icmp ugt i32 %149, %151
  br i1 %152, label %153, label %132

153:                                              ; preds = %172, %148
  %154 = phi i32 [ %173, %172 ], [ 200, %148 ]
  %155 = phi i1 [ true, %172 ], [ false, %148 ]
  %156 = load i8, ptr %130, align 1
  %157 = and i8 %156, 63
  %158 = load i8, ptr %3, align 1
  %159 = icmp ult i8 %157, %158
  br i1 %159, label %160, label %181

160:                                              ; preds = %153
  %161 = sub nuw nsw i32 1000000, %154
  %162 = add i32 %161, %101
  store i32 %162, ptr %5, align 4
  %163 = call i32 @tda18271_calc_main_pll(ptr noundef %0, i32 noundef %162) #9
  %164 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 12, i32 noundef 4) #9
  br i1 %155, label %166, label %165

165:                                              ; preds = %160
  call void @msleep(i32 noundef 5) #9
  br label %168

166:                                              ; preds = %160
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %167(i32 noundef 21474800) #9
  br label %168

168:                                              ; preds = %166, %165
  %169 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1) #9
  %170 = call i32 @tda18271_read_extended(ptr noundef %0) #9
  %171 = icmp slt i32 %170, 0
  br i1 %171, label %146, label %172

172:                                              ; preds = %168
  %173 = add nuw nsw i32 %154, 200
  %174 = load i16, ptr %4, align 2
  %175 = zext i16 %174 to i32
  %176 = icmp ugt i32 %173, %175
  br i1 %176, label %177, label %153

177:                                              ; preds = %172
  %178 = load i8, ptr %130, align 1
  %179 = load i8, ptr %3, align 1
  %180 = and i8 %178, 63
  br label %181

181:                                              ; preds = %177, %153, %132
  %182 = phi i8 [ %180, %177 ], [ %157, %153 ], [ %135, %132 ]
  %183 = phi i8 [ %179, %177 ], [ %158, %153 ], [ %136, %132 ]
  %184 = icmp ult i8 %182, %183
  br i1 %184, label %188, label %185

185:                                              ; preds = %181
  %186 = load i32, ptr %5, align 4
  %187 = add i32 %186, -1000000
  store i32 %187, ptr %108, align 4
  br label %188

188:                                              ; preds = %185, %181
  %189 = phi i32 [ 1, %185 ], [ 0, %181 ]
  %190 = load i32, ptr @tda18271_debug, align 4
  %191 = and i32 %190, 16
  %192 = icmp eq i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %188
  %194 = load i32, ptr %108, align 4
  %195 = load i32, ptr %5, align 4
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %109, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_powerscan, ptr noundef nonnull @.str.16, i32 noundef %189, i32 noundef %101, i32 noundef %194, i32 noundef %195) #9
  br label %198

196:                                              ; preds = %146, %128
  %197 = phi i32 [ %147, %146 ], [ %126, %128 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %75, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_rf_tracking_filters_init, ptr noundef nonnull @.str.5, i32 noundef %197, i32 noundef 590) #9
  br label %308

198:                                              ; preds = %193, %188
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  %199 = call i32 @tda18271_calc_rf_cal(ptr noundef %0, ptr noundef %108) #9
  %200 = load i8, ptr %90, align 1
  %201 = zext i8 %200 to i32
  %202 = getelementptr [3 x i32], ptr %10, i32 0, i32 %100
  store i32 %201, ptr %202, align 4
  br i1 %184, label %261, label %203

203:                                              ; preds = %198
  %204 = load i32, ptr %108, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 %204, ptr %2, align 4
  %205 = load ptr, ptr %11, align 4
  %206 = getelementptr i8, ptr %205, i32 6
  %207 = load i8, ptr %206, align 1
  %208 = and i8 %207, -4
  store i8 %208, ptr %206, align 1
  %209 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 6, i32 noundef 1) #9
  %210 = getelementptr i8, ptr %205, i32 5
  %211 = load i8, ptr %210, align 1
  %212 = or i8 %211, 64
  store i8 %212, ptr %210, align 1
  %213 = getelementptr i8, ptr %205, i32 33
  %214 = load i8, ptr %213, align 1
  %215 = or i8 %214, 3
  store i8 %215, ptr %213, align 1
  %216 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 33, i32 noundef 1) #9
  %217 = call i32 @tda18271_calc_bp_filter(ptr noundef %0, ptr noundef nonnull %2) #9
  %218 = call i32 @tda18271_calc_gain_taper(ptr noundef %0, ptr noundef nonnull %2) #9
  %219 = call i32 @tda18271_calc_rf_band(ptr noundef %0, ptr noundef nonnull %2) #9
  %220 = call i32 @tda18271_calc_km(ptr noundef %0, ptr noundef nonnull %2) #9
  %221 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 3) #9
  %222 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 28, i32 noundef 1) #9
  %223 = call i32 @tda18271_charge_pump_source(ptr noundef %0, i32 noundef 0, i32 noundef 1) #9
  %224 = call i32 @tda18271_charge_pump_source(ptr noundef %0, i32 noundef 1, i32 noundef 1) #9
  %225 = getelementptr i8, ptr %205, i32 29
  store i8 0, ptr %225, align 1
  %226 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 29, i32 noundef 1) #9
  %227 = getelementptr i8, ptr %205, i32 35
  %228 = load i8, ptr %227, align 1
  %229 = and i8 %228, -33
  store i8 %229, ptr %227, align 1
  %230 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 35, i32 noundef 1) #9
  %231 = load i8, ptr %206, align 1
  %232 = or i8 %231, 3
  store i8 %232, ptr %206, align 1
  %233 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 6, i32 noundef 2) #9
  %234 = load i32, ptr %2, align 4
  %235 = call i32 @tda18271_calc_cal_pll(ptr noundef %0, i32 noundef %234) #9
  %236 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 8, i32 noundef 4) #9
  %237 = add i32 %234, 1000000
  %238 = call i32 @tda18271_calc_main_pll(ptr noundef %0, i32 noundef %237) #9
  %239 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 12, i32 noundef 4) #9
  call void @msleep(i32 noundef 5) #9
  %240 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1) #9
  %241 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1) #9
  %242 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1) #9
  %243 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1) #9
  %244 = call i32 @tda18271_charge_pump_source(ptr noundef %0, i32 noundef 0, i32 noundef 0) #9
  %245 = call i32 @tda18271_charge_pump_source(ptr noundef %0, i32 noundef 1, i32 noundef 0) #9
  call void @msleep(i32 noundef 10) #9
  %246 = load i8, ptr %227, align 1
  %247 = or i8 %246, 32
  store i8 %247, ptr %227, align 1
  %248 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 35, i32 noundef 1) #9
  call void @msleep(i32 noundef 60) #9
  %249 = load i8, ptr %206, align 1
  %250 = and i8 %249, -4
  store i8 %250, ptr %206, align 1
  %251 = load i8, ptr %210, align 1
  %252 = and i8 %251, -65
  store i8 %252, ptr %210, align 1
  %253 = load i8, ptr %213, align 1
  %254 = and i8 %253, -4
  store i8 %254, ptr %213, align 1
  %255 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 33, i32 noundef 1) #9
  %256 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 2) #9
  %257 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1) #9
  %258 = call i32 @tda18271_read_extended(ptr noundef %0) #9
  %259 = load i8, ptr %225, align 1
  %260 = zext i8 %259 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %261

261:                                              ; preds = %203, %198
  %262 = phi i32 [ %260, %203 ], [ %201, %198 ]
  %263 = getelementptr [3 x i32], ptr %9, i32 0, i32 %100
  store i32 %262, ptr %263, align 4
  switch i32 %100, label %283 [
    i32 0, label %264
    i32 1, label %269
    i32 2, label %284
  ]

264:                                              ; preds = %261
  store i32 0, ptr %94, align 4
  %265 = load i32, ptr %9, align 4
  %266 = load i32, ptr %10, align 4
  %267 = sub i32 %265, %266
  store i32 %267, ptr %96, align 4
  %268 = load i32, ptr %8, align 4
  br label %300

269:                                              ; preds = %261
  %270 = load i32, ptr %65, align 4
  %271 = load i32, ptr %66, align 4
  %272 = load i32, ptr %9, align 4
  %273 = load i32, ptr %10, align 4
  %274 = add i32 %271, %272
  %275 = sub i32 %270, %274
  %276 = add i32 %275, %273
  %277 = load i32, ptr %68, align 4
  %278 = load i32, ptr %8, align 4
  %279 = sub i32 %277, %278
  %280 = sdiv i32 %279, 1000
  %281 = sdiv i32 %276, %280
  store i32 %281, ptr %94, align 4
  %282 = load i32, ptr %68, align 4
  br label %300

283:                                              ; preds = %261
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/media/tuners/tda18271-fe.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 624, 0\0A.popsection", ""() #9, !srcloc !9
  unreachable

284:                                              ; preds = %261
  %285 = load i32, ptr %63, align 4
  %286 = load i32, ptr %64, align 4
  %287 = load i32, ptr %65, align 4
  %288 = load i32, ptr %66, align 4
  %289 = add i32 %286, %287
  %290 = sub i32 %285, %289
  %291 = add i32 %290, %288
  %292 = load i32, ptr %67, align 4
  %293 = load i32, ptr %68, align 4
  %294 = sub i32 %292, %293
  %295 = sdiv i32 %294, 1000
  %296 = sdiv i32 %291, %295
  store i32 %296, ptr %91, align 4
  %297 = sub i32 %287, %288
  store i32 %297, ptr %92, align 4
  %298 = load i32, ptr %67, align 4
  %299 = udiv i32 %298, 1000
  store i32 %299, ptr %93, align 4
  br label %310

300:                                              ; preds = %269, %264
  %301 = phi i32 [ %268, %264 ], [ %282, %269 ]
  %302 = phi ptr [ %97, %264 ], [ %95, %269 ]
  %303 = udiv i32 %301, 1000
  store i32 %303, ptr %302, align 4
  %304 = add nuw nsw i32 %100, 1
  %305 = getelementptr [3 x i32], ptr %7, i32 0, i32 %304
  %306 = load i32, ptr %305, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %310, label %99

308:                                              ; preds = %196, %78
  %309 = phi i32 [ %197, %196 ], [ %76, %78 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_calc_rf_filter_curve, ptr noundef nonnull @.str.5, i32 noundef %309, i32 noundef 651) #9
  br label %315

310:                                              ; preds = %300, %284, %79
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %10) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  %311 = add i32 %73, 1
  %312 = getelementptr %struct.tda18271_priv, ptr %27, i32 0, i32 14, i32 %311
  %313 = load i32, ptr %312, align 4
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %317, label %71

315:                                              ; preds = %308, %69
  %316 = phi i32 [ %309, %308 ], [ %70, %69 ]
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271c2_rf_cal_init, ptr noundef nonnull @.str.5, i32 noundef %316, i32 noundef 676) #9
  br label %354

317:                                              ; preds = %310, %56
  %318 = call fastcc i32 @tda18271_read_thermometer(ptr noundef %0) #9
  %319 = trunc i32 %318 to i8
  %320 = getelementptr inbounds %struct.tda18271_priv, ptr %27, i32 0, i32 11
  store i8 %319, ptr %320, align 1
  %321 = load ptr, ptr %11, align 4
  %322 = getelementptr i8, ptr %321, i32 27
  %323 = load i8, ptr %322, align 1
  %324 = and i8 %323, -33
  store i8 %324, ptr %322, align 1
  %325 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 27, i32 noundef 1) #9
  %326 = icmp slt i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %317
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %321, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_por, ptr noundef nonnull @.str.5, i32 noundef %325, i32 noundef 302) #9
  br label %348

328:                                              ; preds = %317
  %329 = getelementptr i8, ptr %321, i32 33
  %330 = load i8, ptr %329, align 1
  %331 = and i8 %330, 124
  store i8 %331, ptr %329, align 1
  %332 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 33, i32 noundef 1) #9
  %333 = icmp slt i32 %332, 0
  br i1 %333, label %334, label %335

334:                                              ; preds = %328
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %321, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_por, ptr noundef nonnull @.str.5, i32 noundef %332, i32 noundef 308) #9
  br label %348

335:                                              ; preds = %328
  %336 = getelementptr i8, ptr %321, i32 36
  %337 = load i8, ptr %336, align 1
  %338 = or i8 %337, 3
  store i8 %338, ptr %336, align 1
  %339 = call i32 @tda18271_set_standby_mode(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #9
  %340 = icmp slt i32 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %335
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %321, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_por, ptr noundef nonnull @.str.5, i32 noundef %339, i32 noundef 315) #9
  br label %348

342:                                              ; preds = %335
  %343 = getelementptr i8, ptr %321, i32 38
  %344 = load i8, ptr %343, align 1
  %345 = and i8 %344, -7
  store i8 %345, ptr %343, align 1
  %346 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 36, i32 noundef 3) #9
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %342, %341, %334, %327
  %349 = phi i32 [ %346, %342 ], [ %339, %341 ], [ %332, %334 ], [ %325, %327 ]
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %12, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271c2_rf_cal_init, ptr noundef nonnull @.str.5, i32 noundef %349, i32 noundef 680) #9
  br label %354

350:                                              ; preds = %342
  %351 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  %352 = load i8, ptr %23, align 4
  %353 = or i8 %352, 1
  store i8 %353, ptr %23, align 4
  br label %356

354:                                              ; preds = %348, %315
  %355 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #10
  br label %356

356:                                              ; preds = %354, %350, %21
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda18271_toggle_output(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = and i32 %5, 1
  %7 = lshr i32 %5, 1
  %8 = and i32 %7, 1
  %9 = tail call i32 @tda18271_set_standby_mode(ptr noundef %0, i32 noundef 1, i32 noundef %6, i32 noundef %8) #9
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_toggle_output, ptr noundef nonnull @.str.5, i32 noundef %9, i32 noundef 36) #9
  br label %24

12:                                               ; preds = %1
  %13 = load i32, ptr @tda18271_debug, align 4
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = load i32, ptr %4, align 4
  %18 = and i32 %17, 2
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, ptr @.str.21, ptr @.str.20
  %21 = and i32 %17, 1
  %22 = icmp eq i32 %21, 0
  %23 = select i1 %22, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_toggle_output, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, ptr noundef nonnull %20, ptr noundef nonnull %23) #9
  br label %24

24:                                               ; preds = %16, %12, %11
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tda18271_update_std_map(ptr nocapture noundef readonly %0, ptr noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13
  %6 = icmp eq ptr %1, null
  br i1 %6, label %440, label %7

7:                                                ; preds = %2
  %8 = load i16, ptr %1, align 4
  %9 = zext i16 %8 to i32
  %10 = getelementptr inbounds %struct.tda18271_std_map_item, ptr %1, i32 0, i32 1
  %11 = load i16, ptr %10, align 2
  %12 = and i16 %11, 3
  %13 = zext i16 %12 to i32
  %14 = add nuw nsw i32 %13, %9
  %15 = lshr i16 %11, 2
  %16 = and i16 %15, 7
  %17 = zext i16 %16 to i32
  %18 = add nuw nsw i32 %14, %17
  %19 = lshr i16 %11, 6
  %20 = and i16 %19, 7
  %21 = zext i16 %20 to i32
  %22 = add nuw nsw i32 %18, %21
  %23 = lshr i16 %11, 9
  %24 = zext i16 %23 to i32
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %34, label %27

27:                                               ; preds = %7
  %28 = load i32, ptr @tda18271_debug, align 4
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %27
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.23) #9
  br label %32

32:                                               ; preds = %31, %27
  %33 = load i32, ptr %1, align 4
  store i32 %33, ptr %5, align 4
  br label %34

34:                                               ; preds = %32, %7
  %35 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = zext i16 %36 to i32
  %38 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 1, i32 1
  %39 = load i16, ptr %38, align 2
  %40 = and i16 %39, 3
  %41 = zext i16 %40 to i32
  %42 = add nuw nsw i32 %41, %37
  %43 = lshr i16 %39, 2
  %44 = and i16 %43, 7
  %45 = zext i16 %44 to i32
  %46 = add nuw nsw i32 %42, %45
  %47 = lshr i16 %39, 6
  %48 = and i16 %47, 7
  %49 = zext i16 %48 to i32
  %50 = add nuw nsw i32 %46, %49
  %51 = lshr i16 %39, 9
  %52 = zext i16 %51 to i32
  %53 = sub nsw i32 0, %52
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %63, label %55

55:                                               ; preds = %34
  %56 = load i32, ptr @tda18271_debug, align 4
  %57 = and i32 %56, 1
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.24) #9
  br label %60

60:                                               ; preds = %59, %55
  %61 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 1
  %62 = load i32, ptr %35, align 4
  store i32 %62, ptr %61, align 4
  br label %63

63:                                               ; preds = %60, %34
  %64 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 2
  %65 = load i16, ptr %64, align 4
  %66 = zext i16 %65 to i32
  %67 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 2, i32 1
  %68 = load i16, ptr %67, align 2
  %69 = and i16 %68, 3
  %70 = zext i16 %69 to i32
  %71 = add nuw nsw i32 %70, %66
  %72 = lshr i16 %68, 2
  %73 = and i16 %72, 7
  %74 = zext i16 %73 to i32
  %75 = add nuw nsw i32 %71, %74
  %76 = lshr i16 %68, 6
  %77 = and i16 %76, 7
  %78 = zext i16 %77 to i32
  %79 = add nuw nsw i32 %75, %78
  %80 = lshr i16 %68, 9
  %81 = zext i16 %80 to i32
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %79, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %63
  %85 = load i32, ptr @tda18271_debug, align 4
  %86 = and i32 %85, 1
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.25) #9
  br label %89

89:                                               ; preds = %88, %84
  %90 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 2
  %91 = load i32, ptr %64, align 4
  store i32 %91, ptr %90, align 4
  br label %92

92:                                               ; preds = %89, %63
  %93 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 3
  %94 = load i16, ptr %93, align 4
  %95 = zext i16 %94 to i32
  %96 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 3, i32 1
  %97 = load i16, ptr %96, align 2
  %98 = and i16 %97, 3
  %99 = zext i16 %98 to i32
  %100 = add nuw nsw i32 %99, %95
  %101 = lshr i16 %97, 2
  %102 = and i16 %101, 7
  %103 = zext i16 %102 to i32
  %104 = add nuw nsw i32 %100, %103
  %105 = lshr i16 %97, 6
  %106 = and i16 %105, 7
  %107 = zext i16 %106 to i32
  %108 = add nuw nsw i32 %104, %107
  %109 = lshr i16 %97, 9
  %110 = zext i16 %109 to i32
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %121, label %113

113:                                              ; preds = %92
  %114 = load i32, ptr @tda18271_debug, align 4
  %115 = and i32 %114, 1
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %113
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.26) #9
  br label %118

118:                                              ; preds = %117, %113
  %119 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 3
  %120 = load i32, ptr %93, align 4
  store i32 %120, ptr %119, align 4
  br label %121

121:                                              ; preds = %118, %92
  %122 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 4
  %123 = load i16, ptr %122, align 4
  %124 = zext i16 %123 to i32
  %125 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 4, i32 1
  %126 = load i16, ptr %125, align 2
  %127 = and i16 %126, 3
  %128 = zext i16 %127 to i32
  %129 = add nuw nsw i32 %128, %124
  %130 = lshr i16 %126, 2
  %131 = and i16 %130, 7
  %132 = zext i16 %131 to i32
  %133 = add nuw nsw i32 %129, %132
  %134 = lshr i16 %126, 6
  %135 = and i16 %134, 7
  %136 = zext i16 %135 to i32
  %137 = add nuw nsw i32 %133, %136
  %138 = lshr i16 %126, 9
  %139 = zext i16 %138 to i32
  %140 = sub nsw i32 0, %139
  %141 = icmp eq i32 %137, %140
  br i1 %141, label %150, label %142

142:                                              ; preds = %121
  %143 = load i32, ptr @tda18271_debug, align 4
  %144 = and i32 %143, 1
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %147, label %146

146:                                              ; preds = %142
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.27) #9
  br label %147

147:                                              ; preds = %146, %142
  %148 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 4
  %149 = load i32, ptr %122, align 4
  store i32 %149, ptr %148, align 4
  br label %150

150:                                              ; preds = %147, %121
  %151 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 5
  %152 = load i16, ptr %151, align 4
  %153 = zext i16 %152 to i32
  %154 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 5, i32 1
  %155 = load i16, ptr %154, align 2
  %156 = and i16 %155, 3
  %157 = zext i16 %156 to i32
  %158 = add nuw nsw i32 %157, %153
  %159 = lshr i16 %155, 2
  %160 = and i16 %159, 7
  %161 = zext i16 %160 to i32
  %162 = add nuw nsw i32 %158, %161
  %163 = lshr i16 %155, 6
  %164 = and i16 %163, 7
  %165 = zext i16 %164 to i32
  %166 = add nuw nsw i32 %162, %165
  %167 = lshr i16 %155, 9
  %168 = zext i16 %167 to i32
  %169 = sub nsw i32 0, %168
  %170 = icmp eq i32 %166, %169
  br i1 %170, label %179, label %171

171:                                              ; preds = %150
  %172 = load i32, ptr @tda18271_debug, align 4
  %173 = and i32 %172, 1
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %176, label %175

175:                                              ; preds = %171
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.28) #9
  br label %176

176:                                              ; preds = %175, %171
  %177 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 5
  %178 = load i32, ptr %151, align 4
  store i32 %178, ptr %177, align 4
  br label %179

179:                                              ; preds = %176, %150
  %180 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 6
  %181 = load i16, ptr %180, align 4
  %182 = zext i16 %181 to i32
  %183 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 6, i32 1
  %184 = load i16, ptr %183, align 2
  %185 = and i16 %184, 3
  %186 = zext i16 %185 to i32
  %187 = add nuw nsw i32 %186, %182
  %188 = lshr i16 %184, 2
  %189 = and i16 %188, 7
  %190 = zext i16 %189 to i32
  %191 = add nuw nsw i32 %187, %190
  %192 = lshr i16 %184, 6
  %193 = and i16 %192, 7
  %194 = zext i16 %193 to i32
  %195 = add nuw nsw i32 %191, %194
  %196 = lshr i16 %184, 9
  %197 = zext i16 %196 to i32
  %198 = sub nsw i32 0, %197
  %199 = icmp eq i32 %195, %198
  br i1 %199, label %208, label %200

200:                                              ; preds = %179
  %201 = load i32, ptr @tda18271_debug, align 4
  %202 = and i32 %201, 1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %200
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.29) #9
  br label %205

205:                                              ; preds = %204, %200
  %206 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 6
  %207 = load i32, ptr %180, align 4
  store i32 %207, ptr %206, align 4
  br label %208

208:                                              ; preds = %205, %179
  %209 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 7
  %210 = load i16, ptr %209, align 4
  %211 = zext i16 %210 to i32
  %212 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 7, i32 1
  %213 = load i16, ptr %212, align 2
  %214 = and i16 %213, 3
  %215 = zext i16 %214 to i32
  %216 = add nuw nsw i32 %215, %211
  %217 = lshr i16 %213, 2
  %218 = and i16 %217, 7
  %219 = zext i16 %218 to i32
  %220 = add nuw nsw i32 %216, %219
  %221 = lshr i16 %213, 6
  %222 = and i16 %221, 7
  %223 = zext i16 %222 to i32
  %224 = add nuw nsw i32 %220, %223
  %225 = lshr i16 %213, 9
  %226 = zext i16 %225 to i32
  %227 = sub nsw i32 0, %226
  %228 = icmp eq i32 %224, %227
  br i1 %228, label %237, label %229

229:                                              ; preds = %208
  %230 = load i32, ptr @tda18271_debug, align 4
  %231 = and i32 %230, 1
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %234, label %233

233:                                              ; preds = %229
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.30) #9
  br label %234

234:                                              ; preds = %233, %229
  %235 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 7
  %236 = load i32, ptr %209, align 4
  store i32 %236, ptr %235, align 4
  br label %237

237:                                              ; preds = %234, %208
  %238 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 8
  %239 = load i16, ptr %238, align 4
  %240 = zext i16 %239 to i32
  %241 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 8, i32 1
  %242 = load i16, ptr %241, align 2
  %243 = and i16 %242, 3
  %244 = zext i16 %243 to i32
  %245 = add nuw nsw i32 %244, %240
  %246 = lshr i16 %242, 2
  %247 = and i16 %246, 7
  %248 = zext i16 %247 to i32
  %249 = add nuw nsw i32 %245, %248
  %250 = lshr i16 %242, 6
  %251 = and i16 %250, 7
  %252 = zext i16 %251 to i32
  %253 = add nuw nsw i32 %249, %252
  %254 = lshr i16 %242, 9
  %255 = zext i16 %254 to i32
  %256 = sub nsw i32 0, %255
  %257 = icmp eq i32 %253, %256
  br i1 %257, label %266, label %258

258:                                              ; preds = %237
  %259 = load i32, ptr @tda18271_debug, align 4
  %260 = and i32 %259, 1
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %258
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.31) #9
  br label %263

263:                                              ; preds = %262, %258
  %264 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 8
  %265 = load i32, ptr %238, align 4
  store i32 %265, ptr %264, align 4
  br label %266

266:                                              ; preds = %263, %237
  %267 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 9
  %268 = load i16, ptr %267, align 4
  %269 = zext i16 %268 to i32
  %270 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 9, i32 1
  %271 = load i16, ptr %270, align 2
  %272 = and i16 %271, 3
  %273 = zext i16 %272 to i32
  %274 = add nuw nsw i32 %273, %269
  %275 = lshr i16 %271, 2
  %276 = and i16 %275, 7
  %277 = zext i16 %276 to i32
  %278 = add nuw nsw i32 %274, %277
  %279 = lshr i16 %271, 6
  %280 = and i16 %279, 7
  %281 = zext i16 %280 to i32
  %282 = add nuw nsw i32 %278, %281
  %283 = lshr i16 %271, 9
  %284 = zext i16 %283 to i32
  %285 = sub nsw i32 0, %284
  %286 = icmp eq i32 %282, %285
  br i1 %286, label %295, label %287

287:                                              ; preds = %266
  %288 = load i32, ptr @tda18271_debug, align 4
  %289 = and i32 %288, 1
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %292, label %291

291:                                              ; preds = %287
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.32) #9
  br label %292

292:                                              ; preds = %291, %287
  %293 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 9
  %294 = load i32, ptr %267, align 4
  store i32 %294, ptr %293, align 4
  br label %295

295:                                              ; preds = %292, %266
  %296 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 10
  %297 = load i16, ptr %296, align 4
  %298 = zext i16 %297 to i32
  %299 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 10, i32 1
  %300 = load i16, ptr %299, align 2
  %301 = and i16 %300, 3
  %302 = zext i16 %301 to i32
  %303 = add nuw nsw i32 %302, %298
  %304 = lshr i16 %300, 2
  %305 = and i16 %304, 7
  %306 = zext i16 %305 to i32
  %307 = add nuw nsw i32 %303, %306
  %308 = lshr i16 %300, 6
  %309 = and i16 %308, 7
  %310 = zext i16 %309 to i32
  %311 = add nuw nsw i32 %307, %310
  %312 = lshr i16 %300, 9
  %313 = zext i16 %312 to i32
  %314 = sub nsw i32 0, %313
  %315 = icmp eq i32 %311, %314
  br i1 %315, label %324, label %316

316:                                              ; preds = %295
  %317 = load i32, ptr @tda18271_debug, align 4
  %318 = and i32 %317, 1
  %319 = icmp eq i32 %318, 0
  br i1 %319, label %321, label %320

320:                                              ; preds = %316
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.33) #9
  br label %321

321:                                              ; preds = %320, %316
  %322 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 10
  %323 = load i32, ptr %296, align 4
  store i32 %323, ptr %322, align 4
  br label %324

324:                                              ; preds = %321, %295
  %325 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 11
  %326 = load i16, ptr %325, align 4
  %327 = zext i16 %326 to i32
  %328 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 11, i32 1
  %329 = load i16, ptr %328, align 2
  %330 = and i16 %329, 3
  %331 = zext i16 %330 to i32
  %332 = add nuw nsw i32 %331, %327
  %333 = lshr i16 %329, 2
  %334 = and i16 %333, 7
  %335 = zext i16 %334 to i32
  %336 = add nuw nsw i32 %332, %335
  %337 = lshr i16 %329, 6
  %338 = and i16 %337, 7
  %339 = zext i16 %338 to i32
  %340 = add nuw nsw i32 %336, %339
  %341 = lshr i16 %329, 9
  %342 = zext i16 %341 to i32
  %343 = sub nsw i32 0, %342
  %344 = icmp eq i32 %340, %343
  br i1 %344, label %353, label %345

345:                                              ; preds = %324
  %346 = load i32, ptr @tda18271_debug, align 4
  %347 = and i32 %346, 1
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %350, label %349

349:                                              ; preds = %345
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.34) #9
  br label %350

350:                                              ; preds = %349, %345
  %351 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 11
  %352 = load i32, ptr %325, align 4
  store i32 %352, ptr %351, align 4
  br label %353

353:                                              ; preds = %350, %324
  %354 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 12
  %355 = load i16, ptr %354, align 4
  %356 = zext i16 %355 to i32
  %357 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 12, i32 1
  %358 = load i16, ptr %357, align 2
  %359 = and i16 %358, 3
  %360 = zext i16 %359 to i32
  %361 = add nuw nsw i32 %360, %356
  %362 = lshr i16 %358, 2
  %363 = and i16 %362, 7
  %364 = zext i16 %363 to i32
  %365 = add nuw nsw i32 %361, %364
  %366 = lshr i16 %358, 6
  %367 = and i16 %366, 7
  %368 = zext i16 %367 to i32
  %369 = add nuw nsw i32 %365, %368
  %370 = lshr i16 %358, 9
  %371 = zext i16 %370 to i32
  %372 = sub nsw i32 0, %371
  %373 = icmp eq i32 %369, %372
  br i1 %373, label %382, label %374

374:                                              ; preds = %353
  %375 = load i32, ptr @tda18271_debug, align 4
  %376 = and i32 %375, 1
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %379, label %378

378:                                              ; preds = %374
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.35) #9
  br label %379

379:                                              ; preds = %378, %374
  %380 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 12
  %381 = load i32, ptr %354, align 4
  store i32 %381, ptr %380, align 4
  br label %382

382:                                              ; preds = %379, %353
  %383 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 13
  %384 = load i16, ptr %383, align 4
  %385 = zext i16 %384 to i32
  %386 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 13, i32 1
  %387 = load i16, ptr %386, align 2
  %388 = and i16 %387, 3
  %389 = zext i16 %388 to i32
  %390 = add nuw nsw i32 %389, %385
  %391 = lshr i16 %387, 2
  %392 = and i16 %391, 7
  %393 = zext i16 %392 to i32
  %394 = add nuw nsw i32 %390, %393
  %395 = lshr i16 %387, 6
  %396 = and i16 %395, 7
  %397 = zext i16 %396 to i32
  %398 = add nuw nsw i32 %394, %397
  %399 = lshr i16 %387, 9
  %400 = zext i16 %399 to i32
  %401 = sub nsw i32 0, %400
  %402 = icmp eq i32 %398, %401
  br i1 %402, label %411, label %403

403:                                              ; preds = %382
  %404 = load i32, ptr @tda18271_debug, align 4
  %405 = and i32 %404, 1
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %403
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.36) #9
  br label %408

408:                                              ; preds = %407, %403
  %409 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 13
  %410 = load i32, ptr %383, align 4
  store i32 %410, ptr %409, align 4
  br label %411

411:                                              ; preds = %408, %382
  %412 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 14
  %413 = load i16, ptr %412, align 4
  %414 = zext i16 %413 to i32
  %415 = getelementptr inbounds %struct.tda18271_std_map, ptr %1, i32 0, i32 14, i32 1
  %416 = load i16, ptr %415, align 2
  %417 = and i16 %416, 3
  %418 = zext i16 %417 to i32
  %419 = add nuw nsw i32 %418, %414
  %420 = lshr i16 %416, 2
  %421 = and i16 %420, 7
  %422 = zext i16 %421 to i32
  %423 = add nuw nsw i32 %419, %422
  %424 = lshr i16 %416, 6
  %425 = and i16 %424, 7
  %426 = zext i16 %425 to i32
  %427 = add nuw nsw i32 %423, %426
  %428 = lshr i16 %416, 9
  %429 = zext i16 %428 to i32
  %430 = sub nsw i32 0, %429
  %431 = icmp eq i32 %427, %430
  br i1 %431, label %440, label %432

432:                                              ; preds = %411
  %433 = load i32, ptr @tda18271_debug, align 4
  %434 = and i32 %433, 1
  %435 = icmp eq i32 %434, 0
  br i1 %435, label %437, label %436

436:                                              ; preds = %432
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_update_std_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.37) #9
  br label %437

437:                                              ; preds = %436, %432
  %438 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 14
  %439 = load i32, ptr %412, align 4
  store i32 %439, ptr %438, align 4
  br label %440

440:                                              ; preds = %437, %411, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18271_init(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = tail call i32 @tda18271_set_standby_mode(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_init, ptr noundef nonnull @.str.5, i32 noundef %5, i32 noundef 820) #9
  br label %29

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 4
  %10 = tail call i32 @tda18271_read_regs(ptr noundef %0) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_ir_cal_init, ptr noundef nonnull @.str.5, i32 noundef %10, i32 noundef 801) #9
  br label %21

13:                                               ; preds = %8
  %14 = getelementptr i8, ptr %9, i32 3
  %15 = load i8, ptr %14, align 1
  %16 = and i8 %15, 8
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %13
  %19 = tail call i32 @tda18271_init_regs(ptr noundef %0) #9
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %12
  %22 = phi i32 [ %10, %12 ], [ %19, %18 ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %3, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_init, ptr noundef nonnull @.str.5, i32 noundef %22, i32 noundef 825) #9
  br label %29

23:                                               ; preds = %18, %13
  %24 = phi i32 [ %19, %18 ], [ %10, %13 ]
  %25 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  tail call fastcc void @tda18271c2_rf_cal_init(ptr noundef %0)
  br label %29

29:                                               ; preds = %28, %23, %21, %7
  %30 = phi i32 [ %24, %28 ], [ %24, %23 ], [ %5, %7 ], [ %22, %21 ]
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret i32 %30
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @tda18271_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @tda18271_list_mutex) #9
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 2, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 11
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = phi i32 [ %19, %17 ], [ -1, %11 ]
  %22 = load i8, ptr %6, align 4
  %23 = zext i8 %22 to i32
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.63, ptr noundef %13, i32 noundef %21, i32 noundef %23) #10
  %25 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 1
  %26 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 1, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  tail call void @kfree(ptr noundef nonnull %3) #9
  br label %30

30:                                               ; preds = %20, %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @tda18271_list_mutex) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_read_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda18271_read_thermometer(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %4, align 1
  %6 = or i8 %5, 16
  store i8 %6, ptr %4, align 1
  %7 = tail call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 1, i32 noundef 1) #9
  %8 = tail call i32 @tda18271_read_regs(ptr noundef %0) #9
  %9 = load i8, ptr %4, align 1
  %10 = trunc i8 %9 to i6
  %11 = and i6 %10, -17
  switch i6 %11, label %16 [
    i6 -32, label %12
    i6 8, label %12
  ]

12:                                               ; preds = %1, %1
  %13 = xor i8 %9, 32
  store i8 %13, ptr %4, align 1
  %14 = tail call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 1, i32 noundef 1) #9
  tail call void @msleep(i32 noundef 10) #9
  %15 = tail call i32 @tda18271_read_regs(ptr noundef %0) #9
  br label %16

16:                                               ; preds = %12, %1
  %17 = tail call i32 @tda18271_lookup_thermometer(ptr noundef %0) #9
  %18 = load i8, ptr %4, align 1
  %19 = and i8 %18, -17
  store i8 %19, ptr %4, align 1
  %20 = tail call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 1, i32 noundef 1) #9
  %21 = getelementptr i8, ptr %3, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = and i8 %22, -4
  store i8 %23, ptr %21, align 1
  %24 = tail call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 6, i32 noundef 1) #9
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_write_regs(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_rf_band(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_rf_cal(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_rf_band(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_gain_taper(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_cid_target(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_main_pll(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_read_extended(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_bp_filter(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_km(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_charge_pump_source(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_cal_pll(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_thermometer(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_set_standby_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18271_sleep(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.tda18271_priv, ptr %3, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %4) #9
  %5 = tail call fastcc i32 @tda18271_toggle_output(ptr noundef %0)
  tail call void @mutex_unlock(ptr noundef %4) #9
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18271_set_params(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %6 = load i32, ptr %5, align 4
  %7 = load i32, ptr %2, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 3
  store i32 1, ptr %10, align 4
  switch i32 %4, label %34 [
    i32 11, label %11
    i32 8, label %13
    i32 3, label %13
    i32 16, label %13
    i32 2, label %25
    i32 1, label %23
    i32 18, label %23
  ]

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 13, i32 8
  br label %35

13:                                               ; preds = %1, %1, %1
  %14 = icmp ult i32 %6, 6000001
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 13, i32 9
  br label %35

17:                                               ; preds = %13
  %18 = icmp ult i32 %6, 7000001
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 13, i32 10
  br label %35

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 13, i32 11
  br label %35

23:                                               ; preds = %1, %1
  %24 = icmp ult i32 %6, 6000001
  br i1 %24, label %25, label %28

25:                                               ; preds = %23, %1
  %26 = phi i32 [ %6, %23 ], [ 6000000, %1 ]
  %27 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 13, i32 12
  br label %35

28:                                               ; preds = %23
  %29 = icmp ult i32 %6, 7000001
  br i1 %29, label %30, label %32

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 13, i32 13
  br label %35

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 13, i32 14
  br label %35

34:                                               ; preds = %1
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %9, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.tda18271_set_params, ptr noundef nonnull @.str.39) #9
  br label %51

35:                                               ; preds = %32, %30, %25, %21, %19, %15, %11
  %36 = phi i32 [ %26, %25 ], [ %6, %30 ], [ %6, %32 ], [ %6, %15 ], [ %6, %19 ], [ %6, %21 ], [ 6000000, %11 ]
  %37 = phi ptr [ %27, %25 ], [ %31, %30 ], [ %33, %32 ], [ %16, %15 ], [ %20, %19 ], [ %22, %21 ], [ %12, %11 ]
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %35
  tail call void %39(ptr noundef %0) #9
  br label %42

42:                                               ; preds = %41, %35
  %43 = tail call fastcc i32 @tda18271_tune(ptr noundef %0, ptr noundef %37, i32 noundef %7, i32 noundef %36)
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %9, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_set_params, ptr noundef nonnull @.str.5, i32 noundef %43, i32 noundef 973) #9
  br label %51

46:                                               ; preds = %42
  %47 = load i16, ptr %37, align 4
  %48 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 16
  store i16 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 17
  store i32 %7, ptr %49, align 4
  %50 = getelementptr inbounds %struct.tda18271_priv, ptr %9, i32 0, i32 18
  store i32 %36, ptr %50, align 4
  br label %51

51:                                               ; preds = %46, %45, %34
  %52 = phi i32 [ -22, %34 ], [ %43, %45 ], [ %43, %46 ]
  ret i32 %52
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18271_set_analog_params(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %1, align 8
  %6 = mul i32 %5, 125
  %7 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  %10 = select i1 %9, i32 1, i32 1000
  %11 = mul i32 %6, %10
  %12 = lshr i32 %11, 1
  %13 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 3
  store i32 0, ptr %13, align 4
  %14 = load i32, ptr %7, align 4
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13
  br label %57

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 46848
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 7
  br label %57

25:                                               ; preds = %18
  %26 = and i64 %20, 65539
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 1
  br label %57

30:                                               ; preds = %25
  %31 = and i64 %20, 786444
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 3
  br label %57

35:                                               ; preds = %30
  %36 = and i64 %20, 16
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 4
  br label %57

40:                                               ; preds = %35
  %41 = and i64 %20, 3277024
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 2
  br label %57

45:                                               ; preds = %40
  %46 = and i64 %20, 4194304
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %50, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 5
  br label %57

50:                                               ; preds = %45
  %51 = and i64 %20, 8388608
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %50
  %54 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 6
  br label %57

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 13, i32 4
  br label %57

57:                                               ; preds = %55, %53, %48, %43, %38, %33, %28, %23, %16
  %58 = phi ptr [ %17, %16 ], [ %24, %23 ], [ %29, %28 ], [ %34, %33 ], [ %39, %38 ], [ %44, %43 ], [ %49, %48 ], [ %54, %53 ], [ %56, %55 ]
  %59 = phi ptr [ @.str.23, %16 ], [ @.str.45, %23 ], [ @.str.46, %28 ], [ @.str.47, %33 ], [ @.str.48, %38 ], [ @.str.49, %43 ], [ @.str.50, %48 ], [ @.str.51, %53 ], [ @.str.52, %55 ]
  %60 = load i32, ptr @tda18271_debug, align 4
  %61 = and i32 %60, 1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %57
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_set_analog_params, ptr noundef nonnull @.str.53, ptr noundef nonnull %59) #9
  br label %64

64:                                               ; preds = %63, %57
  %65 = tail call fastcc i32 @tda18271_tune(ptr noundef %0, ptr noundef %58, i32 noundef %12, i32 noundef 0)
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %4, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_set_analog_params, ptr noundef nonnull @.str.5, i32 noundef %65, i32 noundef 1029) #9
  br label %73

68:                                               ; preds = %64
  %69 = load i16, ptr %58, align 4
  %70 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 16
  store i16 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 17
  store i32 %12, ptr %71, align 4
  %72 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 18
  store i32 0, ptr %72, align 4
  br label %73

73:                                               ; preds = %68, %67
  ret i32 %65
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @tda18271_set_config(ptr noundef %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %1, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 5
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 4
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 9
  store i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 8
  store i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 7
  store i32 0, ptr %11, align 4
  %12 = load i32, ptr @tda18271_cal_on_startup, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %47, label %37

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.tda18271_config, ptr %1, i32 0, i32 2
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 5
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.tda18271_config, ptr %1, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.tda18271_config, ptr %1, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 9
  store i32 %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.tda18271_config, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 8
  store i32 %25, ptr %26, align 4
  %27 = getelementptr inbounds %struct.tda18271_config, ptr %1, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 7
  store i32 %28, ptr %29, align 4
  %30 = load i32, ptr @tda18271_cal_on_startup, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %37

32:                                               ; preds = %14
  %33 = getelementptr inbounds %struct.tda18271_config, ptr %1, i32 0, i32 5
  %34 = load i8, ptr %33, align 4
  %35 = and i8 %34, 1
  %36 = zext i8 %35 to i32
  br label %37

37:                                               ; preds = %32, %14, %6
  %38 = phi i32 [ %36, %32 ], [ %12, %6 ], [ %30, %14 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = tail call i32 @tda18271_init(ptr noundef %0)
  br label %42

42:                                               ; preds = %40, %37
  br i1 %5, label %47, label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %1, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %43
  tail call fastcc void @tda18271_update_std_map(ptr noundef %0, ptr noundef nonnull %44)
  br label %47

47:                                               ; preds = %46, %43, %42, %6
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda18271_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 17
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda18271_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 18
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @tda18271_get_if_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tda18271_priv, ptr %4, i32 0, i32 16
  %6 = load i16, ptr %5, align 4
  %7 = zext i16 %6 to i32
  %8 = mul nuw nsw i32 %7, 1000
  store i32 %8, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @tda18271_tune(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr @tda18271_debug, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = load i16, ptr %1, align 4
  %16 = zext i16 %15 to i32
  %17 = getelementptr inbounds %struct.tda18271_std_map_item, ptr %1, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = and i16 %18, 3
  %20 = zext i16 %19 to i32
  %21 = lshr i16 %18, 2
  %22 = and i16 %21, 7
  %23 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %10, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_tune, ptr noundef nonnull @.str.40, i32 noundef %2, i32 noundef %16, i32 noundef %3, i32 noundef %20, i32 noundef %23) #9
  %24 = load ptr, ptr %9, align 4
  br label %25

25:                                               ; preds = %14, %4
  %26 = phi ptr [ %24, %14 ], [ %10, %4 ]
  %27 = getelementptr inbounds %struct.tda18271_priv, ptr %26, i32 0, i32 9
  %28 = load i32, ptr %27, align 4
  switch i32 %28, label %43 [
    i32 0, label %29
    i32 3, label %34
  ]

29:                                               ; preds = %25
  %30 = load i32, ptr @tda18271_debug, align 4
  %31 = and i32 %30, 9
  %32 = icmp eq i32 %31, 9
  br i1 %32, label %33, label %55

33:                                               ; preds = %29
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %26, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_agc, ptr noundef nonnull @.str.42) #9
  br label %55

34:                                               ; preds = %25
  %35 = load i32, ptr @tda18271_debug, align 4
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %26, ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.tda18271_agc, ptr noundef nonnull @.str.43) #9
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 9
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %55, label %44

43:                                               ; preds = %25
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %26, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_agc, ptr noundef nonnull @.str.44, i32 noundef %28) #9
  br label %53

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.tda18271_priv, ptr %26, i32 0, i32 2, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.i2c_adapter, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.tda18271_priv, ptr %26, i32 0, i32 3
  %50 = load i32, ptr %49, align 4
  %51 = tail call i32 %41(ptr noundef %48, i32 noundef 0, i32 noundef 0, i32 noundef %50) #9
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %44, %43
  %54 = phi i32 [ -22, %43 ], [ %51, %44 ]
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_tune, ptr noundef nonnull @.str.5, i32 noundef %54, i32 noundef 894) #9
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %10, ptr noundef nonnull @.str.38, ptr noundef nonnull @__func__.tda18271_tune, ptr noundef nonnull @.str.41) #9
  br label %55

55:                                               ; preds = %53, %44, %39, %33, %29
  %56 = tail call i32 @tda18271_init(ptr noundef %0)
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %10, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_tune, ptr noundef nonnull @.str.5, i32 noundef %56, i32 noundef 898) #9
  br label %337

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.tda18271_priv, ptr %10, i32 0, i32 15
  tail call void @mutex_lock(ptr noundef %60) #9
  %61 = getelementptr inbounds %struct.tda18271_priv, ptr %10, i32 0, i32 6
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %193 [
    i32 0, label %63
    i32 1, label %132
  ]

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8)
  store i32 %2, ptr %8, align 4
  %64 = load ptr, ptr %9, align 4
  %65 = call i32 @tda18271_calc_bp_filter(ptr noundef %0, ptr noundef nonnull %8) #9
  %66 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1) #9
  %67 = getelementptr i8, ptr %64, i32 19
  %68 = load i8, ptr %67, align 1
  %69 = and i8 %68, 7
  %70 = or i8 %69, 96
  store i8 %70, ptr %67, align 1
  %71 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 19, i32 noundef 1) #9
  %72 = getelementptr i8, ptr %64, i32 22
  store i8 96, ptr %72, align 1
  %73 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 22, i32 noundef 1) #9
  %74 = getelementptr i8, ptr %64, i32 29
  store i8 0, ptr %74, align 1
  %75 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 29, i32 noundef 1) #9
  %76 = getelementptr i8, ptr %64, i32 35
  store i8 -52, ptr %76, align 1
  %77 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 35, i32 noundef 1) #9
  %78 = getelementptr i8, ptr %64, i32 6
  %79 = load i8, ptr %78, align 1
  %80 = or i8 %79, 3
  store i8 %80, ptr %78, align 1
  %81 = getelementptr inbounds %struct.tda18271_priv, ptr %64, i32 0, i32 3
  %82 = load i32, ptr %81, align 4
  switch i32 %82, label %90 [
    i32 0, label %83
    i32 1, label %86
  ]

83:                                               ; preds = %63
  %84 = load i32, ptr %8, align 4
  %85 = add i32 %84, -1250000
  br label %90

86:                                               ; preds = %63
  %87 = load i32, ptr %8, align 4
  %88 = lshr i32 %3, 1
  %89 = add i32 %87, %88
  br label %90

90:                                               ; preds = %86, %83, %63
  %91 = phi i32 [ 0, %63 ], [ %89, %86 ], [ %85, %83 ]
  %92 = call i32 @tda18271_calc_cal_pll(ptr noundef %0, i32 noundef %91) #9
  %93 = load i32, ptr %81, align 4
  switch i32 %93, label %102 [
    i32 0, label %94
    i32 1, label %97
  ]

94:                                               ; preds = %90
  %95 = load i32, ptr %8, align 4
  %96 = add i32 %95, -250000
  br label %102

97:                                               ; preds = %90
  %98 = load i32, ptr %8, align 4
  %99 = lshr i32 %3, 1
  %100 = add nuw i32 %99, 1000000
  %101 = add i32 %100, %98
  br label %102

102:                                              ; preds = %97, %94, %90
  %103 = phi i32 [ %91, %90 ], [ %101, %97 ], [ %96, %94 ]
  %104 = call i32 @tda18271_calc_main_pll(ptr noundef %0, i32 noundef %103) #9
  %105 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 11) #9
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %64, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271c1_rf_tracking_filter_calibration, ptr noundef nonnull @.str.5, i32 noundef %105, i32 noundef 748) #9
  br label %131

108:                                              ; preds = %102
  call void @msleep(i32 noundef 5) #9
  %109 = call i32 @tda18271_calc_km(ptr noundef %0, ptr noundef nonnull %8) #9
  %110 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 28, i32 noundef 1) #9
  %111 = call i32 @tda18271_calc_rf_band(ptr noundef %0, ptr noundef nonnull %8) #9
  %112 = call i32 @tda18271_calc_gain_taper(ptr noundef %0, ptr noundef nonnull %8) #9
  %113 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1) #9
  %114 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1) #9
  %115 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 4, i32 noundef 1) #9
  %116 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1) #9
  %117 = load i8, ptr %67, align 1
  %118 = and i8 %117, 7
  %119 = or i8 %118, 64
  store i8 %119, ptr %67, align 1
  %120 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 19, i32 noundef 1) #9
  store i8 64, ptr %72, align 1
  %121 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 22, i32 noundef 1) #9
  call void @msleep(i32 noundef 10) #9
  store i8 -20, ptr %76, align 1
  %122 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 35, i32 noundef 1) #9
  call void @msleep(i32 noundef 60) #9
  %123 = load i8, ptr %78, align 1
  %124 = and i8 %123, -4
  store i8 %124, ptr %78, align 1
  %125 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 6, i32 noundef 1) #9
  %126 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 3, i32 noundef 1) #9
  %127 = call i32 @tda18271_calc_rf_cal(ptr noundef %0, ptr noundef nonnull %8) #9
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %108
  %130 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 29, i32 noundef 1) #9
  br label %131

131:                                              ; preds = %129, %108, %107
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8)
  br label %193

132:                                              ; preds = %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  store i32 %2, ptr %6, align 4
  %133 = load ptr, ptr %9, align 4
  %134 = getelementptr inbounds %struct.tda18271_priv, ptr %133, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  %135 = tail call i32 @tda18271_set_standby_mode(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #9
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %132
  tail call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %133, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271c2_rf_tracking_filters_correction, ptr noundef nonnull @.str.5, i32 noundef %135, i32 noundef 254) #9
  br label %192

138:                                              ; preds = %132
  %139 = tail call fastcc i32 @tda18271_read_thermometer(ptr noundef %0) #9
  %140 = call i32 @tda18271_calc_rf_cal(ptr noundef %0, ptr noundef nonnull %6) #9
  %141 = getelementptr i8, ptr %133, i32 29
  %142 = load i8, ptr %141, align 1
  %143 = call i32 @tda18271_lookup_rf_band(ptr noundef %0, ptr noundef nonnull %6, ptr noundef null) #9
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %138
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %133, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271c2_rf_tracking_filters_correction, ptr noundef nonnull @.str.5, i32 noundef %143, i32 noundef 266) #9
  br label %192

146:                                              ; preds = %138
  %147 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %134, i32 %143, i32 7
  %148 = load i32, ptr %147, align 4
  %149 = icmp eq i32 %148, 0
  %150 = load i32, ptr %6, align 4
  %151 = udiv i32 %150, 1000
  br i1 %149, label %156, label %152

152:                                              ; preds = %146
  %153 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %134, i32 %143, i32 6
  %154 = load i32, ptr %153, align 4
  %155 = icmp ult i32 %151, %154
  br i1 %155, label %156, label %164

156:                                              ; preds = %152, %146
  %157 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %134, i32 %143, i32 8
  %158 = load i32, ptr %157, align 4
  %159 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %134, i32 %143, i32 5
  %160 = load i32, ptr %159, align 4
  %161 = sub i32 %151, %160
  %162 = mul i32 %161, %158
  %163 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %134, i32 %143, i32 9
  br label %170

164:                                              ; preds = %152
  %165 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %134, i32 %143, i32 10
  %166 = load i32, ptr %165, align 4
  %167 = sub i32 %151, %154
  %168 = mul i32 %166, %167
  %169 = getelementptr %struct.tda18271_rf_tracking_filter_cal, ptr %134, i32 %143, i32 11
  br label %170

170:                                              ; preds = %164, %156
  %171 = phi ptr [ %169, %164 ], [ %163, %156 ]
  %172 = phi i32 [ %168, %164 ], [ %162, %156 ]
  %173 = load i32, ptr %171, align 4
  %174 = zext i8 %142 to i32
  %175 = add i32 %172, %174
  %176 = add i32 %175, %173
  %177 = call i32 @llvm.smax.i32(i32 %176, i32 0) #9
  %178 = call i32 @llvm.umin.i32(i32 %177, i32 255) #9
  %179 = call i32 @tda18271_lookup_map(ptr noundef %0, i32 noundef 4, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %180 = load i8, ptr %7, align 1
  %181 = zext i8 %180 to i32
  %182 = and i32 %139, 255
  %183 = getelementptr inbounds %struct.tda18271_priv, ptr %133, i32 0, i32 11
  %184 = load i8, ptr %183, align 1
  %185 = zext i8 %184 to i32
  %186 = sub nsw i32 %182, %185
  %187 = mul nsw i32 %186, %181
  %188 = sdiv i32 %187, 1000
  %189 = add nsw i32 %188, %178
  %190 = trunc i32 %189 to i8
  store i8 %190, ptr %141, align 1
  %191 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 29, i32 noundef 1) #9
  br label %192

192:                                              ; preds = %170, %145, %137
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  br label %193

193:                                              ; preds = %192, %131, %59
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %2, ptr %5, align 4
  %194 = load ptr, ptr %9, align 4
  %195 = getelementptr i8, ptr %194, i32 5
  %196 = load i8, ptr %195, align 1
  %197 = and i8 %196, -32
  store i8 %197, ptr %195, align 1
  %198 = getelementptr inbounds %struct.tda18271_std_map_item, ptr %1, i32 0, i32 1
  %199 = load i16, ptr %198, align 2
  %200 = shl i16 %199, 3
  %201 = and i16 %200, 24
  %202 = lshr i16 %199, 2
  %203 = and i16 %202, 7
  %204 = or i16 %201, %203
  %205 = trunc i16 %204 to i8
  %206 = or i8 %197, %205
  store i8 %206, ptr %195, align 1
  %207 = getelementptr inbounds %struct.tda18271_priv, ptr %194, i32 0, i32 6
  %208 = load i32, ptr %207, align 4
  %209 = icmp eq i32 %208, 1
  br i1 %209, label %210, label %212

210:                                              ; preds = %193
  %211 = and i8 %206, -5
  store i8 %211, ptr %195, align 1
  br label %212

212:                                              ; preds = %210, %193
  %213 = getelementptr i8, ptr %194, i32 6
  %214 = load i8, ptr %213, align 1
  %215 = and i8 %214, -32
  store i8 %215, ptr %213, align 1
  %216 = load i16, ptr %198, align 2
  %217 = lshr i16 %216, 4
  %218 = trunc i16 %217 to i8
  %219 = and i8 %218, 28
  %220 = and i8 %214, 96
  %221 = or i8 %219, %220
  store i8 %221, ptr %213, align 1
  %222 = load i16, ptr %198, align 2
  %223 = trunc i16 %222 to i8
  %224 = shl i8 %223, 2
  %225 = and i8 %224, -128
  %226 = or i8 %225, %221
  store i8 %226, ptr %213, align 1
  %227 = getelementptr i8, ptr %194, i32 37
  store i8 0, ptr %227, align 1
  %228 = load i16, ptr %198, align 2
  %229 = lshr i16 %228, 9
  %230 = trunc i16 %229 to i8
  store i8 %230, ptr %227, align 1
  %231 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 37, i32 noundef 1) #9
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %234

233:                                              ; preds = %212
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %194, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_channel_configuration, ptr noundef nonnull @.str.5, i32 noundef %231, i32 noundef 108) #9
  br label %335

234:                                              ; preds = %212
  %235 = getelementptr i8, ptr %194, i32 3
  %236 = load i8, ptr %235, align 1
  %237 = or i8 %236, 64
  store i8 %237, ptr %235, align 1
  %238 = getelementptr i8, ptr %194, i32 1
  %239 = load i8, ptr %238, align 1
  %240 = and i8 %239, -17
  store i8 %240, ptr %238, align 1
  %241 = call i32 @tda18271_calc_ir_measure(ptr noundef %0, ptr noundef nonnull %5) #9
  %242 = call i32 @tda18271_calc_bp_filter(ptr noundef %0, ptr noundef nonnull %5) #9
  %243 = call i32 @tda18271_calc_rf_band(ptr noundef %0, ptr noundef nonnull %5) #9
  %244 = call i32 @tda18271_calc_gain_taper(ptr noundef %0, ptr noundef nonnull %5) #9
  %245 = getelementptr inbounds %struct.tda18271_priv, ptr %194, i32 0, i32 4
  %246 = load i32, ptr %245, align 4
  switch i32 %246, label %247 [
    i32 0, label %250
    i32 1, label %254
  ]

247:                                              ; preds = %234
  %248 = getelementptr i8, ptr %194, i32 16
  %249 = load i8, ptr %248, align 1
  br label %258

250:                                              ; preds = %234
  %251 = getelementptr i8, ptr %194, i32 16
  %252 = load i8, ptr %251, align 1
  %253 = or i8 %252, 4
  br label %258

254:                                              ; preds = %234
  %255 = getelementptr i8, ptr %194, i32 16
  %256 = load i8, ptr %255, align 1
  %257 = and i8 %256, -5
  br label %258

258:                                              ; preds = %254, %250, %247
  %259 = phi i8 [ %249, %247 ], [ %257, %254 ], [ %253, %250 ]
  %260 = getelementptr i8, ptr %194, i32 16
  %261 = and i8 %259, -4
  store i8 %261, ptr %260, align 1
  %262 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 16, i32 noundef 1) #9
  %263 = icmp slt i32 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %258
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %194, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_channel_configuration, ptr noundef nonnull @.str.5, i32 noundef %262, i32 noundef 149) #9
  br label %335

265:                                              ; preds = %258
  %266 = load i16, ptr %1, align 4
  %267 = zext i16 %266 to i32
  %268 = mul nuw nsw i32 %267, 1000
  %269 = load i32, ptr %5, align 4
  %270 = add i32 %268, %269
  %271 = load i32, ptr %245, align 4
  switch i32 %271, label %306 [
    i32 0, label %272
    i32 1, label %285
  ]

272:                                              ; preds = %265
  %273 = call i32 @tda18271_calc_main_pll(ptr noundef %0, i32 noundef %270) #9
  %274 = load ptr, ptr %9, align 4
  %275 = getelementptr inbounds %struct.tda18271_priv, ptr %274, i32 0, i32 3
  %276 = load i32, ptr %275, align 4
  switch i32 %276, label %303 [
    i32 0, label %277
    i32 1, label %281
  ]

277:                                              ; preds = %272
  %278 = getelementptr i8, ptr %274, i32 12
  %279 = load i8, ptr %278, align 1
  %280 = and i8 %279, 127
  store i8 %280, ptr %278, align 1
  br label %303

281:                                              ; preds = %272
  %282 = getelementptr i8, ptr %274, i32 12
  %283 = load i8, ptr %282, align 1
  %284 = or i8 %283, -128
  store i8 %284, ptr %282, align 1
  br label %303

285:                                              ; preds = %265
  %286 = call i32 @tda18271_calc_cal_pll(ptr noundef %0, i32 noundef %270) #9
  %287 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 8, i32 noundef 4) #9
  %288 = getelementptr i8, ptr %194, i32 8
  %289 = load i8, ptr %288, align 1
  %290 = and i8 %289, 127
  %291 = getelementptr i8, ptr %194, i32 12
  store i8 %290, ptr %291, align 1
  %292 = load ptr, ptr %9, align 4
  %293 = getelementptr inbounds %struct.tda18271_priv, ptr %292, i32 0, i32 3
  %294 = load i32, ptr %293, align 4
  switch i32 %294, label %303 [
    i32 0, label %295
    i32 1, label %299
  ]

295:                                              ; preds = %285
  %296 = getelementptr i8, ptr %292, i32 12
  %297 = load i8, ptr %296, align 1
  %298 = and i8 %297, 127
  store i8 %298, ptr %296, align 1
  br label %303

299:                                              ; preds = %285
  %300 = getelementptr i8, ptr %292, i32 12
  %301 = load i8, ptr %300, align 1
  %302 = or i8 %301, -128
  store i8 %302, ptr %300, align 1
  br label %303

303:                                              ; preds = %299, %295, %285, %281, %277, %272
  %304 = phi i32 [ 4, %272 ], [ 4, %277 ], [ 4, %281 ], [ 1, %285 ], [ 1, %295 ], [ 1, %299 ]
  %305 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 12, i32 noundef %304) #9
  br label %306

306:                                              ; preds = %303, %265
  %307 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 1, i32 noundef 7) #9
  %308 = icmp slt i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  call void (ptr, ptr, ptr, ptr, ...) @_tda_printk(ptr noundef %194, ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.tda18271_channel_configuration, ptr noundef nonnull @.str.5, i32 noundef %307, i32 noundef 173) #9
  br label %335

310:                                              ; preds = %306
  %311 = load ptr, ptr %9, align 4
  %312 = getelementptr inbounds %struct.tda18271_priv, ptr %311, i32 0, i32 4
  %313 = load i32, ptr %312, align 4
  %314 = icmp eq i32 %313, 1
  %315 = zext i1 %314 to i32
  %316 = call i32 @tda18271_charge_pump_source(ptr noundef %0, i32 noundef %315, i32 noundef 1) #9
  call void @msleep(i32 noundef 1) #9
  %317 = load ptr, ptr %9, align 4
  %318 = getelementptr inbounds %struct.tda18271_priv, ptr %317, i32 0, i32 4
  %319 = load i32, ptr %318, align 4
  %320 = icmp eq i32 %319, 1
  %321 = zext i1 %320 to i32
  %322 = call i32 @tda18271_charge_pump_source(ptr noundef %0, i32 noundef %321, i32 noundef 0) #9
  call void @msleep(i32 noundef 20) #9
  %323 = load i32, ptr %207, align 4
  %324 = icmp eq i32 %323, 1
  br i1 %324, label %325, label %335

325:                                              ; preds = %310
  %326 = load i16, ptr %198, align 2
  %327 = load i8, ptr %195, align 1
  %328 = and i8 %327, -5
  %329 = trunc i16 %326 to i8
  %330 = lshr i8 %329, 3
  %331 = and i8 %330, 4
  %332 = or i8 %331, %328
  %333 = xor i8 %332, 4
  store i8 %333, ptr %195, align 1
  %334 = call i32 @tda18271_write_regs(ptr noundef %0, i32 noundef 5, i32 noundef 1) #9
  br label %335

335:                                              ; preds = %325, %310, %309, %264, %233
  %336 = phi i32 [ %334, %325 ], [ %307, %310 ], [ %231, %233 ], [ %262, %264 ], [ %307, %309 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  call void @mutex_unlock(ptr noundef %60) #9
  br label %337

337:                                              ; preds = %335, %58
  %338 = phi i32 [ %336, %335 ], [ %56, %58 ]
  ret i32 %338
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_lookup_map(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tda18271_calc_ir_measure(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

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
!9 = !{i64 2154488747, i64 2154489246, i64 2154488784, i64 2154488840, i64 2154488874, i64 2154488898, i64 2154488939, i64 2154488960, i64 2154488988, i64 2154489022}
