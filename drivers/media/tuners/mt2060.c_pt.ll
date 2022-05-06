; ModuleID = '/llk/IR/drivers/media/tuners/mt2060.c_pt.bc'
source_filename = "../drivers/media/tuners/mt2060.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mt2060_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22mt2060_attach\22\09\09\09\09\09"
module asm "__kstrtabns_mt2060_attach:\09\09\09\09\09"
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
%struct.i2c_device_id = type { [20 x i8], i32 }
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mt2060_priv = type { ptr, ptr, ptr, %struct.mt2060_config, i8, i32, i16, i8, i8 }
%struct.mt2060_config = type { i8, i8 }
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
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.mt2060_platform_data = type { i8, i16, i8, ptr }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype249 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug250 = internal constant [48 x i8] c"parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [46 x i8] c"\016MT2060: successfully identified (IF1 = %d)\0A\00", align 1
@mt2060_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Microtune MT2060\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 48000000, i32 860000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @mt2060_release, ptr @mt2060_init, ptr @mt2060_sleep, ptr null, ptr null, ptr @mt2060_set_params, ptr null, ptr null, ptr @mt2060_get_frequency, ptr null, ptr @mt2060_get_if_frequency, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__kstrtab_mt2060_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_mt2060_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_mt2060_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mt2060_attach to i32), ptr @__kstrtab_mt2060_attach, ptr @__kstrtabns_mt2060_attach }, section "___ksymtab+mt2060_attach", align 4
@mt2060_id_table = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"mt2060\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_author253 = internal constant [21 x i8] c"author=Olivier DANET\00", section ".modinfo", align 1
@__UNIQUE_ID_description254 = internal constant [50 x i8] c"description=Microtune MT2060 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"\014mt2060 I2C read failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"\014mt2060 I2C write failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"\017MT2060: IF1: %dMHz\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [51 x i8] c"\017MT2060: PLL freq=%dkHz  f_lo1=%dkHz  f_lo2=%dkHz\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"\017MT2060: PLL div1=%d  num1=%d  div2=%d  num2=%d\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"\017MT2060: PLL [1..5]: %2x %2x %2x %2x %2x\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"\014mt2060 I2C write failed (len=%i)\0A\00", align 1
@mt2060_config1 = internal global [6 x i8] c"\01?t\00\08\93", align 1
@mt2060_config2 = internal global [10 x i8] c"\09 \1E0\FF\80\FF\00,B", align 1
@.str.9 = private unnamed_addr constant [41 x i8] c"\017MT2060: calibration was successful: %d\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"\017MT2060: FMCAL timed out\00", align 1
@mt2060_driver = internal global %struct.i2c_driver { i32 0, ptr @mt2060_probe, ptr @mt2060_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.11, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mt2060_id_table, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str.11 = private unnamed_addr constant [7 x i8] c"mt2060\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"Cannot proceed without platform data\0A\00", align 1
@.str.13 = private unnamed_addr constant [42 x i8] c"Microtune MT2060 successfully identified\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_debug250, ptr @__UNIQUE_ID_debugtype249, ptr @__UNIQUE_ID_description254, ptr @__UNIQUE_ID_license255, ptr @__ksymtab_mt2060_attach, ptr @__param_debug], section "llvm.metadata"

@__mod_i2c__mt2060_id_table_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @mt2060_id_table

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @mt2060_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2, i16 noundef zeroext %3) #0 {
  %5 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 0, ptr %5, align 1
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 24) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  store ptr %2, ptr %7, align 8
  %10 = getelementptr inbounds %struct.mt2060_priv, ptr %7, i32 0, i32 1
  store ptr %1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.mt2060_priv, ptr %7, i32 0, i32 6
  store i16 %3, ptr %11, align 4
  %12 = getelementptr inbounds %struct.mt2060_priv, ptr %7, i32 0, i32 4
  store i8 -1, ptr %12, align 2
  %13 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %9
  %17 = tail call i32 %14(ptr noundef %0, i32 noundef 1) #12
  br label %18

18:                                               ; preds = %16, %9
  %19 = call fastcc i32 @mt2060_readreg(ptr noundef nonnull %7, i8 noundef zeroext 0, ptr noundef nonnull %5)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void @kfree(ptr noundef nonnull %7) #12
  br label %35

22:                                               ; preds = %18
  %23 = load i8, ptr %5, align 1
  %24 = icmp eq i8 %23, 99
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void @kfree(ptr noundef nonnull %7) #12
  br label %35

26:                                               ; preds = %22
  %27 = zext i16 %3 to i32
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %27) #14
  %29 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %29, ptr noundef nonnull align 4 dereferenceable(220) @mt2060_tuner_ops, i32 220, i1 false)
  %30 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  store ptr %7, ptr %30, align 4
  tail call fastcc void @mt2060_calibrate(ptr noundef nonnull %7)
  %31 = load ptr, ptr %13, align 4
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %26
  %34 = tail call i32 %31(ptr noundef %0, i32 noundef 0) #12
  br label %35

