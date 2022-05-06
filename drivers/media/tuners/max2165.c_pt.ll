; ModuleID = '/llk/IR/drivers/media/tuners/max2165.c_pt.bc'
source_filename = "../drivers/media/tuners/max2165.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_max2165_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22max2165_attach\22\09\09\09\09\09"
module asm "__kstrtabns_max2165_attach:\09\09\09\09\09"
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
%struct.max2165_priv = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.max2165_config = type { i8, i8 }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [48 x i8] c"parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [24 x i8] c"\017max2165: %s(%d-%04x)\0A\00", align 1
@__func__.max2165_attach = private unnamed_addr constant [15 x i8] c"max2165_attach\00", align 1
@max2165_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Maxim MAX2165\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 470000000, i32 862000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @max2165_release, ptr @max2165_init, ptr @max2165_sleep, ptr null, ptr null, ptr @max2165_set_params, ptr null, ptr null, ptr @max2165_get_frequency, ptr @max2165_get_bandwidth, ptr null, ptr @max2165_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_max2165_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_max2165_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_max2165_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @max2165_attach to i32), ptr @__kstrtab_max2165_attach, ptr @__kstrtabns_max2165_attach }, section "___ksymtab+max2165_attach", align 4
@__UNIQUE_ID_author251 = internal constant [48 x i8] c"author=David T. L. Wong <davidtlwong@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description252 = internal constant [47 x i8] c"description=Maxim MAX2165 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"\017max2165: %s()\0A\00", align 1
@__func__.max2165_release = private unnamed_addr constant [16 x i8] c"max2165_release\00", align 1
@__func__.max2165_sleep = private unnamed_addr constant [14 x i8] c"max2165_sleep\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"\016MAX2165: bandwidth %d Hz not supported.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"\017max2165: %s() frequency=%d\0A\00", align 1
@__func__.max2165_set_params = private unnamed_addr constant [19 x i8] c"max2165_set_params\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"\017max2165: %s: error reg=0x%x, ret=%i\0A\00", align 1
@__func__.max2165_read_reg = private unnamed_addr constant [17 x i8] c"max2165_read_reg\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"\017max2165: %s: reg=0x%02X, data=0x%02X\0A\00", align 1
@__func__.max2165_write_reg = private unnamed_addr constant [18 x i8] c"max2165_write_reg\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"\017max2165: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"\017max2165: tf = %X\0A\00", align 1
@__func__.max2165_get_frequency = private unnamed_addr constant [22 x i8] c"max2165_get_frequency\00", align 1
@__func__.max2165_get_bandwidth = private unnamed_addr constant [22 x i8] c"max2165_get_bandwidth\00", align 1
@__func__.max2165_get_status = private unnamed_addr constant [19 x i8] c"max2165_get_status\00", align 1
@__func__.max2165_init = private unnamed_addr constant [13 x i8] c"max2165_init\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"\017max2165: tf_ntch_low_cfg = 0x%X\0A\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"\017max2165: tf_ntch_hi_cfg = 0x%X\0A\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"\017max2165: tf_balun_low_ref = 0x%X\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"\017max2165: tf_balun_hi_ref = 0x%X\0A\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"\017max2165: bb_filter_7mhz_cfg = 0x%X\0A\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"\017max2165: bb_filter_8mhz_cfg = 0x%X\0A\00", align 1
@.str.14 = private unnamed_addr constant [54 x i8] c"\017max2165: auto VCO active: %d, auto VCO success: %d\0A\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"\017max2165: PLL locked: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [50 x i8] c"\017max2165: DC offset low: %d, DC offset high: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [42 x i8] c"\017max2165: Signal lvl over threshold: %d\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"\017max2165: VCO: %d, VCO Sub-band: %d, ADC: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author251, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description252, ptr @__UNIQUE_ID_license253, ptr @__ksymtab_max2165_attach, ptr @__param_debug], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @max2165_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.i2c_adapter, ptr %1, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i32 [ %10, %8 ], [ -1, %6 ]
  %13 = icmp eq ptr %2, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i8, ptr %2, align 1
  %16 = zext i8 %15 to i32
  br label %17

17:                                               ; preds = %14, %11
  %18 = phi i32 [ %16, %14 ], [ -1, %11 ]
  %19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.max2165_attach, i32 noundef %12, i32 noundef %18) #7
  br label %20

20:                                               ; preds = %17, %3
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 24) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %25, ptr noundef nonnull align 4 dereferenceable(220) @max2165_tuner_ops, i32 220, i1 false)
  store ptr %2, ptr %22, align 8
  %26 = getelementptr inbounds %struct.max2165_priv, ptr %22, i32 0, i32 1
  store ptr %1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %22, ptr %27, align 4
  %28 = tail call i32 @max2165_init(ptr noundef %0)
  tail call fastcc void @max2165_debug_status(ptr noundef nonnull %22)
  br label %29

29:                                               ; preds = %24, %20
  %30 = phi ptr [ %0, %24 ], [ null, %20 ]
  ret ptr %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max2165_init(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 8
  %4 = alloca [3 x i8], align 1
  %5 = alloca [2 x i8], align 2
  %6 = alloca %struct.i2c_msg, align 8
  %7 = alloca i8, align 1
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca [2 x i8], align 2
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca [2 x i8], align 2
  %13 = alloca %struct.i2c_msg, align 8
  %14 = alloca [2 x i8], align 2
  %15 = alloca %struct.i2c_msg, align 8
  %16 = alloca [2 x i8], align 2
  %17 = alloca %struct.i2c_msg, align 8
  %18 = alloca [2 x i8], align 2
  %19 = alloca %struct.i2c_msg, align 8
  %20 = alloca [2 x i8], align 2
  %21 = alloca %struct.i2c_msg, align 8
  %22 = alloca [2 x i8], align 2
  %23 = alloca %struct.i2c_msg, align 8
  %24 = alloca [2 x i8], align 2
  %25 = alloca %struct.i2c_msg, align 8
  %26 = alloca [2 x i8], align 2
  %27 = alloca %struct.i2c_msg, align 8
  %28 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr @debug, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %1
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.max2165_init) #7
  br label %34

