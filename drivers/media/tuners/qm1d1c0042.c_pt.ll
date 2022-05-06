; ModuleID = '/llk/IR/drivers/media/tuners/qm1d1c0042.c_pt.bc'
source_filename = "../drivers/media/tuners/qm1d1c0042.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.i2c_device_id = type { [20 x i8], i32 }
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
%struct.i2c_driver = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, ptr, ptr, %struct.list_head, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.qm1d1c0042_state = type { %struct.qm1d1c0042_config, ptr, [32 x i8] }
%struct.qm1d1c0042_config = type { ptr, i32, i8, i8, i32, i32, i32 }
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
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.73], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.73 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.74 }>
%union.anon.74 = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }

@qm1d1c0042_id = internal constant [2 x %struct.i2c_device_id] [%struct.i2c_device_id { [20 x i8] c"qm1d1c0042\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.i2c_device_id zeroinitializer], align 4
@__UNIQUE_ID_description249 = internal constant [35 x i8] c"description=Sharp QM1D1C0042 tuner\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [23 x i8] c"author=Akihiro TSUKADA\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__this_module = external dso_local global %struct.module, align 64
@qm1d1c0042_driver = internal global %struct.i2c_driver { i32 0, ptr @qm1d1c0042_probe, ptr @qm1d1c0042_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @qm1d1c0042_id, ptr null, ptr null, %struct.list_head zeroinitializer, i32 0 }, align 4
@.str = private unnamed_addr constant [11 x i8] c"qm1d1c0042\00", align 1
@qm1d1c0042_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Sharp QM1D1C0042\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @qm1d1c0042_init, ptr @qm1d1c0042_sleep, ptr null, ptr null, ptr @qm1d1c0042_set_params, ptr null, ptr @qm1d1c0042_set_config, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Sharp QM1D1C0042 attached.\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"(%s) changing xtal_freq not supported. \00", align 1
@__func__.qm1d1c0042_set_config = private unnamed_addr constant [22 x i8] c"qm1d1c0042_set_config\00", align 1
@reg_initval = internal unnamed_addr constant [2 x [32 x i8]] [[32 x i8] c"H\1C\A0\10\BC\C5 3\06\00\00\00\03\00\00\00\00\FF\F3\00*d\A6\86\8C\CF\B8\F1\A8\F2\89\00", [32 x i8] c"h\1C\C0\10\BC\C1\113\03\00\00\00\03\00\00\00\00\FF\F3\00?%\\\D6U\CF\95\F66\F2\09\00"], align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"(%s) failed. [adap%d-fe%d]\0A\00", align 1
@__func__.qm1d1c0042_init = private unnamed_addr constant [16 x i8] c"qm1d1c0042_init\00", align 1
@__func__.qm1d1c0042_wakeup = private unnamed_addr constant [18 x i8] c"qm1d1c0042_wakeup\00", align 1
@__func__.qm1d1c0042_sleep = private unnamed_addr constant [17 x i8] c"qm1d1c0042_sleep\00", align 1
@conv_table = internal unnamed_addr constant [9 x [3 x i32]] [[3 x i32] [i32 2151000, i32 1, i32 7], [3 x i32] [i32 1950000, i32 1, i32 6], [3 x i32] [i32 1800000, i32 1, i32 5], [3 x i32] [i32 1600000, i32 1, i32 4], [3 x i32] [i32 1450000, i32 1, i32 3], [3 x i32] [i32 1250000, i32 1, i32 2], [3 x i32] [i32 1200000, i32 0, i32 7], [3 x i32] [i32 975000, i32 0, i32 6], [3 x i32] [i32 950000, i32 0, i32 0]], align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251], section "llvm.metadata"

@__mod_i2c__qm1d1c0042_id_device_table = dso_local alias [2 x %struct.i2c_device_id], ptr @qm1d1c0042_id

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @i2c_register_driver(ptr noundef nonnull @__this_module, ptr noundef nonnull @qm1d1c0042_driver) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @i2c_del_driver(ptr noundef nonnull @qm1d1c0042_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_register_driver(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_probe(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 60) #9
  %5 = icmp eq ptr %4, null
  br i1 %5, label %48, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.qm1d1c0042_state, ptr %4, i32 0, i32 1
  store ptr %0, ptr %7, align 8
  %8 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4
  %9 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 4
  store ptr %4, ptr %12, align 4
  %13 = load ptr, ptr %10, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %6
  store ptr %13, ptr %4, align 8
  br label %16

16:                                               ; preds = %15, %6
  %17 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %10, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %7, align 8
  %22 = getelementptr inbounds %struct.i2c_client, ptr %21, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qm1d1c0042_set_config) #10
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 1
  store i32 16000, ptr %24, align 4
  %25 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %10, i32 0, i32 2
  %26 = load i8, ptr %25, align 4, !range !8
  %27 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 2
  store i8 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %10, i32 0, i32 3
  %29 = load i8, ptr %28, align 1, !range !8
  %30 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 3
  store i8 %29, ptr %30, align 1
  %31 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %10, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 20, i32 %32
  %35 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 4
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %10, i32 0, i32 5
  %37 = load i32, ptr %36, align 4
  %38 = icmp eq i32 %37, 0
  %39 = select i1 %38, i32 4, i32 %37
  %40 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 5
  store i32 %39, ptr %40, align 8
  %41 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %10, i32 0, i32 6
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 15, i32 %42
  %45 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 6
  store i32 %44, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dvb_frontend, ptr %11, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %46, ptr noundef nonnull align 4 dereferenceable(220) @qm1d1c0042_ops, i32 220, i1 false)
  %47 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  store ptr %4, ptr %47, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.1) #10
  br label %48

