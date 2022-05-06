; ModuleID = '/llk/IR/drivers/media/tuners/tuner-simple.c_pt.bc'
source_filename = "../drivers/media/tuners/tuner-simple.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_simple_tuner_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22simple_tuner_attach\22\09\09\09\09\09"
module asm "__kstrtabns_simple_tuner_attach:\09\09\09\09\09"
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
%struct.kparam_array = type { i32, i32, ptr, ptr, ptr }
%struct.tunertype = type { ptr, i32, ptr, i16, i16, i32, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
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
%struct.tuner_simple_priv = type { i32, i16, %struct.tuner_i2c_props, %struct.list_head, i32, ptr, i32, i32, i8 }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.v4l2_priv_tun_config = type { i32, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.tuner_params = type { i32, i32, i16, i16, i32, ptr }
%struct.tuner_range = type { i16, i8, i8 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype251 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug252 = internal constant [41 x i8] c"parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_offset = internal constant [7 x i8] c"offset\00", align 1
@offset = internal global i32 0, align 4
@__param_offset = internal constant %struct.kernel_param { ptr @__param_str_offset, ptr @__this_module, ptr @param_ops_int, i16 436, i8 -1, i8 0, %union.anon.64 { ptr @offset } }, section "__param", align 4
@__UNIQUE_ID_offsettype253 = internal constant [20 x i8] c"parmtype=offset:int\00", section ".modinfo", align 1
@__UNIQUE_ID_offset254 = internal constant [50 x i8] c"parm=offset:Allows to specify an offset for tuner\00", section ".modinfo", align 1
@__param_str_atv_input = internal constant [10 x i8] c"atv_input\00", align 1
@param_array_ops = external dso_local constant %struct.kernel_param_ops, align 4
@__param_arr_atv_input = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @atv_input }, align 4
@__param_atv_input = internal constant %struct.kernel_param { ptr @__param_str_atv_input, ptr @__this_module, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_atv_input } }, section "__param", align 4
@__UNIQUE_ID_atv_inputtype255 = internal constant [32 x i8] c"parmtype=atv_input:array of int\00", section ".modinfo", align 1
@__param_str_dtv_input = internal constant [10 x i8] c"dtv_input\00", align 1
@__param_arr_dtv_input = internal constant %struct.kparam_array { i32 64, i32 4, ptr null, ptr @param_ops_int, ptr @dtv_input }, align 4
@__param_dtv_input = internal constant %struct.kernel_param { ptr @__param_str_dtv_input, ptr @__this_module, ptr @param_array_ops, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @__param_arr_dtv_input } }, section "__param", align 4
@__UNIQUE_ID_dtv_inputtype256 = internal constant [32 x i8] c"parmtype=dtv_input:array of int\00", section ".modinfo", align 1
@__UNIQUE_ID_atv_input257 = internal constant [54 x i8] c"parm=atv_input:specify atv rf input, 0 for autoselect\00", section ".modinfo", align 1
@__UNIQUE_ID_dtv_input258 = internal constant [54 x i8] c"parm=dtv_input:specify dtv rf input, 0 for autoselect\00", section ".modinfo", align 1
@tuner_count = external dso_local local_unnamed_addr constant i32, align 4
@.str = private unnamed_addr constant [40 x i8] c"\014%s: invalid tuner type: %d (max: %d)\0A\00", align 1
@__func__.simple_tuner_attach = private unnamed_addr constant [20 x i8] c"simple_tuner_attach\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"\014tuner-simple %d-%04x: unable to probe %s, proceeding anyway.\00", align 1
@tuners = external dso_local global [0 x %struct.tunertype], align 4
@tuner_simple_list_mutex = internal global %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @tuner_simple_list_mutex, i64 12), ptr getelementptr (i8, ptr @tuner_simple_list_mutex, i64 12) } }, align 4
@hybrid_tuner_instance_list = internal global %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"tuner-simple\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", align 1
@simple_devcount = internal unnamed_addr global i32 0, align 4
@simple_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info zeroinitializer, ptr @simple_release, ptr @simple_init, ptr @simple_sleep, ptr null, ptr null, ptr @simple_dvb_set_params, ptr @simple_set_params, ptr null, ptr @simple_get_frequency, ptr @simple_get_bandwidth, ptr null, ptr @simple_get_status, ptr @simple_get_rf_strength, ptr null, ptr @simple_dvb_calc_regs, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"\014%s %d-%04x: couldn't set type to %d. Using %d (%s) instead\0A\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: type set to %d (%s)\0A\00", align 1
@atv_input = internal global [64 x i32] zeroinitializer, align 4
@dtv_input = internal global [64 x i32] zeroinitializer, align 4
@.str.7 = private unnamed_addr constant [58 x i8] c"\016%s %d-%04x: tuner %d atv rf input will be autoselected\0A\00", align 1
@.str.8 = private unnamed_addr constant [77 x i8] c"\016%s %d-%04x: tuner %d atv rf input will be set to input %d (insmod option)\0A\00", align 1
@.str.9 = private unnamed_addr constant [58 x i8] c"\016%s %d-%04x: tuner %d dtv rf input will be autoselected\0A\00", align 1
@.str.10 = private unnamed_addr constant [77 x i8] c"\016%s %d-%04x: tuner %d dtv rf input will be set to input %d (insmod option)\0A\00", align 1
@__kstrtab_simple_tuner_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_simple_tuner_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_simple_tuner_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @simple_tuner_attach to i32), ptr @__kstrtab_simple_tuner_attach, ptr @__kstrtabns_simple_tuner_attach }, section "___ksymtab_gpl+simple_tuner_attach", align 4
@__UNIQUE_ID_description259 = internal constant [54 x i8] c"description=Simple 4-control-bytes style tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author260 = internal constant [48 x i8] c"author=Ralph Metzler, Gerd Knorr, Gunther Mayer\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.11 = private unnamed_addr constant [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", align 1
@.str.12 = private unnamed_addr constant [89 x i8] c"\013%s %d-%04x: attempt to treat tuner %d (%s) as digital tuner without stepsize defined.\0A\00", align 1
@.str.13 = private unnamed_addr constant [60 x i8] c"\017%s %d-%04x: %s: div=%d | buf=0x%02x,0x%02x,0x%02x,0x%02x\0A\00", align 1
@.str.14 = private unnamed_addr constant [58 x i8] c"\017%s %d-%04x: desired params (%s) undefined for tuner %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"\017%s %d-%04x: using tuner params #%d (%s)\0A\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"radio\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"pal\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"secam\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"ntsc\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"digital\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"\017%s %d-%04x: frequency out of range (%d > %d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [77 x i8] c"\017%s %d-%04x: freq = %d.%02d (%d), range = %d, config = 0x%02x, cb = 0x%02x\0A\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"\014%s %d-%04x: Unsupported radio_if value %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"\017%s %d-%04x: radio 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@.str.26 = private unnamed_addr constant [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 4)\0A\00", align 1
@.str.27 = private unnamed_addr constant [76 x i8] c"\017%s %d-%04x: This tuner doesn't have FM. Most cards have a TEA5767 for FM\0A\00", align 1
@.str.28 = private unnamed_addr constant [42 x i8] c"\013%s %d-%04x: This tuner doesn't have FM\0A\00", align 1
@.str.29 = private unnamed_addr constant [80 x i8] c"\017%s %d-%04x: Freq= %d.%02d MHz, V_IF=%d.%02d MHz, Offset=%d.%02d MHz, div=%0d\0A\00", align 1
@.str.30 = private unnamed_addr constant [46 x i8] c"\017%s %d-%04x: tv 0x%02x 0x%02x 0x%02x 0x%02x\0A\00", align 1
@.str.31 = private unnamed_addr constant [53 x i8] c"\014%s %d-%04x: i2c i/o error: rc == %d (should be 2)\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.32 = private unnamed_addr constant [58 x i8] c"\014%s %d-%04x: i2c i/o read error: rc == %d (should be 1)\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.33 = private unnamed_addr constant [47 x i8] c"\017%s %d-%04x: setting aux byte: 0x%02x 0x%02x\0A\00", align 1
@.str.34 = private unnamed_addr constant [30 x i8] c"\017%s %d-%04x: AFC Status: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"\017%s %d-%04x: Signal strength: %d\0A\00", align 1
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_atv_input257, ptr @__UNIQUE_ID_atv_inputtype255, ptr @__UNIQUE_ID_author260, ptr @__UNIQUE_ID_debug252, ptr @__UNIQUE_ID_debugtype251, ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_dtv_input258, ptr @__UNIQUE_ID_dtv_inputtype256, ptr @__UNIQUE_ID_license261, ptr @__UNIQUE_ID_offset254, ptr @__UNIQUE_ID_offsettype253, ptr @__ksymtab_simple_tuner_attach, ptr @__param_atv_input, ptr @__param_debug, ptr @__param_dtv_input, ptr @__param_offset], section "llvm.metadata"
@switch.table.simple_set_params = private unnamed_addr constant [3 x i32] [i32 171200, i32 532800, i32 660800], align 4
@switch.table.simple_tuner_params.36 = private unnamed_addr constant [5 x ptr] [ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @simple_tuner_attach(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i32 noundef %3) #0 {
  %5 = alloca [1 x i8], align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = load i32, ptr @tuner_count, align 4
  %8 = icmp ugt i32 %7, %3
  br i1 %8, label %12, label %9

9:                                                ; preds = %4
  %10 = add i32 %7, -1
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.simple_tuner_attach, i32 noundef %3, i32 noundef %10) #9
  br label %222

12:                                               ; preds = %4
  %13 = icmp eq ptr %1, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %15 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 0, ptr %15, align 4, !annotation !8
  %16 = zext i8 %2 to i16
  store i16 %16, ptr %6, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 1, ptr %17, align 2
  %18 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %18, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %19, align 4
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %14
  %24 = call i32 %21(ptr noundef %0, i32 noundef 1) #10
  br label %25

25:                                               ; preds = %23, %14
  %26 = call i32 @i2c_transfer(ptr noundef nonnull %1, ptr noundef nonnull %6, i32 noundef 1) #10
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %30 = load i32, ptr %29, align 4
  %31 = zext i8 %2 to i32
  %32 = getelementptr [0 x %struct.tunertype], ptr @tuners, i32 0, i32 %3
  %33 = load ptr, ptr %32, align 4
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %30, i32 noundef %31, ptr noundef %33) #9
  br label %35

35:                                               ; preds = %28, %25
  %36 = load ptr, ptr %20, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = call i32 %36(ptr noundef %0, i32 noundef 0) #10
  br label %40

40:                                               ; preds = %38, %35
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %41

41:                                               ; preds = %40, %12
  call void @mutex_lock(ptr noundef nonnull @tuner_simple_list_mutex) #10
  %42 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %43 = icmp eq ptr %42, @hybrid_tuner_instance_list
  br i1 %43, label %74, label %44

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  br label %46

46:                                               ; preds = %61, %44
  %47 = phi ptr [ %42, %44 ], [ %62, %61 ]
  br i1 %13, label %61, label %48

48:                                               ; preds = %46
  %49 = getelementptr i8, ptr %47, i32 -16
  %50 = getelementptr i8, ptr %47, i32 -12
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.i2c_adapter, ptr %51, i32 0, i32 11
  %55 = load i32, ptr %54, align 4
  %56 = load i32, ptr %45, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i8, ptr %49, align 4
  %60 = icmp eq i8 %59, %2
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %53, %48, %46
  %62 = load ptr, ptr %47, align 4
  %63 = icmp eq ptr %62, @hybrid_tuner_instance_list
  br i1 %63, label %74, label %46

