; ModuleID = '/llk/IR/drivers/media/tuners/mxl5007t.c_pt.bc'
source_filename = "../drivers/media/tuners/mxl5007t.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mxl5007t_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mxl5007t_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mxl5007t_attach:\09\09\09\09\09"
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
%struct.reg_pair_t = type { i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.mxl5007t_state = type { %struct.list_head, %struct.tuner_i2c_props, %struct.mutex, ptr, i32, [17 x %struct.reg_pair_t], [20 x %struct.reg_pair_t], [11 x %struct.reg_pair_t], i32, i32, i32 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
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
%struct.mxl5007t_config = type { i32, i32, i32, i32, i8 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@mxl5007t_debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @mxl5007t_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [27 x i8] c"parm=debug:set debug level\00", section ".modinfo", align 1
@mxl5007t_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mxl5007t_list_mutex, i64 12), ptr getelementptr (i8, ptr @mxl5007t_list_mutex, i64 12) } }, align 4
@hybrid_tuner_instance_list = internal global %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, align 4
@.str = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"mxl5007t\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@mxl5007t_attach.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"&state->lock\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\013%s: error %d on line %d\0A\00", align 1
@__func__.mxl5007t_attach = private unnamed_addr constant [16 x i8] c"mxl5007t_attach\00", align 1
@mxl5007t_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"MaxLinear MxL5007T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, ptr @mxl5007t_release, ptr @mxl5007t_init, ptr @mxl5007t_sleep, ptr null, ptr null, ptr @mxl5007t_set_params, ptr null, ptr null, ptr @mxl5007t_get_frequency, ptr @mxl5007t_get_bandwidth, ptr @mxl5007t_get_if_frequency, ptr @mxl5007t_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mxl5007t_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mxl5007t_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mxl5007t_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mxl5007t_attach to i32), ptr @__kstrtab_mxl5007t_attach, ptr @__kstrtabns_mxl5007t_attach }, section "___ksymtab_gpl+mxl5007t_attach", align 4
@__UNIQUE_ID_description251 = internal constant [55 x i8] c"description=MaxLinear MxL5007T Silicon IC tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [44 x i8] c"author=Michael Krufky <mkrufky@linuxtv.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version254 = internal constant [12 x i8] c"version=0.2\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.mxl5007t_get_chip_id = private unnamed_addr constant [21 x i8] c"mxl5007t_get_chip_id\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"MxL5007.v1.f1\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"MxL5007.v1.f2\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"MxL5007.v2.100.f1\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"MxL5007.v2.100.f2\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"MxL5007.v2.200.f1\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"MxL5007.v2.200.f2\00", align 1
@.str.11 = private unnamed_addr constant [12 x i8] c"MxL5007T.v4\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"MxL5007T\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"\014%s: unknown rev (%02x)\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"\016%s: %s detected @ %d-%04x\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"\014%s: unable to identify device @ %d-%04x\0A\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"\013%s: %d: failed!\0A\00", align 1
@__func__.mxl5007t_read_reg = private unnamed_addr constant [18 x i8] c"mxl5007t_read_reg\00", align 1
@__func__.mxl5007t_soft_reset = private unnamed_addr constant [20 x i8] c"mxl5007t_soft_reset\00", align 1
@__func__.mxl5007t_write_reg = private unnamed_addr constant [19 x i8] c"mxl5007t_write_reg\00", align 1
@__func__.mxl5007t_init = private unnamed_addr constant [14 x i8] c"mxl5007t_init\00", align 1
@__func__.mxl5007t_sleep = private unnamed_addr constant [15 x i8] c"mxl5007t_sleep\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\013%s: %d: modulation type not supported!\0A\00", align 1
@__func__.mxl5007t_set_params = private unnamed_addr constant [20 x i8] c"mxl5007t_set_params\00", align 1
@__func__.mxl5007t_tuner_init = private unnamed_addr constant [20 x i8] c"mxl5007t_tuner_init\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@init_tab = internal unnamed_addr constant [17 x %struct.reg_pair_t] [%struct.reg_pair_t { i8 2, i8 6 }, %struct.reg_pair_t { i8 3, i8 72 }, %struct.reg_pair_t { i8 5, i8 4 }, %struct.reg_pair_t { i8 6, i8 16 }, %struct.reg_pair_t { i8 46, i8 21 }, %struct.reg_pair_t { i8 48, i8 16 }, %struct.reg_pair_t { i8 69, i8 88 }, %struct.reg_pair_t { i8 72, i8 25 }, %struct.reg_pair_t { i8 82, i8 3 }, %struct.reg_pair_t { i8 83, i8 68 }, %struct.reg_pair_t { i8 106, i8 75 }, %struct.reg_pair_t { i8 118, i8 0 }, %struct.reg_pair_t { i8 120, i8 24 }, %struct.reg_pair_t { i8 122, i8 23 }, %struct.reg_pair_t { i8 -123, i8 6 }, %struct.reg_pair_t { i8 1, i8 1 }, %struct.reg_pair_t zeroinitializer], align 1
@init_tab_cable = internal unnamed_addr constant [20 x %struct.reg_pair_t] [%struct.reg_pair_t { i8 2, i8 6 }, %struct.reg_pair_t { i8 3, i8 72 }, %struct.reg_pair_t { i8 5, i8 4 }, %struct.reg_pair_t { i8 6, i8 16 }, %struct.reg_pair_t { i8 9, i8 63 }, %struct.reg_pair_t { i8 10, i8 63 }, %struct.reg_pair_t { i8 11, i8 63 }, %struct.reg_pair_t { i8 46, i8 21 }, %struct.reg_pair_t { i8 48, i8 16 }, %struct.reg_pair_t { i8 69, i8 88 }, %struct.reg_pair_t { i8 72, i8 25 }, %struct.reg_pair_t { i8 82, i8 3 }, %struct.reg_pair_t { i8 83, i8 68 }, %struct.reg_pair_t { i8 106, i8 75 }, %struct.reg_pair_t { i8 118, i8 0 }, %struct.reg_pair_t { i8 120, i8 24 }, %struct.reg_pair_t { i8 122, i8 23 }, %struct.reg_pair_t { i8 -123, i8 6 }, %struct.reg_pair_t { i8 1, i8 1 }, %struct.reg_pair_t zeroinitializer], align 1
@__func__.mxl5007t_set_mode_bits = private unnamed_addr constant [23 x i8] c"mxl5007t_set_mode_bits\00", align 1
@__func__.mxl5007t_set_if_freq_bits = private unnamed_addr constant [26 x i8] c"mxl5007t_set_if_freq_bits\00", align 1
@__func__.mxl5007t_set_xtal_freq_bits = private unnamed_addr constant [28 x i8] c"mxl5007t_set_xtal_freq_bits\00", align 1
@__func__.mxl5007t_tuner_rf_tune = private unnamed_addr constant [23 x i8] c"mxl5007t_tuner_rf_tune\00", align 1
@reg_pair_rftune = internal unnamed_addr constant [11 x %struct.reg_pair_t] [%struct.reg_pair_t { i8 15, i8 0 }, %struct.reg_pair_t { i8 12, i8 21 }, %struct.reg_pair_t { i8 13, i8 64 }, %struct.reg_pair_t { i8 14, i8 14 }, %struct.reg_pair_t { i8 31, i8 -121 }, %struct.reg_pair_t { i8 32, i8 31 }, %struct.reg_pair_t { i8 33, i8 -121 }, %struct.reg_pair_t { i8 34, i8 31 }, %struct.reg_pair_t { i8 -128, i8 1 }, %struct.reg_pair_t { i8 15, i8 1 }, %struct.reg_pair_t zeroinitializer], align 1
@__func__.mxl5007t_get_status = private unnamed_addr constant [20 x i8] c"mxl5007t_get_status\00", align 1
@.str.18 = private unnamed_addr constant [12 x i8] c"\017%s: %s%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"rf locked \00", align 1
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"ref locked\00", align 1
@__func__.mxl5007t_synth_lock_status = private unnamed_addr constant [27 x i8] c"mxl5007t_synth_lock_status\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_license253, ptr @__UNIQUE_ID_version254, ptr @__ksymtab_mxl5007t_attach, ptr @__param_debug], section "llvm.metadata"
@switch.table.mxl5007t_set_params = private unnamed_addr constant [11 x i8] c"\00\02\03\04\05\06\07\08\09\0A\0B", align 1
@switch.table.mxl5007t_get_if_frequency = private unnamed_addr constant [11 x i32] [i32 4000000, i32 4500000, i32 4570000, i32 5000000, i32 5380000, i32 6000000, i32 6280000, i32 9191500, i32 35250000, i32 36150000, i32 44000000], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mxl5007t_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, ptr noundef %3) #0 {
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x %struct.i2c_msg], align 4
  %11 = alloca i8, align 1
  tail call void @mutex_lock(ptr noundef nonnull @mxl5007t_list_mutex) #8
  %12 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %13 = icmp eq ptr %12, @hybrid_tuner_instance_list
  br i1 %13, label %44, label %14

14:                                               ; preds = %4
  %15 = icmp eq ptr %1, null
  %16 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  br label %17

17:                                               ; preds = %32, %14
  %18 = phi ptr [ %12, %14 ], [ %33, %32 ]
  br i1 %15, label %32, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.mxl5007t_state, ptr %18, i32 0, i32 1
  %21 = getelementptr inbounds %struct.mxl5007t_state, ptr %18, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %16, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i8, ptr %20, align 4
  %31 = icmp eq i8 %30, %2
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %24, %19, %17
  %33 = load ptr, ptr %18, align 4
  %34 = icmp eq ptr %33, @hybrid_tuner_instance_list
  br i1 %34, label %44, label %17

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.mxl5007t_state, ptr %18, i32 0, i32 1, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = zext i8 %2 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %37, i32 noundef %26, i32 noundef %38) #9
  %40 = getelementptr inbounds %struct.mxl5007t_state, ptr %18, i32 0, i32 1, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %65