48:                                               ; preds = %23, %2
  %49 = phi i32 [ 0, %23 ], [ -12, %2 ]
  ret i32 %49
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.i2c_client, ptr %0, i32 0, i32 4, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %4, i32 0, i32 4
  store ptr null, ptr %5, align 4
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_set_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store ptr %5, ptr %4, align 4
  br label %8

8:                                                ; preds = %7, %2
  %9 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.qm1d1c0042_state, ptr %4, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.i2c_client, ptr %14, i32 0, i32 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.qm1d1c0042_set_config) #10
  br label %16

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 1
  store i32 16000, ptr %17, align 4
  %18 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 2
  %19 = load i8, ptr %18, align 4, !range !8
  %20 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 2
  store i8 %19, ptr %20, align 4
  %21 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 3
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 3
  store i8 %22, ptr %23, align 1
  %24 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 4
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  %27 = select i1 %26, i32 20, i32 %25
  %28 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 4
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 5
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = select i1 %31, i32 4, i32 %30
  %33 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 5
  store i32 %32, ptr %33, align 4
  %34 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %1, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = icmp eq i32 %35, 0
  %37 = select i1 %36, i32 15, i32 %35
  %38 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %4, i32 0, i32 6
  store i32 %37, ptr %38, align 4
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca i8, align 1
  %9 = alloca [2 x %struct.i2c_msg], align 4
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = alloca [2 x i8], align 2
  %13 = alloca [2 x i8], align 2
  %14 = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14) #8
  store i8 0, ptr %14, align 1, !annotation !9
  %15 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  store i8 1, ptr %13, align 2
  %17 = getelementptr inbounds i8, ptr %13, i32 1
  store i8 12, ptr %17, align 1
  %18 = getelementptr inbounds %struct.qm1d1c0042_state, ptr %16, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = call i32 @i2c_transfer_buffer_flags(ptr noundef %19, ptr noundef nonnull %13, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #8
  store i8 1, ptr %12, align 2
  %21 = getelementptr inbounds i8, ptr %12, i32 1
  store i8 12, ptr %21, align 1
  %22 = load ptr, ptr %18, align 4
  %23 = call i32 @i2c_transfer_buffer_flags(ptr noundef %22, ptr noundef nonnull %12, i32 noundef 2, i16 noundef zeroext 0) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  store i8 1, ptr %11, align 2
  %24 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 12, ptr %24, align 1
  %25 = load ptr, ptr %18, align 4
  %26 = call i32 @i2c_transfer_buffer_flags(ptr noundef %25, ptr noundef nonnull %11, i32 noundef 2, i16 noundef zeroext 0) #8
  %27 = icmp ult i32 %26, 2
  %28 = select i1 %27, i32 -5, i32 %26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %153, label %30

30:                                               ; preds = %1
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #8
  store i8 1, ptr %10, align 2
  %31 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 28, ptr %31, align 1
  %32 = load ptr, ptr %18, align 4
  %33 = call i32 @i2c_transfer_buffer_flags(ptr noundef %32, ptr noundef nonnull %10, i32 noundef 2, i16 noundef zeroext 0) #8
  %34 = icmp ult i32 %33, 2
  %35 = select i1 %34, i32 -5, i32 %33
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %153, label %37

37:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8)
  store i8 0, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %9) #8
  %38 = getelementptr inbounds i8, ptr %9, i32 4
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %38, i8 0, i32 16, i1 false) #8, !annotation !9
  %39 = load ptr, ptr %18, align 4
  %40 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 1
  %41 = load i16, ptr %40, align 2
  store i16 %41, ptr %9, align 4
  %42 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 1
  store i16 0, ptr %42, align 2
  store i16 1, ptr %38, align 4
  %43 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 0, i32 3
  store ptr %8, ptr %43, align 4
  %44 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1
  %45 = load i16, ptr %40, align 2
  store i16 %45, ptr %44, align 4
  %46 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 1
  store i16 1, ptr %46, align 2
  %47 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 2
  store i16 1, ptr %47, align 4
  %48 = getelementptr inbounds %struct.i2c_msg, ptr %9, i32 1, i32 3
  store ptr %14, ptr %48, align 4
  %49 = getelementptr inbounds %struct.i2c_client, ptr %39, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 @i2c_transfer(ptr noundef %50, ptr noundef nonnull %9, i32 noundef 2) #8
  %52 = icmp ult i32 %51, 2
  %53 = select i1 %52, i32 -5, i32 %51
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8)
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %153, label %55