64:                                               ; preds = %58
  %65 = getelementptr i8, ptr %47, i32 -24
  %66 = getelementptr i8, ptr %47, i32 -4
  %67 = load ptr, ptr %66, align 4
  %68 = zext i8 %2 to i32
  %69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %67, i32 noundef %55, i32 noundef %68) #9
  %70 = getelementptr i8, ptr %47, i32 -8
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %64, %61, %41
  %75 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %76 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 52) #11
  %77 = icmp eq ptr %76, null
  br i1 %77, label %106, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.tuner_simple_priv, ptr %76, i32 0, i32 2
  store i8 %2, ptr %79, align 8
  %80 = getelementptr inbounds %struct.tuner_simple_priv, ptr %76, i32 0, i32 2, i32 1
  store ptr %1, ptr %80, align 4
  %81 = getelementptr inbounds %struct.tuner_simple_priv, ptr %76, i32 0, i32 2, i32 3
  store ptr @.str.3, ptr %81, align 4
  br i1 %13, label %85, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %84 = load i32, ptr %83, align 4
  br label %85

85:                                               ; preds = %82, %78
  %86 = phi i32 [ %84, %82 ], [ -1, %78 ]
  %87 = zext i8 %2 to i32
  %88 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.3, i32 noundef %86, i32 noundef %87) #9
  %89 = getelementptr inbounds %struct.tuner_simple_priv, ptr %76, i32 0, i32 3
  %90 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr %89, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  store ptr @hybrid_tuner_instance_list, ptr %89, align 8
  %91 = getelementptr inbounds %struct.tuner_simple_priv, ptr %76, i32 0, i32 3, i32 1
  store ptr %90, ptr %91, align 4
  store volatile ptr %89, ptr %90, align 4
  %92 = getelementptr inbounds %struct.tuner_simple_priv, ptr %76, i32 0, i32 2, i32 2
  %93 = load i32, ptr %92, align 8
  %94 = add i32 %93, 1
  store i32 %94, ptr %92, align 8
  br label %95

95:                                               ; preds = %85, %64
  %96 = phi i32 [ %94, %85 ], [ %72, %64 ]
  %97 = phi ptr [ %76, %85 ], [ %65, %64 ]
  switch i32 %96, label %106 [
    i32 0, label %98
    i32 1, label %99
  ]

98:                                               ; preds = %95
  call void @mutex_unlock(ptr noundef nonnull @tuner_simple_list_mutex) #10
  br label %222

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %97, ptr %100, align 4
  %101 = getelementptr inbounds %struct.tuner_simple_priv, ptr %97, i32 0, i32 4
  store i32 %3, ptr %101, align 4
  %102 = getelementptr [0 x %struct.tunertype], ptr @tuners, i32 0, i32 %3
  %103 = getelementptr inbounds %struct.tuner_simple_priv, ptr %97, i32 0, i32 5
  store ptr %102, ptr %103, align 4
  %104 = load i32, ptr @simple_devcount, align 4
  %105 = add i32 %104, 1
  store i32 %105, ptr @simple_devcount, align 4
  store i32 %104, ptr %97, align 4
  br label %109

106:                                              ; preds = %95, %74
  %107 = phi ptr [ %97, %95 ], [ null, %74 ]
  %108 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %107, ptr %108, align 4
  br label %109

109:                                              ; preds = %106, %99
  %110 = phi ptr [ %107, %106 ], [ %97, %99 ]
  call void @mutex_unlock(ptr noundef nonnull @tuner_simple_list_mutex) #10
  %111 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %111, ptr noundef nonnull align 4 dereferenceable(220) @simple_tuner_ops, i32 220, i1 false)
  %112 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 4
  %113 = load i32, ptr %112, align 4
  %114 = icmp eq i32 %113, %3
  %115 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2
  %116 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2, i32 3
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %114, label %133, label %121

121:                                              ; preds = %109
  br i1 %120, label %125, label %122

122:                                              ; preds = %121
  %123 = getelementptr inbounds %struct.i2c_adapter, ptr %119, i32 0, i32 11
  %124 = load i32, ptr %123, align 4
  br label %125

125:                                              ; preds = %122, %121
  %126 = phi i32 [ %124, %122 ], [ -1, %121 ]
  %127 = load i8, ptr %115, align 4
  %128 = zext i8 %127 to i32
  %129 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 5
  %130 = load ptr, ptr %129, align 4
  %131 = load ptr, ptr %130, align 4
  %132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %117, i32 noundef %126, i32 noundef %128, i32 noundef %3, i32 noundef %113, ptr noundef %131) #9
  br label %145

133:                                              ; preds = %109
  br i1 %120, label %137, label %134

134:                                              ; preds = %133
  %135 = getelementptr inbounds %struct.i2c_adapter, ptr %119, i32 0, i32 11
  %136 = load i32, ptr %135, align 4
  br label %137

137:                                              ; preds = %134, %133
  %138 = phi i32 [ %136, %134 ], [ -1, %133 ]
  %139 = load i8, ptr %115, align 4
  %140 = zext i8 %139 to i32
  %141 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 5
  %142 = load ptr, ptr %141, align 4
  %143 = load ptr, ptr %142, align 4
  %144 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %117, i32 noundef %138, i32 noundef %140, i32 noundef %3, ptr noundef %143) #9
  br label %145

145:                                              ; preds = %137, %125
  %146 = load i32, ptr @debug, align 4
  %147 = icmp eq i32 %146, 0
  %148 = load i32, ptr %110, align 4
  %149 = getelementptr [64 x i32], ptr @atv_input, i32 0, i32 %148
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 0
  br i1 %147, label %152, label %157

152:                                              ; preds = %145
  br i1 %151, label %153, label %173

153:                                              ; preds = %152
  %154 = getelementptr [64 x i32], ptr @dtv_input, i32 0, i32 %148
  %155 = load i32, ptr %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %217, label %158

157:                                              ; preds = %145
  br i1 %151, label %158, label %173

158:                                              ; preds = %157, %153
  %159 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2
  %160 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.i2c_adapter, ptr %163, i32 0, i32 11
  %167 = load i32, ptr %166, align 4
  br label %168

168:                                              ; preds = %165, %158
  %169 = phi i32 [ %167, %165 ], [ -1, %158 ]
  %170 = load i8, ptr %159, align 4
  %171 = zext i8 %170 to i32
  %172 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %161, i32 noundef %169, i32 noundef %171, i32 noundef %148) #9
  br label %188

173:                                              ; preds = %157, %152
  %174 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2
  %175 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2, i32 3
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2, i32 1
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %183, label %180

180:                                              ; preds = %173
  %181 = getelementptr inbounds %struct.i2c_adapter, ptr %178, i32 0, i32 11
  %182 = load i32, ptr %181, align 4
  br label %183

183:                                              ; preds = %180, %173
  %184 = phi i32 [ %182, %180 ], [ -1, %173 ]
  %185 = load i8, ptr %174, align 4
  %186 = zext i8 %185 to i32
  %187 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %176, i32 noundef %184, i32 noundef %186, i32 noundef %148, i32 noundef %150) #9
  br label %188

188:                                              ; preds = %183, %168
  %189 = load i32, ptr %110, align 4
  %190 = getelementptr [64 x i32], ptr @dtv_input, i32 0, i32 %189
  %191 = load i32, ptr %190, align 4
  %192 = icmp eq i32 %191, 0
  %193 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2
  %194 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2, i32 3
  %195 = load ptr, ptr %194, align 4
  %196 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 2, i32 1
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  br i1 %192, label %199, label %208

199:                                              ; preds = %188
  br i1 %198, label %203, label %200

200:                                              ; preds = %199
  %201 = getelementptr inbounds %struct.i2c_adapter, ptr %197, i32 0, i32 11
  %202 = load i32, ptr %201, align 4
  br label %203

203:                                              ; preds = %200, %199
  %204 = phi i32 [ %202, %200 ], [ -1, %199 ]
  %205 = load i8, ptr %193, align 4
  %206 = zext i8 %205 to i32
  %207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %195, i32 noundef %204, i32 noundef %206, i32 noundef %189) #9
  br label %217

208:                                              ; preds = %188
  br i1 %198, label %212, label %209

209:                                              ; preds = %208
  %210 = getelementptr inbounds %struct.i2c_adapter, ptr %197, i32 0, i32 11
  %211 = load i32, ptr %210, align 4
  br label %212

212:                                              ; preds = %209, %208
  %213 = phi i32 [ %211, %209 ], [ -1, %208 ]
  %214 = load i8, ptr %193, align 4
  %215 = zext i8 %214 to i32
  %216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %195, i32 noundef %213, i32 noundef %215, i32 noundef %189, i32 noundef %191) #9
  br label %217

217:                                              ; preds = %212, %203, %153
  %218 = getelementptr inbounds %struct.tuner_simple_priv, ptr %110, i32 0, i32 5
  %219 = load ptr, ptr %218, align 4
  %220 = load ptr, ptr %219, align 4
  %221 = call i32 @strscpy(ptr noundef %111, ptr noundef %220, i32 noundef 128) #10
  br label %222

222:                                              ; preds = %217, %98, %9
  %223 = phi ptr [ null, %9 ], [ %0, %217 ], [ null, %98 ]
  ret ptr %223
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @simple_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @mutex_lock(ptr noundef nonnull @tuner_simple_list_mutex) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.tuner_simple_priv, ptr %3, i32 0, i32 2
  %7 = getelementptr inbounds %struct.tuner_simple_priv, ptr %3, i32 0, i32 2, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  store i32 %9, ptr %7, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.tuner_simple_priv, ptr %3, i32 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.tuner_simple_priv, ptr %3, i32 0, i32 2, i32 1
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
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %13, i32 noundef %21, i32 noundef %23) #9
  %25 = getelementptr inbounds %struct.tuner_simple_priv, ptr %3, i32 0, i32 3
  %26 = getelementptr inbounds %struct.tuner_simple_priv, ptr %3, i32 0, i32 3, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %25, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %30

30:                                               ; preds = %20, %5, %1
  tail call void @mutex_unlock(ptr noundef nonnull @tuner_simple_list_mutex) #10
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_init(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tunertype, ptr %11, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %0, i32 noundef 1) #10
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.tunertype, ptr %21, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %6, align 4
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi ptr [ %24, %19 ], [ %7, %15 ]
  %27 = phi ptr [ %23, %19 ], [ %13, %15 ]
  %28 = getelementptr i8, ptr %27, i32 1
  %29 = load i8, ptr %27, align 1
  %30 = zext i8 %29 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %31 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 0, ptr %31, align 4, !annotation !8
  %32 = load i8, ptr %5, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %2, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = zext i8 %29 to i16
  store i16 %35, ptr %31, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %28, ptr %36, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %2, i32 noundef 1) #10
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %38, i32 %30, i32 %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds %struct.tunertype, ptr %40, i32 0, i32 6
  %42 = load ptr, ptr %41, align 4
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %25, %9
  br label %47