44:                                               ; preds = %35, %32, %4
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 160) #10
  %47 = icmp eq ptr %46, null
  br i1 %47, label %131, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.mxl5007t_state, ptr %46, i32 0, i32 1
  store i8 %2, ptr %49, align 8
  %50 = getelementptr inbounds %struct.mxl5007t_state, ptr %46, i32 0, i32 1, i32 1
  store ptr %1, ptr %50, align 4
  %51 = getelementptr inbounds %struct.mxl5007t_state, ptr %46, i32 0, i32 1, i32 3
  store ptr @.str.1, ptr %51, align 4
  %52 = icmp eq ptr %1, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %55 = load i32, ptr %54, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = phi i32 [ %55, %53 ], [ -1, %48 ]
  %58 = zext i8 %2 to i32
  %59 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.1, i32 noundef %57, i32 noundef %58) #9
  %60 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr %46, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr @hybrid_tuner_instance_list, ptr %46, align 8
  %61 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %60, ptr %61, align 4
  store volatile ptr %46, ptr %60, align 4
  %62 = getelementptr inbounds %struct.mxl5007t_state, ptr %46, i32 0, i32 1, i32 2
  %63 = load i32, ptr %62, align 8
  %64 = add i32 %63, 1
  store i32 %64, ptr %62, align 8
  br label %65

65:                                               ; preds = %56, %35
  %66 = phi i32 [ %64, %56 ], [ %42, %35 ]
  %67 = phi ptr [ %46, %56 ], [ %18, %35 ]
  switch i32 %66, label %131 [
    i32 0, label %195
    i32 1, label %68
  ]

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.mxl5007t_state, ptr %67, i32 0, i32 3
  store ptr %3, ptr %69, align 4
  %70 = getelementptr inbounds %struct.mxl5007t_state, ptr %67, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %70, ptr noundef nonnull @.str.3, ptr noundef nonnull @mxl5007t_attach.__key) #8
  %71 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %76, label %74

74:                                               ; preds = %68
  %75 = tail call i32 %72(ptr noundef %0, i32 noundef 1) #8
  br label %76

76:                                               ; preds = %74, %68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #8
  store i8 0, ptr %11, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  store i16 -9733, ptr %9, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #8
  %77 = getelementptr inbounds i8, ptr %10, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %77, i8 0, i32 16, i1 false) #8, !annotation !8
  %78 = getelementptr inbounds %struct.mxl5007t_state, ptr %67, i32 0, i32 1
  %79 = load i8, ptr %78, align 4
  %80 = zext i8 %79 to i16
  store i16 %80, ptr %10, align 4
  %81 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 1
  store i16 0, ptr %81, align 2
  store i16 2, ptr %77, align 4
  %82 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 0, i32 3
  store ptr %9, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1
  store i16 %80, ptr %83, align 4
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 1
  store i16 1, ptr %84, align 2
  %85 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 2
  store i16 1, ptr %85, align 4
  %86 = getelementptr inbounds %struct.i2c_msg, ptr %10, i32 1, i32 3
  store ptr %11, ptr %86, align 4
  %87 = getelementptr inbounds %struct.mxl5007t_state, ptr %67, i32 0, i32 1, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 @i2c_transfer(ptr noundef %88, ptr noundef nonnull %10, i32 noundef 2) #8
  %90 = icmp eq i32 %89, 2
  br i1 %90, label %101, label %91

91:                                               ; preds = %76
  %92 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mxl5007t_read_reg, i32 noundef 481) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  %93 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_get_chip_id, i32 noundef -121, i32 noundef 792) #9
  %94 = load ptr, ptr %87, align 4
  %95 = getelementptr inbounds %struct.i2c_adapter, ptr %94, i32 0, i32 11
  %96 = load i32, ptr %95, align 4
  %97 = load i8, ptr %78, align 4
  %98 = zext i8 %97 to i32
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef nonnull @__func__.mxl5007t_get_chip_id, i32 noundef %96, i32 noundef %98) #9
  %100 = getelementptr inbounds %struct.mxl5007t_state, ptr %67, i32 0, i32 4
  store i32 0, ptr %100, align 4
  br label %122

101:                                              ; preds = %76
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  %102 = load i8, ptr %11, align 1
  switch i8 %102, label %109 [
    i8 17, label %112
    i8 18, label %103
    i8 33, label %104
    i8 34, label %105
    i8 35, label %106
    i8 36, label %107
    i8 20, label %108
  ]

103:                                              ; preds = %101
  br label %112

104:                                              ; preds = %101
  br label %112

105:                                              ; preds = %101
  br label %112

106:                                              ; preds = %101
  br label %112

107:                                              ; preds = %101
  br label %112

108:                                              ; preds = %101
  br label %112

109:                                              ; preds = %101
  %110 = zext i8 %102 to i32
  %111 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @__func__.mxl5007t_get_chip_id, i32 noundef %110) #9
  store i8 0, ptr %11, align 1
  br label %112

112:                                              ; preds = %109, %108, %107, %106, %105, %104, %103, %101
  %113 = phi i32 [ 0, %109 ], [ 20, %108 ], [ 36, %107 ], [ 35, %106 ], [ 34, %105 ], [ 33, %104 ], [ 18, %103 ], [ 17, %101 ]
  %114 = phi ptr [ @.str.12, %109 ], [ @.str.11, %108 ], [ @.str.10, %107 ], [ @.str.9, %106 ], [ @.str.8, %105 ], [ @.str.7, %104 ], [ @.str.6, %103 ], [ @.str.5, %101 ]
  %115 = getelementptr inbounds %struct.mxl5007t_state, ptr %67, i32 0, i32 4
  store i32 %113, ptr %115, align 4
  %116 = load ptr, ptr %87, align 4
  %117 = getelementptr inbounds %struct.i2c_adapter, ptr %116, i32 0, i32 11
  %118 = load i32, ptr %117, align 4
  %119 = load i8, ptr %78, align 4
  %120 = zext i8 %119 to i32
  %121 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @__func__.mxl5007t_get_chip_id, ptr noundef nonnull %114, i32 noundef %118, i32 noundef %120) #9
  br label %122

122:                                              ; preds = %112, %91
  %123 = phi i32 [ -121, %91 ], [ 0, %112 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #8
  %124 = load ptr, ptr %71, align 4
  %125 = icmp eq ptr %124, null
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  %127 = call i32 %124(ptr noundef %0, i32 noundef 0) #8
  br label %128

128:                                              ; preds = %126, %122
  br i1 %90, label %131, label %129

129:                                              ; preds = %128
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_attach, i32 noundef %123, i32 noundef 865) #9
  br label %195

131:                                              ; preds = %128, %65, %44
  %132 = phi ptr [ %67, %128 ], [ %67, %65 ], [ null, %44 ]
  %133 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %134 = load ptr, ptr %133, align 4
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = call i32 %134(ptr noundef %0, i32 noundef 1) #8
  br label %138

138:                                              ; preds = %136, %131
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #8
  store i8 -1, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #8
  %139 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 1, ptr %139, align 4, !annotation !8
  %140 = getelementptr inbounds %struct.mxl5007t_state, ptr %132, i32 0, i32 1
  %141 = load i8, ptr %140, align 4
  %142 = zext i8 %141 to i16
  store i16 %142, ptr %8, align 4
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %143, align 2
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %7, ptr %144, align 4
  %145 = getelementptr inbounds %struct.mxl5007t_state, ptr %132, i32 0, i32 1, i32 1
  %146 = load ptr, ptr %145, align 4
  %147 = call i32 @i2c_transfer(ptr noundef %146, ptr noundef nonnull %8, i32 noundef 1) #8
  %148 = icmp eq i32 %147, 1
  br i1 %148, label %151, label %149

149:                                              ; preds = %138
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mxl5007t_soft_reset, i32 noundef 497) #9
  br label %151

151:                                              ; preds = %149, %138
  %152 = phi i32 [ -121, %149 ], [ 0, %138 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #8
  %153 = load ptr, ptr %133, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %155

155:                                              ; preds = %151
  %156 = call i32 %153(ptr noundef %0, i32 noundef 0) #8
  br label %157

157:                                              ; preds = %155, %151
  br i1 %148, label %160, label %158

158:                                              ; preds = %157
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_attach, i32 noundef %152, i32 noundef 881) #9
  br label %195

160:                                              ; preds = %157
  %161 = load ptr, ptr %133, align 4
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163

163:                                              ; preds = %160
  %164 = call i32 %161(ptr noundef %0, i32 noundef 1) #8
  br label %165

165:                                              ; preds = %163, %160
  %166 = getelementptr inbounds %struct.mxl5007t_state, ptr %132, i32 0, i32 3
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.mxl5007t_config, ptr %167, i32 0, i32 4
  %169 = load i8, ptr %168, align 4
  %170 = lshr i8 %169, 1
  %171 = and i8 %170, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i8 4, ptr %5, align 2
  %172 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %171, ptr %172, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #8
  %173 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 2, ptr %173, align 4, !annotation !8
  %174 = load i8, ptr %140, align 4
  %175 = zext i8 %174 to i16
  store i16 %175, ptr %6, align 4
  %176 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %176, align 2
  %177 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %177, align 4
  %178 = load ptr, ptr %145, align 4
  %179 = call i32 @i2c_transfer(ptr noundef %178, ptr noundef nonnull %6, i32 noundef 1) #8
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %183, label %181

181:                                              ; preds = %165
  %182 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mxl5007t_write_reg, i32 noundef 448) #9
  br label %183

183:                                              ; preds = %181, %165
  %184 = phi i32 [ -121, %181 ], [ 0, %165 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  %185 = load ptr, ptr %133, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = call i32 %185(ptr noundef %0, i32 noundef 0) #8
  br label %189

189:                                              ; preds = %187, %183
  br i1 %180, label %192, label %190

190:                                              ; preds = %189
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_attach, i32 noundef %184, i32 noundef 893) #9
  br label %195

192:                                              ; preds = %189
  %193 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %132, ptr %193, align 4
  call void @mutex_unlock(ptr noundef nonnull @mxl5007t_list_mutex) #8
  %194 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %194, ptr noundef nonnull align 4 dereferenceable(220) @mxl5007t_tuner_ops, i32 220, i1 false)
  br label %196

195:                                              ; preds = %190, %158, %129, %65
  call void @mutex_unlock(ptr noundef nonnull @mxl5007t_list_mutex) #8
  call void @mxl5007t_release(ptr noundef %0)
  br label %196