55:                                               ; preds = %37
  %56 = load i8, ptr %14, align 1
  switch i8 %56, label %153 [
    i8 72, label %58
    i8 104, label %57
  ]

57:                                               ; preds = %55
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ 0, %55 ], [ 1, %57 ]
  %60 = getelementptr inbounds %struct.qm1d1c0042_state, ptr %16, i32 0, i32 2
  %61 = getelementptr [2 x [32 x i8]], ptr @reg_initval, i32 0, i32 %59
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(32) %60, ptr noundef align 1 dereferenceable(32) %61, i32 32, i1 false)
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #8
  %62 = getelementptr %struct.qm1d1c0042_state, ptr %16, i32 0, i32 2, i32 12
  %63 = load i8, ptr %62, align 4
  %64 = or i8 %63, 64
  store i8 %64, ptr %62, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i8 12, ptr %7, align 2
  %65 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %64, ptr %65, align 1
  %66 = load ptr, ptr %18, align 4
  %67 = call i32 @i2c_transfer_buffer_flags(ptr noundef %66, ptr noundef nonnull %7, i32 noundef 2, i16 noundef zeroext 0) #8
  %68 = icmp ult i32 %67, 2
  %69 = select i1 %68, i32 -5, i32 %67
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %153, label %71

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %16, i32 0, i32 4
  %73 = load i32, ptr %72, align 4
  call void @msleep(i32 noundef %73) #8
  %74 = getelementptr inbounds i8, ptr %6, i32 1
  br label %80

75:                                               ; preds = %80
  %76 = add nuw nsw i32 %81, 1
  %77 = icmp eq i32 %76, 13
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = getelementptr inbounds i8, ptr %5, i32 1
  br label %93

80:                                               ; preds = %75, %71
  %81 = phi i32 [ 1, %71 ], [ %76, %75 ]
  %82 = trunc i32 %81 to i8
  %83 = getelementptr %struct.qm1d1c0042_state, ptr %16, i32 0, i32 2, i32 %81
  %84 = load i8, ptr %83, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i8 %82, ptr %6, align 2
  store i8 %84, ptr %74, align 1
  %85 = load ptr, ptr %18, align 4
  %86 = call i32 @i2c_transfer_buffer_flags(ptr noundef %85, ptr noundef nonnull %6, i32 noundef 2, i16 noundef zeroext 0) #8
  %87 = icmp ult i32 %86, 2
  %88 = select i1 %87, i32 -5, i32 %86
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %153, label %75

90:                                               ; preds = %93
  %91 = add nuw nsw i32 %94, 1
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %103, label %93

93:                                               ; preds = %90, %78
  %94 = phi i32 [ 17, %78 ], [ %91, %90 ]
  %95 = trunc i32 %94 to i8
  %96 = getelementptr %struct.qm1d1c0042_state, ptr %16, i32 0, i32 2, i32 %94
  %97 = load i8, ptr %96, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i8 %95, ptr %5, align 2
  store i8 %97, ptr %79, align 1
  %98 = load ptr, ptr %18, align 4
  %99 = call i32 @i2c_transfer_buffer_flags(ptr noundef %98, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 0) #8
  %100 = icmp ult i32 %99, 2
  %101 = select i1 %100, i32 -5, i32 %99
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %153, label %90