35:                                               ; preds = %33, %26, %25, %21, %4
  %36 = phi ptr [ null, %21 ], [ null, %25 ], [ null, %4 ], [ %0, %33 ], [ %0, %26 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  ret ptr %36
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mt2060_readreg(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = alloca [2 x %struct.i2c_msg], align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #12
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %5, i8 0, i32 16, i1 false), !annotation !8
  %6 = load ptr, ptr %0, align 4
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  store i16 1, ptr %10, align 4
  %11 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1
  %12 = load i8, ptr %6, align 1
  %13 = zext i8 %12 to i16
  store i16 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 1
  store i16 1, ptr %14, align 2
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 2
  store i16 1, ptr %15, align 4
  %16 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %17 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3264, i32 noundef 2) #13
  %18 = icmp eq ptr %17, null
  br i1 %18, label %32, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 1, i32 3
  %21 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store i8 %1, ptr %17, align 8
  %22 = getelementptr i8, ptr %17, i32 1
  store i8 0, ptr %22, align 1
  store ptr %17, ptr %21, align 4
  store ptr %22, ptr %20, align 4
  %23 = getelementptr inbounds %struct.mt2060_priv, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %4, i32 noundef 2) #12
  %26 = icmp eq i32 %25, 2
  br i1 %26, label %29, label %27

27:                                               ; preds = %19
  %28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #14
  br label %29

29:                                               ; preds = %27, %19
  %30 = phi i32 [ -121, %27 ], [ 0, %19 ]
  %31 = load i8, ptr %22, align 1
  store i8 %31, ptr %2, align 1
  call void @kfree(ptr noundef nonnull %17) #12
  br label %32

32:                                               ; preds = %29, %3
  %33 = phi i32 [ %30, %29 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #12
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mt2060_calibrate(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca %struct.i2c_msg, align 4
  %6 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #12
  store i8 0, ptr %6, align 1
  %7 = tail call fastcc i32 @mt2060_writeregs(ptr noundef %0, ptr noundef nonnull @mt2060_config1, i8 noundef zeroext 6)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %192

9:                                                ; preds = %1
  %10 = tail call fastcc i32 @mt2060_writeregs(ptr noundef %0, ptr noundef nonnull @mt2060_config2, i8 noundef zeroext 10)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %192

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.mt2060_config, ptr %13, i32 0, i32 1
  %15 = load i8, ptr %14, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #12
  %16 = getelementptr inbounds i8, ptr %5, i32 4
  store i32 2, ptr %16, align 4, !annotation !8
  %17 = load i8, ptr %13, align 1
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %5, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 2) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %36, label %23

23:                                               ; preds = %12
  %24 = shl i8 %15, 6
  %25 = or i8 %24, 48
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  store i8 11, ptr %21, align 8
  %27 = getelementptr i8, ptr %21, i32 1
  store i8 %25, ptr %27, align 1
  store ptr %21, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mt2060_priv, ptr %0, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %5, i32 noundef 1) #12
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %34, label %32

32:                                               ; preds = %23
  %33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %34

34:                                               ; preds = %32, %23
  call void @kfree(ptr noundef nonnull %21) #12
  %35 = load i8, ptr %6, align 1
  br label %36

36:                                               ; preds = %34, %12
  %37 = phi i8 [ 0, %12 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #12
  %38 = getelementptr inbounds i8, ptr %4, i32 4
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  %41 = getelementptr inbounds %struct.mt2060_priv, ptr %0, i32 0, i32 1
  %42 = getelementptr inbounds i8, ptr %3, i32 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  %45 = getelementptr inbounds i8, ptr %2, i32 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  br label %48

48:                                               ; preds = %103, %36
  %49 = phi i8 [ %37, %36 ], [ %88, %103 ]
  %50 = phi i32 [ 0, %36 ], [ %104, %103 ]
  %51 = or i8 %49, 64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  store i32 0, ptr %38, align 4, !annotation !8
  %52 = load ptr, ptr %0, align 4
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i16
  store i16 %54, ptr %4, align 4
  store i16 0, ptr %39, align 2
  store i16 2, ptr %38, align 4
  %55 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %56 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 3264, i32 noundef 2) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %66, label %58

58:                                               ; preds = %48
  store i8 3, ptr %56, align 8
  %59 = getelementptr i8, ptr %56, i32 1
  store i8 %51, ptr %59, align 1
  store ptr %56, ptr %40, align 4
  %60 = load ptr, ptr %41, align 4
  %61 = call i32 @i2c_transfer(ptr noundef %60, ptr noundef nonnull %4, i32 noundef 1) #12
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %65, label %63

63:                                               ; preds = %58
  %64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %65

65:                                               ; preds = %63, %58
  call void @kfree(ptr noundef nonnull %56) #12
  br label %66

66:                                               ; preds = %65, %48
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call void @msleep(i32 noundef 20) #12
  %67 = icmp eq i32 %50, 0
  br i1 %67, label %68, label %86