196:                                              ; preds = %195, %192
  %197 = phi ptr [ null, %195 ], [ %0, %192 ]
  ret ptr %197
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
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxl5007t_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @mxl5007t_list_mutex) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 1
  %7 = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 1, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %29

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 1, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.mxl5007t_state, ptr %3, i32 0, i32 1, i32 1
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
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %13, i32 noundef %21, i32 noundef %23) #9
  %25 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %26, ptr %28, align 4
  store volatile ptr %27, ptr %26, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %25, align 4
  tail call void @kfree(ptr noundef nonnull %3) #8
  br label %29

29:                                               ; preds = %20, %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @mxl5007t_list_mutex) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl5007t_init(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef 1) #8
  br label %11

11:                                               ; preds = %9, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 1, ptr %2, align 2
  %12 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 1, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %13 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %13, align 4, !annotation !8
  %14 = getelementptr inbounds %struct.mxl5007t_state, ptr %5, i32 0, i32 1
  %15 = load i8, ptr %14, align 4
  %16 = zext i8 %15 to i16
  store i16 %16, ptr %3, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %18, align 4
  %19 = getelementptr inbounds %struct.mxl5007t_state, ptr %5, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = call i32 @i2c_transfer(ptr noundef %20, ptr noundef nonnull %3, i32 noundef 1) #8
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %27

24:                                               ; preds = %11
  %25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mxl5007t_write_reg, i32 noundef 448) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_init, i32 noundef -121, i32 noundef 667) #9
  br label %27

27:                                               ; preds = %24, %23
  %28 = phi i32 [ -121, %24 ], [ 0, %23 ]
  %29 = load ptr, ptr %6, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %27
  %32 = call i32 %29(ptr noundef %0, i32 noundef 0) #8
  br label %33

33:                                               ; preds = %31, %27
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl5007t_sleep(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef 1) #8
  br label %13

13:                                               ; preds = %11, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 1, ptr %4, align 2
  %14 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 0, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  %15 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = getelementptr inbounds %struct.mxl5007t_state, ptr %7, i32 0, i32 1
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %20, align 4
  %21 = getelementptr inbounds %struct.mxl5007t_state, ptr %7, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %5, i32 noundef 1) #8
  %24 = icmp eq i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  br label %29

26:                                               ; preds = %13
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mxl5007t_write_reg, i32 noundef 448) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_sleep, i32 noundef -121, i32 noundef 685) #9
  br label %29

29:                                               ; preds = %26, %25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 15, ptr %2, align 2
  %30 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 0, ptr %30, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  %31 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %31, align 4, !annotation !8
  %32 = load i8, ptr %16, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %3, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %35, align 4
  %36 = load ptr, ptr %21, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %3, i32 noundef 1) #8
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br label %43

40:                                               ; preds = %29
  %41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mxl5007t_write_reg, i32 noundef 448) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_sleep, i32 noundef -121, i32 noundef 687) #9
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ -121, %40 ], [ 0, %39 ]
  %45 = load ptr, ptr %8, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = call i32 %45(ptr noundef %0, i32 noundef 0) #8
  br label %49

49:                                               ; preds = %47, %43
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl5007t_set_params(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = load i32, ptr %6, align 4
  switch i32 %8, label %18 [
    i32 11, label %20
    i32 2, label %12
    i32 3, label %13
    i32 16, label %13
  ]

12:                                               ; preds = %1
  br label %20

13:                                               ; preds = %1, %1
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %15 = load i32, ptr %14, align 4
  switch i32 %15, label %834 [
    i32 6000000, label %20
    i32 7000000, label %16
    i32 8000000, label %17
  ]

16:                                               ; preds = %13
  br label %20

17:                                               ; preds = %13
  br label %20

18:                                               ; preds = %1
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.mxl5007t_set_params, i32 noundef 627) #9
  br label %834

20:                                               ; preds = %17, %16, %13, %12, %1
  %21 = phi i1 [ false, %13 ], [ false, %1 ], [ false, %16 ], [ false, %17 ], [ true, %12 ]
  %22 = phi i32 [ 1, %13 ], [ 2, %1 ], [ 1, %16 ], [ 1, %17 ], [ 16, %12 ]
  %23 = phi i8 [ 21, %13 ], [ 21, %1 ], [ 42, %16 ], [ 63, %17 ], [ 21, %12 ]
  %24 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = tail call i32 %25(ptr noundef %0, i32 noundef 1) #8
  br label %29

29:                                               ; preds = %27, %20
  %30 = getelementptr inbounds %struct.mxl5007t_state, ptr %10, i32 0, i32 2
  tail call void @mutex_lock(ptr noundef %30) #8
  %31 = getelementptr inbounds %struct.mxl5007t_state, ptr %10, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.mxl5007t_state, ptr %10, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(34) %33, ptr noundef nonnull align 1 dereferenceable(34) @init_tab, i32 34, i1 false) #8
  %34 = getelementptr inbounds %struct.mxl5007t_state, ptr %10, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(40) %34, ptr noundef nonnull align 1 dereferenceable(40) @init_tab_cable, i32 40, i1 false) #8
  %35 = load i32, ptr %32, align 4
  switch i32 %22, label %110 [
    i32 2, label %36
    i32 1, label %52
    i32 16, label %68
  ]

36:                                               ; preds = %48, %29
  %37 = phi i8 [ %51, %48 ], [ 2, %29 ]
  %38 = phi i32 [ %49, %48 ], [ 0, %29 ]
  switch i8 %37, label %48 [
    i8 0, label %39
    i8 6, label %43
  ]

39:                                               ; preds = %36
  %40 = getelementptr %struct.reg_pair_t, ptr %33, i32 %38, i32 1
  %41 = load i8, ptr %40, align 1
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %112, label %48

43:                                               ; preds = %36
  %44 = getelementptr %struct.reg_pair_t, ptr %33, i32 %38, i32 1
  %45 = load i8, ptr %44, align 1
  %46 = and i8 %45, -32
  %47 = or i8 %46, 18
  store i8 %47, ptr %44, align 1
  br label %48

48:                                               ; preds = %43, %39, %36
  %49 = add i32 %38, 1
  %50 = getelementptr %struct.reg_pair_t, ptr %33, i32 %49
  %51 = load i8, ptr %50, align 1
  br label %36

52:                                               ; preds = %64, %29
  %53 = phi i8 [ %67, %64 ], [ 2, %29 ]
  %54 = phi i32 [ %65, %64 ], [ 0, %29 ]
  switch i8 %53, label %64 [
    i8 0, label %55
    i8 6, label %59
  ]

55:                                               ; preds = %52
  %56 = getelementptr %struct.reg_pair_t, ptr %33, i32 %54, i32 1
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %112, label %64

59:                                               ; preds = %52
  %60 = getelementptr %struct.reg_pair_t, ptr %33, i32 %54, i32 1
  %61 = load i8, ptr %60, align 1
  %62 = and i8 %61, -32
  %63 = or i8 %62, 17
  store i8 %63, ptr %60, align 1
  br label %64

64:                                               ; preds = %59, %55, %52
  %65 = add i32 %54, 1
  %66 = getelementptr %struct.reg_pair_t, ptr %33, i32 %65
  %67 = load i8, ptr %66, align 1
  br label %52

68:                                               ; preds = %77, %29
  %69 = phi i8 [ %80, %77 ], [ 2, %29 ]
  %70 = phi i32 [ %78, %77 ], [ 0, %29 ]
  switch i8 %69, label %77 [
    i8 0, label %71
    i8 9, label %75
  ]

71:                                               ; preds = %68
  %72 = getelementptr %struct.reg_pair_t, ptr %34, i32 %70, i32 1
  %73 = load i8, ptr %72, align 1
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %81, label %77

75:                                               ; preds = %68
  %76 = getelementptr %struct.reg_pair_t, ptr %34, i32 %70, i32 1
  store i8 -63, ptr %76, align 1
  br label %77

77:                                               ; preds = %75, %71, %68
  %78 = add i32 %70, 1
  %79 = getelementptr %struct.reg_pair_t, ptr %34, i32 %78
  %80 = load i8, ptr %79, align 1
  br label %68

81:                                               ; preds = %71
  %82 = trunc i32 %35 to i8
  %83 = sub i8 8, %82
  br label %84

84:                                               ; preds = %93, %81
  %85 = phi i8 [ 2, %81 ], [ %96, %93 ]
  %86 = phi i32 [ 0, %81 ], [ %94, %93 ]
  switch i8 %85, label %93 [
    i8 0, label %87
    i8 10, label %91
  ]

87:                                               ; preds = %84
  %88 = getelementptr %struct.reg_pair_t, ptr %34, i32 %86, i32 1
  %89 = load i8, ptr %88, align 1
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %97, label %93

91:                                               ; preds = %84
  %92 = getelementptr %struct.reg_pair_t, ptr %34, i32 %86, i32 1
  store i8 %83, ptr %92, align 1
  br label %93

93:                                               ; preds = %91, %87, %84
  %94 = add i32 %86, 1
  %95 = getelementptr %struct.reg_pair_t, ptr %34, i32 %94
  %96 = load i8, ptr %95, align 1
  br label %84

97:                                               ; preds = %106, %87
  %98 = phi i8 [ %109, %106 ], [ 2, %87 ]
  %99 = phi i32 [ %107, %106 ], [ 0, %87 ]
  switch i8 %98, label %106 [
    i8 0, label %100
    i8 11, label %104
  ]

100:                                              ; preds = %97
  %101 = getelementptr %struct.reg_pair_t, ptr %34, i32 %99, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %112, label %106

104:                                              ; preds = %97
  %105 = getelementptr %struct.reg_pair_t, ptr %34, i32 %99, i32 1
  store i8 23, ptr %105, align 1
  br label %106

106:                                              ; preds = %104, %100, %97
  %107 = add i32 %99, 1
  %108 = getelementptr %struct.reg_pair_t, ptr %34, i32 %107
  %109 = load i8, ptr %108, align 1
  br label %97

110:                                              ; preds = %29
  %111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_set_mode_bits, i32 noundef -22, i32 noundef 220) #9
  br label %112