34:                                               ; preds = %32, %1
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = tail call i32 %36(ptr noundef %0, i32 noundef 1) #9
  br label %40

40:                                               ; preds = %38, %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %26) #9
  store i8 1, ptr %26, align 2
  %41 = getelementptr inbounds i8, ptr %26, i32 1
  store i8 24, ptr %41, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %27) #9
  store i64 8589934592, ptr %27, align 8
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %27, i32 0, i32 3
  store ptr %26, ptr %42, align 8
  %43 = load ptr, ptr %29, align 4
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i16
  store i16 %45, ptr %27, align 8
  %46 = load i32, ptr @debug, align 4
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 1, i32 noundef 24) #7
  br label %50

50:                                               ; preds = %48, %40
  %51 = getelementptr inbounds %struct.max2165_priv, ptr %29, i32 0, i32 1
  %52 = load ptr, ptr %51, align 4
  %53 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %27, i32 noundef 1) #9
  %54 = icmp ne i32 %53, 1
  %55 = load i32, ptr @debug, align 4
  %56 = icmp ne i32 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %58, label %61

58:                                               ; preds = %50
  %59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 1, i32 noundef 24, i32 noundef %53) #7
  %60 = load i32, ptr @debug, align 4
  br label %61

61:                                               ; preds = %58, %50
  %62 = phi i32 [ %55, %50 ], [ %60, %58 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %27) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %26) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %24) #9
  store i8 5, ptr %24, align 2
  %63 = getelementptr inbounds i8, ptr %24, i32 1
  store i8 1, ptr %63, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %25) #9
  store i64 8589934592, ptr %25, align 8
  %64 = getelementptr inbounds %struct.i2c_msg, ptr %25, i32 0, i32 3
  store ptr %24, ptr %64, align 8
  %65 = load ptr, ptr %29, align 4
  %66 = load i8, ptr %65, align 1
  %67 = zext i8 %66 to i16
  store i16 %67, ptr %25, align 8
  %68 = icmp sgt i32 %62, 1
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 5, i32 noundef 1) #7
  br label %71

71:                                               ; preds = %69, %61
  %72 = load ptr, ptr %51, align 4
  %73 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %25, i32 noundef 1) #9
  %74 = icmp ne i32 %73, 1
  %75 = load i32, ptr @debug, align 4
  %76 = icmp ne i32 %75, 0
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %81

78:                                               ; preds = %71
  %79 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 5, i32 noundef 1, i32 noundef %73) #7
  %80 = load i32, ptr @debug, align 4
  br label %81

81:                                               ; preds = %78, %71
  %82 = phi i32 [ %75, %71 ], [ %80, %78 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %25) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %24) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %22) #9
  store i8 6, ptr %22, align 2
  %83 = getelementptr inbounds i8, ptr %22, i32 1
  store i8 122, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %23) #9
  store i64 8589934592, ptr %23, align 8
  %84 = getelementptr inbounds %struct.i2c_msg, ptr %23, i32 0, i32 3
  store ptr %22, ptr %84, align 8
  %85 = load ptr, ptr %29, align 4
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i16
  store i16 %87, ptr %23, align 8
  %88 = icmp sgt i32 %82, 1
  br i1 %88, label %89, label %91

89:                                               ; preds = %81
  %90 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 6, i32 noundef 122) #7
  br label %91

91:                                               ; preds = %89, %81
  %92 = load ptr, ptr %51, align 4
  %93 = call i32 @i2c_transfer(ptr noundef %92, ptr noundef nonnull %23, i32 noundef 1) #9
  %94 = icmp ne i32 %93, 1
  %95 = load i32, ptr @debug, align 4
  %96 = icmp ne i32 %95, 0
  %97 = select i1 %94, i1 %96, i1 false
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 6, i32 noundef 122, i32 noundef %93) #7
  %100 = load i32, ptr @debug, align 4
  br label %101

101:                                              ; preds = %98, %91
  %102 = phi i32 [ %95, %91 ], [ %100, %98 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %23) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %22) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %20) #9
  store i8 7, ptr %20, align 2
  %103 = getelementptr inbounds i8, ptr %20, i32 1
  store i8 8, ptr %103, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %21) #9
  store i64 8589934592, ptr %21, align 8
  %104 = getelementptr inbounds %struct.i2c_msg, ptr %21, i32 0, i32 3
  store ptr %20, ptr %104, align 8
  %105 = load ptr, ptr %29, align 4
  %106 = load i8, ptr %105, align 1
  %107 = zext i8 %106 to i16
  store i16 %107, ptr %21, align 8
  %108 = icmp sgt i32 %102, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %101
  %110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 7, i32 noundef 8) #7
  br label %111

111:                                              ; preds = %109, %101
  %112 = load ptr, ptr %51, align 4
  %113 = call i32 @i2c_transfer(ptr noundef %112, ptr noundef nonnull %21, i32 noundef 1) #9
  %114 = icmp ne i32 %113, 1
  %115 = load i32, ptr @debug, align 4
  %116 = icmp ne i32 %115, 0
  %117 = select i1 %114, i1 %116, i1 false
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 7, i32 noundef 8, i32 noundef %113) #7
  %120 = load i32, ptr @debug, align 4
  br label %121

121:                                              ; preds = %118, %111
  %122 = phi i32 [ %115, %111 ], [ %120, %118 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %21) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %20) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #9
  store i8 8, ptr %18, align 2
  %123 = getelementptr inbounds i8, ptr %18, i32 1
  store i8 64, ptr %123, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %19) #9
  store i64 8589934592, ptr %19, align 8
  %124 = getelementptr inbounds %struct.i2c_msg, ptr %19, i32 0, i32 3
  store ptr %18, ptr %124, align 8
  %125 = load ptr, ptr %29, align 4
  %126 = load i8, ptr %125, align 1
  %127 = zext i8 %126 to i16
  store i16 %127, ptr %19, align 8
  %128 = icmp sgt i32 %122, 1
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 8, i32 noundef 64) #7
  br label %131