68:                                               ; preds = %66
  %69 = or i8 %49, -64
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  store i32 0, ptr %42, align 4, !annotation !8
  %70 = load ptr, ptr %0, align 4
  %71 = load i8, ptr %70, align 1
  %72 = zext i8 %71 to i16
  store i16 %72, ptr %3, align 4
  store i16 0, ptr %43, align 2
  store i16 2, ptr %42, align 4
  %73 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %74 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %73, i32 noundef 3264, i32 noundef 2) #13
  %75 = icmp eq ptr %74, null
  br i1 %75, label %84, label %76

76:                                               ; preds = %68
  store i8 3, ptr %74, align 8
  %77 = getelementptr i8, ptr %74, i32 1
  store i8 %69, ptr %77, align 1
  store ptr %74, ptr %44, align 4
  %78 = load ptr, ptr %41, align 4
  %79 = call i32 @i2c_transfer(ptr noundef %78, ptr noundef nonnull %3, i32 noundef 1) #12
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %83, label %81

81:                                               ; preds = %76
  %82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %83

83:                                               ; preds = %81, %76
  call void @kfree(ptr noundef nonnull %74) #12
  br label %84

84:                                               ; preds = %83, %68
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  %85 = and i8 %69, 127
  call void @msleep(i32 noundef 20) #12
  br label %86

86:                                               ; preds = %84, %66
  %87 = phi i8 [ %85, %84 ], [ %51, %66 ]
  %88 = and i8 %87, -65
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  store i32 0, ptr %45, align 4, !annotation !8
  %89 = load ptr, ptr %0, align 4
  %90 = load i8, ptr %89, align 1
  %91 = zext i8 %90 to i16
  store i16 %91, ptr %2, align 4
  store i16 0, ptr %46, align 2
  store i16 2, ptr %45, align 4
  %92 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %93 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %92, i32 noundef 3264, i32 noundef 2) #13
  %94 = icmp eq ptr %93, null
  br i1 %94, label %103, label %95

95:                                               ; preds = %86
  store i8 3, ptr %93, align 8
  %96 = getelementptr i8, ptr %93, i32 1
  store i8 %88, ptr %96, align 1
  store ptr %93, ptr %47, align 4
  %97 = load ptr, ptr %41, align 4
  %98 = call i32 @i2c_transfer(ptr noundef %97, ptr noundef nonnull %2, i32 noundef 1) #12
  %99 = icmp eq i32 %98, 1
  br i1 %99, label %102, label %100

100:                                              ; preds = %95
  %101 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %102

102:                                              ; preds = %100, %95
  call void @kfree(ptr noundef nonnull %93) #12
  br label %103

103:                                              ; preds = %102, %86
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  call void @msleep(i32 noundef 20) #12
  %104 = add nuw nsw i32 %50, 1
  %105 = icmp eq i32 %104, 9
  br i1 %105, label %106, label %48

106:                                              ; preds = %103
  store i8 %88, ptr %6, align 1
  %107 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %6)
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %176

109:                                              ; preds = %106
  %110 = load i8, ptr %6, align 1
  %111 = and i8 %110, 64
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %113, label %176

113:                                              ; preds = %109
  call void @msleep(i32 noundef 20) #12
  %114 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %6)
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %176

116:                                              ; preds = %113
  %117 = load i8, ptr %6, align 1
  %118 = and i8 %117, 64
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %120, label %176

120:                                              ; preds = %116
  call void @msleep(i32 noundef 20) #12
  %121 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %6)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %176

123:                                              ; preds = %120
  %124 = load i8, ptr %6, align 1
  %125 = and i8 %124, 64
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %176

127:                                              ; preds = %123
  call void @msleep(i32 noundef 20) #12
  %128 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %6)
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %176

130:                                              ; preds = %127
  %131 = load i8, ptr %6, align 1
  %132 = and i8 %131, 64
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %134, label %176

134:                                              ; preds = %130
  call void @msleep(i32 noundef 20) #12
  %135 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %6)
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %176

137:                                              ; preds = %134
  %138 = load i8, ptr %6, align 1
  %139 = and i8 %138, 64
  %140 = icmp eq i8 %139, 0
  br i1 %140, label %141, label %176

141:                                              ; preds = %137
  call void @msleep(i32 noundef 20) #12
  %142 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %6)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %176

144:                                              ; preds = %141
  %145 = load i8, ptr %6, align 1
  %146 = and i8 %145, 64
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %176

148:                                              ; preds = %144
  call void @msleep(i32 noundef 20) #12
  %149 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %6)
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %176

151:                                              ; preds = %148
  %152 = load i8, ptr %6, align 1
  %153 = and i8 %152, 64
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %176

155:                                              ; preds = %151
  call void @msleep(i32 noundef 20) #12
  %156 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %6)
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %176

158:                                              ; preds = %155
  %159 = load i8, ptr %6, align 1
  %160 = and i8 %159, 64
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %158
  call void @msleep(i32 noundef 20) #12
  %163 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %6)
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %162
  %166 = load i8, ptr %6, align 1
  %167 = and i8 %166, 64
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %165
  call void @msleep(i32 noundef 20) #12
  %170 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 8, ptr noundef nonnull %6)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %169
  %173 = load i8, ptr %6, align 1
  %174 = and i8 %173, 64
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %185, label %176