47:                                               ; preds = %46, %25, %1
  %48 = phi i32 [ 0, %46 ], [ %39, %25 ], [ -22, %1 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_sleep(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 2
  %6 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 2, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %47, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.tunertype, ptr %11, i32 0, i32 7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %46, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef %0, i32 noundef 1) #10
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr inbounds %struct.tunertype, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %6, align 4
  br label %25

25:                                               ; preds = %19, %15
  %26 = phi ptr [ %24, %19 ], [ %7, %15 ]
  %27 = phi ptr [ %23, %19 ], [ %13, %15 ]
  %28 = getelementptr i8, ptr %27, i32 1
  %29 = load i8, ptr %27, align 1
  %30 = zext i8 %29 to i32
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %31 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 0, ptr %31, align 4, !annotation !8
  %32 = load i8, ptr %5, align 4
  %33 = zext i8 %32 to i16
  store i16 %33, ptr %2, align 4
  %34 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %34, align 2
  %35 = zext i8 %29 to i16
  store i16 %35, ptr %31, align 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %28, ptr %36, align 4
  %37 = call i32 @i2c_transfer(ptr noundef %26, ptr noundef nonnull %2, i32 noundef 1) #10
  %38 = icmp eq i32 %37, 1
  %39 = select i1 %38, i32 %30, i32 %37
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds %struct.tunertype, ptr %40, i32 0, i32 7
  %42 = load ptr, ptr %41, align 4
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %25, %9
  br label %47

47:                                               ; preds = %46, %25, %1
  %48 = phi i32 [ 0, %46 ], [ %39, %25 ], [ -22, %1 ]
  ret i32 %48
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_dvb_set_params(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca [5 x i8], align 1
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = load i32, ptr %4, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %3, i8 0, i32 5, i1 false), !annotation !8
  %12 = getelementptr inbounds %struct.tuner_simple_priv, ptr %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.tuner_simple_priv, ptr %11, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %48, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.tuner_simple_priv, ptr %11, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.tuner_simple_priv, ptr %11, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = getelementptr inbounds i8, ptr %3, i32 1
  %22 = call fastcc i32 @simple_dvb_configure(ptr noundef %0, ptr noundef %21, i32 noundef %6, i32 noundef %9, i32 noundef %8)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %48, label %24

24:                                               ; preds = %16
  %25 = load i8, ptr %12, align 4
  store i8 %25, ptr %3, align 1
  store i32 %22, ptr %17, align 4
  store i32 %8, ptr %19, align 4
  %26 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 33, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void %27(ptr noundef %0) #10
  br label %30

30:                                               ; preds = %29, %24
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 %32(ptr noundef %0, i32 noundef 1) #10
  br label %36

36:                                               ; preds = %34, %30
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #10
  %37 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 4, ptr %37, align 4, !annotation !8
  %38 = load i8, ptr %12, align 4
  %39 = zext i8 %38 to i16
  store i16 %39, ptr %2, align 4
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %40, align 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store ptr %21, ptr %41, align 4
  %42 = load ptr, ptr %13, align 4
  %43 = call i32 @i2c_transfer(ptr noundef %42, ptr noundef nonnull %2, i32 noundef 1) #10
  %44 = icmp eq i32 %43, 1
  %45 = select i1 %44, i32 4, i32 %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #10
  %46 = icmp eq i32 %45, 4
  br i1 %46, label %48, label %47

47:                                               ; preds = %36
  store i32 %18, ptr %17, align 4
  store i32 %20, ptr %19, align 4
  br label %48

48:                                               ; preds = %47, %36, %16, %1
  %49 = phi i32 [ %45, %47 ], [ -22, %1 ], [ -22, %16 ], [ 0, %36 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %3) #10
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_set_params(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = alloca %struct.i2c_msg, align 4
  %7 = alloca %struct.i2c_msg, align 4
  %8 = alloca %struct.i2c_msg, align 4
  %9 = alloca [4 x i8], align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca [4 x i8], align 4
  %13 = alloca %struct.v4l2_priv_tun_config, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.i2c_msg, align 4
  %16 = alloca %struct.i2c_msg, align 4
  %17 = alloca [4 x i8], align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.v4l2_priv_tun_config, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.tuner_simple_priv, ptr %21, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %800, label %25

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  switch i32 %27, label %797 [
    i32 1, label %28
    i32 2, label %283
    i32 3, label %283
  ]

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.tuner_simple_priv, ptr %21, i32 0, i32 8
  store i8 1, ptr %29, align 4
  %30 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #10
  store i32 0, ptr %17, align 4, !annotation !8
  %31 = load i32, ptr %1, align 8
  %32 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 2
  %33 = load i32, ptr %32, align 8
  %34 = icmp ne i32 %33, 0
  %35 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.tunertype, ptr %36, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.tunertype, ptr %36, i32 0, i32 2
  %40 = add i32 %38, -1
  %41 = tail call i32 @llvm.smin.i32(i32 %40, i32 0) #10
  %42 = load ptr, ptr %39, align 4
  br label %43

43:                                               ; preds = %47, %28
  %44 = phi i32 [ %38, %28 ], [ %45, %47 ]
  %45 = add i32 %44, -1
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr %struct.tuner_params, ptr %42, i32 %45
  %49 = load i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %43

51:                                               ; preds = %47, %43
  %52 = phi i32 [ %41, %43 ], [ %45, %47 ]
  %53 = getelementptr %struct.tuner_params, ptr %42, i32 %52, i32 1
  %54 = load i32, ptr %53, align 4
  %55 = lshr i32 %54, 12
  %56 = and i32 %55, 3
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %73

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2
  %60 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = getelementptr inbounds %struct.i2c_adapter, ptr %63, i32 0, i32 11
  %67 = load i32, ptr %66, align 4
  br label %68

68:                                               ; preds = %65, %58
  %69 = phi i32 [ %67, %65 ], [ -1, %58 ]
  %70 = load i8, ptr %59, align 4
  %71 = zext i8 %70 to i32
  %72 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %61, i32 noundef %69, i32 noundef %71, i32 noundef %56) #9
  br label %279

73:                                               ; preds = %51
  %74 = getelementptr inbounds [3 x i32], ptr @switch.table.simple_set_params, i32 0, i32 %56
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr %struct.tuner_params, ptr %42, i32 %52, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.tuner_range, ptr %77, i32 0, i32 1
  %79 = load i8, ptr %78, align 2
  %80 = and i8 %79, -7
  %81 = getelementptr inbounds [4 x i8], ptr %17, i32 0, i32 2
  store i8 %80, ptr %81, align 2
  %82 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 4
  %83 = load i32, ptr %82, align 4
  switch i32 %83, label %121 [
    i32 61, label %84
    i32 59, label %84
    i32 38, label %122
    i32 43, label %122
    i32 63, label %122
    i32 78, label %122
    i32 47, label %122
    i32 51, label %122
    i32 77, label %122
    i32 79, label %102
    i32 69, label %103
    i32 28, label %104
    i32 60, label %105
    i32 80, label %106
    i32 85, label %106
  ]

84:                                               ; preds = %73, %73
  %85 = load i32, ptr @debug, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %279, label %87

87:                                               ; preds = %84
  %88 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2
  %89 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 3
  %90 = load ptr, ptr %89, align 4
  %91 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %87
  %95 = getelementptr inbounds %struct.i2c_adapter, ptr %92, i32 0, i32 11
  %96 = load i32, ptr %95, align 4
  br label %97

97:                                               ; preds = %94, %87
  %98 = phi i32 [ %96, %94 ], [ -1, %87 ]
  %99 = load i8, ptr %88, align 4
  %100 = zext i8 %99 to i32
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %90, i32 noundef %98, i32 noundef %100) #9
  br label %279

102:                                              ; preds = %73
  store i8 -120, ptr %81, align 2
  br label %122

103:                                              ; preds = %73
  br label %122

104:                                              ; preds = %73
  br label %122

105:                                              ; preds = %73
  br label %122

106:                                              ; preds = %73, %73
  %107 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2
  %108 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 3
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 11
  %115 = load i32, ptr %114, align 4
  br label %116

116:                                              ; preds = %113, %106
  %117 = phi i32 [ %115, %113 ], [ -1, %106 ]
  %118 = load i8, ptr %107, align 4
  %119 = zext i8 %118 to i32
  %120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %109, i32 noundef %117, i32 noundef %119) #9
  br label %122

121:                                              ; preds = %73
  br label %122

122:                                              ; preds = %121, %116, %105, %104, %103, %102, %73, %73, %73, %73, %73, %73, %73
  %123 = phi i8 [ -92, %121 ], [ 1, %116 ], [ 57, %105 ], [ -91, %104 ], [ 17, %103 ], [ 9, %102 ], [ 25, %73 ], [ 25, %73 ], [ 25, %73 ], [ 25, %73 ], [ 25, %73 ], [ 25, %73 ], [ 25, %73 ]
  %124 = phi i8 [ %80, %121 ], [ %80, %116 ], [ %80, %105 ], [ %80, %104 ], [ %80, %103 ], [ -120, %102 ], [ %80, %73 ], [ %80, %73 ], [ %80, %73 ], [ %80, %73 ], [ %80, %73 ], [ %80, %73 ], [ %80, %73 ]
  %125 = getelementptr inbounds i8, ptr %17, i32 3
  store i8 %123, ptr %125, align 1
  %126 = add i32 %31, 400
  %127 = add i32 %126, %75
  %128 = udiv i32 %127, 800
  %129 = trunc i32 %128 to i16
  %130 = load i32, ptr %53, align 4
  %131 = and i32 %130, 1
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %145, label %133

133:                                              ; preds = %122
  %134 = and i32 %128, 65535
  %135 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 1
  %136 = load i16, ptr %135, align 4
  %137 = zext i16 %136 to i32
  %138 = icmp ult i32 %134, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %133
  store i8 %124, ptr %17, align 4
  %140 = getelementptr inbounds [4 x i8], ptr %17, i32 0, i32 1
  store i8 %123, ptr %140, align 1
  %141 = lshr i32 %128, 8
  %142 = trunc i32 %141 to i8
  %143 = and i8 %142, 127
  store i8 %143, ptr %81, align 2
  %144 = trunc i32 %128 to i8
  store i8 %144, ptr %125, align 1
  br label %151

145:                                              ; preds = %133, %122
  %146 = lshr i32 %128, 8
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 127
  store i8 %148, ptr %17, align 4
  %149 = trunc i32 %128 to i8
  %150 = getelementptr inbounds [4 x i8], ptr %17, i32 0, i32 1
  store i8 %149, ptr %150, align 1
  br label %151

151:                                              ; preds = %145, %139
  %152 = phi i8 [ %144, %139 ], [ %123, %145 ]
  %153 = phi i8 [ %143, %139 ], [ %124, %145 ]
  %154 = phi i8 [ %123, %139 ], [ %149, %145 ]
  %155 = phi i8 [ %124, %139 ], [ %148, %145 ]
  %156 = load i32, ptr @debug, align 4
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %177, label %158

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2
  %160 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 3
  %161 = load ptr, ptr %160, align 4
  %162 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = icmp eq ptr %163, null
  br i1 %164, label %168, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.i2c_adapter, ptr %163, i32 0, i32 11
  %167 = load i32, ptr %166, align 4
  br label %168

168:                                              ; preds = %165, %158
  %169 = phi i32 [ %167, %165 ], [ -1, %158 ]
  %170 = load i8, ptr %159, align 4
  %171 = zext i8 %170 to i32
  %172 = zext i8 %155 to i32
  %173 = zext i8 %154 to i32
  %174 = zext i8 %153 to i32
  %175 = zext i8 %152 to i32
  %176 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, ptr noundef %161, i32 noundef %169, i32 noundef %171, i32 noundef %172, i32 noundef %173, i32 noundef %174, i32 noundef %175) #9
  br label %177

177:                                              ; preds = %168, %151
  %178 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 1
  store i16 %129, ptr %178, align 4
  %179 = load i32, ptr %53, align 4
  %180 = and i32 %179, 2
  %181 = icmp eq i32 %180, 0
  br i1 %181, label %232, label %182

