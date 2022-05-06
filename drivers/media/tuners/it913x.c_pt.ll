; ModuleID = '/llk/IR/drivers/media/tuners/it913x.c_pt.bc'
source_filename = "../drivers/media/tuners/it913x.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_device_id = type { [20 x i8], i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.it913x_platform_data = type { ptr, ptr, i8 }
%struct.it913x_dev = type { ptr, ptr, ptr, i8, i16, i8, i8, i32, i8 }
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

@it913x_id_table = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"it9133ax-tuner\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id { [20 x i8] c"it9133bx-tuner\00\00\00\00\00\00", i32 2 }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_description249 = internal constant [44 x i8] c"description=ITE IT913X silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [38 x i8] c"author=Antti Palosaari <crope@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@it913x_driver = internal global %struct.platform_driver { ptr @it913x_probe, ptr @it913x_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @it913x_id_table, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [7 x i8] c"it913x\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"kzalloc() failed\0A\00", align 1
@it913x_tuner_ops = internal unnamed_addr constant %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"ITE IT913X\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 174000000, i32 862000000, i32 0, i32 0, i32 0, i32 0 }, ptr null, ptr @it913x_init, ptr @it913x_sleep, ptr null, ptr null, ptr @it913x_set_params, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"AX\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"BX\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"ITE IT913X %s successfully attached\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@it913x_init.nv = internal unnamed_addr constant [9 x i8] c"0 \18\10\0C\08\06\04\02", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unknown clock identifier %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.7 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [16 x i8] c"?\1F?>\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] zeroinitializer, align 1
@.str.10 = private unnamed_addr constant [10 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [11 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\01\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_license251], section "llvm.metadata"

@__mod_platform__it913x_id_table_device_table = dso_local alias [3 x %struct.platform_device_id], ptr @it913x_id_table

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @it913x_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @it913x_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @it913x_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.it913x_platform_data, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 28) #9
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #10
  br label %40

13:                                               ; preds = %1
  store ptr %0, ptr %10, align 8
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.it913x_dev, ptr %10, i32 0, i32 1
  store ptr %14, ptr %15, align 4
  %16 = load ptr, ptr %5, align 4
  %17 = getelementptr inbounds %struct.it913x_dev, ptr %10, i32 0, i32 2
  store ptr %16, ptr %17, align 8
  %18 = getelementptr inbounds %struct.platform_device_id, ptr %8, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = trunc i32 %19 to i8
  %21 = getelementptr inbounds %struct.it913x_dev, ptr %10, i32 0, i32 3
  %22 = load i8, ptr %21, align 4
  %23 = and i8 %20, 3
  %24 = and i8 %22, -16
  %25 = or i8 %24, %23
  %26 = getelementptr inbounds %struct.it913x_platform_data, ptr %4, i32 0, i32 2
  %27 = load i8, ptr %26, align 4
  %28 = shl i8 %27, 2
  %29 = and i8 %28, 12
  %30 = or i8 %29, %25
  store i8 %30, ptr %21, align 4
  %31 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 4
  store ptr %10, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dvb_frontend, ptr %6, i32 0, i32 1, i32 32
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(220) %32, ptr noundef nonnull align 4 dereferenceable(220) @it913x_tuner_ops, i32 220, i1 false)
  %33 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %33, align 8
  %34 = load i8, ptr %21, align 4
  %35 = and i8 %34, 3
  %36 = icmp eq i8 %35, 2
  %37 = select i1 %36, ptr @.str.3, ptr @.str.4
  %38 = icmp eq i8 %35, 1
  %39 = select i1 %38, ptr @.str.2, ptr %37
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef nonnull %39) #10
  br label %40

40:                                               ; preds = %13, %12
  %41 = phi i32 [ -12, %12 ], [ 0, %13 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @it913x_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.it913x_dev, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 1, i32 32
  tail call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(220) %6, i8 0, i32 220, i1 false)
  %7 = getelementptr inbounds %struct.dvb_frontend, ptr %5, i32 0, i32 4
  store ptr null, ptr %7, align 4
  tail call void @kfree(ptr noundef %3) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @it913x_init(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca [2 x i8], align 2
  %4 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #8
  store i16 0, ptr %3, align 2, !annotation !8
  %7 = getelementptr inbounds %struct.it913x_dev, ptr %5, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 8449100, i32 noundef 104) #8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %112