112:                                              ; preds = %110, %100, %55, %39
  %113 = getelementptr inbounds %struct.mxl5007t_config, ptr %32, i32 0, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.mxl5007t_config, ptr %32, i32 0, i32 4
  %116 = load i8, ptr %115, align 4
  %117 = icmp ult i32 %114, 11
  br i1 %117, label %120, label %118

118:                                              ; preds = %112
  %119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_set_if_freq_bits, i32 noundef -22, i32 noundef 265) #9
  br label %158

120:                                              ; preds = %112
  %121 = getelementptr inbounds [11 x i8], ptr @switch.table.mxl5007t_set_params, i32 0, i32 %114
  %122 = load i8, ptr %121, align 1
  br label %123

123:                                              ; preds = %136, %120
  %124 = phi i32 [ 0, %120 ], [ %137, %136 ]
  %125 = getelementptr %struct.reg_pair_t, ptr %33, i32 %124
  %126 = load i8, ptr %125, align 1
  switch i8 %126, label %136 [
    i8 0, label %127
    i8 2, label %131
  ]

127:                                              ; preds = %123
  %128 = getelementptr %struct.reg_pair_t, ptr %33, i32 %124, i32 1
  %129 = load i8, ptr %128, align 1
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %138, label %136

131:                                              ; preds = %123
  %132 = getelementptr %struct.reg_pair_t, ptr %33, i32 %124, i32 1
  %133 = load i8, ptr %132, align 1
  %134 = and i8 %133, -16
  %135 = or i8 %134, %122
  store i8 %135, ptr %132, align 1
  br label %136

136:                                              ; preds = %131, %127, %123
  %137 = add i32 %124, 1
  br label %123

138:                                              ; preds = %127
  %139 = shl i8 %116, 4
  %140 = and i8 %139, 16
  br label %141

141:                                              ; preds = %154, %138
  %142 = phi i32 [ 0, %138 ], [ %155, %154 ]
  %143 = getelementptr %struct.reg_pair_t, ptr %33, i32 %142
  %144 = load i8, ptr %143, align 1
  switch i8 %144, label %154 [
    i8 0, label %145
    i8 2, label %149
  ]

145:                                              ; preds = %141
  %146 = getelementptr %struct.reg_pair_t, ptr %33, i32 %142, i32 1
  %147 = load i8, ptr %146, align 1
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %156, label %154

149:                                              ; preds = %141
  %150 = getelementptr %struct.reg_pair_t, ptr %33, i32 %142, i32 1
  %151 = load i8, ptr %150, align 1
  %152 = and i8 %151, -17
  %153 = or i8 %152, %140
  store i8 %153, ptr %150, align 1
  br label %154

154:                                              ; preds = %149, %145, %141
  %155 = add i32 %142, 1
  br label %141

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.mxl5007t_state, ptr %10, i32 0, i32 8
  store i32 %114, ptr %157, align 4
  br label %158

158:                                              ; preds = %156, %118
  %159 = getelementptr inbounds %struct.mxl5007t_config, ptr %32, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  switch i32 %160, label %579 [
    i32 0, label %161
    i32 1, label %189
    i32 2, label %219
    i32 3, label %249
    i32 4, label %279
    i32 5, label %309
    i32 6, label %339
    i32 7, label %369
    i32 8, label %399
    i32 9, label %429
    i32 10, label %459
    i32 11, label %489
    i32 12, label %519
    i32 13, label %549
  ]

161:                                              ; preds = %173, %158
  %162 = phi i32 [ %174, %173 ], [ %160, %158 ]
  %163 = getelementptr %struct.reg_pair_t, ptr %33, i32 %162
  %164 = load i8, ptr %163, align 1
  switch i8 %164, label %173 [
    i8 0, label %165
    i8 3, label %169
  ]

165:                                              ; preds = %161
  %166 = getelementptr %struct.reg_pair_t, ptr %33, i32 %162, i32 1
  %167 = load i8, ptr %166, align 1
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %175, label %173

169:                                              ; preds = %161
  %170 = getelementptr %struct.reg_pair_t, ptr %33, i32 %162, i32 1
  %171 = load i8, ptr %170, align 1
  %172 = and i8 %171, 15
  store i8 %172, ptr %170, align 1
  br label %173

173:                                              ; preds = %169, %165, %161
  %174 = add i32 %162, 1
  br label %161

175:                                              ; preds = %187, %165
  %176 = phi i32 [ %188, %187 ], [ 0, %165 ]
  %177 = getelementptr %struct.reg_pair_t, ptr %33, i32 %176
  %178 = load i8, ptr %177, align 1
  switch i8 %178, label %187 [
    i8 0, label %179
    i8 5, label %183
  ]

179:                                              ; preds = %175
  %180 = getelementptr %struct.reg_pair_t, ptr %33, i32 %176, i32 1
  %181 = load i8, ptr %180, align 1
  %182 = icmp eq i8 %181, 0
  br i1 %182, label %581, label %187

183:                                              ; preds = %175
  %184 = getelementptr %struct.reg_pair_t, ptr %33, i32 %176, i32 1
  %185 = load i8, ptr %184, align 1
  %186 = and i8 %185, -16
  store i8 %186, ptr %184, align 1
  br label %187

187:                                              ; preds = %183, %179, %175
  %188 = add i32 %176, 1
  br label %175

189:                                              ; preds = %202, %158
  %190 = phi i32 [ %203, %202 ], [ 0, %158 ]
  %191 = getelementptr %struct.reg_pair_t, ptr %33, i32 %190
  %192 = load i8, ptr %191, align 1
  switch i8 %192, label %202 [
    i8 0, label %193
    i8 3, label %197
  ]

193:                                              ; preds = %189
  %194 = getelementptr %struct.reg_pair_t, ptr %33, i32 %190, i32 1
  %195 = load i8, ptr %194, align 1
  %196 = icmp eq i8 %195, 0
  br i1 %196, label %204, label %202

197:                                              ; preds = %189
  %198 = getelementptr %struct.reg_pair_t, ptr %33, i32 %190, i32 1
  %199 = load i8, ptr %198, align 1
  %200 = and i8 %199, 15
  %201 = or i8 %200, 16
  store i8 %201, ptr %198, align 1
  br label %202

202:                                              ; preds = %197, %193, %189
  %203 = add i32 %190, 1
  br label %189

204:                                              ; preds = %217, %193
  %205 = phi i32 [ %218, %217 ], [ 0, %193 ]
  %206 = getelementptr %struct.reg_pair_t, ptr %33, i32 %205
  %207 = load i8, ptr %206, align 1
  switch i8 %207, label %217 [
    i8 0, label %208
    i8 5, label %212
  ]

208:                                              ; preds = %204
  %209 = getelementptr %struct.reg_pair_t, ptr %33, i32 %205, i32 1
  %210 = load i8, ptr %209, align 1
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %581, label %217

212:                                              ; preds = %204
  %213 = getelementptr %struct.reg_pair_t, ptr %33, i32 %205, i32 1
  %214 = load i8, ptr %213, align 1
  %215 = and i8 %214, -16
  %216 = or i8 %215, 1
  store i8 %216, ptr %213, align 1
  br label %217

217:                                              ; preds = %212, %208, %204
  %218 = add i32 %205, 1
  br label %204

219:                                              ; preds = %232, %158
  %220 = phi i32 [ %233, %232 ], [ 0, %158 ]
  %221 = getelementptr %struct.reg_pair_t, ptr %33, i32 %220
  %222 = load i8, ptr %221, align 1
  switch i8 %222, label %232 [
    i8 0, label %223
    i8 3, label %227
  ]

223:                                              ; preds = %219
  %224 = getelementptr %struct.reg_pair_t, ptr %33, i32 %220, i32 1
  %225 = load i8, ptr %224, align 1
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %234, label %232

227:                                              ; preds = %219
  %228 = getelementptr %struct.reg_pair_t, ptr %33, i32 %220, i32 1
  %229 = load i8, ptr %228, align 1
  %230 = and i8 %229, 15
  %231 = or i8 %230, 32
  store i8 %231, ptr %228, align 1
  br label %232

232:                                              ; preds = %227, %223, %219
  %233 = add i32 %220, 1
  br label %219

234:                                              ; preds = %247, %223
  %235 = phi i32 [ %248, %247 ], [ 0, %223 ]
  %236 = getelementptr %struct.reg_pair_t, ptr %33, i32 %235
  %237 = load i8, ptr %236, align 1
  switch i8 %237, label %247 [
    i8 0, label %238
    i8 5, label %242
  ]

238:                                              ; preds = %234
  %239 = getelementptr %struct.reg_pair_t, ptr %33, i32 %235, i32 1
  %240 = load i8, ptr %239, align 1
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %581, label %247

242:                                              ; preds = %234
  %243 = getelementptr %struct.reg_pair_t, ptr %33, i32 %235, i32 1
  %244 = load i8, ptr %243, align 1
  %245 = and i8 %244, -16
  %246 = or i8 %245, 2
  store i8 %246, ptr %243, align 1
  br label %247

247:                                              ; preds = %242, %238, %234
  %248 = add i32 %235, 1
  br label %234

249:                                              ; preds = %262, %158
  %250 = phi i32 [ %263, %262 ], [ 0, %158 ]
  %251 = getelementptr %struct.reg_pair_t, ptr %33, i32 %250
  %252 = load i8, ptr %251, align 1
  switch i8 %252, label %262 [
    i8 0, label %253
    i8 3, label %257
  ]

253:                                              ; preds = %249
  %254 = getelementptr %struct.reg_pair_t, ptr %33, i32 %250, i32 1
  %255 = load i8, ptr %254, align 1
  %256 = icmp eq i8 %255, 0
  br i1 %256, label %264, label %262

257:                                              ; preds = %249
  %258 = getelementptr %struct.reg_pair_t, ptr %33, i32 %250, i32 1
  %259 = load i8, ptr %258, align 1
  %260 = and i8 %259, 15
  %261 = or i8 %260, 48
  store i8 %261, ptr %258, align 1
  br label %262

262:                                              ; preds = %257, %253, %249
  %263 = add i32 %250, 1
  br label %249

264:                                              ; preds = %277, %253
  %265 = phi i32 [ %278, %277 ], [ 0, %253 ]
  %266 = getelementptr %struct.reg_pair_t, ptr %33, i32 %265
  %267 = load i8, ptr %266, align 1
  switch i8 %267, label %277 [
    i8 0, label %268
    i8 5, label %272
  ]