182:                                              ; preds = %177
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #10
  store i32 0, ptr %18, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #10
  store i64 74, ptr %19, align 8, !annotation !8
  %183 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %19, i32 0, i32 1
  store ptr %18, ptr %183, align 4
  %184 = load i32, ptr %53, align 4
  %185 = and i32 %184, 68
  %186 = icmp eq i32 %185, 64
  br i1 %186, label %187, label %189

187:                                              ; preds = %182
  store i32 32, ptr %18, align 4
  %188 = load i32, ptr %53, align 4
  br label %189

189:                                              ; preds = %187, %182
  %190 = phi i32 [ 32, %187 ], [ 0, %182 ]
  %191 = phi i32 [ %188, %187 ], [ %184, %182 ]
  %192 = and i32 %191, 136
  %193 = icmp eq i32 %192, 128
  br i1 %193, label %194, label %197

194:                                              ; preds = %189
  %195 = or i32 %190, 64
  store i32 %195, ptr %18, align 4
  %196 = load i32, ptr %53, align 4
  br label %197

197:                                              ; preds = %194, %189
  %198 = phi i32 [ %195, %194 ], [ %190, %189 ]
  %199 = phi i32 [ %196, %194 ], [ %191, %189 ]
  %200 = and i32 %199, 32
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %197
  %203 = or i32 %198, 16
  store i32 %203, ptr %18, align 4
  %204 = load i32, ptr %53, align 4
  br label %205

205:                                              ; preds = %202, %197
  %206 = phi i32 [ %203, %202 ], [ %198, %197 ]
  %207 = phi i32 [ %204, %202 ], [ %199, %197 ]
  %208 = and i32 %207, 1024
  %209 = icmp eq i32 %208, 0
  %210 = select i1 %209, i1 true, i1 %34
  br i1 %210, label %214, label %211

211:                                              ; preds = %205
  %212 = and i32 %206, -33
  store i32 %212, ptr %18, align 4
  %213 = load i32, ptr %53, align 4
  br label %214

214:                                              ; preds = %211, %205
  %215 = phi i32 [ %206, %205 ], [ %212, %211 ]
  %216 = phi i32 [ %207, %205 ], [ %213, %211 ]
  %217 = and i32 %216, 16
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %222, label %219

219:                                              ; preds = %214
  %220 = or i32 %215, 1048576
  store i32 %220, ptr %18, align 4
  %221 = load i32, ptr %53, align 4
  br label %222

222:                                              ; preds = %219, %214
  %223 = phi i32 [ %220, %219 ], [ %215, %214 ]
  %224 = phi i32 [ %221, %219 ], [ %216, %214 ]
  %225 = and i32 %224, 12288
  %226 = icmp eq i32 %225, 8192
  br i1 %226, label %227, label %229

227:                                              ; preds = %222
  %228 = or i32 %223, 2097152
  store i32 %228, ptr %18, align 4
  br label %229

229:                                              ; preds = %227, %222
  %230 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 1
  %231 = load ptr, ptr %230, align 4
  call void @i2c_clients_command(ptr noundef %231, i32 noundef 1074291804, ptr noundef nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #10
  br label %232

232:                                              ; preds = %229, %177
  %233 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %16) #10
  %234 = getelementptr inbounds i8, ptr %16, i32 4
  store i32 4, ptr %234, align 4, !annotation !8
  %235 = load i8, ptr %233, align 4
  %236 = zext i8 %235 to i16
  store i16 %236, ptr %16, align 4
  %237 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 1
  store i16 0, ptr %237, align 2
  %238 = getelementptr inbounds %struct.i2c_msg, ptr %16, i32 0, i32 3
  store ptr %17, ptr %238, align 4
  %239 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 1
  %240 = load ptr, ptr %239, align 4
  %241 = call i32 @i2c_transfer(ptr noundef %240, ptr noundef nonnull %16, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %16) #10
  switch i32 %241, label %242 [
    i32 4, label %255
    i32 1, label %255
  ]

242:                                              ; preds = %232
  %243 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 3
  %244 = load ptr, ptr %243, align 4
  %245 = load ptr, ptr %239, align 4
  %246 = icmp eq ptr %245, null
  br i1 %246, label %250, label %247

247:                                              ; preds = %242
  %248 = getelementptr inbounds %struct.i2c_adapter, ptr %245, i32 0, i32 11
  %249 = load i32, ptr %248, align 4
  br label %250

250:                                              ; preds = %247, %242
  %251 = phi i32 [ %249, %247 ], [ -1, %242 ]
  %252 = load i8, ptr %233, align 4
  %253 = zext i8 %252 to i32
  %254 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %244, i32 noundef %251, i32 noundef %253, i32 noundef %241) #9
  br label %255

255:                                              ; preds = %250, %232, %232
  %256 = load i32, ptr %82, align 4
  %257 = icmp eq i32 %256, 38
  br i1 %257, label %258, label %279

258:                                              ; preds = %255
  store i8 -104, ptr %81, align 2
  store i8 32, ptr %125, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #10
  %259 = getelementptr inbounds i8, ptr %15, i32 4
  store i32 4, ptr %259, align 4, !annotation !8
  %260 = load i8, ptr %233, align 4
  %261 = zext i8 %260 to i16
  store i16 %261, ptr %15, align 4
  %262 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 1
  store i16 0, ptr %262, align 2
  %263 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %17, ptr %263, align 4
  %264 = load ptr, ptr %239, align 4
  %265 = call i32 @i2c_transfer(ptr noundef %264, ptr noundef nonnull %15, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #10
  switch i32 %265, label %266 [
    i32 4, label %279
    i32 1, label %279
  ]

266:                                              ; preds = %258
  %267 = getelementptr inbounds %struct.tuner_simple_priv, ptr %30, i32 0, i32 2, i32 3
  %268 = load ptr, ptr %267, align 4
  %269 = load ptr, ptr %239, align 4
  %270 = icmp eq ptr %269, null
  br i1 %270, label %274, label %271

271:                                              ; preds = %266
  %272 = getelementptr inbounds %struct.i2c_adapter, ptr %269, i32 0, i32 11
  %273 = load i32, ptr %272, align 4
  br label %274

274:                                              ; preds = %271, %266
  %275 = phi i32 [ %273, %271 ], [ -1, %266 ]
  %276 = load i8, ptr %233, align 4
  %277 = zext i8 %276 to i32
  %278 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %268, i32 noundef %275, i32 noundef %277, i32 noundef %265) #9
  br label %279

279:                                              ; preds = %274, %258, %258, %255, %97, %84, %68
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #10
  %280 = load i32, ptr %1, align 8
  %281 = mul i32 %280, 125
  %282 = lshr i32 %281, 1
  br label %794

283:                                              ; preds = %25, %25
  %284 = getelementptr inbounds %struct.tuner_simple_priv, ptr %21, i32 0, i32 8
  store i8 0, ptr %284, align 4
  %285 = load ptr, ptr %20, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #10
  store i8 0, ptr %10, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #10
  store i8 0, ptr %11, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #10
  store i32 0, ptr %12, align 4, !annotation !8
  %286 = getelementptr inbounds %struct.analog_parameters, ptr %1, i32 0, i32 3
  %287 = load i64, ptr %286, align 8
  %288 = icmp eq i64 %287, 8192
  br i1 %288, label %299, label %289

289:                                              ; preds = %283
  %290 = and i64 %287, 46848
  %291 = icmp ne i64 %290, 0
  %292 = and i64 %287, -46849
  %293 = icmp eq i64 %292, 0
  %294 = and i1 %291, %293
  br i1 %294, label %299, label %295

295:                                              ; preds = %289
  %296 = icmp eq i64 %287, 8388608
  %297 = select i1 %296, i32 543, i32 623
  %298 = select i1 %296, i32 2, i32 1
  br label %299

299:                                              ; preds = %295, %289, %283
  %300 = phi i32 [ 940, %283 ], [ 732, %289 ], [ %297, %295 ]
  %301 = phi i32 [ 3, %283 ], [ 3, %289 ], [ %298, %295 ]
  %302 = tail call fastcc ptr @simple_tuner_params(ptr noundef %0, i32 noundef %301) #10
  %303 = call fastcc i32 @simple_config_lookup(ptr noundef %0, ptr noundef %302, ptr noundef %1, ptr noundef nonnull %10, ptr noundef nonnull %11) #10
  %304 = load i32, ptr %1, align 8
  %305 = add i32 %304, %300
  %306 = load i32, ptr @offset, align 4
  %307 = add i32 %305, %306
  %308 = trunc i32 %307 to i16
  %309 = load i32, ptr @debug, align 4
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %343, label %311

311:                                              ; preds = %299
  %312 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 2
  %313 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 2, i32 3
  %314 = load ptr, ptr %313, align 4
  %315 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 2, i32 1
  %316 = load ptr, ptr %315, align 4
  %317 = icmp eq ptr %316, null
  br i1 %317, label %321, label %318

318:                                              ; preds = %311
  %319 = getelementptr inbounds %struct.i2c_adapter, ptr %316, i32 0, i32 11
  %320 = load i32, ptr %319, align 4
  br label %321

321:                                              ; preds = %318, %311
  %322 = phi i32 [ %320, %318 ], [ -1, %311 ]
  %323 = load i8, ptr %312, align 4
  %324 = zext i8 %323 to i32
  %325 = lshr i32 %304, 4
  %326 = and i32 %304, 15
  %327 = mul nuw nsw i32 %326, 100
  %328 = lshr i32 %327, 4
  %329 = lshr i32 %300, 4
  %330 = and i32 %300, 15
  %331 = mul nuw nsw i32 %330, 100
  %332 = lshr i32 %331, 4
  %333 = freeze i32 %306
  %334 = sdiv i32 %333, 16
  %335 = mul i32 %334, 16
  %336 = sub i32 %333, %335
  %337 = trunc i32 %336 to i16
  %338 = mul nsw i16 %337, 100
  %339 = sdiv i16 %338, 16
  %340 = sext i16 %339 to i32
  %341 = and i32 %307, 65535
  %342 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %314, i32 noundef %322, i32 noundef %324, i32 noundef %325, i32 noundef %328, i32 noundef %329, i32 noundef %332, i32 noundef %334, i32 noundef %340, i32 noundef %341) #9
  br label %343

343:                                              ; preds = %321, %299
  %344 = load ptr, ptr %20, align 4
  %345 = getelementptr inbounds %struct.tuner_simple_priv, ptr %344, i32 0, i32 4
  %346 = load i32, ptr %345, align 4
  switch i32 %346, label %468 [
    i32 3, label %347
    i32 22, label %362
    i32 24, label %385
    i32 42, label %403
    i32 49, label %411
    i32 68, label %414
  ]

347:                                              ; preds = %343
  %348 = load i8, ptr %11, align 1
  %349 = and i8 %348, -4
  %350 = load i64, ptr %286, align 8
  %351 = and i64 %350, 4194304
  %352 = icmp eq i64 %351, 0
  br i1 %352, label %355, label %353

353:                                              ; preds = %347
  %354 = or i8 %348, 3
  store i8 %354, ptr %11, align 1
  br label %468

355:                                              ; preds = %347
  %356 = and i64 %350, 8388608
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %355
  %359 = or i8 %349, 2
  store i8 %359, ptr %11, align 1
  br label %468

360:                                              ; preds = %355
  %361 = or i8 %349, 1
  store i8 %361, ptr %11, align 1
  br label %468

362:                                              ; preds = %343
  %363 = load i8, ptr %11, align 1
  %364 = and i8 %363, -16
  store i8 %364, ptr %11, align 1
  %365 = load i64, ptr %286, align 8
  %366 = and i64 %365, 7
  %367 = icmp eq i64 %366, 0
  br i1 %367, label %370, label %368