103:                                              ; preds = %90
  %104 = getelementptr %struct.qm1d1c0042_state, ptr %16, i32 0, i32 2, i32 1
  %105 = load i8, ptr %104, align 1
  %106 = and i8 %105, -10
  %107 = or i8 %106, 8
  store i8 %107, ptr %104, align 1
  %108 = getelementptr %struct.qm1d1c0042_state, ptr %16, i32 0, i32 2, i32 5
  %109 = load i8, ptr %108, align 1
  %110 = and i8 %109, -9
  store i8 %110, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 1, ptr %4, align 2
  %111 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %107, ptr %111, align 1
  %112 = load ptr, ptr %18, align 4
  %113 = call i32 @i2c_transfer_buffer_flags(ptr noundef %112, ptr noundef nonnull %4, i32 noundef 2, i16 noundef zeroext 0) #8
  %114 = icmp ult i32 %113, 2
  %115 = select i1 %114, i32 -5, i32 %113
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  %116 = and i32 %115, -3
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %126

118:                                              ; preds = %103
  %119 = load i8, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i8 5, ptr %3, align 2
  %120 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %119, ptr %120, align 1
  %121 = load ptr, ptr %18, align 4
  %122 = call i32 @i2c_transfer_buffer_flags(ptr noundef %121, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #8
  %123 = icmp ult i32 %122, 2
  %124 = select i1 %123, i32 -5, i32 %122
  %125 = icmp eq i32 %124, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  br i1 %125, label %138, label %126

126:                                              ; preds = %118, %103
  %127 = phi i32 [ %124, %118 ], [ %115, %103 ]
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = load ptr, ptr %18, align 4
  %131 = getelementptr inbounds %struct.i2c_client, ptr %130, i32 0, i32 4
  %132 = load ptr, ptr %16, align 4
  %133 = getelementptr inbounds %struct.dvb_frontend, ptr %132, i32 0, i32 2
  %134 = load ptr, ptr %133, align 4
  %135 = load i32, ptr %134, align 4
  %136 = getelementptr inbounds %struct.dvb_frontend, ptr %132, i32 0, i32 10
  %137 = load i32, ptr %136, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %131, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.qm1d1c0042_wakeup, i32 noundef %135, i32 noundef %137) #10
  br label %153

138:                                              ; preds = %126, %118
  %139 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %16, i32 0, i32 3
  %140 = load i8, ptr %139, align 1, !range !8
  %141 = getelementptr %struct.qm1d1c0042_state, ptr %16, i32 0, i32 2, i32 3
  %142 = load i8, ptr %141, align 1
  %143 = and i8 %142, -2
  %144 = or i8 %143, %140
  store i8 %144, ptr %141, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 3, ptr %2, align 2
  %145 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %144, ptr %145, align 1
  %146 = load ptr, ptr %18, align 4
  %147 = call i32 @i2c_transfer_buffer_flags(ptr noundef %146, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 0) #8
  %148 = icmp ult i32 %147, 2
  %149 = select i1 %148, i32 -5, i32 %147
  %150 = icmp eq i32 %149, 2
  %151 = select i1 %150, i32 0, i32 %149
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %152 = icmp slt i32 %151, 0
  br i1 %152, label %153, label %162

153:                                              ; preds = %138, %129, %93, %80, %58, %55, %37, %30, %1
  %154 = phi i32 [ %28, %1 ], [ %35, %30 ], [ %53, %37 ], [ %69, %58 ], [ %127, %129 ], [ %149, %138 ], [ -22, %55 ], [ %101, %93 ], [ %88, %80 ]
  %155 = load ptr, ptr %18, align 4
  %156 = getelementptr inbounds %struct.i2c_client, ptr %155, i32 0, i32 4
  %157 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %158 = load ptr, ptr %157, align 4
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %161 = load i32, ptr %160, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %156, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.qm1d1c0042_init, i32 noundef %159, i32 noundef %161) #10
  br label %162