131:                                              ; preds = %129, %121
  %132 = load ptr, ptr %51, align 4
  %133 = call i32 @i2c_transfer(ptr noundef %132, ptr noundef nonnull %19, i32 noundef 1) #9
  %134 = icmp ne i32 %133, 1
  %135 = load i32, ptr @debug, align 4
  %136 = icmp ne i32 %135, 0
  %137 = select i1 %134, i1 %136, i1 false
  br i1 %137, label %138, label %141

138:                                              ; preds = %131
  %139 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 8, i32 noundef 64, i32 noundef %133) #7
  %140 = load i32, ptr @debug, align 4
  br label %141

141:                                              ; preds = %138, %131
  %142 = phi i32 [ %135, %131 ], [ %140, %138 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %19) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #9
  store i8 9, ptr %16, align 2
  %143 = getelementptr inbounds i8, ptr %16, i32 1
  store i8 -124, ptr %143, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %17) #9
  store i64 8589934592, ptr %17, align 8
  %144 = getelementptr inbounds %struct.i2c_msg, ptr %17, i32 0, i32 3
  store ptr %16, ptr %144, align 8
  %145 = load ptr, ptr %29, align 4
  %146 = load i8, ptr %145, align 1
  %147 = zext i8 %146 to i16
  store i16 %147, ptr %17, align 8
  %148 = icmp sgt i32 %142, 1
  br i1 %148, label %149, label %151

149:                                              ; preds = %141
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 9, i32 noundef 132) #7
  br label %151

151:                                              ; preds = %149, %141
  %152 = load ptr, ptr %51, align 4
  %153 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %17, i32 noundef 1) #9
  %154 = icmp ne i32 %153, 1
  %155 = load i32, ptr @debug, align 4
  %156 = icmp ne i32 %155, 0
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %158, label %161

158:                                              ; preds = %151
  %159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 9, i32 noundef 132, i32 noundef %153) #7
  %160 = load i32, ptr @debug, align 4
  br label %161

161:                                              ; preds = %158, %151
  %162 = phi i32 [ %155, %151 ], [ %160, %158 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %17) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #9
  store i8 10, ptr %14, align 2
  %163 = getelementptr inbounds i8, ptr %14, i32 1
  store i8 -61, ptr %163, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %15) #9
  store i64 8589934592, ptr %15, align 8
  %164 = getelementptr inbounds %struct.i2c_msg, ptr %15, i32 0, i32 3
  store ptr %14, ptr %164, align 8
  %165 = load ptr, ptr %29, align 4
  %166 = load i8, ptr %165, align 1
  %167 = zext i8 %166 to i16
  store i16 %167, ptr %15, align 8
  %168 = icmp sgt i32 %162, 1
  br i1 %168, label %169, label %171

169:                                              ; preds = %161
  %170 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 10, i32 noundef 195) #7
  br label %171

171:                                              ; preds = %169, %161
  %172 = load ptr, ptr %51, align 4
  %173 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %15, i32 noundef 1) #9
  %174 = icmp ne i32 %173, 1
  %175 = load i32, ptr @debug, align 4
  %176 = icmp ne i32 %175, 0
  %177 = select i1 %174, i1 %176, i1 false
  br i1 %177, label %178, label %181

178:                                              ; preds = %171
  %179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 10, i32 noundef 195, i32 noundef %173) #7
  %180 = load i32, ptr @debug, align 4
  br label %181

181:                                              ; preds = %178, %171
  %182 = phi i32 [ %175, %171 ], [ %180, %178 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %15) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #9
  store i8 11, ptr %12, align 2
  %183 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 117, ptr %183, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %13) #9
  store i64 8589934592, ptr %13, align 8
  %184 = getelementptr inbounds %struct.i2c_msg, ptr %13, i32 0, i32 3
  store ptr %12, ptr %184, align 8
  %185 = load ptr, ptr %29, align 4
  %186 = load i8, ptr %185, align 1
  %187 = zext i8 %186 to i16
  store i16 %187, ptr %13, align 8
  %188 = icmp sgt i32 %182, 1
  br i1 %188, label %189, label %191

189:                                              ; preds = %181
  %190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 11, i32 noundef 117) #7
  br label %191

191:                                              ; preds = %189, %181
  %192 = load ptr, ptr %51, align 4
  %193 = call i32 @i2c_transfer(ptr noundef %192, ptr noundef nonnull %13, i32 noundef 1) #9
  %194 = icmp ne i32 %193, 1
  %195 = load i32, ptr @debug, align 4
  %196 = icmp ne i32 %195, 0
  %197 = select i1 %194, i1 %196, i1 false
  br i1 %197, label %198, label %201

198:                                              ; preds = %191
  %199 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 11, i32 noundef 117, i32 noundef %193) #7
  %200 = load i32, ptr @debug, align 4
  br label %201

201:                                              ; preds = %198, %191
  %202 = phi i32 [ %195, %191 ], [ %200, %198 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %13) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #9
  store i8 12, ptr %10, align 2
  %203 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 0, ptr %203, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %11) #9
  store i64 8589934592, ptr %11, align 8
  %204 = getelementptr inbounds %struct.i2c_msg, ptr %11, i32 0, i32 3
  store ptr %10, ptr %204, align 8
  %205 = load ptr, ptr %29, align 4
  %206 = load i8, ptr %205, align 1
  %207 = zext i8 %206 to i16
  store i16 %207, ptr %11, align 8
  %208 = icmp sgt i32 %202, 1
  br i1 %208, label %209, label %211

209:                                              ; preds = %201
  %210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 12, i32 noundef 0) #7
  br label %211

211:                                              ; preds = %209, %201
  %212 = load ptr, ptr %51, align 4
  %213 = call i32 @i2c_transfer(ptr noundef %212, ptr noundef nonnull %11, i32 noundef 1) #9
  %214 = icmp ne i32 %213, 1
  %215 = load i32, ptr @debug, align 4
  %216 = icmp ne i32 %215, 0
  %217 = select i1 %214, i1 %216, i1 false
  br i1 %217, label %218, label %221