11:                                               ; preds = %1
  tail call void @usleep_range_state(i32 noundef 10000, i32 noundef 100000, i32 noundef 2) #8
  %12 = load ptr, ptr %7, align 4
  %13 = call i32 @regmap_read(ptr noundef %12, i32 noundef 8449158, ptr noundef nonnull %2) #8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %112

15:                                               ; preds = %11
  %16 = load i32, ptr %2, align 4
  switch i32 %16, label %18 [
    i32 0, label %20
    i32 1, label %17
  ]

17:                                               ; preds = %15
  br label %20

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.6, i32 noundef %16) #10
  br label %112

20:                                               ; preds = %17, %15
  %21 = phi i8 [ 1, %17 ], [ 0, %15 ]
  %22 = phi i16 [ 640, %17 ], [ 2000, %15 ]
  %23 = phi i8 [ 1, %17 ], [ 3, %15 ]
  %24 = phi i32 [ 6, %17 ], [ 16, %15 ]
  %25 = getelementptr inbounds %struct.it913x_dev, ptr %5, i32 0, i32 6
  store i8 %21, ptr %25, align 1
  %26 = getelementptr inbounds %struct.it913x_dev, ptr %5, i32 0, i32 4
  store i16 %22, ptr %26, align 2
  %27 = getelementptr inbounds %struct.it913x_dev, ptr %5, i32 0, i32 5
  store i8 %23, ptr %27, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = call i32 @regmap_read(ptr noundef %28, i32 noundef 8449283, ptr noundef nonnull %2) #8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %112

31:                                               ; preds = %20
  %32 = load i32, ptr %2, align 4
  %33 = icmp ult i32 %32, 9
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = getelementptr [9 x i8], ptr @it913x_init.nv, i32 0, i32 %32
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  br label %38

38:                                               ; preds = %34, %31
  %39 = phi i32 [ %37, %34 ], [ 2, %31 ]
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = add i32 %40, 5
  %42 = getelementptr inbounds [2 x i8], ptr %3, i32 0, i32 1
  %43 = load volatile i32, ptr @jiffies, align 64
  %44 = sub i32 %41, %43
  %45 = icmp sgt i32 %44, -1
  br i1 %45, label %50, label %62

46:                                               ; preds = %54
  %47 = load volatile i32, ptr @jiffies, align 64
  %48 = sub i32 %41, %47
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %62

50:                                               ; preds = %46, %38
  %51 = load ptr, ptr %7, align 4
  %52 = call i32 @regmap_bulk_read(ptr noundef %51, i32 noundef 8449315, ptr noundef nonnull %3, i32 noundef 2) #8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %112

54:                                               ; preds = %50
  %55 = load i8, ptr %42, align 1
  %56 = zext i8 %55 to i32
  %57 = shl nuw nsw i32 %56, 8
  %58 = load i8, ptr %3, align 2
  %59 = zext i8 %58 to i32
  %60 = or i32 %57, %59
  store i32 %60, ptr %2, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %46, label %62

62:                                               ; preds = %54, %46, %38
  %63 = phi i32 [ %32, %38 ], [ 0, %46 ], [ %60, %54 ]
  %64 = getelementptr inbounds %struct.it913x_dev, ptr %5, i32 0, i32 4
  %65 = load i16, ptr %64, align 2
  %66 = zext i16 %65 to i32
  %67 = mul i32 %63, %66
  %68 = getelementptr inbounds %struct.it913x_dev, ptr %5, i32 0, i32 7
  %69 = getelementptr inbounds %struct.it913x_dev, ptr %5, i32 0, i32 5
  %70 = load i8, ptr %69, align 4
  %71 = zext i8 %70 to i32
  %72 = mul nuw nsw i32 %39, %71
  %73 = udiv i32 %67, %72
  %74 = mul i32 %73, 1000
  store i32 %74, ptr %68, align 4
  %75 = getelementptr inbounds %struct.it913x_dev, ptr %5, i32 0, i32 3
  %76 = load i8, ptr %75, align 4
  %77 = and i8 %76, 3
  %78 = icmp eq i8 %77, 1
  br i1 %78, label %79, label %93

79:                                               ; preds = %62
  %80 = load volatile i32, ptr @jiffies, align 64
  %81 = add i32 %80, 5
  br label %82

82:                                               ; preds = %90, %79
  %83 = load volatile i32, ptr @jiffies, align 64
  %84 = sub i32 %81, %83
  %85 = icmp sgt i32 %84, -1
  br i1 %85, label %86, label %94