176:                                              ; preds = %172, %169, %165, %162, %158, %155, %151, %148, %144, %141, %137, %134, %130, %127, %123, %120, %116, %113, %109, %106
  %177 = getelementptr inbounds %struct.mt2060_priv, ptr %0, i32 0, i32 7
  %178 = call fastcc i32 @mt2060_readreg(ptr noundef %0, i8 noundef zeroext 7, ptr noundef %177)
  %179 = load i32, ptr @debug, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %176
  %182 = load i8, ptr %177, align 2
  %183 = zext i8 %182 to i32
  %184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %183) #14
  br label %190

185:                                              ; preds = %172
  call void @msleep(i32 noundef 20) #12
  %186 = load i32, ptr @debug, align 4
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  %189 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #14
  br label %190

190:                                              ; preds = %188, %181
  %191 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %192

192:                                              ; preds = %190, %185, %176, %9, %1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #5 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @mt2060_driver) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #5 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @mt2060_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mt2060_release(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #12
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2060_init(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef 1) #12
  br label %11

11:                                               ; preds = %9, %1
  %12 = getelementptr inbounds %struct.mt2060_priv, ptr %5, i32 0, i32 8
  %13 = load i8, ptr %12, align 1, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %35, label %15

15:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %16 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %16, align 4, !annotation !8
  %17 = load ptr, ptr %5, align 4
  %18 = load i8, ptr %17, align 1
  %19 = zext i8 %18 to i16
  store i16 %19, ptr %3, align 4
  %20 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %20, align 2
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3264, i32 noundef 2) #13
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %62

25:                                               ; preds = %15
  %26 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store i8 9, ptr %22, align 8
  %27 = getelementptr i8, ptr %22, i32 1
  store i8 32, ptr %27, align 1
  store ptr %22, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mt2060_priv, ptr %5, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call i32 @i2c_transfer(ptr noundef %29, ptr noundef nonnull %3, i32 noundef 1) #12
  %31 = icmp eq i32 %30, 1
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  call void @kfree(ptr noundef nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %35

33:                                               ; preds = %25
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  call void @kfree(ptr noundef nonnull %22) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %62

35:                                               ; preds = %32, %11
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr inbounds %struct.mt2060_config, ptr %36, i32 0, i32 1
  %38 = load i8, ptr %37, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  %39 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %39, align 4, !annotation !8
  %40 = load ptr, ptr %5, align 4
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i16
  store i16 %42, ptr %2, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %43, align 2
  %44 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %45 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3264, i32 noundef 2) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %60, label %47

47:                                               ; preds = %35
  %48 = shl i8 %38, 6
  %49 = or i8 %48, 51
  %50 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store i8 11, ptr %45, align 8
  %51 = getelementptr i8, ptr %45, i32 1
  store i8 %49, ptr %51, align 1
  store ptr %45, ptr %50, align 4
  %52 = getelementptr inbounds %struct.mt2060_priv, ptr %5, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %2, i32 noundef 1) #12
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %58, label %56

56:                                               ; preds = %47
  %57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi i32 [ -121, %56 ], [ 0, %47 ]
  call void @kfree(ptr noundef nonnull %45) #12
  br label %60

60:                                               ; preds = %58, %35
  %61 = phi i32 [ %59, %58 ], [ -12, %35 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  br label %62

62:                                               ; preds = %60, %33, %24
  %63 = phi i32 [ -121, %33 ], [ %61, %60 ], [ -12, %24 ]
  %64 = load ptr, ptr %6, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = call i32 %64(ptr noundef %0, i32 noundef 0) #12
  br label %68

68:                                               ; preds = %66, %62
  ret i32 %63
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2060_sleep(ptr noundef %0) #0 {
  %2 = alloca %struct.i2c_msg, align 4
  %3 = alloca %struct.i2c_msg, align 4
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 %7(ptr noundef %0, i32 noundef 1) #12
  br label %11

11:                                               ; preds = %9, %1
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.mt2060_config, ptr %12, i32 0, i32 1
  %14 = load i8, ptr %13, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %15 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %15, align 4, !annotation !8
  %16 = load ptr, ptr %5, align 4
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i16
  store i16 %18, ptr %3, align 4
  %19 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %19, align 2
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3264, i32 noundef 2) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %60

24:                                               ; preds = %11
  %25 = shl i8 %14, 6
  %26 = or i8 %25, 48
  %27 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store i8 11, ptr %21, align 8
  %28 = getelementptr i8, ptr %21, i32 1
  store i8 %26, ptr %28, align 1
  store ptr %21, ptr %27, align 4
  %29 = getelementptr inbounds %struct.mt2060_priv, ptr %5, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %3, i32 noundef 1) #12
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %35, label %33