268:                                              ; preds = %264
  %269 = getelementptr %struct.reg_pair_t, ptr %33, i32 %265, i32 1
  %270 = load i8, ptr %269, align 1
  %271 = icmp eq i8 %270, 0
  br i1 %271, label %581, label %277

272:                                              ; preds = %264
  %273 = getelementptr %struct.reg_pair_t, ptr %33, i32 %265, i32 1
  %274 = load i8, ptr %273, align 1
  %275 = and i8 %274, -16
  %276 = or i8 %275, 3
  store i8 %276, ptr %273, align 1
  br label %277

277:                                              ; preds = %272, %268, %264
  %278 = add i32 %265, 1
  br label %264

279:                                              ; preds = %292, %158
  %280 = phi i32 [ %293, %292 ], [ 0, %158 ]
  %281 = getelementptr %struct.reg_pair_t, ptr %33, i32 %280
  %282 = load i8, ptr %281, align 1
  switch i8 %282, label %292 [
    i8 0, label %283
    i8 3, label %287
  ]

283:                                              ; preds = %279
  %284 = getelementptr %struct.reg_pair_t, ptr %33, i32 %280, i32 1
  %285 = load i8, ptr %284, align 1
  %286 = icmp eq i8 %285, 0
  br i1 %286, label %294, label %292

287:                                              ; preds = %279
  %288 = getelementptr %struct.reg_pair_t, ptr %33, i32 %280, i32 1
  %289 = load i8, ptr %288, align 1
  %290 = and i8 %289, 15
  %291 = or i8 %290, 64
  store i8 %291, ptr %288, align 1
  br label %292

292:                                              ; preds = %287, %283, %279
  %293 = add i32 %280, 1
  br label %279

294:                                              ; preds = %307, %283
  %295 = phi i32 [ %308, %307 ], [ 0, %283 ]
  %296 = getelementptr %struct.reg_pair_t, ptr %33, i32 %295
  %297 = load i8, ptr %296, align 1
  switch i8 %297, label %307 [
    i8 0, label %298
    i8 5, label %302
  ]

298:                                              ; preds = %294
  %299 = getelementptr %struct.reg_pair_t, ptr %33, i32 %295, i32 1
  %300 = load i8, ptr %299, align 1
  %301 = icmp eq i8 %300, 0
  br i1 %301, label %581, label %307

302:                                              ; preds = %294
  %303 = getelementptr %struct.reg_pair_t, ptr %33, i32 %295, i32 1
  %304 = load i8, ptr %303, align 1
  %305 = and i8 %304, -16
  %306 = or i8 %305, 4
  store i8 %306, ptr %303, align 1
  br label %307

307:                                              ; preds = %302, %298, %294
  %308 = add i32 %295, 1
  br label %294

309:                                              ; preds = %322, %158
  %310 = phi i32 [ %323, %322 ], [ 0, %158 ]
  %311 = getelementptr %struct.reg_pair_t, ptr %33, i32 %310
  %312 = load i8, ptr %311, align 1
  switch i8 %312, label %322 [
    i8 0, label %313
    i8 3, label %317
  ]

313:                                              ; preds = %309
  %314 = getelementptr %struct.reg_pair_t, ptr %33, i32 %310, i32 1
  %315 = load i8, ptr %314, align 1
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %324, label %322

317:                                              ; preds = %309
  %318 = getelementptr %struct.reg_pair_t, ptr %33, i32 %310, i32 1
  %319 = load i8, ptr %318, align 1
  %320 = and i8 %319, 15
  %321 = or i8 %320, 80
  store i8 %321, ptr %318, align 1
  br label %322

322:                                              ; preds = %317, %313, %309
  %323 = add i32 %310, 1
  br label %309

324:                                              ; preds = %337, %313
  %325 = phi i32 [ %338, %337 ], [ 0, %313 ]
  %326 = getelementptr %struct.reg_pair_t, ptr %33, i32 %325
  %327 = load i8, ptr %326, align 1
  switch i8 %327, label %337 [
    i8 0, label %328
    i8 5, label %332
  ]

328:                                              ; preds = %324
  %329 = getelementptr %struct.reg_pair_t, ptr %33, i32 %325, i32 1
  %330 = load i8, ptr %329, align 1
  %331 = icmp eq i8 %330, 0
  br i1 %331, label %581, label %337

332:                                              ; preds = %324
  %333 = getelementptr %struct.reg_pair_t, ptr %33, i32 %325, i32 1
  %334 = load i8, ptr %333, align 1
  %335 = and i8 %334, -16
  %336 = or i8 %335, 5
  store i8 %336, ptr %333, align 1
  br label %337

337:                                              ; preds = %332, %328, %324
  %338 = add i32 %325, 1
  br label %324

339:                                              ; preds = %352, %158
  %340 = phi i32 [ %353, %352 ], [ 0, %158 ]
  %341 = getelementptr %struct.reg_pair_t, ptr %33, i32 %340
  %342 = load i8, ptr %341, align 1
  switch i8 %342, label %352 [
    i8 0, label %343
    i8 3, label %347
  ]

343:                                              ; preds = %339
  %344 = getelementptr %struct.reg_pair_t, ptr %33, i32 %340, i32 1
  %345 = load i8, ptr %344, align 1
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %354, label %352

347:                                              ; preds = %339
  %348 = getelementptr %struct.reg_pair_t, ptr %33, i32 %340, i32 1
  %349 = load i8, ptr %348, align 1
  %350 = and i8 %349, 15
  %351 = or i8 %350, 96
  store i8 %351, ptr %348, align 1
  br label %352

352:                                              ; preds = %347, %343, %339
  %353 = add i32 %340, 1
  br label %339

354:                                              ; preds = %367, %343
  %355 = phi i32 [ %368, %367 ], [ 0, %343 ]
  %356 = getelementptr %struct.reg_pair_t, ptr %33, i32 %355
  %357 = load i8, ptr %356, align 1
  switch i8 %357, label %367 [
    i8 0, label %358
    i8 5, label %362
  ]

358:                                              ; preds = %354
  %359 = getelementptr %struct.reg_pair_t, ptr %33, i32 %355, i32 1
  %360 = load i8, ptr %359, align 1
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %581, label %367

362:                                              ; preds = %354
  %363 = getelementptr %struct.reg_pair_t, ptr %33, i32 %355, i32 1
  %364 = load i8, ptr %363, align 1
  %365 = and i8 %364, -16
  %366 = or i8 %365, 6
  store i8 %366, ptr %363, align 1
  br label %367

367:                                              ; preds = %362, %358, %354
  %368 = add i32 %355, 1
  br label %354

369:                                              ; preds = %382, %158
  %370 = phi i32 [ %383, %382 ], [ 0, %158 ]
  %371 = getelementptr %struct.reg_pair_t, ptr %33, i32 %370
  %372 = load i8, ptr %371, align 1
  switch i8 %372, label %382 [
    i8 0, label %373
    i8 3, label %377
  ]

373:                                              ; preds = %369
  %374 = getelementptr %struct.reg_pair_t, ptr %33, i32 %370, i32 1
  %375 = load i8, ptr %374, align 1
  %376 = icmp eq i8 %375, 0
  br i1 %376, label %384, label %382

377:                                              ; preds = %369
  %378 = getelementptr %struct.reg_pair_t, ptr %33, i32 %370, i32 1
  %379 = load i8, ptr %378, align 1
  %380 = and i8 %379, 15
  %381 = or i8 %380, 112
  store i8 %381, ptr %378, align 1
  br label %382

382:                                              ; preds = %377, %373, %369
  %383 = add i32 %370, 1
  br label %369

384:                                              ; preds = %397, %373
  %385 = phi i32 [ %398, %397 ], [ 0, %373 ]
  %386 = getelementptr %struct.reg_pair_t, ptr %33, i32 %385
  %387 = load i8, ptr %386, align 1
  switch i8 %387, label %397 [
    i8 0, label %388
    i8 5, label %392
  ]

388:                                              ; preds = %384
  %389 = getelementptr %struct.reg_pair_t, ptr %33, i32 %385, i32 1
  %390 = load i8, ptr %389, align 1
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %581, label %397

392:                                              ; preds = %384
  %393 = getelementptr %struct.reg_pair_t, ptr %33, i32 %385, i32 1
  %394 = load i8, ptr %393, align 1
  %395 = and i8 %394, -16
  %396 = or i8 %395, 7
  store i8 %396, ptr %393, align 1
  br label %397

397:                                              ; preds = %392, %388, %384
  %398 = add i32 %385, 1
  br label %384

399:                                              ; preds = %412, %158
  %400 = phi i32 [ %413, %412 ], [ 0, %158 ]
  %401 = getelementptr %struct.reg_pair_t, ptr %33, i32 %400
  %402 = load i8, ptr %401, align 1
  switch i8 %402, label %412 [
    i8 0, label %403
    i8 3, label %407
  ]

403:                                              ; preds = %399
  %404 = getelementptr %struct.reg_pair_t, ptr %33, i32 %400, i32 1
  %405 = load i8, ptr %404, align 1
  %406 = icmp eq i8 %405, 0
  br i1 %406, label %414, label %412

407:                                              ; preds = %399
  %408 = getelementptr %struct.reg_pair_t, ptr %33, i32 %400, i32 1
  %409 = load i8, ptr %408, align 1
  %410 = and i8 %409, 15
  %411 = or i8 %410, -128
  store i8 %411, ptr %408, align 1
  br label %412

412:                                              ; preds = %407, %403, %399
  %413 = add i32 %400, 1
  br label %399

414:                                              ; preds = %427, %403
  %415 = phi i32 [ %428, %427 ], [ 0, %403 ]
  %416 = getelementptr %struct.reg_pair_t, ptr %33, i32 %415
  %417 = load i8, ptr %416, align 1
  switch i8 %417, label %427 [
    i8 0, label %418
    i8 5, label %422
  ]

418:                                              ; preds = %414
  %419 = getelementptr %struct.reg_pair_t, ptr %33, i32 %415, i32 1
  %420 = load i8, ptr %419, align 1
  %421 = icmp eq i8 %420, 0
  br i1 %421, label %581, label %427