86:                                               ; preds = %82
  %87 = load ptr, ptr %7, align 4
  %88 = call i32 @regmap_read(ptr noundef %87, i32 noundef 8449154, ptr noundef nonnull %2) #8
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %86
  %91 = load i32, ptr %2, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %82, label %94

93:                                               ; preds = %62
  call void @msleep(i32 noundef 50) #8
  br label %94

94:                                               ; preds = %93, %90, %82
  %95 = load ptr, ptr %7, align 4
  %96 = call i32 @regmap_write(ptr noundef %95, i32 noundef 8449409, i32 noundef %24) #8
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %94
  %99 = load ptr, ptr %7, align 4
  %100 = call i32 @regmap_write(ptr noundef %99, i32 noundef 8449111, i32 noundef 0) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = load ptr, ptr %7, align 4
  %104 = call i32 @regmap_write(ptr noundef %103, i32 noundef 8449112, i32 noundef 0) #8
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = load ptr, ptr %7, align 4
  %108 = call i32 @regmap_write(ptr noundef %107, i32 noundef 8449088, i32 noundef 1) #8
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %106
  %111 = getelementptr inbounds %struct.it913x_dev, ptr %5, i32 0, i32 8
  store i8 1, ptr %111, align 4
  br label %112

112:                                              ; preds = %110, %106, %102, %98, %94, %86, %50, %20, %18, %11, %1
  %113 = phi i32 [ 0, %110 ], [ %9, %1 ], [ %13, %11 ], [ -22, %18 ], [ %29, %20 ], [ %96, %94 ], [ %100, %98 ], [ %104, %102 ], [ %108, %106 ], [ %88, %86 ], [ %52, %50 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %113
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @it913x_sleep(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.it913x_dev, ptr %3, i32 0, i32 8
  store i8 0, ptr %4, align 4
  %5 = getelementptr inbounds %struct.it913x_dev, ptr %3, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @regmap_bulk_write(ptr noundef %6, i32 noundef 8449088, ptr noundef nonnull @.str.7, i32 noundef 1) #8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %38

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.it913x_dev, ptr %3, i32 0, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 12
  %13 = icmp eq i8 %12, 4
  %14 = select i1 %13, i32 4, i32 15
  %15 = load ptr, ptr %5, align 4
  %16 = tail call i32 @regmap_bulk_write(ptr noundef %15, i32 noundef 8449026, ptr noundef nonnull @.str.8, i32 noundef %14) #8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %9
  %19 = load ptr, ptr %5, align 4
  %20 = tail call i32 @regmap_bulk_write(ptr noundef %19, i32 noundef 8449042, ptr noundef nonnull @.str.9, i32 noundef 4) #8
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 4
  %24 = tail call i32 @regmap_bulk_write(ptr noundef %23, i32 noundef 8449047, ptr noundef nonnull @.str.10, i32 noundef 9) #8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 4
  %28 = tail call i32 @regmap_bulk_write(ptr noundef %27, i32 noundef 8449058, ptr noundef nonnull @.str.11, i32 noundef 10) #8
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load ptr, ptr %5, align 4
  %32 = tail call i32 @regmap_bulk_write(ptr noundef %31, i32 noundef 8449056, ptr noundef nonnull @.str.7, i32 noundef 1) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %5, align 4
  %36 = tail call i32 @regmap_bulk_write(ptr noundef %35, i32 noundef 8449087, ptr noundef nonnull @.str.12, i32 noundef 1) #8
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34, %30, %26, %22, %18, %9, %1
  %39 = phi i32 [ %7, %1 ], [ %16, %9 ], [ %20, %18 ], [ %24, %22 ], [ %28, %26 ], [ %32, %30 ], [ %36, %34 ]
  br label %40

40:                                               ; preds = %38, %34
  %41 = phi i32 [ %39, %38 ], [ 0, %34 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @it913x_set_params(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.it913x_dev, ptr %4, i32 0, i32 8
  %7 = load i8, ptr %6, align 4, !range !9
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %156, label %9

9:                                                ; preds = %1
  %10 = load i32, ptr %5, align 4
  %11 = icmp ult i32 %10, 74000001
  br i1 %11, label %30, label %12

12:                                               ; preds = %9
  %13 = icmp ult i32 %10, 111000001
  br i1 %13, label %30, label %14

14:                                               ; preds = %12
  %15 = icmp ult i32 %10, 148000001
  br i1 %15, label %30, label %16

16:                                               ; preds = %14
  %17 = icmp ult i32 %10, 222000001
  br i1 %17, label %30, label %18

18:                                               ; preds = %16
  %19 = icmp ult i32 %10, 296000001
  br i1 %19, label %30, label %20

20:                                               ; preds = %18
  %21 = icmp ult i32 %10, 445000001
  br i1 %21, label %30, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.it913x_dev, ptr %4, i32 0, i32 7
  %24 = load i32, ptr %23, align 4
  %25 = icmp ugt i32 %10, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = icmp ult i32 %10, 950000001
  %28 = select i1 %27, i32 4, i32 2
  %29 = select i1 %27, i32 57344, i32 0
  br label %30

30:                                               ; preds = %26, %22, %20, %18, %16, %14, %12, %9
  %31 = phi i32 [ 48, %9 ], [ 32, %12 ], [ 24, %14 ], [ 16, %16 ], [ 12, %18 ], [ 8, %20 ], [ 6, %22 ], [ %28, %26 ]
  %32 = phi i32 [ 0, %9 ], [ 8192, %12 ], [ 16384, %14 ], [ 24576, %16 ], [ 32768, %18 ], [ 40960, %20 ], [ 49152, %22 ], [ %29, %26 ]
  %33 = getelementptr inbounds %struct.it913x_dev, ptr %4, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = call i32 @regmap_read(ptr noundef %34, i32 noundef 8449409, ptr noundef nonnull %2) #8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %156

37:                                               ; preds = %30
  %38 = load i32, ptr %2, align 4
  %39 = mul i32 %38, %31
  %40 = icmp ult i32 %38, 32
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.it913x_dev, ptr %4, i32 0, i32 6
  %43 = load i8, ptr %42, align 1
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = and i32 %39, 65534
  %47 = mul nuw nsw i32 %46, 9
  %48 = lshr i32 %47, 5
  %49 = trunc i32 %48 to i16
  br label %68

50:                                               ; preds = %41
  %51 = trunc i32 %39 to i16
  %52 = lshr exact i16 %51, 1
  br label %68

53:                                               ; preds = %37
  %54 = trunc i32 %39 to i16
  %55 = sub i16 64, %54
  %56 = getelementptr inbounds %struct.it913x_dev, ptr %4, i32 0, i32 6
  %57 = load i8, ptr %56, align 1
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = zext i16 %55 to i32
  %61 = mul nuw nsw i32 %60, 9
  %62 = lshr i32 %61, 5
  %63 = trunc i32 %62 to i16
  %64 = xor i16 %63, -1
  br label %68

65:                                               ; preds = %53
  %66 = lshr exact i16 %55, 1
  %67 = xor i16 %66, -1
  br label %68

68:                                               ; preds = %65, %59, %50, %45
  %69 = phi i16 [ %49, %45 ], [ %52, %50 ], [ %64, %59 ], [ %67, %65 ]
  %70 = load i32, ptr %5, align 4
  %71 = udiv i32 %70, 1000
  %72 = mul nuw nsw i32 %71, %31
  %73 = getelementptr inbounds %struct.it913x_dev, ptr %4, i32 0, i32 5
  %74 = load i8, ptr %73, align 4
  %75 = zext i8 %74 to i32
  %76 = mul i32 %72, %75
  %77 = getelementptr inbounds %struct.it913x_dev, ptr %4, i32 0, i32 4
  %78 = load i16, ptr %77, align 2
  %79 = zext i16 %78 to i32
  %80 = udiv i32 %76, %79
  %81 = mul i32 %80, %79
  store i32 %81, ptr %2, align 4
  %82 = sub i32 %76, %81
  %83 = lshr i16 %78, 1
  %84 = zext i16 %83 to i32
  %85 = icmp uge i32 %82, %84
  %86 = zext i1 %85 to i32
  %87 = add i32 %80, %32
  %88 = add i32 %87, %86
  %89 = zext i16 %69 to i32
  %90 = add i32 %88, %89
  %91 = icmp ult i32 %70, 440000001
  br i1 %91, label %110, label %92

92:                                               ; preds = %68
  %93 = icmp ult i32 %70, 484000001
  br i1 %93, label %110, label %94

94:                                               ; preds = %92
  %95 = icmp ult i32 %70, 533000001
  br i1 %95, label %110, label %96

96:                                               ; preds = %94
  %97 = icmp ult i32 %70, 587000001
  br i1 %97, label %110, label %98

98:                                               ; preds = %96
  %99 = icmp ult i32 %70, 645000001
  br i1 %99, label %110, label %100

100:                                              ; preds = %98
  %101 = icmp ult i32 %70, 710000001
  br i1 %101, label %110, label %102

102:                                              ; preds = %100
  %103 = icmp ult i32 %70, 782000001
  br i1 %103, label %110, label %104

104:                                              ; preds = %102
  %105 = icmp ult i32 %70, 860000001
  br i1 %105, label %110, label %106

106:                                              ; preds = %104
  %107 = icmp ult i32 %70, 1492000001
  br i1 %107, label %110, label %108

108:                                              ; preds = %106
  %109 = icmp ult i32 %70, 1685000001
  br i1 %109, label %110, label %156

110:                                              ; preds = %108, %106, %104, %102, %100, %98, %96, %94, %92, %68
  %111 = phi i32 [ 160, %68 ], [ 168, %92 ], [ 168, %94 ], [ 168, %96 ], [ 168, %98 ], [ 168, %100 ], [ 168, %102 ], [ 168, %104 ], [ 168, %106 ], [ 168, %108 ]
  %112 = phi i32 [ 0, %68 ], [ 1, %92 ], [ 2, %94 ], [ 3, %96 ], [ 4, %98 ], [ 5, %100 ], [ 6, %102 ], [ 7, %104 ], [ 0, %106 ], [ 1, %108 ]
  %113 = load ptr, ptr %33, align 4
  %114 = call i32 @regmap_write(ptr noundef %113, i32 noundef 8449542, i32 noundef %112) #8
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %156

116:                                              ; preds = %110
  %117 = getelementptr inbounds %struct.dvb_frontend, ptr %0, i32 0, i32 8, i32 7
  %118 = load i32, ptr %117, align 4
  %119 = icmp ult i32 %118, 5000001
  br i1 %119, label %125, label %120

120:                                              ; preds = %116
  %121 = icmp ult i32 %118, 6000001
  br i1 %121, label %125, label %122

122:                                              ; preds = %120
  %123 = icmp ult i32 %118, 7000001
  %124 = select i1 %123, i32 4, i32 6
  br label %125

125:                                              ; preds = %122, %120, %116
  %126 = phi i32 [ 0, %116 ], [ 2, %120 ], [ %124, %122 ]
  %127 = load ptr, ptr %33, align 4
  %128 = call i32 @regmap_write(ptr noundef %127, i32 noundef 8449110, i32 noundef %126) #8
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %156

130:                                              ; preds = %125
  %131 = load ptr, ptr %33, align 4
  %132 = call i32 @regmap_write(ptr noundef %131, i32 noundef 8449100, i32 noundef %111) #8
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %156

134:                                              ; preds = %130
  %135 = load ptr, ptr %33, align 4
  %136 = and i32 %90, 255
  %137 = call i32 @regmap_write(ptr noundef %135, i32 noundef 8449101, i32 noundef %136) #8
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %156

139:                                              ; preds = %134
  %140 = load ptr, ptr %33, align 4
  %141 = lshr i32 %90, 8
  %142 = and i32 %141, 255
  %143 = call i32 @regmap_write(ptr noundef %140, i32 noundef 8449102, i32 noundef %142) #8
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %156

145:                                              ; preds = %139
  %146 = load ptr, ptr %33, align 4
  %147 = and i32 %88, 255
  %148 = call i32 @regmap_write(ptr noundef %146, i32 noundef 8388894, i32 noundef %147) #8
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145
  %151 = load ptr, ptr %33, align 4
  %152 = lshr i32 %88, 8
  %153 = and i32 %152, 255
  %154 = call i32 @regmap_write(ptr noundef %151, i32 noundef 8388895, i32 noundef %153) #8
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %150, %145, %139, %134, %130, %125, %110, %108, %30, %1
  %157 = phi i32 [ %35, %30 ], [ %114, %110 ], [ %128, %125 ], [ %132, %130 ], [ %137, %134 ], [ %143, %139 ], [ %148, %145 ], [ %154, %150 ], [ -22, %1 ], [ -22, %108 ]
  br label %158

158:                                              ; preds = %156, %150
  %159 = phi i32 [ %157, %156 ], [ 0, %150 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %159
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