33:                                               ; preds = %24
  %34 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  call void @kfree(ptr noundef nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %60

35:                                               ; preds = %24
  call void @kfree(ptr noundef nonnull %21) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  %36 = getelementptr inbounds %struct.mt2060_priv, ptr %5, i32 0, i32 8
  %37 = load i8, ptr %36, align 1, !range !9
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %60, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #12
  %40 = getelementptr inbounds i8, ptr %2, i32 4
  store i32 2, ptr %40, align 4, !annotation !8
  %41 = load ptr, ptr %5, align 4
  %42 = load i8, ptr %41, align 1
  %43 = zext i8 %42 to i16
  store i16 %43, ptr %2, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 1
  store i16 0, ptr %44, align 2
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %46 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3264, i32 noundef 2) #13
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %39
  %49 = getelementptr inbounds %struct.i2c_msg, ptr %2, i32 0, i32 3
  store i8 9, ptr %46, align 8
  %50 = getelementptr i8, ptr %46, i32 1
  store i8 -24, ptr %50, align 1
  store ptr %46, ptr %49, align 4
  %51 = load ptr, ptr %29, align 4
  %52 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %2, i32 noundef 1) #12
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  %55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi i32 [ -121, %54 ], [ 0, %48 ]
  call void @kfree(ptr noundef nonnull %46) #12
  br label %58

58:                                               ; preds = %56, %39
  %59 = phi i32 [ %57, %56 ], [ -12, %39 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #12
  br label %60

60:                                               ; preds = %58, %35, %33, %23
  %61 = phi i32 [ -121, %33 ], [ %59, %58 ], [ 0, %35 ], [ -12, %23 ]
  %62 = load ptr, ptr %6, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %60
  %65 = call i32 %62(ptr noundef %0, i32 noundef 0) #12
  br label %66

66:                                               ; preds = %64, %60
  ret i32 %61
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2060_set_params(ptr noundef %0) #0 {
  %2 = alloca [8 x i8], align 8
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 65292, ptr %2, align 8, !annotation !8
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mt2060_priv, ptr %5, i32 0, i32 6
  %7 = load i16, ptr %6, align 4
  %8 = zext i16 %7 to i32
  %9 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 1
  %10 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 1, i32 28
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %1
  %14 = tail call i32 %11(ptr noundef %0, i32 noundef 1) #12
  br label %15

15:                                               ; preds = %13, %1
  %16 = call fastcc i32 @mt2060_writeregs(ptr noundef %5, ptr noundef nonnull %2, i8 noundef zeroext 2)
  %17 = load i32, ptr %3, align 4
  %18 = udiv i32 %17, 1000
  %19 = mul nuw nsw i32 %8, 1000
  %20 = add nuw nsw i32 %18, %19
  %21 = udiv i32 %20, 250
  %22 = mul nuw nsw i32 %21, 250
  %23 = sub nsw i32 %22, %18
  %24 = add nsw i32 %23, -36125
  %25 = urem i32 %24, 50
  %26 = sub nsw i32 %24, %25
  %27 = sub nsw i32 %22, %26
  %28 = mul i32 %27, 1000
  %29 = add i32 %28, -36150000
  %30 = getelementptr inbounds %struct.mt2060_priv, ptr %5, i32 0, i32 5
  store i32 %29, ptr %30, align 4
  %31 = udiv i32 %20, 16000
  %32 = and i32 %21, 63
  %33 = shl i32 %26, 6
  %34 = udiv i32 %33, 125
  %35 = udiv i32 %33, 1024000
  %36 = and i32 %34, 8191
  %37 = icmp ult i32 %17, 95001000
  br i1 %37, label %57, label %38

38:                                               ; preds = %15
  %39 = icmp ult i32 %17, 180001000
  br i1 %39, label %57, label %40

40:                                               ; preds = %38
  %41 = icmp ult i32 %17, 260001000
  br i1 %41, label %57, label %42

42:                                               ; preds = %40
  %43 = icmp ult i32 %17, 335001000
  br i1 %43, label %57, label %44

44:                                               ; preds = %42
  %45 = icmp ult i32 %17, 425001000
  br i1 %45, label %57, label %46

46:                                               ; preds = %44
  %47 = icmp ult i32 %17, 480001000
  br i1 %47, label %57, label %48

48:                                               ; preds = %46
  %49 = icmp ult i32 %17, 570001000
  br i1 %49, label %57, label %50

50:                                               ; preds = %48
  %51 = icmp ult i32 %17, 645001000
  br i1 %51, label %57, label %52

52:                                               ; preds = %50
  %53 = icmp ult i32 %17, 730001000
  br i1 %53, label %57, label %54

54:                                               ; preds = %52
  %55 = icmp ult i32 %17, 810001000
  %56 = select i1 %55, i32 32, i32 16
  br label %57

57:                                               ; preds = %54, %52, %50, %48, %46, %44, %42, %40, %38, %15
  %58 = phi i32 [ 176, %15 ], [ 160, %38 ], [ 144, %40 ], [ 128, %42 ], [ 112, %44 ], [ 96, %46 ], [ 80, %48 ], [ 64, %50 ], [ 48, %52 ], [ %56, %54 ]
  store i8 1, ptr %2, align 8
  %59 = lshr i32 %21, 2
  %60 = and i32 %59, 15
  %61 = or i32 %58, %60
  %62 = trunc i32 %61 to i8
  store i8 %62, ptr %9, align 1
  %63 = trunc i32 %31 to i8
  %64 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 2
  store i8 %63, ptr %64, align 2
  %65 = and i32 %34, 15
  %66 = shl nuw nsw i32 %21, 4
  %67 = and i32 %66, 48
  %68 = or i32 %65, %67
  %69 = trunc i32 %68 to i8
  %70 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 3
  store i8 %69, ptr %70, align 1
  %71 = lshr i32 %34, 4
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 4
  store i8 %72, ptr %73, align 4
  %74 = lshr i32 %34, 12
  %75 = and i32 %74, 1
  %76 = shl nuw nsw i32 %35, 1
  %77 = or i32 %75, %76
  %78 = trunc i32 %77 to i8
  %79 = getelementptr inbounds [8 x i8], ptr %2, i32 0, i32 5
  store i8 %78, ptr %79, align 1
  %80 = load i32, ptr @debug, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %103, label %82

82:                                               ; preds = %57
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %8) #14
  %84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %85 = load i32, ptr @debug, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %103, label %87