162:                                              ; preds = %153, %138
  %163 = phi i32 [ %154, %153 ], [ %151, %138 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14) #8
  ret i32 %163
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.qm1d1c0042_state, ptr %5, i32 0, i32 2, i32 1
  %7 = load i8, ptr %6, align 1
  %8 = and i8 %7, -10
  %9 = or i8 %8, 1
  store i8 %9, ptr %6, align 1
  %10 = getelementptr %struct.qm1d1c0042_state, ptr %5, i32 0, i32 2, i32 5
  %11 = load i8, ptr %10, align 1
  %12 = or i8 %11, 8
  store i8 %12, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i8 5, ptr %3, align 2
  %13 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %12, ptr %13, align 1
  %14 = getelementptr inbounds %struct.qm1d1c0042_state, ptr %5, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 @i2c_transfer_buffer_flags(ptr noundef %15, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #8
  %17 = icmp ult i32 %16, 2
  %18 = select i1 %17, i32 -5, i32 %16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  %19 = and i32 %18, -3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load i8, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 1, ptr %2, align 2
  %23 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %22, ptr %23, align 1
  %24 = load ptr, ptr %14, align 4
  %25 = call i32 @i2c_transfer_buffer_flags(ptr noundef %24, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 0) #8
  %26 = icmp ult i32 %25, 2
  %27 = select i1 %26, i32 -5, i32 %25
  %28 = icmp eq i32 %27, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  br i1 %28, label %40, label %29

29:                                               ; preds = %21, %1
  %30 = phi i32 [ %27, %21 ], [ %18, %1 ]
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load ptr, ptr %14, align 4
  %34 = getelementptr inbounds %struct.i2c_client, ptr %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 10
  %39 = load i32, ptr %38, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.qm1d1c0042_sleep, i32 noundef %37, i32 noundef %39) #10
  br label %40