422:                                              ; preds = %414
  %423 = getelementptr %struct.reg_pair_t, ptr %33, i32 %415, i32 1
  %424 = load i8, ptr %423, align 1
  %425 = and i8 %424, -16
  %426 = or i8 %425, 8
  store i8 %426, ptr %423, align 1
  br label %427

427:                                              ; preds = %422, %418, %414
  %428 = add i32 %415, 1
  br label %414

429:                                              ; preds = %442, %158
  %430 = phi i32 [ %443, %442 ], [ 0, %158 ]
  %431 = getelementptr %struct.reg_pair_t, ptr %33, i32 %430
  %432 = load i8, ptr %431, align 1
  switch i8 %432, label %442 [
    i8 0, label %433
    i8 3, label %437
  ]

433:                                              ; preds = %429
  %434 = getelementptr %struct.reg_pair_t, ptr %33, i32 %430, i32 1
  %435 = load i8, ptr %434, align 1
  %436 = icmp eq i8 %435, 0
  br i1 %436, label %444, label %442

437:                                              ; preds = %429
  %438 = getelementptr %struct.reg_pair_t, ptr %33, i32 %430, i32 1
  %439 = load i8, ptr %438, align 1
  %440 = and i8 %439, 15
  %441 = or i8 %440, -112
  store i8 %441, ptr %438, align 1
  br label %442

442:                                              ; preds = %437, %433, %429
  %443 = add i32 %430, 1
  br label %429

444:                                              ; preds = %457, %433
  %445 = phi i32 [ %458, %457 ], [ 0, %433 ]
  %446 = getelementptr %struct.reg_pair_t, ptr %33, i32 %445
  %447 = load i8, ptr %446, align 1
  switch i8 %447, label %457 [
    i8 0, label %448
    i8 5, label %452
  ]

448:                                              ; preds = %444
  %449 = getelementptr %struct.reg_pair_t, ptr %33, i32 %445, i32 1
  %450 = load i8, ptr %449, align 1
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %581, label %457

452:                                              ; preds = %444
  %453 = getelementptr %struct.reg_pair_t, ptr %33, i32 %445, i32 1
  %454 = load i8, ptr %453, align 1
  %455 = and i8 %454, -16
  %456 = or i8 %455, 9
  store i8 %456, ptr %453, align 1
  br label %457

457:                                              ; preds = %452, %448, %444
  %458 = add i32 %445, 1
  br label %444

459:                                              ; preds = %472, %158
  %460 = phi i32 [ %473, %472 ], [ 0, %158 ]
  %461 = getelementptr %struct.reg_pair_t, ptr %33, i32 %460
  %462 = load i8, ptr %461, align 1
  switch i8 %462, label %472 [
    i8 0, label %463
    i8 3, label %467
  ]

463:                                              ; preds = %459
  %464 = getelementptr %struct.reg_pair_t, ptr %33, i32 %460, i32 1
  %465 = load i8, ptr %464, align 1
  %466 = icmp eq i8 %465, 0
  br i1 %466, label %474, label %472

467:                                              ; preds = %459
  %468 = getelementptr %struct.reg_pair_t, ptr %33, i32 %460, i32 1
  %469 = load i8, ptr %468, align 1
  %470 = and i8 %469, 15
  %471 = or i8 %470, -96
  store i8 %471, ptr %468, align 1
  br label %472

472:                                              ; preds = %467, %463, %459
  %473 = add i32 %460, 1
  br label %459

474:                                              ; preds = %487, %463
  %475 = phi i32 [ %488, %487 ], [ 0, %463 ]
  %476 = getelementptr %struct.reg_pair_t, ptr %33, i32 %475
  %477 = load i8, ptr %476, align 1
  switch i8 %477, label %487 [
    i8 0, label %478
    i8 5, label %482
  ]

478:                                              ; preds = %474
  %479 = getelementptr %struct.reg_pair_t, ptr %33, i32 %475, i32 1
  %480 = load i8, ptr %479, align 1
  %481 = icmp eq i8 %480, 0
  br i1 %481, label %581, label %487

482:                                              ; preds = %474
  %483 = getelementptr %struct.reg_pair_t, ptr %33, i32 %475, i32 1
  %484 = load i8, ptr %483, align 1
  %485 = and i8 %484, -16
  %486 = or i8 %485, 10
  store i8 %486, ptr %483, align 1
  br label %487

487:                                              ; preds = %482, %478, %474
  %488 = add i32 %475, 1
  br label %474

489:                                              ; preds = %502, %158
  %490 = phi i32 [ %503, %502 ], [ 0, %158 ]
  %491 = getelementptr %struct.reg_pair_t, ptr %33, i32 %490
  %492 = load i8, ptr %491, align 1
  switch i8 %492, label %502 [
    i8 0, label %493
    i8 3, label %497
  ]

493:                                              ; preds = %489
  %494 = getelementptr %struct.reg_pair_t, ptr %33, i32 %490, i32 1
  %495 = load i8, ptr %494, align 1
  %496 = icmp eq i8 %495, 0
  br i1 %496, label %504, label %502

497:                                              ; preds = %489
  %498 = getelementptr %struct.reg_pair_t, ptr %33, i32 %490, i32 1
  %499 = load i8, ptr %498, align 1
  %500 = and i8 %499, 15
  %501 = or i8 %500, -80
  store i8 %501, ptr %498, align 1
  br label %502

502:                                              ; preds = %497, %493, %489
  %503 = add i32 %490, 1
  br label %489

504:                                              ; preds = %517, %493
  %505 = phi i32 [ %518, %517 ], [ 0, %493 ]
  %506 = getelementptr %struct.reg_pair_t, ptr %33, i32 %505
  %507 = load i8, ptr %506, align 1
  switch i8 %507, label %517 [
    i8 0, label %508
    i8 5, label %512
  ]

508:                                              ; preds = %504
  %509 = getelementptr %struct.reg_pair_t, ptr %33, i32 %505, i32 1
  %510 = load i8, ptr %509, align 1
  %511 = icmp eq i8 %510, 0
  br i1 %511, label %581, label %517

512:                                              ; preds = %504
  %513 = getelementptr %struct.reg_pair_t, ptr %33, i32 %505, i32 1
  %514 = load i8, ptr %513, align 1
  %515 = and i8 %514, -16
  %516 = or i8 %515, 11
  store i8 %516, ptr %513, align 1
  br label %517

517:                                              ; preds = %512, %508, %504
  %518 = add i32 %505, 1
  br label %504

519:                                              ; preds = %532, %158
  %520 = phi i32 [ %533, %532 ], [ 0, %158 ]
  %521 = getelementptr %struct.reg_pair_t, ptr %33, i32 %520
  %522 = load i8, ptr %521, align 1
  switch i8 %522, label %532 [
    i8 0, label %523
    i8 3, label %527
  ]

523:                                              ; preds = %519
  %524 = getelementptr %struct.reg_pair_t, ptr %33, i32 %520, i32 1
  %525 = load i8, ptr %524, align 1
  %526 = icmp eq i8 %525, 0
  br i1 %526, label %534, label %532

527:                                              ; preds = %519
  %528 = getelementptr %struct.reg_pair_t, ptr %33, i32 %520, i32 1
  %529 = load i8, ptr %528, align 1
  %530 = and i8 %529, 15
  %531 = or i8 %530, -64
  store i8 %531, ptr %528, align 1
  br label %532

532:                                              ; preds = %527, %523, %519
  %533 = add i32 %520, 1
  br label %519

534:                                              ; preds = %547, %523
  %535 = phi i32 [ %548, %547 ], [ 0, %523 ]
  %536 = getelementptr %struct.reg_pair_t, ptr %33, i32 %535
  %537 = load i8, ptr %536, align 1
  switch i8 %537, label %547 [
    i8 0, label %538
    i8 5, label %542
  ]

538:                                              ; preds = %534
  %539 = getelementptr %struct.reg_pair_t, ptr %33, i32 %535, i32 1
  %540 = load i8, ptr %539, align 1
  %541 = icmp eq i8 %540, 0
  br i1 %541, label %581, label %547

542:                                              ; preds = %534
  %543 = getelementptr %struct.reg_pair_t, ptr %33, i32 %535, i32 1
  %544 = load i8, ptr %543, align 1
  %545 = and i8 %544, -16
  %546 = or i8 %545, 12
  store i8 %546, ptr %543, align 1
  br label %547

547:                                              ; preds = %542, %538, %534
  %548 = add i32 %535, 1
  br label %534

549:                                              ; preds = %562, %158
  %550 = phi i32 [ %563, %562 ], [ 0, %158 ]
  %551 = getelementptr %struct.reg_pair_t, ptr %33, i32 %550
  %552 = load i8, ptr %551, align 1
  switch i8 %552, label %562 [
    i8 0, label %553
    i8 3, label %557
  ]

553:                                              ; preds = %549
  %554 = getelementptr %struct.reg_pair_t, ptr %33, i32 %550, i32 1
  %555 = load i8, ptr %554, align 1
  %556 = icmp eq i8 %555, 0
  br i1 %556, label %564, label %562

557:                                              ; preds = %549
  %558 = getelementptr %struct.reg_pair_t, ptr %33, i32 %550, i32 1
  %559 = load i8, ptr %558, align 1
  %560 = and i8 %559, 15
  %561 = or i8 %560, -48
  store i8 %561, ptr %558, align 1
  br label %562

562:                                              ; preds = %557, %553, %549
  %563 = add i32 %550, 1
  br label %549

564:                                              ; preds = %577, %553
  %565 = phi i32 [ %578, %577 ], [ 0, %553 ]
  %566 = getelementptr %struct.reg_pair_t, ptr %33, i32 %565
  %567 = load i8, ptr %566, align 1
  switch i8 %567, label %577 [
    i8 0, label %568
    i8 5, label %572
  ]

568:                                              ; preds = %564
  %569 = getelementptr %struct.reg_pair_t, ptr %33, i32 %565, i32 1
  %570 = load i8, ptr %569, align 1
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %581, label %577

572:                                              ; preds = %564
  %573 = getelementptr %struct.reg_pair_t, ptr %33, i32 %565, i32 1
  %574 = load i8, ptr %573, align 1
  %575 = and i8 %574, -16
  %576 = or i8 %575, 13
  store i8 %576, ptr %573, align 1
  br label %577