87:                                               ; preds = %82
  %88 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %18, i32 noundef %22, i32 noundef %26) #14
  %89 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %90 = load i32, ptr @debug, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %31, i32 noundef %32, i32 noundef %35, i32 noundef %36) #14
  %94 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  %95 = load i32, ptr @debug, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = and i32 %31, 255
  %99 = and i32 %71, 255
  %100 = and i32 %77, 255
  %101 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %61, i32 noundef %98, i32 noundef %68, i32 noundef %99, i32 noundef %100) #14
  %102 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #14
  br label %103

103:                                              ; preds = %97, %92, %87, %82, %57
  %104 = call fastcc i32 @mt2060_writeregs(ptr noundef %5, ptr noundef nonnull %2, i8 noundef zeroext 6)
  %105 = call fastcc i32 @mt2060_readreg(ptr noundef %5, i8 noundef zeroext 6, ptr noundef nonnull %2)
  %106 = load i8, ptr %2, align 8
  %107 = and i8 %106, -120
  %108 = icmp eq i8 %107, -120
  br i1 %108, label %155, label %109

109:                                              ; preds = %103
  tail call void @msleep(i32 noundef 4) #12
  %110 = call fastcc i32 @mt2060_readreg(ptr noundef %5, i8 noundef zeroext 6, ptr noundef nonnull %2)
  %111 = load i8, ptr %2, align 8
  %112 = and i8 %111, -120
  %113 = icmp eq i8 %112, -120
  br i1 %113, label %155, label %114

114:                                              ; preds = %109
  tail call void @msleep(i32 noundef 4) #12
  %115 = call fastcc i32 @mt2060_readreg(ptr noundef %5, i8 noundef zeroext 6, ptr noundef nonnull %2)
  %116 = load i8, ptr %2, align 8
  %117 = and i8 %116, -120
  %118 = icmp eq i8 %117, -120
  br i1 %118, label %155, label %119

119:                                              ; preds = %114
  tail call void @msleep(i32 noundef 4) #12
  %120 = call fastcc i32 @mt2060_readreg(ptr noundef %5, i8 noundef zeroext 6, ptr noundef nonnull %2)
  %121 = load i8, ptr %2, align 8
  %122 = and i8 %121, -120
  %123 = icmp eq i8 %122, -120
  br i1 %123, label %155, label %124

124:                                              ; preds = %119
  tail call void @msleep(i32 noundef 4) #12
  %125 = call fastcc i32 @mt2060_readreg(ptr noundef %5, i8 noundef zeroext 6, ptr noundef nonnull %2)
  %126 = load i8, ptr %2, align 8
  %127 = and i8 %126, -120
  %128 = icmp eq i8 %127, -120
  br i1 %128, label %155, label %129

129:                                              ; preds = %124
  tail call void @msleep(i32 noundef 4) #12
  %130 = call fastcc i32 @mt2060_readreg(ptr noundef %5, i8 noundef zeroext 6, ptr noundef nonnull %2)
  %131 = load i8, ptr %2, align 8
  %132 = and i8 %131, -120
  %133 = icmp eq i8 %132, -120
  br i1 %133, label %155, label %134

134:                                              ; preds = %129
  tail call void @msleep(i32 noundef 4) #12
  %135 = call fastcc i32 @mt2060_readreg(ptr noundef %5, i8 noundef zeroext 6, ptr noundef nonnull %2)
  %136 = load i8, ptr %2, align 8
  %137 = and i8 %136, -120
  %138 = icmp eq i8 %137, -120
  br i1 %138, label %155, label %139

139:                                              ; preds = %134
  tail call void @msleep(i32 noundef 4) #12
  %140 = call fastcc i32 @mt2060_readreg(ptr noundef %5, i8 noundef zeroext 6, ptr noundef nonnull %2)
  %141 = load i8, ptr %2, align 8
  %142 = and i8 %141, -120
  %143 = icmp eq i8 %142, -120
  br i1 %143, label %155, label %144