368:                                              ; preds = %362
  %369 = or i8 %364, 12
  store i8 %369, ptr %11, align 1
  br label %468

370:                                              ; preds = %362
  %371 = and i64 %365, 16
  %372 = icmp eq i64 %371, 0
  br i1 %372, label %375, label %373

373:                                              ; preds = %370
  %374 = or i8 %364, 5
  store i8 %374, ptr %11, align 1
  br label %468

375:                                              ; preds = %370
  %376 = and i64 %365, 224
  %377 = icmp eq i64 %376, 0
  br i1 %377, label %380, label %378

378:                                              ; preds = %375
  %379 = or i8 %364, 9
  store i8 %379, ptr %11, align 1
  br label %468

380:                                              ; preds = %375
  %381 = and i64 %365, 4194304
  %382 = icmp eq i64 %381, 0
  br i1 %382, label %468, label %383

383:                                              ; preds = %380
  %384 = or i8 %364, 10
  store i8 %384, ptr %11, align 1
  br label %468

385:                                              ; preds = %343
  %386 = load i8, ptr %11, align 1
  %387 = and i8 %386, -16
  store i8 %387, ptr %11, align 1
  %388 = load i64, ptr %286, align 8
  %389 = and i64 %388, 231
  %390 = icmp eq i64 %389, 0
  br i1 %390, label %393, label %391

391:                                              ; preds = %385
  %392 = or i8 %387, 9
  store i8 %392, ptr %11, align 1
  br label %468

393:                                              ; preds = %385
  %394 = and i64 %388, 16
  %395 = icmp eq i64 %394, 0
  br i1 %395, label %398, label %396

396:                                              ; preds = %393
  %397 = or i8 %387, 1
  store i8 %397, ptr %11, align 1
  br label %468

398:                                              ; preds = %393
  %399 = and i64 %388, 4194304
  %400 = icmp eq i64 %399, 0
  br i1 %400, label %468, label %401

401:                                              ; preds = %398
  %402 = or i8 %387, 11
  store i8 %402, ptr %11, align 1
  br label %468

403:                                              ; preds = %343
  %404 = load i8, ptr %11, align 1
  %405 = and i8 %404, -4
  store i8 %405, ptr %11, align 1
  %406 = load i64, ptr %286, align 8
  %407 = and i64 %406, 50331648
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %409, label %468

409:                                              ; preds = %403
  %410 = or i8 %405, 2
  store i8 %410, ptr %11, align 1
  br label %468

411:                                              ; preds = %343
  %412 = load i8, ptr %10, align 1
  %413 = or i8 %412, 64
  store i8 %413, ptr %10, align 1
  br label %468

414:                                              ; preds = %343
  %415 = getelementptr inbounds %struct.tuner_simple_priv, ptr %344, i32 0, i32 2
  %416 = getelementptr inbounds %struct.tuner_simple_priv, ptr %344, i32 0, i32 2, i32 1
  %417 = load ptr, ptr %416, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #10
  store i32 1507348, ptr %9, align 4
  %418 = load i8, ptr %11, align 1
  %419 = and i8 %418, -65
  store i8 %419, ptr %11, align 1
  %420 = load i64, ptr %286, align 8
  %421 = and i64 %420, 50331648
  %422 = icmp eq i64 %421, 0
  br i1 %422, label %426, label %423

423:                                              ; preds = %414
  %424 = or i8 %418, 64
  store i8 %424, ptr %11, align 1
  %425 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 1
  store i8 4, ptr %425, align 1
  br label %426

426:                                              ; preds = %423, %414
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %8) #10
  %427 = getelementptr inbounds i8, ptr %8, i32 4
  store i32 2, ptr %427, align 4, !annotation !8
  store i16 10, ptr %8, align 4
  %428 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 1
  store i16 0, ptr %428, align 2
  %429 = getelementptr inbounds %struct.i2c_msg, ptr %8, i32 0, i32 3
  store ptr %9, ptr %429, align 4
  %430 = call i32 @i2c_transfer(ptr noundef %417, ptr noundef nonnull %8, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %8) #10
  %431 = add i32 %430, -1
  %432 = icmp ult i32 %431, 2
  br i1 %432, label %446, label %433

433:                                              ; preds = %426
  %434 = getelementptr inbounds %struct.tuner_simple_priv, ptr %344, i32 0, i32 2, i32 3
  %435 = load ptr, ptr %434, align 4
  %436 = load ptr, ptr %416, align 4
  %437 = icmp eq ptr %436, null
  br i1 %437, label %441, label %438

438:                                              ; preds = %433
  %439 = getelementptr inbounds %struct.i2c_adapter, ptr %436, i32 0, i32 11
  %440 = load i32, ptr %439, align 4
  br label %441

441:                                              ; preds = %438, %433
  %442 = phi i32 [ %440, %438 ], [ -1, %433 ]
  %443 = load i8, ptr %415, align 4
  %444 = zext i8 %443 to i32
  %445 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %435, i32 noundef %442, i32 noundef %444, i32 noundef %430) #9
  br label %446

446:                                              ; preds = %441, %426
  %447 = getelementptr inbounds [4 x i8], ptr %9, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #10
  %448 = getelementptr inbounds i8, ptr %7, i32 4
  store i32 2, ptr %448, align 4, !annotation !8
  store i16 10, ptr %7, align 4
  %449 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 1
  store i16 0, ptr %449, align 2
  %450 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %447, ptr %450, align 4
  %451 = call i32 @i2c_transfer(ptr noundef %417, ptr noundef nonnull %7, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #10
  %452 = add i32 %451, -1
  %453 = icmp ult i32 %452, 2
  br i1 %453, label %467, label %454

454:                                              ; preds = %446
  %455 = getelementptr inbounds %struct.tuner_simple_priv, ptr %344, i32 0, i32 2, i32 3
  %456 = load ptr, ptr %455, align 4
  %457 = load ptr, ptr %416, align 4
  %458 = icmp eq ptr %457, null
  br i1 %458, label %462, label %459

459:                                              ; preds = %454
  %460 = getelementptr inbounds %struct.i2c_adapter, ptr %457, i32 0, i32 11
  %461 = load i32, ptr %460, align 4
  br label %462

462:                                              ; preds = %459, %454
  %463 = phi i32 [ %461, %459 ], [ -1, %454 ]
  %464 = load i8, ptr %415, align 4
  %465 = zext i8 %464 to i32
  %466 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %456, i32 noundef %463, i32 noundef %465, i32 noundef %451) #9
  br label %467

467:                                              ; preds = %462, %446
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #10
  br label %468

468:                                              ; preds = %467, %411, %409, %403, %401, %398, %396, %391, %383, %380, %378, %373, %368, %360, %358, %353, %343
  %469 = load i32, ptr %344, align 4
  %470 = getelementptr [64 x i32], ptr @atv_input, i32 0, i32 %469
  %471 = load i32, ptr %470, align 4
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %493, label %473

473:                                              ; preds = %468
  %474 = load ptr, ptr %20, align 4
  %475 = getelementptr inbounds %struct.tuner_simple_priv, ptr %474, i32 0, i32 4
  %476 = load i32, ptr %475, align 4
  switch i32 %476, label %493 [
    i32 68, label %477
    i32 42, label %484
  ]

477:                                              ; preds = %473
  %478 = icmp eq i32 %471, 1
  %479 = load i8, ptr %11, align 1
  br i1 %478, label %480, label %482

480:                                              ; preds = %477
  %481 = or i8 %479, 8
  br label %491

482:                                              ; preds = %477
  %483 = and i8 %479, -9
  br label %491

484:                                              ; preds = %473
  %485 = icmp eq i32 %471, 1
  %486 = load i8, ptr %11, align 1
  br i1 %485, label %487, label %489

487:                                              ; preds = %484
  %488 = or i8 %486, 1
  br label %491

489:                                              ; preds = %484
  %490 = and i8 %486, -2
  br label %491

491:                                              ; preds = %489, %487, %482, %480
  %492 = phi i8 [ %488, %487 ], [ %490, %489 ], [ %481, %480 ], [ %483, %482 ]
  store i8 %492, ptr %11, align 1
  br label %493

493:                                              ; preds = %491, %473, %468
  %494 = getelementptr inbounds %struct.tuner_params, ptr %302, i32 0, i32 1
  %495 = load i32, ptr %494, align 4
  %496 = and i32 %495, 1
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %513, label %498

498:                                              ; preds = %493
  %499 = and i32 %307, 65535
  %500 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 1
  %501 = load i16, ptr %500, align 4
  %502 = zext i16 %501 to i32
  %503 = icmp ult i32 %499, %502
  br i1 %503, label %504, label %513

504:                                              ; preds = %498
  %505 = load i8, ptr %10, align 1
  store i8 %505, ptr %12, align 4
  %506 = load i8, ptr %11, align 1
  %507 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 1
  store i8 %506, ptr %507, align 1
  %508 = lshr i32 %307, 8
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 127
  %511 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 2
  store i8 %510, ptr %511, align 2
  %512 = trunc i32 %307 to i8
  br label %522

513:                                              ; preds = %498, %493
  %514 = lshr i32 %307, 8
  %515 = trunc i32 %514 to i8
  %516 = and i8 %515, 127
  store i8 %516, ptr %12, align 4
  %517 = trunc i32 %307 to i8
  %518 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 1
  store i8 %517, ptr %518, align 1
  %519 = load i8, ptr %10, align 1
  %520 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 2
  store i8 %519, ptr %520, align 2
  %521 = load i8, ptr %11, align 1
  br label %522

522:                                              ; preds = %513, %504
  %523 = phi i8 [ %519, %513 ], [ %510, %504 ]
  %524 = phi i8 [ %517, %513 ], [ %506, %504 ]
  %525 = phi i8 [ %516, %513 ], [ %505, %504 ]
  %526 = phi i8 [ %521, %513 ], [ %512, %504 ]
  %527 = phi i8 [ %519, %513 ], [ %505, %504 ]
  %528 = getelementptr inbounds [4 x i8], ptr %12, i32 0, i32 3
  store i8 %526, ptr %528, align 1
  %529 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 1
  store i16 %308, ptr %529, align 4
  %530 = load i32, ptr %494, align 4
  %531 = and i32 %530, 2
  %532 = icmp eq i32 %531, 0
  br i1 %532, label %649, label %533

533:                                              ; preds = %522
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #10
  store i64 74, ptr %13, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #10
  store i32 0, ptr %14, align 4
  %534 = load i64, ptr %286, align 8
  %535 = and i64 %534, 12582912
  %536 = icmp ne i64 %535, 0
  %537 = and i64 %534, -12582913
  %538 = icmp eq i64 %537, 0
  %539 = and i1 %536, %538
  %540 = getelementptr inbounds %struct.v4l2_priv_tun_config, ptr %13, i32 0, i32 1
  store ptr %14, ptr %540, align 4
  %541 = icmp eq i64 %534, 8388608
  %542 = load i32, ptr %494, align 4
  br i1 %541, label %543, label %558

543:                                              ; preds = %533
  %544 = lshr i32 %542, 6
  %545 = lshr i32 %542, 8
  %546 = xor i32 %544, %545
  %547 = shl nuw nsw i32 %546, 5
  %548 = and i32 %547, 32
  %549 = lshr i32 %542, 7
  %550 = lshr i32 %542, 9
  %551 = xor i32 %549, %550
  %552 = shl nuw nsw i32 %551, 6
  %553 = and i32 %552, 64
  %554 = or i32 %553, %548
  %555 = or i32 %546, %551
  %556 = and i32 %555, 1
  %557 = icmp eq i32 %556, 0
  br i1 %557, label %565, label %563