577:                                              ; preds = %572, %568, %564
  %578 = add i32 %565, 1
  br label %564

579:                                              ; preds = %158
  %580 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_set_xtal_freq_bits, i32 noundef -22, i32 noundef 338) #9
  br label %581

581:                                              ; preds = %579, %568, %538, %508, %478, %448, %418, %388, %358, %328, %298, %268, %238, %208, %179
  %582 = load i8, ptr %115, align 4
  %583 = shl i8 %582, 1
  %584 = and i8 %583, 8
  br label %585

585:                                              ; preds = %598, %581
  %586 = phi i32 [ 0, %581 ], [ %599, %598 ]
  %587 = getelementptr %struct.reg_pair_t, ptr %33, i32 %586
  %588 = load i8, ptr %587, align 1
  switch i8 %588, label %598 [
    i8 0, label %589
    i8 3, label %593
  ]

589:                                              ; preds = %585
  %590 = getelementptr %struct.reg_pair_t, ptr %33, i32 %586, i32 1
  %591 = load i8, ptr %590, align 1
  %592 = icmp eq i8 %591, 0
  br i1 %592, label %600, label %598

593:                                              ; preds = %585
  %594 = getelementptr %struct.reg_pair_t, ptr %33, i32 %586, i32 1
  %595 = load i8, ptr %594, align 1
  %596 = and i8 %595, -9
  %597 = or i8 %596, %584
  store i8 %597, ptr %594, align 1
  br label %598

598:                                              ; preds = %593, %589, %585
  %599 = add i32 %586, 1
  br label %585

600:                                              ; preds = %589
  %601 = getelementptr inbounds %struct.mxl5007t_config, ptr %32, i32 0, i32 1
  %602 = load i32, ptr %601, align 4
  %603 = trunc i32 %602 to i8
  br label %604

604:                                              ; preds = %617, %600
  %605 = phi i32 [ 0, %600 ], [ %618, %617 ]
  %606 = getelementptr %struct.reg_pair_t, ptr %33, i32 %605
  %607 = load i8, ptr %606, align 1
  switch i8 %607, label %617 [
    i8 0, label %608
    i8 3, label %612
  ]

608:                                              ; preds = %604
  %609 = getelementptr %struct.reg_pair_t, ptr %33, i32 %605, i32 1
  %610 = load i8, ptr %609, align 1
  %611 = icmp eq i8 %610, 0
  br i1 %611, label %619, label %617

612:                                              ; preds = %604
  %613 = getelementptr %struct.reg_pair_t, ptr %33, i32 %605, i32 1
  %614 = load i8, ptr %613, align 1
  %615 = and i8 %614, -8
  %616 = or i8 %615, %603
  store i8 %616, ptr %613, align 1
  br label %617

617:                                              ; preds = %612, %608, %604
  %618 = add i32 %605, 1
  br label %604

619:                                              ; preds = %608
  br i1 %21, label %620, label %650

620:                                              ; preds = %648, %619
  %621 = phi i32 [ %649, %648 ], [ 0, %619 ]
  %622 = phi i32 [ %632, %648 ], [ 0, %619 ]
  %623 = getelementptr %struct.reg_pair_t, ptr %33, i32 %621
  %624 = load i8, ptr %623, align 1
  %625 = icmp eq i8 %624, 0
  br i1 %625, label %626, label %630

626:                                              ; preds = %620
  %627 = getelementptr %struct.reg_pair_t, ptr %33, i32 %621, i32 1
  %628 = load i8, ptr %627, align 1
  %629 = icmp eq i8 %628, 0
  br i1 %629, label %650, label %630

630:                                              ; preds = %626, %620
  br label %631

631:                                              ; preds = %642, %630
  %632 = phi i32 [ %643, %642 ], [ %622, %630 ]
  %633 = getelementptr %struct.reg_pair_t, ptr %34, i32 %632
  %634 = load i8, ptr %633, align 1
  %635 = icmp eq i8 %634, 0
  br i1 %635, label %636, label %640

636:                                              ; preds = %631
  %637 = getelementptr %struct.reg_pair_t, ptr %34, i32 %632, i32 1
  %638 = load i8, ptr %637, align 1
  %639 = icmp eq i8 %638, 0
  br i1 %639, label %648, label %640

640:                                              ; preds = %636, %631
  %641 = icmp eq i8 %624, %634
  br i1 %641, label %644, label %642

642:                                              ; preds = %640
  %643 = add i32 %632, 1
  br label %631

644:                                              ; preds = %640
  %645 = getelementptr %struct.reg_pair_t, ptr %33, i32 %621, i32 1
  %646 = load i8, ptr %645, align 1
  %647 = getelementptr %struct.reg_pair_t, ptr %34, i32 %632, i32 1
  store i8 %646, ptr %647, align 1
  br label %648

648:                                              ; preds = %644, %636
  %649 = add i32 %621, 1
  br label %620

650:                                              ; preds = %626, %619
  %651 = phi ptr [ %33, %619 ], [ %34, %626 ]
  %652 = getelementptr inbounds i8, ptr %4, i32 1
  %653 = getelementptr inbounds i8, ptr %5, i32 4
  %654 = getelementptr inbounds %struct.mxl5007t_state, ptr %10, i32 0, i32 1
  %655 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %656 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %657 = getelementptr inbounds %struct.mxl5007t_state, ptr %10, i32 0, i32 1, i32 1
  %658 = load i8, ptr %651, align 1
  %659 = icmp eq i8 %658, 0
  %660 = getelementptr %struct.reg_pair_t, ptr %651, i32 0, i32 1
  %661 = load i8, ptr %660, align 1
  %662 = icmp eq i8 %661, 0
  %663 = select i1 %659, i1 %662, i1 false
  br i1 %663, label %686, label %664

664:                                              ; preds = %673, %650
  %665 = phi i8 [ %679, %673 ], [ %661, %650 ]
  %666 = phi i8 [ %676, %673 ], [ %658, %650 ]
  %667 = phi i32 [ %674, %673 ], [ 0, %650 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 %666, ptr %4, align 2
  store i8 %665, ptr %652, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #8
  store i32 2, ptr %653, align 4, !annotation !8
  %668 = load i8, ptr %654, align 4
  %669 = zext i8 %668 to i16
  store i16 %669, ptr %5, align 4
  store i16 0, ptr %655, align 2
  store ptr %4, ptr %656, align 4
  %670 = load ptr, ptr %657, align 4
  %671 = call i32 @i2c_transfer(ptr noundef %670, ptr noundef nonnull %5, i32 noundef 1) #8
  %672 = icmp eq i32 %671, 1
  br i1 %672, label %673, label %682

673:                                              ; preds = %664
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  %674 = add i32 %667, 1
  %675 = getelementptr %struct.reg_pair_t, ptr %651, i32 %674
  %676 = load i8, ptr %675, align 1
  %677 = icmp eq i8 %676, 0
  %678 = getelementptr %struct.reg_pair_t, ptr %651, i32 %674, i32 1
  %679 = load i8, ptr %678, align 1
  %680 = icmp eq i8 %679, 0
  %681 = select i1 %677, i1 %680, i1 false
  br i1 %681, label %686, label %664

682:                                              ; preds = %664
  %683 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mxl5007t_write_reg, i32 noundef 448) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  %684 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_tuner_init, i32 noundef -121, i32 noundef 513) #9
  %685 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_set_params, i32 noundef -121, i32 noundef 637) #9
  br label %828

686:                                              ; preds = %673, %650
  %687 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %687(i32 noundef 214748000) #8
  %688 = getelementptr inbounds %struct.mxl5007t_state, ptr %10, i32 0, i32 7
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 2 dereferenceable(22) %688, ptr noundef nonnull align 1 dereferenceable(22) @reg_pair_rftune, i32 22, i1 false) #8
  br label %689

689:                                              ; preds = %701, %686
  %690 = phi i8 [ 15, %686 ], [ %704, %701 ]
  %691 = phi i32 [ 0, %686 ], [ %702, %701 ]
  switch i8 %690, label %701 [
    i8 0, label %692
    i8 12, label %696
  ]

692:                                              ; preds = %689
  %693 = getelementptr %struct.reg_pair_t, ptr %688, i32 %691, i32 1
  %694 = load i8, ptr %693, align 1
  %695 = icmp eq i8 %694, 0
  br i1 %695, label %705, label %701

696:                                              ; preds = %689
  %697 = getelementptr %struct.reg_pair_t, ptr %688, i32 %691, i32 1
  %698 = load i8, ptr %697, align 1
  %699 = and i8 %698, -64
  %700 = or i8 %699, %23
  store i8 %700, ptr %697, align 1
  br label %701

701:                                              ; preds = %696, %692, %689
  %702 = add i32 %691, 1
  %703 = getelementptr %struct.reg_pair_t, ptr %688, i32 %702
  %704 = load i8, ptr %703, align 1
  br label %689

705:                                              ; preds = %692
  %706 = freeze i32 %11
  %707 = udiv i32 %706, 1000000
  %708 = mul i32 %707, 1000000
  %709 = sub i32 %706, %708
  %710 = icmp ugt i32 %709, 500000
  %711 = select i1 %710, i32 -500000, i32 0
  %712 = add nsw i32 %711, %709
  %713 = shl nuw nsw i32 %707, 2
  %714 = select i1 %710, i32 2, i32 0
  %715 = or i32 %714, %713
  %716 = icmp ugt i32 %712, 250000
  %717 = zext i1 %716 to i32
  %718 = or i32 %715, %717
  %719 = select i1 %716, i32 -250000, i32 0
  %720 = add nsw i32 %719, %712
  %721 = icmp ugt i32 %720, 125000
  %722 = select i1 %721, i32 -125000, i32 0
  %723 = add nsw i32 %722, %720
  %724 = shl nuw nsw i32 %718, 2
  %725 = select i1 %721, i32 2, i32 0
  %726 = or i32 %725, %724
  %727 = icmp ugt i32 %723, 62500
  %728 = zext i1 %727 to i32
  %729 = or i32 %726, %728
  %730 = select i1 %727, i32 -62500, i32 0
  %731 = add nsw i32 %730, %723
  %732 = icmp ugt i32 %731, 31250
  %733 = select i1 %732, i32 -31250, i32 0
  %734 = add nsw i32 %733, %731
  %735 = shl i32 %729, 2
  %736 = select i1 %732, i32 2, i32 0
  %737 = or i32 %736, %735
  %738 = icmp ugt i32 %734, 15625
  %739 = zext i1 %738 to i32
  %740 = or i32 %737, %739
  %741 = select i1 %738, i32 -15625, i32 0
  %742 = add nsw i32 %741, %734
  %743 = icmp ugt i32 %742, 7812
  %744 = zext i1 %743 to i32
  %745 = add i32 %740, %744
  %746 = trunc i32 %745 to i8
  br label %747