218:                                              ; preds = %211
  %219 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 12, i32 noundef 0, i32 noundef %213) #7
  %220 = load i32, ptr @debug, align 4
  br label %221

221:                                              ; preds = %218, %211
  %222 = phi i32 [ %215, %211 ], [ %220, %218 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %11) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 13, ptr %8, align 2
  %223 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 0, ptr %223, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  store i64 8589934592, ptr %9, align 8
  %224 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %224, align 8
  %225 = load ptr, ptr %29, align 4
  %226 = load i8, ptr %225, align 1
  %227 = zext i8 %226 to i16
  store i16 %227, ptr %9, align 8
  %228 = icmp sgt i32 %222, 1
  br i1 %228, label %229, label %231

229:                                              ; preds = %221
  %230 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 13, i32 noundef 0) #7
  br label %231

231:                                              ; preds = %229, %221
  %232 = load ptr, ptr %51, align 4
  %233 = call i32 @i2c_transfer(ptr noundef %232, ptr noundef nonnull %9, i32 noundef 1) #9
  %234 = icmp ne i32 %233, 1
  %235 = load i32, ptr @debug, align 4
  %236 = icmp ne i32 %235, 0
  %237 = select i1 %234, i1 %236, i1 false
  br i1 %237, label %238, label %240

238:                                              ; preds = %231
  %239 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 13, i32 noundef 0, i32 noundef %233) #7
  br label %240

240:                                              ; preds = %238, %231
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  %241 = load ptr, ptr %29, align 4
  %242 = getelementptr inbounds %struct.max2165_config, ptr %241, i32 0, i32 1
  %243 = load i8, ptr %242, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #9
  store i8 0, ptr %7, align 1, !annotation !8
  %244 = call fastcc i32 @max2165_read_reg(ptr noundef %29, i8 noundef zeroext 6, ptr noundef nonnull %7) #9
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %275

246:                                              ; preds = %240
  %247 = lshr i8 %243, 1
  %248 = icmp eq i8 %247, 2
  %249 = and i8 %247, 7
  %250 = select i1 %248, i8 7, i8 %249
  %251 = load i8, ptr %7, align 1
  %252 = and i8 %251, -8
  %253 = or i8 %252, %250
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #9
  store i8 6, ptr %5, align 2
  %254 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %253, ptr %254, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #9
  store i64 8589934592, ptr %6, align 8
  %255 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %5, ptr %255, align 8
  %256 = load ptr, ptr %29, align 4
  %257 = load i8, ptr %256, align 1
  %258 = zext i8 %257 to i16
  store i16 %258, ptr %6, align 8
  %259 = load i32, ptr @debug, align 4
  %260 = icmp sgt i32 %259, 1
  br i1 %260, label %261, label %264

261:                                              ; preds = %246
  %262 = zext i8 %253 to i32
  %263 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 6, i32 noundef %262) #7
  br label %264

264:                                              ; preds = %261, %246
  %265 = load ptr, ptr %51, align 4
  %266 = call i32 @i2c_transfer(ptr noundef %265, ptr noundef nonnull %6, i32 noundef 1) #9
  %267 = icmp ne i32 %266, 1
  %268 = load i32, ptr @debug, align 4
  %269 = icmp ne i32 %268, 0
  %270 = select i1 %267, i1 %269, i1 false
  br i1 %270, label %271, label %274

271:                                              ; preds = %264
  %272 = zext i8 %253 to i32
  %273 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 6, i32 noundef %272, i32 noundef %266) #7
  br label %274

274:                                              ; preds = %271, %264
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #9
  br label %275

275:                                              ; preds = %274, %240
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #9
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %4, i8 0, i32 3, i1 false) #9, !annotation !8
  %276 = getelementptr inbounds i8, ptr %2, i32 1
  %277 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 13, ptr %2, align 2
  store i8 1, ptr %276, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i64 8589934592, ptr %3, align 8
  store ptr %2, ptr %277, align 8
  %278 = load ptr, ptr %29, align 4
  %279 = load i8, ptr %278, align 1
  %280 = zext i8 %279 to i16
  store i16 %280, ptr %3, align 8
  %281 = load i32, ptr @debug, align 4
  %282 = icmp sgt i32 %281, 1
  br i1 %282, label %283, label %285

283:                                              ; preds = %275
  %284 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 13, i32 noundef 1) #7
  br label %285

285:                                              ; preds = %283, %275
  %286 = load ptr, ptr %51, align 4
  %287 = call i32 @i2c_transfer(ptr noundef %286, ptr noundef nonnull %3, i32 noundef 1) #9
  %288 = icmp ne i32 %287, 1
  %289 = load i32, ptr @debug, align 4
  %290 = icmp ne i32 %289, 0
  %291 = select i1 %288, i1 %290, i1 false
  br i1 %291, label %292, label %294

292:                                              ; preds = %285
  %293 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 13, i32 noundef 1, i32 noundef %287) #7
  br label %294

294:                                              ; preds = %292, %285
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %295 = call fastcc i32 @max2165_read_reg(ptr noundef %29, i8 noundef zeroext 16, ptr noundef nonnull %4) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 13, ptr %2, align 2
  store i8 2, ptr %276, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i64 8589934592, ptr %3, align 8
  store ptr %2, ptr %277, align 8
  %296 = load ptr, ptr %29, align 4
  %297 = load i8, ptr %296, align 1
  %298 = zext i8 %297 to i16
  store i16 %298, ptr %3, align 8
  %299 = load i32, ptr @debug, align 4
  %300 = icmp sgt i32 %299, 1
  br i1 %300, label %301, label %303

301:                                              ; preds = %294
  %302 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 13, i32 noundef 2) #7
  br label %303

303:                                              ; preds = %301, %294
  %304 = load ptr, ptr %51, align 4
  %305 = call i32 @i2c_transfer(ptr noundef %304, ptr noundef nonnull %3, i32 noundef 1) #9
  %306 = icmp ne i32 %305, 1
  %307 = load i32, ptr @debug, align 4
  %308 = icmp ne i32 %307, 0
  %309 = select i1 %306, i1 %308, i1 false
  br i1 %309, label %310, label %312