558:                                              ; preds = %533
  %559 = lshr i32 %542, 1
  %560 = and i32 %559, 96
  %561 = and i32 %542, 192
  %562 = icmp eq i32 %561, 0
  br i1 %562, label %565, label %564

563:                                              ; preds = %543
  store i32 %554, ptr %14, align 4
  br label %565

564:                                              ; preds = %558
  store i32 %560, ptr %14, align 4
  br label %565

565:                                              ; preds = %564, %563, %558, %543
  %566 = phi i32 [ %554, %543 ], [ %554, %563 ], [ %560, %558 ], [ %560, %564 ]
  %567 = and i32 %542, 32
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %571, label %569

569:                                              ; preds = %565
  %570 = or i32 %566, 16
  store i32 %570, ptr %14, align 4
  br label %571

571:                                              ; preds = %569, %565
  %572 = phi i32 [ %570, %569 ], [ %566, %565 ]
  br i1 %539, label %573, label %612

573:                                              ; preds = %571
  switch i32 %303, label %574 [
    i32 0, label %577
    i32 1, label %589
  ]

574:                                              ; preds = %573
  %575 = getelementptr inbounds %struct.tuner_params, ptr %302, i32 0, i32 2
  %576 = load i16, ptr %575, align 4
  br label %601

577:                                              ; preds = %573
  %578 = getelementptr inbounds %struct.tuner_params, ptr %302, i32 0, i32 2
  %579 = load i16, ptr %578, align 4
  %580 = and i16 %579, 31
  %581 = icmp eq i16 %580, 0
  br i1 %581, label %601, label %582

582:                                              ; preds = %577
  %583 = shl i16 %579, 8
  %584 = add i16 %583, 4096
  %585 = and i16 %584, 7936
  %586 = or i16 %585, 8192
  %587 = zext i16 %586 to i32
  %588 = or i32 %572, %587
  store i32 %588, ptr %14, align 4
  br label %640

589:                                              ; preds = %573
  %590 = getelementptr inbounds %struct.tuner_params, ptr %302, i32 0, i32 2
  %591 = load i16, ptr %590, align 4
  %592 = shl i16 %591, 6
  %593 = icmp ult i16 %592, 2048
  br i1 %593, label %601, label %594

594:                                              ; preds = %589
  %595 = lshr exact i16 %592, 3
  %596 = and i16 %595, 7936
  %597 = add nuw nsw i16 %596, 4096
  %598 = or i16 %597, 8192
  %599 = zext i16 %598 to i32
  %600 = or i32 %572, %599
  store i32 %600, ptr %14, align 4
  br label %640

601:                                              ; preds = %589, %577, %574
  %602 = phi i16 [ %576, %574 ], [ %579, %577 ], [ %591, %589 ]
  %603 = shl i16 %602, 1
  %604 = icmp ult i16 %603, 2048
  br i1 %604, label %640, label %605

605:                                              ; preds = %601
  %606 = lshr i16 %603, 3
  %607 = and i16 %606, 7936
  %608 = add nuw nsw i16 %607, 4096
  %609 = or i16 %608, 8192
  %610 = zext i16 %609 to i32
  %611 = or i32 %572, %610
  store i32 %611, ptr %14, align 4
  br label %640

612:                                              ; preds = %571
  switch i32 %303, label %631 [
    i32 0, label %613
    i32 1, label %622
  ]

613:                                              ; preds = %612
  %614 = shl i32 %542, 13
  %615 = icmp ult i32 %614, 134217728
  br i1 %615, label %631, label %616

616:                                              ; preds = %613
  %617 = lshr i32 %614, 19
  %618 = and i32 %617, 7936
  %619 = add nuw nsw i32 %618, 4096
  %620 = or i32 %572, %619
  %621 = or i32 %620, 8192
  store i32 %621, ptr %14, align 4
  br label %640

622:                                              ; preds = %612
  %623 = shl i32 %542, 8
  %624 = icmp ult i32 %623, 134217728
  br i1 %624, label %631, label %625

625:                                              ; preds = %622
  %626 = lshr i32 %623, 19
  %627 = and i32 %626, 7936
  %628 = add nuw nsw i32 %627, 4096
  %629 = or i32 %572, %628
  %630 = or i32 %629, 8192
  store i32 %630, ptr %14, align 4
  br label %640

631:                                              ; preds = %622, %613, %612
  %632 = shl i32 %542, 3
  %633 = icmp ult i32 %632, 134217728
  br i1 %633, label %640, label %634

634:                                              ; preds = %631
  %635 = lshr i32 %632, 19
  %636 = and i32 %635, 7936
  %637 = add nuw nsw i32 %636, 4096
  %638 = or i32 %572, %637
  %639 = or i32 %638, 8192
  store i32 %639, ptr %14, align 4
  br label %640

640:                                              ; preds = %634, %631, %625, %616, %605, %601, %594, %582
  %641 = phi i32 [ %621, %616 ], [ %572, %631 ], [ %639, %634 ], [ %630, %625 ], [ %588, %582 ], [ %572, %601 ], [ %611, %605 ], [ %600, %594 ]
  %642 = and i32 %542, 2048
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %646, label %644

644:                                              ; preds = %640
  %645 = or i32 %641, 524288
  store i32 %645, ptr %14, align 4
  br label %646

646:                                              ; preds = %644, %640
  %647 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 2, i32 1
  %648 = load ptr, ptr %647, align 4
  call void @i2c_clients_command(ptr noundef %648, i32 noundef 1074291804, ptr noundef nonnull %13) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #10
  br label %649

649:                                              ; preds = %646, %522
  %650 = load i32, ptr @debug, align 4
  %651 = icmp eq i32 %650, 0
  br i1 %651, label %671, label %652

652:                                              ; preds = %649
  %653 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 2
  %654 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 2, i32 3
  %655 = load ptr, ptr %654, align 4
  %656 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 2, i32 1
  %657 = load ptr, ptr %656, align 4
  %658 = icmp eq ptr %657, null
  br i1 %658, label %662, label %659

659:                                              ; preds = %652
  %660 = getelementptr inbounds %struct.i2c_adapter, ptr %657, i32 0, i32 11
  %661 = load i32, ptr %660, align 4
  br label %662

662:                                              ; preds = %659, %652
  %663 = phi i32 [ %661, %659 ], [ -1, %652 ]
  %664 = load i8, ptr %653, align 4
  %665 = zext i8 %664 to i32
  %666 = zext i8 %525 to i32
  %667 = zext i8 %524 to i32
  %668 = zext i8 %523 to i32
  %669 = zext i8 %526 to i32
  %670 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %655, i32 noundef %663, i32 noundef %665, i32 noundef %666, i32 noundef %667, i32 noundef %668, i32 noundef %669) #9
  br label %671

671:                                              ; preds = %662, %649
  %672 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #10
  %673 = getelementptr inbounds i8, ptr %6, i32 4
  store i32 4, ptr %673, align 4, !annotation !8
  %674 = load i8, ptr %672, align 4
  %675 = zext i8 %674 to i16
  store i16 %675, ptr %6, align 4
  %676 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %676, align 2
  %677 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %12, ptr %677, align 4
  %678 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 2, i32 1
  %679 = load ptr, ptr %678, align 4
  %680 = call i32 @i2c_transfer(ptr noundef %679, ptr noundef nonnull %6, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #10
  switch i32 %680, label %681 [
    i32 4, label %694
    i32 1, label %694
  ]

681:                                              ; preds = %671
  %682 = getelementptr inbounds %struct.tuner_simple_priv, ptr %285, i32 0, i32 2, i32 3
  %683 = load ptr, ptr %682, align 4
  %684 = load ptr, ptr %678, align 4
  %685 = icmp eq ptr %684, null
  br i1 %685, label %689, label %686

686:                                              ; preds = %681
  %687 = getelementptr inbounds %struct.i2c_adapter, ptr %684, i32 0, i32 11
  %688 = load i32, ptr %687, align 4
  br label %689

689:                                              ; preds = %686, %681
  %690 = phi i32 [ %688, %686 ], [ -1, %681 ]
  %691 = load i8, ptr %672, align 4
  %692 = zext i8 %691 to i32
  %693 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %683, i32 noundef %690, i32 noundef %692, i32 noundef %680) #9
  br label %694

694:                                              ; preds = %689, %671, %671
  %695 = load i8, ptr %11, align 1
  %696 = load ptr, ptr %20, align 4
  %697 = getelementptr inbounds %struct.tuner_simple_priv, ptr %696, i32 0, i32 4
  %698 = load i32, ptr %697, align 4
  switch i32 %698, label %791 [
    i32 64, label %699
    i32 80, label %700
    i32 49, label %701
  ]

699:                                              ; preds = %694
  call fastcc void @simple_set_aux_byte(ptr noundef %0, i8 noundef zeroext %527, i8 noundef zeroext 32) #10
  br label %791

700:                                              ; preds = %694
  call fastcc void @simple_set_aux_byte(ptr noundef %0, i8 noundef zeroext %527, i8 noundef zeroext 96) #10
  br label %791

701:                                              ; preds = %694
  %702 = load volatile i32, ptr @jiffies, align 64
  %703 = add i32 %702, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  store i8 0, ptr %5, align 1
  %704 = load volatile i32, ptr @jiffies, align 64
  %705 = sub i32 %703, %704
  %706 = icmp slt i32 %705, 0
  br i1 %706, label %790, label %707

707:                                              ; preds = %701
  %708 = getelementptr inbounds %struct.tuner_simple_priv, ptr %696, i32 0, i32 2
  %709 = getelementptr inbounds i8, ptr %4, i32 4
  %710 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %711 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %712 = getelementptr inbounds %struct.tuner_simple_priv, ptr %696, i32 0, i32 2, i32 1
  br label %713

713:                                              ; preds = %736, %707
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  store i32 1, ptr %709, align 4, !annotation !8
  %714 = load i8, ptr %708, align 4
  %715 = zext i8 %714 to i16
  store i16 %715, ptr %4, align 4
  store i16 1, ptr %710, align 2
  store ptr %5, ptr %711, align 4
  %716 = load ptr, ptr %712, align 4
  %717 = call i32 @i2c_transfer(ptr noundef %716, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %718 = icmp eq i32 %717, 1
  br i1 %718, label %732, label %719

719:                                              ; preds = %713
  %720 = getelementptr inbounds %struct.tuner_simple_priv, ptr %696, i32 0, i32 2, i32 3
  %721 = load ptr, ptr %720, align 4
  %722 = load ptr, ptr %712, align 4
  %723 = icmp eq ptr %722, null
  br i1 %723, label %727, label %724

724:                                              ; preds = %719
  %725 = getelementptr inbounds %struct.i2c_adapter, ptr %722, i32 0, i32 11
  %726 = load i32, ptr %725, align 4
  br label %727

727:                                              ; preds = %724, %719
  %728 = phi i32 [ %726, %724 ], [ -1, %719 ]
  %729 = load i8, ptr %708, align 4
  %730 = zext i8 %729 to i32
  %731 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef %721, i32 noundef %728, i32 noundef %730, i32 noundef %717) #9
  br label %741

732:                                              ; preds = %713
  %733 = load i8, ptr %5, align 1
  %734 = and i8 %733, 64
  %735 = icmp eq i8 %734, 0
  br i1 %735, label %736, label %741

736:                                              ; preds = %732
  %737 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %737(i32 noundef 2147480) #10
  %738 = load volatile i32, ptr @jiffies, align 64
  %739 = sub i32 %703, %738
  %740 = icmp slt i32 %739, 0
  br i1 %740, label %790, label %713