144:                                              ; preds = %139
  tail call void @msleep(i32 noundef 4) #12
  %145 = call fastcc i32 @mt2060_readreg(ptr noundef %5, i8 noundef zeroext 6, ptr noundef nonnull %2)
  %146 = load i8, ptr %2, align 8
  %147 = and i8 %146, -120
  %148 = icmp eq i8 %147, -120
  br i1 %148, label %155, label %149

149:                                              ; preds = %144
  tail call void @msleep(i32 noundef 4) #12
  %150 = call fastcc i32 @mt2060_readreg(ptr noundef %5, i8 noundef zeroext 6, ptr noundef nonnull %2)
  %151 = load i8, ptr %2, align 8
  %152 = and i8 %151, -120
  %153 = icmp eq i8 %152, -120
  br i1 %153, label %155, label %154

154:                                              ; preds = %149
  tail call void @msleep(i32 noundef 4) #12
  br label %155

155:                                              ; preds = %154, %149, %144, %139, %134, %129, %124, %119, %114, %109, %103
  %156 = load ptr, ptr %10, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %160, label %158

158:                                              ; preds = %155
  %159 = tail call i32 %156(ptr noundef %0, i32 noundef 0) #12
  br label %160

160:                                              ; preds = %158, %155
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mt2060_get_frequency(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #8 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.mt2060_priv, ptr %4, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define internal i32 @mt2060_get_if_frequency(ptr nocapture noundef readnone %0, ptr nocapture noundef writeonly %1) #9 {
  store i32 36150000, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @mt2060_writeregs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i8 noundef zeroext %2) unnamed_addr #0 {
  %4 = alloca %struct.i2c_msg, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %5 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 0, ptr %5, align 4, !annotation !8
  %6 = load ptr, ptr %0, align 4
  %7 = load i8, ptr %6, align 1
  %8 = zext i8 %7 to i16
  store i16 %8, ptr %4, align 4
  %9 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %9, align 2
  %10 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 2
  %11 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %12 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %11, i32 noundef 3264, i32 noundef 16) #13
  %13 = icmp eq ptr %12, null
  br i1 %13, label %50, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store ptr %12, ptr %15, align 4
  %16 = zext i8 %2 to i32
  %17 = icmp ugt i8 %2, 1
  br i1 %17, label %18, label %48

18:                                               ; preds = %14
  %19 = add nsw i32 %16, -1
  %20 = getelementptr inbounds %struct.mt2060_priv, ptr %0, i32 0, i32 4
  %21 = getelementptr i8, ptr %12, i32 1
  %22 = getelementptr inbounds %struct.mt2060_priv, ptr %0, i32 0, i32 1
  %23 = load i8, ptr %20, align 2
  br label %24

24:                                               ; preds = %43, %18
  %25 = phi i8 [ %23, %18 ], [ %44, %43 ]
  %26 = phi i32 [ %19, %18 ], [ %46, %43 ]
  %27 = zext i8 %25 to i32
  %28 = call i32 @llvm.smin.i32(i32 %26, i32 %27)
  %29 = trunc i32 %28 to i16
  %30 = add nuw nsw i16 %29, 1
  store i16 %30, ptr %10, align 4
  %31 = load i8, ptr %1, align 1
  %32 = trunc i32 %26 to i8
  %33 = xor i8 %32, -1
  %34 = add i8 %33, %2
  %35 = add i8 %34, %31
  store i8 %35, ptr %12, align 8
  %36 = sub i32 %16, %26
  %37 = getelementptr i8, ptr %1, i32 %36
  call void @llvm.memcpy.p0.p0.i32(ptr align 1 %21, ptr align 1 %37, i32 %28, i1 false)
  %38 = load ptr, ptr %22, align 4
  %39 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %4, i32 noundef 1) #12
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %43, label %41

41:                                               ; preds = %24
  %42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %28) #14
  br label %48

43:                                               ; preds = %24
  %44 = load i8, ptr %20, align 2
  %45 = zext i8 %44 to i32
  %46 = sub nsw i32 %26, %45
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %24, label %48

48:                                               ; preds = %43, %41, %14
  %49 = phi i32 [ -121, %41 ], [ 0, %14 ], [ 0, %43 ]
  call void @kfree(ptr noundef nonnull %12) #12
  br label %50

50:                                               ; preds = %48, %3
  %51 = phi i32 [ %49, %48 ], [ -12, %3 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mt2060_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.i2c_msg, align 4
  %4 = alloca %struct.i2c_msg, align 4
  %5 = alloca i8, align 1
  %6 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %7 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #12
  store i8 0, ptr %5, align 1, !annotation !8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.12) #14
  br label %84