310:                                              ; preds = %303
  %311 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 13, i32 noundef 2, i32 noundef %305) #7
  br label %312

312:                                              ; preds = %310, %303
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %313 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 1
  %314 = call fastcc i32 @max2165_read_reg(ptr noundef %29, i8 noundef zeroext 16, ptr noundef %313) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 13, ptr %2, align 2
  store i8 3, ptr %276, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i64 8589934592, ptr %3, align 8
  store ptr %2, ptr %277, align 8
  %315 = load ptr, ptr %29, align 4
  %316 = load i8, ptr %315, align 1
  %317 = zext i8 %316 to i16
  store i16 %317, ptr %3, align 8
  %318 = load i32, ptr @debug, align 4
  %319 = icmp sgt i32 %318, 1
  br i1 %319, label %320, label %322

320:                                              ; preds = %312
  %321 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 13, i32 noundef 3) #7
  br label %322

322:                                              ; preds = %320, %312
  %323 = load ptr, ptr %51, align 4
  %324 = call i32 @i2c_transfer(ptr noundef %323, ptr noundef nonnull %3, i32 noundef 1) #9
  %325 = icmp ne i32 %324, 1
  %326 = load i32, ptr @debug, align 4
  %327 = icmp ne i32 %326, 0
  %328 = select i1 %325, i1 %327, i1 false
  br i1 %328, label %329, label %331

329:                                              ; preds = %322
  %330 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 13, i32 noundef 3, i32 noundef %324) #7
  br label %331

331:                                              ; preds = %329, %322
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  %332 = getelementptr inbounds [3 x i8], ptr %4, i32 0, i32 2
  %333 = call fastcc i32 @max2165_read_reg(ptr noundef %29, i8 noundef zeroext 16, ptr noundef %332) #9
  %334 = load i8, ptr %4, align 1
  %335 = lshr i8 %334, 4
  %336 = getelementptr inbounds %struct.max2165_priv, ptr %29, i32 0, i32 4
  store i8 %335, ptr %336, align 4
  %337 = and i8 %334, 15
  %338 = getelementptr inbounds %struct.max2165_priv, ptr %29, i32 0, i32 5
  store i8 %337, ptr %338, align 1
  %339 = load i8, ptr %313, align 1
  %340 = and i8 %339, 15
  %341 = getelementptr inbounds %struct.max2165_priv, ptr %29, i32 0, i32 6
  store i8 %340, ptr %341, align 2
  %342 = lshr i8 %339, 4
  %343 = getelementptr inbounds %struct.max2165_priv, ptr %29, i32 0, i32 7
  store i8 %342, ptr %343, align 1
  %344 = load i8, ptr %332, align 1
  %345 = and i8 %344, 15
  %346 = getelementptr inbounds %struct.max2165_priv, ptr %29, i32 0, i32 8
  store i8 %345, ptr %346, align 4
  %347 = lshr i8 %344, 4
  %348 = getelementptr inbounds %struct.max2165_priv, ptr %29, i32 0, i32 9
  store i8 %347, ptr %348, align 1
  %349 = load i32, ptr @debug, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %384, label %351

351:                                              ; preds = %331
  %352 = zext i8 %335 to i32
  %353 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %352) #7
  %354 = load i32, ptr @debug, align 4
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %384, label %356

356:                                              ; preds = %351
  %357 = load i8, ptr %338, align 1
  %358 = zext i8 %357 to i32
  %359 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %358) #7
  %360 = load i32, ptr @debug, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %384, label %362

362:                                              ; preds = %356
  %363 = load i8, ptr %341, align 2
  %364 = zext i8 %363 to i32
  %365 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %364) #7
  %366 = load i32, ptr @debug, align 4
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %384, label %368

368:                                              ; preds = %362
  %369 = load i8, ptr %343, align 1
  %370 = zext i8 %369 to i32
  %371 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %370) #7
  %372 = load i32, ptr @debug, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %384, label %374

374:                                              ; preds = %368
  %375 = load i8, ptr %346, align 4
  %376 = zext i8 %375 to i32
  %377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %376) #7
  %378 = load i32, ptr @debug, align 4
  %379 = icmp eq i32 %378, 0
  br i1 %379, label %384, label %380

380:                                              ; preds = %374
  %381 = load i8, ptr %348, align 1
  %382 = zext i8 %381 to i32
  %383 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, i32 noundef %382) #7
  br label %384

384:                                              ; preds = %380, %374, %368, %362, %356, %351, %331
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %4) #9
  call fastcc void @max2165_set_bandwidth(ptr noundef %29, i32 noundef 8000000)
  %385 = load ptr, ptr %35, align 4
  %386 = icmp eq ptr %385, null
  br i1 %386, label %389, label %387

387:                                              ; preds = %384
  %388 = call i32 %385(ptr noundef %0, i32 noundef 0) #9
  br label %389

389:                                              ; preds = %387, %384
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max2165_debug_status(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #9
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #9
  store i8 0, ptr %3, align 1, !annotation !8
  %4 = call fastcc i32 @max2165_read_reg(ptr noundef %0, i8 noundef zeroext 17, ptr noundef nonnull %2)
  %5 = call fastcc i32 @max2165_read_reg(ptr noundef %0, i8 noundef zeroext 18, ptr noundef nonnull %3)
  %6 = load i8, ptr %2, align 1
  %7 = lshr i8 %6, 4
  %8 = and i8 %7, 1
  %9 = lshr i8 %6, 3
  %10 = and i8 %9, 1
  %11 = lshr i8 %6, 2
  %12 = and i8 %11, 1
  %13 = and i8 %6, 1
  %14 = load i8, ptr %3, align 1
  %15 = lshr i8 %14, 6
  %16 = lshr i8 %14, 3
  %17 = and i8 %16, 7
  %18 = and i8 %14, 7
  %19 = load i32, ptr @debug, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %52, label %21

21:                                               ; preds = %1
  %22 = lshr i8 %6, 5
  %23 = and i8 %22, 1
  %24 = lshr i8 %6, 6
  %25 = and i8 %24, 1
  %26 = zext i8 %23 to i32
  %27 = zext i8 %25 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %26, i32 noundef %27) #7
  %29 = load i32, ptr @debug, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %52, label %31