747:                                              ; preds = %757, %705
  %748 = phi i32 [ 0, %705 ], [ %758, %757 ]
  %749 = getelementptr %struct.reg_pair_t, ptr %688, i32 %748
  %750 = load i8, ptr %749, align 1
  switch i8 %750, label %757 [
    i8 0, label %751
    i8 13, label %755
  ]

751:                                              ; preds = %747
  %752 = getelementptr %struct.reg_pair_t, ptr %688, i32 %748, i32 1
  %753 = load i8, ptr %752, align 1
  %754 = icmp eq i8 %753, 0
  br i1 %754, label %759, label %757

755:                                              ; preds = %747
  %756 = getelementptr %struct.reg_pair_t, ptr %688, i32 %748, i32 1
  store i8 %746, ptr %756, align 1
  br label %757

757:                                              ; preds = %755, %751, %747
  %758 = add i32 %748, 1
  br label %747

759:                                              ; preds = %751
  %760 = lshr i32 %745, 8
  %761 = trunc i32 %760 to i8
  br label %762

762:                                              ; preds = %772, %759
  %763 = phi i32 [ 0, %759 ], [ %773, %772 ]
  %764 = getelementptr %struct.reg_pair_t, ptr %688, i32 %763
  %765 = load i8, ptr %764, align 1
  switch i8 %765, label %772 [
    i8 0, label %766
    i8 14, label %770
  ]

766:                                              ; preds = %762
  %767 = getelementptr %struct.reg_pair_t, ptr %688, i32 %763, i32 1
  %768 = load i8, ptr %767, align 1
  %769 = icmp eq i8 %768, 0
  br i1 %769, label %774, label %772

770:                                              ; preds = %762
  %771 = getelementptr %struct.reg_pair_t, ptr %688, i32 %763, i32 1
  store i8 %761, ptr %771, align 1
  br label %772

772:                                              ; preds = %770, %766, %762
  %773 = add i32 %763, 1
  br label %762

774:                                              ; preds = %766
  %775 = icmp ugt i32 %11, 332999999
  br i1 %775, label %776, label %790

776:                                              ; preds = %788, %774
  %777 = phi i32 [ %789, %788 ], [ 0, %774 ]
  %778 = getelementptr %struct.reg_pair_t, ptr %688, i32 %777
  %779 = load i8, ptr %778, align 1
  switch i8 %779, label %788 [
    i8 0, label %780
    i8 -128, label %784
  ]

780:                                              ; preds = %776
  %781 = getelementptr %struct.reg_pair_t, ptr %688, i32 %777, i32 1
  %782 = load i8, ptr %781, align 1
  %783 = icmp eq i8 %782, 0
  br i1 %783, label %790, label %788

784:                                              ; preds = %776
  %785 = getelementptr %struct.reg_pair_t, ptr %688, i32 %777, i32 1
  %786 = load i8, ptr %785, align 1
  %787 = or i8 %786, 64
  store i8 %787, ptr %785, align 1
  br label %788

788:                                              ; preds = %784, %780, %776
  %789 = add i32 %777, 1
  br label %776

790:                                              ; preds = %780, %774
  %791 = getelementptr inbounds i8, ptr %2, i32 1
  %792 = getelementptr inbounds i8, ptr %3, i32 4
  %793 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %794 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %795 = load i8, ptr %688, align 1
  %796 = icmp eq i8 %795, 0
  %797 = getelementptr %struct.mxl5007t_state, ptr %10, i32 0, i32 7, i32 0, i32 1
  %798 = load i8, ptr %797, align 1
  %799 = icmp eq i8 %798, 0
  %800 = select i1 %796, i1 %799, i1 false
  br i1 %800, label %823, label %801

801:                                              ; preds = %810, %790
  %802 = phi i8 [ %816, %810 ], [ %798, %790 ]
  %803 = phi i8 [ %813, %810 ], [ %795, %790 ]
  %804 = phi i32 [ %811, %810 ], [ 0, %790 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 %803, ptr %2, align 2
  store i8 %802, ptr %791, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #8
  store i32 2, ptr %792, align 4, !annotation !8
  %805 = load i8, ptr %654, align 4
  %806 = zext i8 %805 to i16
  store i16 %806, ptr %3, align 4
  store i16 0, ptr %793, align 2
  store ptr %2, ptr %794, align 4
  %807 = load ptr, ptr %657, align 4
  %808 = call i32 @i2c_transfer(ptr noundef %807, ptr noundef nonnull %3, i32 noundef 1) #8
  %809 = icmp eq i32 %808, 1
  br i1 %809, label %810, label %819

810:                                              ; preds = %801
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %811 = add i32 %804, 1
  %812 = getelementptr %struct.reg_pair_t, ptr %688, i32 %811
  %813 = load i8, ptr %812, align 1
  %814 = icmp eq i8 %813, 0
  %815 = getelementptr %struct.reg_pair_t, ptr %688, i32 %811, i32 1
  %816 = load i8, ptr %815, align 1
  %817 = icmp eq i8 %816, 0
  %818 = select i1 %814, i1 %817, i1 false
  br i1 %818, label %823, label %801

819:                                              ; preds = %801
  %820 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mxl5007t_write_reg, i32 noundef 448) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %821 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_tuner_rf_tune, i32 noundef -121, i32 noundef 530) #9
  %822 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_set_params, i32 noundef -121, i32 noundef 641) #9
  br label %828

823:                                              ; preds = %810, %790
  call void @msleep(i32 noundef 3) #8
  %824 = getelementptr inbounds %struct.mxl5007t_state, ptr %10, i32 0, i32 9
  store i32 %11, ptr %824, align 4
  %825 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %826 = load i32, ptr %825, align 4
  %827 = getelementptr inbounds %struct.mxl5007t_state, ptr %10, i32 0, i32 10
  store i32 %826, ptr %827, align 4
  br label %828

828:                                              ; preds = %823, %819, %682
  %829 = phi i32 [ 0, %823 ], [ -121, %682 ], [ -121, %819 ]
  call void @mutex_unlock(ptr noundef %30) #8
  %830 = load ptr, ptr %24, align 4
  %831 = icmp eq ptr %830, null
  br i1 %831, label %834, label %832

832:                                              ; preds = %828
  %833 = call i32 %830(ptr noundef %0, i32 noundef 0) #8
  br label %834

834:                                              ; preds = %832, %828, %18, %13
  %835 = phi i32 [ -22, %18 ], [ -22, %13 ], [ %829, %832 ], [ %829, %828 ]
  ret i32 %835
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mxl5007t_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mxl5007t_state, ptr %4, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mxl5007t_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mxl5007t_state, ptr %4, i32 0, i32 10
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mxl5007t_get_if_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  store i32 0, ptr %1, align 4
  %5 = getelementptr inbounds %struct.mxl5007t_state, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp ult i32 %6, 11
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds [11 x i32], ptr @switch.table.mxl5007t_get_if_frequency, i32 0, i32 %6
  %10 = load i32, ptr %9, align 4
  store i32 %10, ptr %1, align 4
  br label %11

11:                                               ; preds = %8, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxl5007t_get_status(ptr noundef %0, ptr nocapture noundef %1) #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x %struct.i2c_msg], align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  store i32 0, ptr %1, align 4
  %8 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = tail call i32 %9(ptr noundef %0, i32 noundef 1) #8
  br label %13

13:                                               ; preds = %11, %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 -9989, ptr %3, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #8
  %14 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %14, i8 0, i32 16, i1 false) #8, !annotation !8
  %15 = getelementptr inbounds %struct.mxl5007t_state, ptr %7, i32 0, i32 1
  %16 = load i8, ptr %15, align 4
  %17 = zext i8 %16 to i16
  store i16 %17, ptr %4, align 4
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %18, align 2
  store i16 2, ptr %14, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %19, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  store i16 %17, ptr %20, align 4
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %21, align 2
  %22 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %22, align 4
  %23 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  store ptr %5, ptr %23, align 4
  %24 = getelementptr inbounds %struct.mxl5007t_state, ptr %7, i32 0, i32 1, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %4, i32 noundef 2) #8
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %36

28:                                               ; preds = %13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  %29 = load i8, ptr %5, align 1
  %30 = and i8 %29, 12
  %31 = icmp eq i8 %30, 12
  %32 = and i8 %29, 3
  %33 = icmp eq i8 %32, 3
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %34 = load i32, ptr @mxl5007t_debug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %40

36:                                               ; preds = %13
  %37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.mxl5007t_read_reg, i32 noundef 481) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_synth_lock_status, i32 noundef -121, i32 noundef 549) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  %39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.mxl5007t_get_status, i32 noundef -121, i32 noundef 574) #9
  br label %49

40:                                               ; preds = %28
  %41 = select i1 %31, ptr @.str.19, ptr @.str.20
  %42 = select i1 %33, ptr @.str.21, ptr @.str.20
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.mxl5007t_get_status, ptr noundef nonnull %41, ptr noundef nonnull %42) #9
  br label %44

44:                                               ; preds = %40, %28
  %45 = or i1 %31, %33
  br i1 %45, label %46, label %49

46:                                               ; preds = %44
  %47 = load i32, ptr %1, align 4
  %48 = or i32 %47, 1
  store i32 %48, ptr %1, align 4
  br label %49

49:                                               ; preds = %46, %44, %36
  %50 = phi i32 [ -121, %36 ], [ 0, %46 ], [ 0, %44 ]
  %51 = load ptr, ptr %8, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %49
  %54 = call i32 %51(ptr noundef %0, i32 noundef 0) #8
  br label %55

55:                                               ; preds = %53, %49
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

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