741:                                              ; preds = %732, %727
  %742 = and i8 %527, -65
  %743 = lshr i32 %307, 8
  %744 = trunc i32 %743 to i8
  %745 = and i8 %744, 127
  store i8 %745, ptr %12, align 4
  %746 = trunc i32 %307 to i8
  %747 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 %746, ptr %747, align 1
  %748 = getelementptr inbounds i8, ptr %12, i32 2
  store i8 %742, ptr %748, align 2
  store i8 %695, ptr %528, align 1
  %749 = load i32, ptr @debug, align 4
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %768, label %751

751:                                              ; preds = %741
  %752 = getelementptr inbounds %struct.tuner_simple_priv, ptr %696, i32 0, i32 2, i32 3
  %753 = load ptr, ptr %752, align 4
  %754 = load ptr, ptr %712, align 4
  %755 = icmp eq ptr %754, null
  br i1 %755, label %759, label %756

756:                                              ; preds = %751
  %757 = getelementptr inbounds %struct.i2c_adapter, ptr %754, i32 0, i32 11
  %758 = load i32, ptr %757, align 4
  br label %759

759:                                              ; preds = %756, %751
  %760 = phi i32 [ %758, %756 ], [ -1, %751 ]
  %761 = load i8, ptr %708, align 4
  %762 = zext i8 %761 to i32
  %763 = zext i8 %745 to i32
  %764 = and i32 %307, 255
  %765 = zext i8 %742 to i32
  %766 = zext i8 %695 to i32
  %767 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %753, i32 noundef %760, i32 noundef %762, i32 noundef %763, i32 noundef %764, i32 noundef %765, i32 noundef %766) #9
  br label %768

768:                                              ; preds = %759, %741
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %769 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 4, ptr %769, align 4, !annotation !8
  %770 = load i8, ptr %708, align 4
  %771 = zext i8 %770 to i16
  store i16 %771, ptr %3, align 4
  %772 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %772, align 2
  %773 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %12, ptr %773, align 4
  %774 = load ptr, ptr %712, align 4
  %775 = call i32 @i2c_transfer(ptr noundef %774, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  switch i32 %775, label %776 [
    i32 4, label %789
    i32 1, label %789
  ]

776:                                              ; preds = %768
  %777 = getelementptr inbounds %struct.tuner_simple_priv, ptr %696, i32 0, i32 2, i32 3
  %778 = load ptr, ptr %777, align 4
  %779 = load ptr, ptr %712, align 4
  %780 = icmp eq ptr %779, null
  br i1 %780, label %784, label %781

781:                                              ; preds = %776
  %782 = getelementptr inbounds %struct.i2c_adapter, ptr %779, i32 0, i32 11
  %783 = load i32, ptr %782, align 4
  br label %784

784:                                              ; preds = %781, %776
  %785 = phi i32 [ %783, %781 ], [ -1, %776 ]
  %786 = load i8, ptr %708, align 4
  %787 = zext i8 %786 to i32
  %788 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %778, i32 noundef %785, i32 noundef %787, i32 noundef %775) #9
  br label %789

789:                                              ; preds = %784, %768, %768
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %791

790:                                              ; preds = %736, %701
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %791

791:                                              ; preds = %790, %789, %700, %699, %694
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #10
  %792 = load i32, ptr %1, align 8
  %793 = mul i32 %792, 62500
  br label %794

794:                                              ; preds = %791, %279
  %795 = phi i32 [ %793, %791 ], [ %282, %279 ]
  %796 = getelementptr inbounds %struct.tuner_simple_priv, ptr %21, i32 0, i32 6
  store i32 %795, ptr %796, align 4
  br label %797

797:                                              ; preds = %794, %25
  %798 = phi i32 [ -22, %25 ], [ 0, %794 ]
  %799 = getelementptr inbounds %struct.tuner_simple_priv, ptr %21, i32 0, i32 7
  store i32 0, ptr %799, align 4
  br label %800