31:                                               ; preds = %21
  %32 = zext i8 %8 to i32
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %32) #7
  %34 = load i32, ptr @debug, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %52, label %36

36:                                               ; preds = %31
  %37 = zext i8 %10 to i32
  %38 = zext i8 %12 to i32
  %39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %37, i32 noundef %38) #7
  %40 = load i32, ptr @debug, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = zext i8 %13 to i32
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %43) #7
  %45 = load i32, ptr @debug, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = zext i8 %15 to i32
  %49 = zext i8 %17 to i32
  %50 = zext i8 %18 to i32
  %51 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %48, i32 noundef %49, i32 noundef %50) #7
  br label %52

52:                                               ; preds = %47, %42, %36, %31, %21, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @max2165_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr @debug, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.max2165_release) #7
  br label %8

8:                                                ; preds = %6, %1
  tail call void @kfree(ptr noundef %3) #9
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max2165_sleep(ptr nocapture noundef readnone %0) #0 {
  %2 = load i32, ptr @debug, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %6, label %4

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.max2165_sleep) #7
  br label %6

6:                                                ; preds = %4, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max2165_set_params(ptr noundef %0) #0 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca %struct.i2c_msg, align 8
  %4 = alloca [2 x i8], align 2
  %5 = alloca %struct.i2c_msg, align 8
  %6 = alloca [2 x i8], align 2
  %7 = alloca %struct.i2c_msg, align 8
  %8 = alloca [2 x i8], align 2
  %9 = alloca %struct.i2c_msg, align 8
  %10 = alloca i8, align 1
  %11 = alloca [2 x i8], align 2
  %12 = alloca %struct.i2c_msg, align 8
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %16 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %17 = load i32, ptr %16, align 4
  switch i32 %17, label %23 [
    i32 7000000, label %18
    i32 8000000, label %18
  ]

18:                                               ; preds = %1, %1
  %19 = load i32, ptr %15, align 4
  %20 = getelementptr inbounds %struct.max2165_priv, ptr %14, i32 0, i32 2
  store i32 %19, ptr %20, align 4
  %21 = load i32, ptr @debug, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %25

23:                                               ; preds = %1
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %17) #7
  br label %223

25:                                               ; preds = %18
  %26 = load i32, ptr %15, align 4
  %27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.max2165_set_params, i32 noundef %26) #7
  br label %28

28:                                               ; preds = %25, %18
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = tail call i32 %30(ptr noundef %0, i32 noundef 1) #9
  br label %34

34:                                               ; preds = %32, %28
  %35 = load i32, ptr %16, align 4
  tail call fastcc void @max2165_set_bandwidth(ptr noundef %14, i32 noundef %35)
  %36 = load i32, ptr %20, align 4
  %37 = udiv i32 %36, 1000
  %38 = load ptr, ptr %14, align 4
  %39 = getelementptr inbounds %struct.max2165_config, ptr %38, i32 0, i32 1
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = mul nuw nsw i32 %41, 1000
  %43 = icmp eq i8 %40, 0
  br i1 %43, label %210, label %44

44:                                               ; preds = %34
  %45 = udiv i32 %37, %42
  %46 = mul i32 %45, %42
  %47 = sub i32 %37, %46
  br label %48

48:                                               ; preds = %48, %44
  %49 = phi i32 [ 0, %44 ], [ %60, %48 ]
  %50 = phi i32 [ 0, %44 ], [ %59, %48 ]
  %51 = phi i32 [ %47, %44 ], [ %55, %48 ]
  %52 = shl i32 %51, 1
  %53 = icmp ult i32 %52, %42
  %54 = select i1 %53, i32 0, i32 %42
  %55 = sub i32 %52, %54
  %56 = xor i1 %53, true
  %57 = zext i1 %56 to i32
  %58 = or i32 %50, %57
  %59 = shl i32 %58, 1
  %60 = add nuw nsw i32 %49, 1
  %61 = icmp eq i32 %60, 31
  br i1 %61, label %62, label %48

62:                                               ; preds = %48
  %63 = lshr i32 %59, 12
  %64 = trunc i32 %45 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #9
  store i8 0, ptr %11, align 2
  %65 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %64, ptr %65, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %12) #9
  store i64 8589934592, ptr %12, align 8
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %12, i32 0, i32 3
  store ptr %11, ptr %66, align 8
  %67 = load i8, ptr %38, align 1
  %68 = zext i8 %67 to i16
  store i16 %68, ptr %12, align 8
  %69 = load i32, ptr @debug, align 4
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %74

71:                                               ; preds = %62
  %72 = and i32 %45, 255
  %73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 0, i32 noundef %72) #7
  br label %74

74:                                               ; preds = %71, %62
  %75 = getelementptr inbounds %struct.max2165_priv, ptr %14, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 @i2c_transfer(ptr noundef %76, ptr noundef nonnull %12, i32 noundef 1) #9
  %78 = icmp ne i32 %77, 1
  %79 = load i32, ptr @debug, align 4
  %80 = icmp ne i32 %79, 0
  %81 = select i1 %78, i1 %80, i1 false
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = and i32 %45, 255
  %84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 0, i32 noundef %83, i32 noundef %77) #7
  br label %85

85:                                               ; preds = %82, %74
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %12) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #9
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #9
  store i8 0, ptr %10, align 1, !annotation !8
  %86 = call fastcc i32 @max2165_read_reg(ptr noundef %14, i8 noundef zeroext 1, ptr noundef nonnull %10) #9
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %115