40:                                               ; preds = %32, %29, %21
  %41 = phi i32 [ %30, %32 ], [ %30, %29 ], [ 0, %21 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @qm1d1c0042_set_params(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca [2 x i8], align 2
  %3 = alloca [2 x i8], align 2
  %4 = alloca [2 x i8], align 2
  %5 = alloca [2 x i8], align 2
  %6 = alloca [2 x i8], align 2
  %7 = alloca [2 x i8], align 2
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 2
  %10 = alloca [2 x i8], align 2
  %11 = alloca [2 x i8], align 2
  %12 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr %struct.qm1d1c0042_state, ptr %13, i32 0, i32 2, i32 8
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, -16
  %19 = or i8 %18, 9
  store i8 %19, ptr %16, align 4
  %20 = getelementptr %struct.qm1d1c0042_state, ptr %13, i32 0, i32 2, i32 19
  %21 = load i8, ptr %20, align 1
  %22 = and i8 %21, -97
  %23 = or i8 %22, 32
  store i8 %23, ptr %20, align 1
  %24 = getelementptr %struct.qm1d1c0042_state, ptr %13, i32 0, i32 2, i32 2
  %25 = load i8, ptr %24, align 2
  %26 = and i8 %25, 15
  %27 = icmp ult i32 %15, 2151000
  br i1 %27, label %28, label %56

28:                                               ; preds = %1
  %29 = icmp ult i32 %15, 1950000
  br i1 %29, label %42, label %30

30:                                               ; preds = %54, %52, %50, %48, %46, %44, %42, %28
  %31 = phi i32 [ 0, %28 ], [ 1, %42 ], [ 2, %44 ], [ 3, %46 ], [ 4, %48 ], [ 5, %50 ], [ 6, %52 ], [ 7, %54 ]
  %32 = getelementptr [9 x [3 x i32]], ptr @conv_table, i32 0, i32 %31, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = trunc i32 %33 to i8
  %35 = shl i8 %34, 7
  %36 = or i8 %35, %26
  %37 = getelementptr [9 x [3 x i32]], ptr @conv_table, i32 0, i32 %31, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = trunc i32 %38 to i8
  %40 = shl i8 %39, 4
  %41 = or i8 %40, %36
  br label %56

42:                                               ; preds = %28
  %43 = icmp ult i32 %15, 1800000
  br i1 %43, label %44, label %30

44:                                               ; preds = %42
  %45 = icmp ult i32 %15, 1600000
  br i1 %45, label %46, label %30

46:                                               ; preds = %44
  %47 = icmp ult i32 %15, 1450000
  br i1 %47, label %48, label %30

48:                                               ; preds = %46
  %49 = icmp ult i32 %15, 1250000
  br i1 %49, label %50, label %30

50:                                               ; preds = %48
  %51 = icmp ult i32 %15, 1200000
  br i1 %51, label %52, label %30

52:                                               ; preds = %50
  %53 = icmp ult i32 %15, 975000
  br i1 %53, label %54, label %30

54:                                               ; preds = %52
  %55 = icmp ult i32 %15, 950000
  br i1 %55, label %56, label %30

56:                                               ; preds = %54, %30, %1
  %57 = phi i8 [ %41, %30 ], [ %26, %1 ], [ %26, %54 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  store i8 2, ptr %11, align 2
  %58 = getelementptr inbounds i8, ptr %11, i32 1
  store i8 %57, ptr %58, align 1
  %59 = getelementptr inbounds %struct.qm1d1c0042_state, ptr %13, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = call i32 @i2c_transfer_buffer_flags(ptr noundef %60, ptr noundef nonnull %11, i32 noundef 2, i16 noundef zeroext 0) #8
  %62 = icmp ult i32 %61, 2
  %63 = select i1 %62, i32 -5, i32 %61
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %226, label %65

65:                                               ; preds = %56
  %66 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %13, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = lshr i32 %67, 1
  %69 = add i32 %68, %15
  %70 = udiv i32 %69, %67
  %71 = getelementptr %struct.qm1d1c0042_state, ptr %13, i32 0, i32 2, i32 6
  %72 = load i8, ptr %71, align 2
  %73 = and i8 %72, 64
  %74 = add i32 %70, 1012
  %75 = lshr i32 %74, 2
  %76 = trunc i32 %75 to i8
  %77 = or i8 %73, %76
  store i8 %77, ptr %71, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #8
  store i8 6, ptr %10, align 2
  %78 = getelementptr inbounds i8, ptr %10, i32 1
  store i8 %77, ptr %78, align 1
  %79 = load ptr, ptr %59, align 4
  %80 = call i32 @i2c_transfer_buffer_flags(ptr noundef %79, ptr noundef nonnull %10, i32 noundef 2, i16 noundef zeroext 0) #8
  %81 = icmp ult i32 %80, 2
  %82 = select i1 %81, i32 -5, i32 %80
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  %83 = icmp slt i32 %82, 0
  br i1 %83, label %226, label %84

84:                                               ; preds = %65
  %85 = getelementptr %struct.qm1d1c0042_state, ptr %13, i32 0, i32 2, i32 7
  %86 = load i8, ptr %85, align 1
  %87 = and i8 %86, -16
  %88 = add i32 %70, 8
  %89 = and i32 %88, 12
  %90 = sub i32 %70, %89
  %91 = trunc i32 %90 to i8
  %92 = add i8 %91, 11
  %93 = and i8 %92, 15
  %94 = or i8 %87, %93
  store i8 %94, ptr %85, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  store i8 7, ptr %9, align 2
  %95 = getelementptr inbounds i8, ptr %9, i32 1
  store i8 %94, ptr %95, align 1
  %96 = load ptr, ptr %59, align 4
  %97 = call i32 @i2c_transfer_buffer_flags(ptr noundef %96, ptr noundef nonnull %9, i32 noundef 2, i16 noundef zeroext 0) #8
  %98 = icmp ult i32 %97, 2
  %99 = select i1 %98, i32 -5, i32 %97
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %226, label %101

101:                                              ; preds = %84
  %102 = load i8, ptr %16, align 4
  %103 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %13, i32 0, i32 2
  %104 = load i8, ptr %103, align 4, !range !8
  %105 = icmp eq i8 %104, 0
  %106 = and i8 %102, -16
  %107 = or i8 %106, 2
  %108 = select i1 %105, i8 %102, i8 %107
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i8 8, ptr %8, align 2
  %109 = getelementptr inbounds i8, ptr %8, i32 1
  store i8 %108, ptr %109, align 1
  %110 = load ptr, ptr %59, align 4
  %111 = call i32 @i2c_transfer_buffer_flags(ptr noundef %110, ptr noundef nonnull %8, i32 noundef 2, i16 noundef zeroext 0) #8
  %112 = icmp ult i32 %111, 2
  %113 = select i1 %112, i32 -5, i32 %111
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %226, label %115

115:                                              ; preds = %101
  %116 = zext i32 %15 to i64
  %117 = shl nuw nsw i64 %116, 20
  %118 = load i32, ptr %66, align 4
  %119 = zext i32 %118 to i64
  %120 = call i64 @div64_s64(i64 noundef %117, i64 noundef %119) #8
  %121 = zext i32 %70 to i64
  %122 = mul nuw i64 %121, 4293918720
  %123 = add i64 %120, %122
  %124 = trunc i64 %123 to i32
  %125 = add i32 %124, 4194304
  %126 = icmp slt i32 %124, 0
  %127 = select i1 %126, i32 %125, i32 %124
  %128 = getelementptr %struct.qm1d1c0042_state, ptr %13, i32 0, i32 2, i32 9
  %129 = load i8, ptr %128, align 1
  %130 = and i8 %129, -64
  %131 = lshr i32 %127, 16
  %132 = trunc i32 %131 to i8
  %133 = and i8 %132, 63
  %134 = or i8 %133, %130
  store i8 %134, ptr %128, align 1
  %135 = lshr i32 %127, 8
  %136 = trunc i32 %135 to i8
  %137 = getelementptr %struct.qm1d1c0042_state, ptr %13, i32 0, i32 2, i32 10
  store i8 %136, ptr %137, align 2
  %138 = trunc i32 %127 to i8
  %139 = getelementptr %struct.qm1d1c0042_state, ptr %13, i32 0, i32 2, i32 11
  store i8 %138, ptr %139, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i8 9, ptr %7, align 2
  %140 = getelementptr inbounds i8, ptr %7, i32 1
  store i8 %134, ptr %140, align 1
  %141 = load ptr, ptr %59, align 4
  %142 = call i32 @i2c_transfer_buffer_flags(ptr noundef %141, ptr noundef nonnull %7, i32 noundef 2, i16 noundef zeroext 0) #8
  %143 = icmp ult i32 %142, 2
  %144 = select i1 %143, i32 -5, i32 %142
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  %145 = and i32 %144, -3
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %226

147:                                              ; preds = %115
  %148 = load i8, ptr %137, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  store i8 10, ptr %6, align 2
  %149 = getelementptr inbounds i8, ptr %6, i32 1
  store i8 %148, ptr %149, align 1
  %150 = load ptr, ptr %59, align 4
  %151 = call i32 @i2c_transfer_buffer_flags(ptr noundef %150, ptr noundef nonnull %6, i32 noundef 2, i16 noundef zeroext 0) #8
  %152 = icmp ult i32 %151, 2
  %153 = select i1 %152, i32 -5, i32 %151
  %154 = icmp eq i32 %153, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  br i1 %154, label %155, label %226

155:                                              ; preds = %147
  %156 = load i8, ptr %139, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  store i8 11, ptr %5, align 2
  %157 = getelementptr inbounds i8, ptr %5, i32 1
  store i8 %156, ptr %157, align 1
  %158 = load ptr, ptr %59, align 4
  %159 = call i32 @i2c_transfer_buffer_flags(ptr noundef %158, ptr noundef nonnull %5, i32 noundef 2, i16 noundef zeroext 0) #8
  %160 = icmp ult i32 %159, 2
  %161 = select i1 %160, i32 -5, i32 %159
  %162 = icmp eq i32 %161, 2
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  br i1 %162, label %163, label %226

163:                                              ; preds = %155
  %164 = load i8, ptr %103, align 4, !range !8
  %165 = icmp eq i8 %164, 0
  br i1 %165, label %166, label %178

166:                                              ; preds = %163
  %167 = load i8, ptr %20, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 19, ptr %4, align 2
  %168 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %167, ptr %168, align 1
  %169 = load ptr, ptr %59, align 4
  %170 = call i32 @i2c_transfer_buffer_flags(ptr noundef %169, ptr noundef nonnull %4, i32 noundef 2, i16 noundef zeroext 0) #8
  %171 = icmp ult i32 %170, 2
  %172 = select i1 %171, i32 -5, i32 %170
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  %173 = icmp slt i32 %172, 0
  br i1 %173, label %226, label %174

174:                                              ; preds = %166
  %175 = load i8, ptr %103, align 4, !range !8
  %176 = icmp eq i8 %175, 0
  %177 = select i1 %176, i8 127, i8 63
  br label %178

178:                                              ; preds = %174, %163
  %179 = phi i8 [ %177, %174 ], [ 63, %163 ]
  %180 = getelementptr %struct.qm1d1c0042_state, ptr %13, i32 0, i32 2, i32 12
  %181 = load i8, ptr %180, align 4
  %182 = and i8 %179, %181
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i8 12, ptr %3, align 2
  %183 = getelementptr inbounds i8, ptr %3, i32 1
  store i8 %182, ptr %183, align 1
  %184 = load ptr, ptr %59, align 4
  %185 = call i32 @i2c_transfer_buffer_flags(ptr noundef %184, ptr noundef nonnull %3, i32 noundef 2, i16 noundef zeroext 0) #8
  %186 = icmp ult i32 %185, 2
  %187 = select i1 %186, i32 -5, i32 %185
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %226, label %189

189:                                              ; preds = %178
  call void @usleep_range_state(i32 noundef 2000, i32 noundef 3000, i32 noundef 2) #8
  %190 = load i8, ptr %180, align 4
  %191 = xor i8 %179, -1
  %192 = or i8 %190, %191
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #8
  store i8 12, ptr %2, align 2
  %193 = getelementptr inbounds i8, ptr %2, i32 1
  store i8 %192, ptr %193, align 1
  %194 = load ptr, ptr %59, align 4
  %195 = call i32 @i2c_transfer_buffer_flags(ptr noundef %194, ptr noundef nonnull %2, i32 noundef 2, i16 noundef zeroext 0) #8
  %196 = icmp ult i32 %195, 2
  %197 = select i1 %196, i32 -5, i32 %195
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #8
  %198 = icmp slt i32 %197, 0
  br i1 %198, label %226, label %199

199:                                              ; preds = %189
  %200 = load i8, ptr %103, align 4, !range !8
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %204, label %202

202:                                              ; preds = %199
  %203 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %13, i32 0, i32 4
  br label %213

204:                                              ; preds = %199
  %205 = getelementptr %struct.qm1d1c0042_state, ptr %13, i32 0, i32 2, i32 3
  %206 = load i8, ptr %205, align 1
  %207 = and i8 %206, 1
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %204
  %210 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %13, i32 0, i32 5
  br label %213

211:                                              ; preds = %204
  %212 = getelementptr inbounds %struct.qm1d1c0042_config, ptr %13, i32 0, i32 6
  br label %213

213:                                              ; preds = %211, %209, %202
  %214 = phi ptr [ %210, %209 ], [ %212, %211 ], [ %203, %202 ]
  %215 = load i32, ptr %214, align 4
  call void @msleep(i32 noundef %215) #8
  %216 = load i8, ptr %103, align 4, !range !8
  %217 = icmp eq i8 %216, 0
  br i1 %217, label %225, label %218

218:                                              ; preds = %213
  %219 = call fastcc i32 @reg_write(ptr noundef %13, i8 noundef zeroext 8, i8 noundef zeroext 9)
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %226, label %221

221:                                              ; preds = %218
  %222 = load i8, ptr %20, align 1
  %223 = call fastcc i32 @reg_write(ptr noundef %13, i8 noundef zeroext 19, i8 noundef zeroext %222)
  %224 = icmp slt i32 %223, 0
  br i1 %224, label %226, label %225

225:                                              ; preds = %221, %213
  br label %226

226:                                              ; preds = %225, %221, %218, %189, %178, %166, %155, %147, %115, %101, %84, %65, %56
  %227 = phi i32 [ 0, %225 ], [ %63, %56 ], [ %82, %65 ], [ %99, %84 ], [ %113, %101 ], [ %172, %166 ], [ %187, %178 ], [ %197, %189 ], [ %219, %218 ], [ %223, %221 ], [ %161, %155 ], [ %144, %115 ], [ %153, %147 ]
  ret i32 %227
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @reg_write(ptr nocapture noundef readonly %0, i8 noundef zeroext %1, i8 noundef zeroext %2) unnamed_addr #2 {
  %4 = alloca [2 x i8], align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #8
  store i8 %1, ptr %4, align 2
  %5 = getelementptr inbounds i8, ptr %4, i32 1
  store i8 %2, ptr %5, align 1
  %6 = getelementptr inbounds %struct.qm1d1c0042_state, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = call i32 @i2c_transfer_buffer_flags(ptr noundef %7, ptr noundef nonnull %4, i32 noundef 2, i16 noundef zeroext 0) #8
  %9 = icmp ult i32 %8, 2
  %10 = select i1 %9, i32 -5, i32 %8
  %11 = icmp eq i32 %10, 2
  %12 = select i1 %11, i32 0, i32 %10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #8
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer_buffer_flags(ptr noundef, ptr noundef, i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_s64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_driver(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{!"auto-init"}