11:                                               ; preds = %2
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %6, i32 noundef 24, i32 noundef 3520) #12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %84, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.mt2060_platform_data, ptr %8, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 1
  %18 = load i16, ptr %17, align 2
  %19 = trunc i16 %18 to i8
  %20 = getelementptr inbounds %struct.mt2060_priv, ptr %12, i32 0, i32 3
  store i8 %19, ptr %20, align 4
  %21 = load i8, ptr %8, align 4
  %22 = getelementptr inbounds %struct.mt2060_priv, ptr %12, i32 0, i32 3, i32 1
  store i8 %21, ptr %22, align 1
  store ptr %20, ptr %12, align 4
  %23 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = getelementptr inbounds %struct.mt2060_priv, ptr %12, i32 0, i32 1
  store ptr %24, ptr %25, align 4
  %26 = getelementptr inbounds %struct.mt2060_platform_data, ptr %8, i32 0, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = icmp eq i16 %27, 0
  %29 = select i1 %28, i16 1220, i16 %27
  %30 = getelementptr inbounds %struct.mt2060_priv, ptr %12, i32 0, i32 6
  store i16 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.mt2060_priv, ptr %12, i32 0, i32 2
  store ptr %0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.mt2060_platform_data, ptr %8, i32 0, i32 2
  %33 = load i8, ptr %32, align 4
  %34 = and i8 %33, 31
  %35 = add nsw i8 %34, -1
  %36 = getelementptr inbounds %struct.mt2060_priv, ptr %12, i32 0, i32 4
  store i8 %35, ptr %36, align 2
  %37 = getelementptr inbounds %struct.mt2060_priv, ptr %12, i32 0, i32 8
  store i8 1, ptr %37, align 1
  %38 = call fastcc i32 @mt2060_readreg(ptr noundef nonnull %12, i8 noundef zeroext 0, ptr noundef nonnull %5)
  %39 = icmp eq i32 %38, 0
  %40 = load i8, ptr %5, align 1
  %41 = icmp eq i8 %40, 99
  %42 = select i1 %39, i1 %41, i1 false
  br i1 %42, label %43, label %84

43:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #12
  %44 = getelementptr inbounds i8, ptr %4, i32 4
  store i32 2, ptr %44, align 4, !annotation !8
  %45 = load ptr, ptr %12, align 4
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i16
  store i16 %47, ptr %4, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 1
  store i16 0, ptr %48, align 2
  %49 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %50 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %49, i32 noundef 3264, i32 noundef 2) #13
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %84

53:                                               ; preds = %43
  %54 = getelementptr inbounds %struct.i2c_msg, ptr %4, i32 0, i32 3
  store i8 9, ptr %50, align 8
  %55 = getelementptr i8, ptr %50, i32 1
  store i8 32, ptr %55, align 1
  store ptr %50, ptr %54, align 4
  %56 = load ptr, ptr %25, align 4
  %57 = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %4, i32 noundef 1) #12
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %61, label %59

59:                                               ; preds = %53
  %60 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  call void @kfree(ptr noundef nonnull %50) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  br label %84

61:                                               ; preds = %53
  call void @kfree(ptr noundef nonnull %50) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #12
  call fastcc void @mt2060_calibrate(ptr noundef nonnull %12)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #12
  %62 = getelementptr inbounds i8, ptr %3, i32 4
  store i32 2, ptr %62, align 4, !annotation !8
  %63 = load ptr, ptr %12, align 4
  %64 = load i8, ptr %63, align 1
  %65 = zext i8 %64 to i16
  store i16 %65, ptr %3, align 4
  %66 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 1
  store i16 0, ptr %66, align 2
  %67 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %68 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %67, i32 noundef 3264, i32 noundef 2) #13
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %84

71:                                               ; preds = %61
  %72 = getelementptr inbounds %struct.i2c_msg, ptr %3, i32 0, i32 3
  store i8 9, ptr %68, align 8
  %73 = getelementptr i8, ptr %68, i32 1
  store i8 -24, ptr %73, align 1
  store ptr %68, ptr %72, align 4
  %74 = load ptr, ptr %25, align 4
  %75 = call i32 @i2c_transfer(ptr noundef %74, ptr noundef nonnull %3, i32 noundef 1) #12
  %76 = icmp eq i32 %75, 1
  br i1 %76, label %79, label %77

77:                                               ; preds = %71
  %78 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #14
  call void @kfree(ptr noundef nonnull %68) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  br label %84

79:                                               ; preds = %71
  call void @kfree(ptr noundef nonnull %68) #12
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %6, ptr noundef nonnull @.str.13) #14
  %80 = getelementptr inbounds %struct.dvb_frontend, ptr %16, i32 0, i32 1, i32 32
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %80, ptr noundef nonnull align 4 dereferenceable(220) @mt2060_tuner_ops, i32 220, i1 false)
  %81 = getelementptr inbounds %struct.dvb_frontend, ptr %16, i32 0, i32 1, i32 32, i32 1
  store ptr null, ptr %81, align 4
  %82 = getelementptr inbounds %struct.dvb_frontend, ptr %16, i32 0, i32 4
  store ptr %12, ptr %82, align 4
  %83 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %12, ptr %83, align 8
  br label %84

84:                                               ; preds = %79, %77, %70, %59, %52, %14, %11, %10
  %85 = phi i32 [ 0, %79 ], [ -121, %59 ], [ -121, %77 ], [ -22, %10 ], [ -12, %11 ], [ -19, %14 ], [ -12, %52 ], [ -12, %70 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #12
  ret i32 %85
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @mt2060_remove(ptr nocapture noundef readnone %0) #10 {
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }

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