88:                                               ; preds = %85
  %89 = lshr i32 %59, 28
  %90 = trunc i32 %89 to i8
  %91 = load i8, ptr %10, align 1
  %92 = and i8 %91, -16
  %93 = or i8 %92, %90
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #9
  store i8 1, ptr %2, align 2
  %94 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %93, ptr %94, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #9
  store i64 8589934592, ptr %3, align 8
  %95 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store ptr %2, ptr %95, align 8
  %96 = load ptr, ptr %14, align 4
  %97 = load i8, ptr %96, align 1
  %98 = zext i8 %97 to i16
  store i16 %98, ptr %3, align 8
  %99 = load i32, ptr @debug, align 4
  %100 = icmp sgt i32 %99, 1
  br i1 %100, label %101, label %104

101:                                              ; preds = %88
  %102 = zext i8 %93 to i32
  %103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 1, i32 noundef %102) #7
  br label %104

104:                                              ; preds = %101, %88
  %105 = load ptr, ptr %75, align 4
  %106 = call i32 @i2c_transfer(ptr noundef %105, ptr noundef nonnull %3, i32 noundef 1) #9
  %107 = icmp ne i32 %106, 1
  %108 = load i32, ptr @debug, align 4
  %109 = icmp ne i32 %108, 0
  %110 = select i1 %107, i1 %109, i1 false
  br i1 %110, label %111, label %114

111:                                              ; preds = %104
  %112 = zext i8 %93 to i32
  %113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 1, i32 noundef %112, i32 noundef %106) #7
  br label %114

114:                                              ; preds = %111, %104
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #9
  br label %115

115:                                              ; preds = %114, %85
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #9
  %116 = lshr i32 %59, 20
  %117 = trunc i32 %116 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #9
  store i8 2, ptr %8, align 2
  %118 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %117, ptr %118, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %9) #9
  store i64 8589934592, ptr %9, align 8
  %119 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %119, align 8
  %120 = load ptr, ptr %14, align 4
  %121 = load i8, ptr %120, align 1
  %122 = zext i8 %121 to i16
  store i16 %122, ptr %9, align 8
  %123 = load i32, ptr @debug, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %128

125:                                              ; preds = %115
  %126 = and i32 %116, 255
  %127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 2, i32 noundef %126) #7
  br label %128

128:                                              ; preds = %125, %115
  %129 = load ptr, ptr %75, align 4
  %130 = call i32 @i2c_transfer(ptr noundef %129, ptr noundef nonnull %9, i32 noundef 1) #9
  %131 = icmp ne i32 %130, 1
  %132 = load i32, ptr @debug, align 4
  %133 = icmp ne i32 %132, 0
  %134 = select i1 %131, i1 %133, i1 false
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = and i32 %116, 255
  %137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 2, i32 noundef %136, i32 noundef %130) #7
  %138 = load i32, ptr @debug, align 4
  br label %139

139:                                              ; preds = %135, %128
  %140 = phi i32 [ %132, %128 ], [ %138, %135 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #9
  %141 = trunc i32 %63 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #9
  store i8 3, ptr %6, align 2
  %142 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %141, ptr %142, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #9
  store i64 8589934592, ptr %7, align 8
  %143 = getelementptr inbounds %struct.i2c_msg, ptr %7, i32 0, i32 3
  store ptr %6, ptr %143, align 8
  %144 = load ptr, ptr %14, align 4
  %145 = load i8, ptr %144, align 1
  %146 = zext i8 %145 to i16
  store i16 %146, ptr %7, align 8
  %147 = icmp sgt i32 %140, 1
  br i1 %147, label %148, label %151

148:                                              ; preds = %139
  %149 = and i32 %63, 255
  %150 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 3, i32 noundef %149) #7
  br label %151

151:                                              ; preds = %148, %139
  %152 = load ptr, ptr %75, align 4
  %153 = call i32 @i2c_transfer(ptr noundef %152, ptr noundef nonnull %7, i32 noundef 1) #9
  %154 = icmp ne i32 %153, 1
  %155 = load i32, ptr @debug, align 4
  %156 = icmp ne i32 %155, 0
  %157 = select i1 %154, i1 %156, i1 false
  br i1 %157, label %158, label %162

158:                                              ; preds = %151
  %159 = and i32 %63, 255
  %160 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 3, i32 noundef %159, i32 noundef %153) #7
  %161 = load i32, ptr @debug, align 4
  br label %162

162:                                              ; preds = %158, %151
  %163 = phi i32 [ %155, %151 ], [ %161, %158 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #9
  %164 = icmp ult i32 %36, 725000000
  %165 = getelementptr inbounds %struct.max2165_priv, ptr %14, i32 0, i32 4
  %166 = getelementptr inbounds %struct.max2165_priv, ptr %14, i32 0, i32 5
  %167 = select i1 %164, ptr %165, ptr %166
  %168 = load i8, ptr %167, align 1
  %169 = getelementptr inbounds %struct.max2165_priv, ptr %14, i32 0, i32 6
  %170 = load i8, ptr %169, align 2
  %171 = zext i8 %170 to i32
  %172 = getelementptr inbounds %struct.max2165_priv, ptr %14, i32 0, i32 7
  %173 = load i8, ptr %172, align 1
  %174 = zext i8 %173 to i32
  %175 = sub nsw i32 %174, %171
  %176 = add nsw i32 %37, -470000
  %177 = mul i32 %175, %176
  %178 = udiv i32 %177, 310000
  %179 = trunc i32 %178 to i8
  %180 = add i8 %170, %179
  %181 = icmp eq i32 %163, 0
  br i1 %181, label %187, label %182

182:                                              ; preds = %162
  %183 = zext i8 %180 to i32
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %183) #7
  %185 = load i32, ptr @debug, align 4
  %186 = icmp sgt i32 %185, 1
  br label %187

187:                                              ; preds = %182, %162
  %188 = phi i1 [ %186, %182 ], [ false, %162 ]
  %189 = shl i8 %168, 4
  %190 = or i8 %180, %189
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #9
  store i8 4, ptr %4, align 2
  %191 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %190, ptr %191, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #9
  store i64 8589934592, ptr %5, align 8
  %192 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store ptr %4, ptr %192, align 8
  %193 = load ptr, ptr %14, align 4
  %194 = load i8, ptr %193, align 1
  %195 = zext i8 %194 to i16
  store i16 %195, ptr %5, align 8
  br i1 %188, label %196, label %199