800:                                              ; preds = %797, %2
  %801 = phi i32 [ %798, %797 ], [ -22, %2 ]
  ret i32 %801
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @simple_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @simple_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #7 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 7
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_get_status(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %55, label %11

11:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %12 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 1, ptr %12, align 4, !annotation !8
  %13 = load i8, ptr %7, align 4
  %14 = zext i8 %13 to i16
  store i16 %14, ptr %3, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %16, align 4
  %17 = call i32 @i2c_transfer(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %18 = icmp eq i32 %17, 1
  %19 = load i8, ptr %4, align 1
  %20 = zext i8 %19 to i32
  %21 = select i1 %18, i32 %20, i32 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %22 = lshr i32 %21, 6
  %23 = and i32 %22, 1
  store i32 %23, ptr %1, align 4
  %24 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  switch i32 %25, label %30 [
    i32 38, label %26
    i32 43, label %26
    i32 51, label %26
    i32 47, label %26
    i32 77, label %26
    i32 79, label %35
  ]

26:                                               ; preds = %11, %11, %11, %11, %11
  %27 = and i32 %21, 7
  %28 = icmp eq i32 %27, 4
  %29 = zext i1 %28 to i32
  br label %32

30:                                               ; preds = %11
  %31 = and i32 %21, 16
  br label %32

32:                                               ; preds = %30, %26
  %33 = phi i32 [ %31, %30 ], [ %29, %26 ]
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32, %11
  %36 = or i32 %22, 2
  store i32 %36, ptr %1, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i32, ptr @debug, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 2, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %8, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %40
  %49 = phi i32 [ %47, %45 ], [ -1, %40 ]
  %50 = load i8, ptr %7, align 4
  %51 = zext i8 %50 to i32
  %52 = and i32 %21, 7
  %53 = add nsw i32 %52, -2
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef %42, i32 noundef %49, i32 noundef %51, i32 noundef %53) #9
  br label %55

55:                                               ; preds = %48, %37, %2
  %56 = phi i32 [ -22, %2 ], [ 0, %48 ], [ 0, %37 ]
  ret i32 %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_get_rf_strength(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 2, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %44, label %11

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 8
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %44, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  %16 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 1, ptr %16, align 4, !annotation !8
  %17 = load i8, ptr %7, align 4
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %3, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 1, ptr %19, align 2
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %4, ptr %20, align 4
  %21 = call i32 @i2c_transfer(ptr noundef nonnull %9, ptr noundef nonnull %3, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  %22 = icmp eq i32 %21, 1
  %23 = load i8, ptr %4, align 1
  %24 = zext i8 %23 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  %25 = shl nuw nsw i32 %24, 13
  %26 = and i32 %25, 57344
  %27 = select i1 %22, i32 %26, i32 0
  %28 = trunc i32 %27 to i16
  store i16 %28, ptr %1, align 2
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %15
  %32 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 2, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = load ptr, ptr %8, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 11
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = phi i32 [ %38, %36 ], [ -1, %31 ]
  %41 = load i8, ptr %7, align 4
  %42 = zext i8 %41 to i32
  %43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %33, i32 noundef %40, i32 noundef %42, i32 noundef %27) #9
  br label %44

44:                                               ; preds = %39, %15, %11, %2
  %45 = phi i32 [ -22, %11 ], [ -22, %2 ], [ 0, %39 ], [ 0, %15 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @simple_dvb_calc_regs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp slt i32 %2, 5
  br i1 %7, label %23, label %8

8:                                                ; preds = %3
  %9 = load i32, ptr %4, align 4
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %11 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 15
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr i8, ptr %1, i32 1
  %14 = load i32, ptr %10, align 4
  %15 = tail call fastcc i32 @simple_dvb_configure(ptr noundef %0, ptr noundef %13, i32 noundef %12, i32 noundef %14, i32 noundef %9)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %8
  %18 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 2
  %19 = load i8, ptr %18, align 4
  store i8 %19, ptr %1, align 1
  %20 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 6
  store i32 %15, ptr %20, align 4
  %21 = load i32, ptr %4, align 4
  %22 = getelementptr inbounds %struct.tuner_simple_priv, ptr %6, i32 0, i32 7
  store i32 %21, ptr %22, align 4
  br label %23

23:                                               ; preds = %17, %8, %3
  %24 = phi i32 [ 5, %17 ], [ -22, %3 ], [ -22, %8 ]
  ret i32 %24
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @simple_dvb_configure(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.tuner_simple_priv, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #10
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #10
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %13 = udiv i32 %3, 62500
  store i32 %13, ptr %8, align 4
  %14 = getelementptr inbounds %struct.tunertype, ptr %12, i32 0, i32 5
  %15 = load i32, ptr %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %5
  %18 = getelementptr inbounds %struct.tuner_simple_priv, ptr %10, i32 0, i32 2
  %19 = getelementptr inbounds %struct.tuner_simple_priv, ptr %10, i32 0, i32 2, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.tuner_simple_priv, ptr %10, i32 0, i32 2, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.i2c_adapter, ptr %22, i32 0, i32 11
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i32 [ %26, %24 ], [ -1, %17 ]
  %29 = load i8, ptr %18, align 4
  %30 = zext i8 %29 to i32
  %31 = getelementptr inbounds %struct.tuner_simple_priv, ptr %10, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = load ptr, ptr %12, align 4
  %34 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %20, i32 noundef %28, i32 noundef %30, i32 noundef %32, ptr noundef %33) #9
  br label %130

35:                                               ; preds = %5
  %36 = tail call fastcc ptr @simple_tuner_params(ptr noundef %0, i32 noundef 4)
  %37 = call fastcc i32 @simple_config_lookup(ptr noundef %0, ptr noundef %36, ptr noundef nonnull %8, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %130, label %39

39:                                               ; preds = %35
  %40 = load i32, ptr %8, align 4
  %41 = getelementptr inbounds %struct.tuner_params, ptr %36, i32 0, i32 3
  %42 = load i16, ptr %41, align 2
  %43 = zext i16 %42 to i32
  %44 = add i32 %40, %43
  %45 = mul i32 %44, 62500
  %46 = load i32, ptr @offset, align 4
  %47 = add i32 %45, %46
  %48 = load i32, ptr %14, align 4
  %49 = lshr i32 %48, 1
  %50 = add i32 %47, %49
  %51 = udiv i32 %50, %48
  %52 = lshr i32 %51, 8
  %53 = trunc i32 %52 to i8
  store i8 %53, ptr %1, align 1
  %54 = trunc i32 %51 to i8
  %55 = getelementptr i8, ptr %1, i32 1
  store i8 %54, ptr %55, align 1
  %56 = load i8, ptr %6, align 1
  %57 = getelementptr i8, ptr %1, i32 2
  store i8 %56, ptr %57, align 1
  %58 = load i8, ptr %7, align 1
  %59 = getelementptr i8, ptr %1, i32 3
  store i8 %58, ptr %59, align 1
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr inbounds %struct.tuner_simple_priv, ptr %60, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  switch i32 %62, label %100 [
    i32 63, label %63
    i32 78, label %63
    i32 67, label %69
    i32 68, label %78
    i32 42, label %78
  ]

63:                                               ; preds = %39, %39
  %64 = icmp eq i32 %4, 8000000
  %65 = icmp ugt i32 %3, 158869999
  %66 = and i1 %65, %64
  br i1 %66, label %67, label %100

67:                                               ; preds = %63
  %68 = or i8 %58, 8
  br label %98

69:                                               ; preds = %39
  %70 = icmp ult i32 %3, 161000000
  %71 = icmp ult i32 %3, 444000000
  %72 = select i1 %71, i8 2, i8 4
  %73 = select i1 %70, i8 1, i8 %72
  %74 = or i8 %58, %73
  store i8 %74, ptr %59, align 1
  %75 = icmp eq i32 %4, 8000000
  br i1 %75, label %76, label %100

76:                                               ; preds = %69
  %77 = or i8 %74, 8
  br label %98

78:                                               ; preds = %39, %39
  %79 = load i32, ptr %60, align 4
  %80 = getelementptr [64 x i32], ptr @dtv_input, i32 0, i32 %79
  %81 = load i32, ptr %80, align 4
  %82 = icmp eq i32 %81, 0
  %83 = icmp eq i32 %2, 2
  %84 = zext i1 %83 to i32
  %85 = select i1 %82, i32 %84, i32 %81
  switch i32 %62, label %100 [
    i32 68, label %86
    i32 42, label %92
  ]

86:                                               ; preds = %78
  %87 = icmp eq i32 %85, 1
  br i1 %87, label %88, label %90

88:                                               ; preds = %86
  %89 = or i8 %58, 8
  br label %98

90:                                               ; preds = %86
  %91 = and i8 %58, -9
  br label %98

92:                                               ; preds = %78
  %93 = icmp eq i32 %85, 1
  br i1 %93, label %94, label %96

94:                                               ; preds = %92
  %95 = or i8 %58, 1
  br label %98

96:                                               ; preds = %92
  %97 = and i8 %58, -2
  br label %98

98:                                               ; preds = %96, %94, %90, %88, %76, %67
  %99 = phi i8 [ %68, %67 ], [ %77, %76 ], [ %95, %94 ], [ %97, %96 ], [ %89, %88 ], [ %91, %90 ]
  store i8 %99, ptr %59, align 1
  br label %100

100:                                              ; preds = %98, %78, %69, %63, %39
  %101 = phi i8 [ %58, %39 ], [ %58, %63 ], [ %74, %69 ], [ %58, %78 ], [ %99, %98 ]
  %102 = load i32, ptr @debug, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %124, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.tuner_simple_priv, ptr %10, i32 0, i32 2
  %106 = getelementptr inbounds %struct.tuner_simple_priv, ptr %10, i32 0, i32 2, i32 3
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.tuner_simple_priv, ptr %10, i32 0, i32 2, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = getelementptr inbounds %struct.i2c_adapter, ptr %109, i32 0, i32 11
  %113 = load i32, ptr %112, align 4
  br label %114

114:                                              ; preds = %111, %104
  %115 = phi i32 [ %113, %111 ], [ -1, %104 ]
  %116 = load i8, ptr %105, align 4
  %117 = zext i8 %116 to i32
  %118 = load ptr, ptr %12, align 4
  %119 = and i32 %52, 255
  %120 = and i32 %51, 255
  %121 = zext i8 %56 to i32
  %122 = zext i8 %101 to i32
  %123 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef %107, i32 noundef %115, i32 noundef %117, ptr noundef %118, i32 noundef %51, i32 noundef %119, i32 noundef %120, i32 noundef %121, i32 noundef %122) #9
  br label %124

124:                                              ; preds = %114, %100
  %125 = load i32, ptr %14, align 4
  %126 = mul i32 %125, %51
  %127 = load i16, ptr %41, align 2
  %128 = zext i16 %127 to i32
  %129 = sub i32 %126, %128
  br label %130

130:                                              ; preds = %124, %35, %27
  %131 = phi i32 [ %129, %124 ], [ 0, %27 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #10
  ret i32 %131
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @simple_tuner_params(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.tunertype, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.tunertype, ptr %6, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %18, %10
  %14 = phi i32 [ 0, %10 ], [ %19, %18 ]
  %15 = getelementptr %struct.tuner_params, ptr %12, i32 %14
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw i32 %14, 1
  %20 = icmp eq i32 %19, %8
  br i1 %20, label %24, label %13

21:                                               ; preds = %13, %2
  %22 = phi i32 [ 0, %2 ], [ %14, %13 ]
  %23 = icmp eq i32 %22, %8
  br i1 %23, label %24, label %50

24:                                               ; preds = %21, %18
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %79, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 2
  %29 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 2, i32 3
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 2, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 11
  %36 = load i32, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %27
  %38 = phi i32 [ %36, %34 ], [ -1, %27 ]
  %39 = load i8, ptr %28, align 4
  %40 = zext i8 %39 to i32
  %41 = icmp ult i32 %1, 5
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = getelementptr inbounds [5 x ptr], ptr @switch.table.simple_tuner_params.36, i32 0, i32 %1
  %44 = load ptr, ptr %43, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = phi ptr [ %44, %42 ], [ @.str.21, %37 ]
  %47 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %30, i32 noundef %38, i32 noundef %40, ptr noundef nonnull %46, i32 noundef %48) #9
  br label %50

50:                                               ; preds = %45, %21
  %51 = phi i32 [ 0, %45 ], [ %22, %21 ]
  %52 = load i32, ptr @debug, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %79, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 2
  %56 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 2, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.tuner_simple_priv, ptr %4, i32 0, i32 2, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.i2c_adapter, ptr %59, i32 0, i32 11
  %63 = load i32, ptr %62, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = phi i32 [ %63, %61 ], [ -1, %54 ]
  %66 = load i8, ptr %55, align 4
  %67 = zext i8 %66 to i32
  %68 = getelementptr inbounds %struct.tunertype, ptr %6, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr %struct.tuner_params, ptr %69, i32 %51
  %71 = load i32, ptr %70, align 4
  %72 = icmp ult i32 %71, 5
  br i1 %72, label %73, label %76

73:                                               ; preds = %64
  %74 = getelementptr inbounds [5 x ptr], ptr @switch.table.simple_tuner_params.36, i32 0, i32 %71
  %75 = load ptr, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %64
  %77 = phi ptr [ %75, %73 ], [ @.str.21, %64 ]
  %78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %57, i32 noundef %65, i32 noundef %67, i32 noundef %51, ptr noundef nonnull %77) #9
  br label %79

79:                                               ; preds = %76, %50, %24
  %80 = phi i32 [ %51, %76 ], [ %51, %50 ], [ 0, %24 ]
  %81 = getelementptr inbounds %struct.tunertype, ptr %6, i32 0, i32 2
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr %struct.tuner_params, ptr %82, i32 %80
  ret ptr %83
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @simple_config_lookup(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.tuner_params, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %5
  %12 = load i32, ptr %2, align 4
  %13 = getelementptr inbounds %struct.tuner_params, ptr %1, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  br label %15

15:                                               ; preds = %21, %11
  %16 = phi i32 [ 0, %11 ], [ %22, %21 ]
  %17 = getelementptr %struct.tuner_range, ptr %14, i32 %16
  %18 = load i16, ptr %17, align 2
  %19 = zext i16 %18 to i32
  %20 = icmp ugt i32 %12, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = add nuw i32 %16, 1
  %23 = icmp eq i32 %22, %9
  br i1 %23, label %27, label %15

24:                                               ; preds = %15, %5
  %25 = phi i32 [ 0, %5 ], [ %16, %15 ]
  %26 = icmp eq i32 %25, %9
  br i1 %26, label %27, label %61

27:                                               ; preds = %24, %21
  %28 = load i32, ptr @debug, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = add i32 %9, -1
  br label %54

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2
  %34 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2, i32 3
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 11
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi i32 [ %41, %39 ], [ -1, %32 ]
  %44 = load i8, ptr %33, align 4
  %45 = zext i8 %44 to i32
  %46 = load i32, ptr %2, align 4
  %47 = getelementptr inbounds %struct.tuner_params, ptr %1, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = add i32 %9, -1
  %50 = getelementptr %struct.tuner_range, ptr %48, i32 %49
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %35, i32 noundef %43, i32 noundef %45, i32 noundef %46, i32 noundef %52) #9
  br label %54

54:                                               ; preds = %42, %30
  %55 = phi i32 [ %31, %30 ], [ %49, %42 ]
  %56 = getelementptr inbounds %struct.tuner_params, ptr %1, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr %struct.tuner_range, ptr %57, i32 %55
  %59 = load i16, ptr %58, align 2
  %60 = zext i16 %59 to i32
  store i32 %60, ptr %2, align 4
  br label %61

61:                                               ; preds = %54, %24
  %62 = phi i32 [ %55, %54 ], [ %25, %24 ]
  %63 = getelementptr inbounds %struct.tuner_params, ptr %1, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr %struct.tuner_range, ptr %64, i32 %62, i32 1
  %66 = load i8, ptr %65, align 2
  store i8 %66, ptr %3, align 1
  %67 = load ptr, ptr %63, align 4
  %68 = getelementptr %struct.tuner_range, ptr %67, i32 %62, i32 2
  %69 = load i8, ptr %68, align 1
  store i8 %69, ptr %4, align 1
  %70 = load i32, ptr @debug, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %95, label %72

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2
  %74 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = getelementptr inbounds %struct.i2c_adapter, ptr %77, i32 0, i32 11
  %81 = load i32, ptr %80, align 4
  br label %82

82:                                               ; preds = %79, %72
  %83 = phi i32 [ %81, %79 ], [ -1, %72 ]
  %84 = load i8, ptr %73, align 4
  %85 = zext i8 %84 to i32
  %86 = load i32, ptr %2, align 4
  %87 = lshr i32 %86, 4
  %88 = and i32 %86, 15
  %89 = mul nuw nsw i32 %88, 100
  %90 = lshr i32 %89, 4
  %91 = load i8, ptr %3, align 1
  %92 = zext i8 %91 to i32
  %93 = zext i8 %69 to i32
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %75, i32 noundef %83, i32 noundef %85, i32 noundef %87, i32 noundef %90, i32 noundef %86, i32 noundef %62, i32 noundef %92, i32 noundef %93) #9
  br label %95

95:                                               ; preds = %82, %61
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_clients_command(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @simple_set_aux_byte(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca [2 x i8], align 2
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #10
  %8 = and i8 %1, -57
  %9 = or i8 %8, 24
  store i8 %9, ptr %5, align 2
  %10 = getelementptr inbounds [2 x i8], ptr %5, i32 0, i32 1
  store i8 %2, ptr %10, align 1
  %11 = load i32, ptr @debug, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2
  %15 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi i32 [ %22, %20 ], [ -1, %13 ]
  %25 = load i8, ptr %14, align 4
  %26 = zext i8 %25 to i32
  %27 = zext i8 %9 to i32
  %28 = zext i8 %2 to i32
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef %16, i32 noundef %24, i32 noundef %26, i32 noundef %27, i32 noundef %28) #9
  br label %30

30:                                               ; preds = %23, %3
  %31 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  %32 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %32, align 4, !annotation !8
  %33 = load i8, ptr %31, align 4
  %34 = zext i8 %33 to i16
  store i16 %34, ptr %4, align 4
  %35 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %35, align 2
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %5, ptr %36, align 4
  %37 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %4, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  %40 = add i32 %39, -1
  %41 = icmp ult i32 %40, 2
  br i1 %41, label %55, label %42

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.tuner_simple_priv, ptr %7, i32 0, i32 2, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = load ptr, ptr %37, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = getelementptr inbounds %struct.i2c_adapter, ptr %45, i32 0, i32 11
  %49 = load i32, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %42
  %51 = phi i32 [ %49, %47 ], [ -1, %42 ]
  %52 = load i8, ptr %31, align 4
  %53 = zext i8 %52 to i32
  %54 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %44, i32 noundef %51, i32 noundef %53, i32 noundef %39) #9
  br label %55

55:                                               ; preds = %50, %30
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind }
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
!9 = !{i8 0, i8 2}