196:                                              ; preds = %187
  %197 = zext i8 %190 to i32
  %198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 4, i32 noundef %197) #7
  br label %199

199:                                              ; preds = %196, %187
  %200 = load ptr, ptr %75, align 4
  %201 = call i32 @i2c_transfer(ptr noundef %200, ptr noundef nonnull %5, i32 noundef 1) #9
  %202 = icmp ne i32 %201, 1
  %203 = load i32, ptr @debug, align 4
  %204 = icmp ne i32 %203, 0
  %205 = select i1 %202, i1 %204, i1 false
  br i1 %205, label %206, label %209

206:                                              ; preds = %199
  %207 = zext i8 %190 to i32
  %208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 4, i32 noundef %207, i32 noundef %201) #7
  br label %209

209:                                              ; preds = %206, %199
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #9
  br label %210

210:                                              ; preds = %209, %34
  br label %211

211:                                              ; preds = %211, %210
  %212 = phi i32 [ %213, %211 ], [ 50, %210 ]
  %213 = add nsw i32 %212, -1
  %214 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %214(i32 noundef 214748000) #9
  %215 = icmp eq i32 %213, 0
  br i1 %215, label %216, label %211

216:                                              ; preds = %211
  call fastcc void @max2165_debug_status(ptr noundef %14)
  %217 = load ptr, ptr %29, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %216
  %220 = call i32 %217(ptr noundef %0, i32 noundef 0) #9
  br label %221

221:                                              ; preds = %219, %216
  %222 = select i1 %43, i32 -121, i32 0
  br label %223

223:                                              ; preds = %221, %23
  %224 = phi i32 [ -22, %23 ], [ %222, %221 ]
  ret i32 %224
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max2165_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.max2165_get_frequency) #7
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.max2165_priv, ptr %4, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max2165_get_bandwidth(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.max2165_get_bandwidth) #7
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.max2165_priv, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  store i32 %11, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @max2165_get_status(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr @debug, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %2
  %8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.max2165_get_status) #7
  br label %9

9:                                                ; preds = %7, %2
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef 1) #9
  br label %15

15:                                               ; preds = %13, %9
  tail call fastcc void @max2165_debug_status(ptr noundef %4)
  store i32 0, ptr %1, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %15
  %19 = tail call i32 %16(ptr noundef %0, i32 noundef 0) #9
  br label %20

20:                                               ; preds = %18, %15
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @max2165_set_bandwidth(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 2
  %4 = alloca %struct.i2c_msg, align 8
  %5 = alloca i8, align 1
  %6 = icmp eq i32 %1, 8000000
  %7 = getelementptr inbounds %struct.max2165_priv, ptr %0, i32 0, i32 9
  %8 = getelementptr inbounds %struct.max2165_priv, ptr %0, i32 0, i32 8
  %9 = select i1 %6, ptr %7, ptr %8
  %10 = load i8, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1, !annotation !8
  %11 = call fastcc i32 @max2165_read_reg(ptr noundef %0, i8 noundef zeroext 10, ptr noundef nonnull %5) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = shl i8 %10, 4
  %15 = load i8, ptr %5, align 1
  %16 = and i8 %15, 15
  %17 = or i8 %16, %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #9
  store i8 10, ptr %3, align 2
  %18 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %17, ptr %18, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  store i64 8589934592, ptr %4, align 8
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %3, ptr %19, align 8
  %20 = load ptr, ptr %0, align 4
  %21 = load i8, ptr %20, align 1
  %22 = zext i8 %21 to i16
  store i16 %22, ptr %4, align 8
  %23 = load i32, ptr @debug, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = zext i8 %17 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 10, i32 noundef %26) #7
  br label %28

28:                                               ; preds = %25, %13
  %29 = getelementptr inbounds %struct.max2165_priv, ptr %0, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %4, i32 noundef 1) #9
  %32 = icmp ne i32 %31, 1
  %33 = load i32, ptr @debug, align 4
  %34 = icmp ne i32 %33, 0
  %35 = select i1 %32, i1 %34, i1 false
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = zext i8 %17 to i32
  %38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.max2165_write_reg, i32 noundef 10, i32 noundef %37, i32 noundef %31) #7
  br label %39

39:                                               ; preds = %36, %28
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #9
  br label %40

40:                                               ; preds = %39, %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @max2165_read_reg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [1 x i8], align 1
  %5 = alloca [1 x i8], align 1
  %6 = alloca [2 x %struct.i2c_msg], align 4
  %7 = load ptr, ptr %0, align 4
  %8 = load i8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #9
  store i8 %1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #9
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #9
  %9 = getelementptr inbounds i8, ptr %6, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %9, i8 0, i32 16, i1 false), !annotation !8
  %10 = zext i8 %8 to i16
  store i16 %10, ptr %6, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 1
  store i16 0, ptr %11, align 2
  %12 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 2
  store i16 1, ptr %12, align 4
  %13 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 0, i32 3
  store ptr %4, ptr %13, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1
  store i16 %10, ptr %14, align 4
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 1
  store i16 1, ptr %15, align 2
  %16 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 2
  store i16 1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.i2c_msg, ptr %6, i32 1, i32 3
  store ptr %5, ptr %17, align 4
  %18 = getelementptr inbounds %struct.max2165_priv, ptr %0, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %6, i32 noundef 2) #9
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load i32, ptr @debug, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = zext i8 %1 to i32
  %27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.max2165_read_reg, i32 noundef %26, i32 noundef %20) #7
  br label %36

28:                                               ; preds = %3
  %29 = load i8, ptr %5, align 1
  store i8 %29, ptr %2, align 1
  %30 = load i32, ptr @debug, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = zext i8 %1 to i32
  %34 = zext i8 %29 to i32
  %35 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.max2165_read_reg, i32 noundef %33, i32 noundef %34) #7
  br label %36

36:                                               ; preds = %32, %28, %25, %22
  %37 = phi i32 [ -5, %25 ], [ -5, %22 ], [ 0, %32 ], [ 0, %28 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #9
  ret i32 %37
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }

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
