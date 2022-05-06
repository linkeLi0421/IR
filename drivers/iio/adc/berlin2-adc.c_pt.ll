; ModuleID = '/llk/IR/drivers/iio/adc/berlin2-adc.c_pt.bc'
source_filename = "../drivers/iio/adc/berlin2-adc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.lock_class_key = type {}
%struct.iio_info = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iio_chan_spec = type { i32, i32, i32, i32, i32, %struct.anon.5, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, ptr, ptr, i8 }
%struct.anon.5 = type { i8, i8, i8, i8, i8, i32 }
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
%struct.iio_dev = type { i32, i32, %struct.device, ptr, i32, %struct.mutex, ptr, i32, ptr, i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.berlin2_adc_priv = type { ptr, %struct.mutex, %struct.wait_queue_head, i8, i32 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }

@berlin2_adc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,berlin2-adc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author170 = internal constant [58 x i8] c"author=Antoine Tenart <antoine.tenart@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description171 = internal constant [39 x i8] c"description=Marvell Berlin2 ADC driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@berlin2_adc_driver = internal global %struct.platform_driver { ptr @berlin2_adc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @berlin2_adc_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [12 x i8] c"berlin2-adc\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"adc\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tsen\00", align 1
@berlin2_adc_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"&priv->wq\00", align 1
@berlin2_adc_probe.__key.4 = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"&priv->lock\00", align 1
@berlin2_adc_info = internal constant %struct.iio_info { ptr null, ptr null, ptr @berlin2_adc_read_raw, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@berlin2_adc_channels = internal constant [9 x %struct.iio_chan_spec] [%struct.iio_chan_spec { i32 0, i32 0, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.6, i8 2 }, %struct.iio_chan_spec { i32 0, i32 1, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.7, i8 2 }, %struct.iio_chan_spec { i32 0, i32 2, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.8, i8 2 }, %struct.iio_chan_spec { i32 0, i32 3, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.9, i8 2 }, %struct.iio_chan_spec { i32 0, i32 4, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.10, i8 2 }, %struct.iio_chan_spec { i32 0, i32 5, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.11, i8 2 }, %struct.iio_chan_spec { i32 9, i32 6, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.12, i8 0 }, %struct.iio_chan_spec { i32 0, i32 7, i32 0, i32 0, i32 0, %struct.anon.5 zeroinitializer, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr @.str.13, i8 2 }, %struct.iio_chan_spec { i32 13, i32 -1, i32 0, i32 0, i32 8, %struct.anon.5 { i8 115, i8 64, i8 64, i8 0, i8 0, i32 0 }, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, ptr null, ptr null, ptr null, i8 0 }], align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"channel0\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"channel1\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"channel2\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"channel3\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"channel4\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"channel5\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"channel6\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"channel7\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author170, ptr @__UNIQUE_ID_description171, ptr @__UNIQUE_ID_license172], section "llvm.metadata"

@__mod_of__berlin2_adc_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @berlin2_adc_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @berlin2_adc_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @berlin2_adc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_adc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_get_parent(ptr noundef %4) #6
  %6 = tail call ptr @devm_iio_device_alloc(ptr noundef %2, i32 noundef 44) #6
  %7 = icmp eq ptr %6, null
  br i1 %7, label %54, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 19
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @syscon_node_to_regmap(ptr noundef %5) #6
  store ptr %11, ptr %10, align 4
  tail call void @of_node_put(ptr noundef %5) #6
  %12 = load ptr, ptr %10, align 4
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = ptrtoint ptr %12 to i32
  br label %54

16:                                               ; preds = %8
  %17 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.1) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %54, label %19

19:                                               ; preds = %16
  %20 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.2) #6
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %54, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %17, ptr noundef nonnull @berlin2_adc_irq, ptr noundef null, i32 noundef 0, ptr noundef %25, ptr noundef nonnull %6) #6
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %22
  %29 = load ptr, ptr %23, align 8
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %20, ptr noundef nonnull @berlin2_adc_tsen_irq, ptr noundef null, i32 noundef 0, ptr noundef %30, ptr noundef nonnull %6) #6
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %10, i32 0, i32 2
  tail call void @__init_waitqueue_head(ptr noundef %34, ptr noundef nonnull @.str.3, ptr noundef nonnull @berlin2_adc_probe.__key) #6
  %35 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %10, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %35, ptr noundef nonnull @.str.5, ptr noundef nonnull @berlin2_adc_probe.__key.4) #6
  %36 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load ptr, ptr %2, align 4
  br label %41

41:                                               ; preds = %39, %33
  %42 = phi ptr [ %40, %39 ], [ %37, %33 ]
  %43 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 15
  store ptr %42, ptr %43, align 8
  store i32 1, ptr %6, align 8
  %44 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 17
  store ptr @berlin2_adc_info, ptr %44, align 8
  %45 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 13
  store ptr @berlin2_adc_channels, ptr %45, align 8
  %46 = getelementptr inbounds %struct.iio_dev, ptr %6, i32 0, i32 14
  store i32 9, ptr %46, align 4
  %47 = load ptr, ptr %10, align 4
  %48 = tail call i32 @regmap_update_bits_base(ptr noundef %47, i32 noundef 20, i32 noundef 512, i32 noundef 512, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %49 = load ptr, ptr %10, align 4
  %50 = tail call fastcc i32 @devm_add_action_or_reset(ptr noundef %2, ptr noundef %49)
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %41
  %53 = tail call i32 @__devm_iio_device_register(ptr noundef %2, ptr noundef nonnull %6, ptr noundef nonnull @__this_module) #6
  br label %54

54:                                               ; preds = %52, %41, %28, %22, %19, %16, %14, %1
  %55 = phi i32 [ %15, %14 ], [ %53, %52 ], [ -12, %1 ], [ %17, %16 ], [ %20, %19 ], [ %26, %22 ], [ %31, %28 ], [ %50, %41 ]
  ret i32 %55
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_iio_device_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_adc_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 28, ptr noundef nonnull %3) #6
  %8 = load i32, ptr %3, align 4
  %9 = and i32 %8, 65535
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %5, i32 0, i32 4
  %14 = call i32 @regmap_read(ptr noundef %12, i32 noundef 32, ptr noundef %13) #6
  %15 = load i32, ptr %13, align 4
  %16 = and i32 %15, 1023
  store i32 %16, ptr %13, align 4
  %17 = load i32, ptr %3, align 4
  %18 = and i32 %17, -65536
  store i32 %18, ptr %3, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = call i32 @regmap_write(ptr noundef %19, i32 noundef 28, i32 noundef %18) #6
  %21 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %5, i32 0, i32 3
  store i8 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %5, i32 0, i32 2
  call void @__wake_up(ptr noundef %22, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %23

23:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_adc_tsen_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.iio_dev, ptr %1, i32 0, i32 19
  %5 = load ptr, ptr %4, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = load ptr, ptr %5, align 4
  %7 = call i32 @regmap_read(ptr noundef %6, i32 noundef 36, ptr noundef nonnull %3) #6
  %8 = load i32, ptr %3, align 4
  %9 = and i32 %8, 1
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %5, align 4
  %13 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %5, i32 0, i32 4
  %14 = call i32 @regmap_read(ptr noundef %12, i32 noundef 40, ptr noundef %13) #6
  %15 = load i32, ptr %13, align 4
  %16 = and i32 %15, 1023
  store i32 %16, ptr %13, align 4
  %17 = load i32, ptr %3, align 4
  %18 = and i32 %17, -2
  store i32 %18, ptr %3, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = call i32 @regmap_write(ptr noundef %19, i32 noundef 36, i32 noundef %18) #6
  %21 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %5, i32 0, i32 3
  store i8 1, ptr %21, align 4
  %22 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %5, i32 0, i32 2
  call void @__wake_up(ptr noundef %22, i32 noundef 1, i32 noundef 1, ptr noundef null) #6
  br label %23

23:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @devm_add_action_or_reset(ptr noundef %0, ptr noundef %1) unnamed_addr #4 {
  %3 = tail call i32 @devm_add_action(ptr noundef %0, ptr noundef nonnull @berlin2_adc_powerdown, ptr noundef %1) #6
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 20, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %7

7:                                                ; preds = %5, %2
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @berlin2_adc_powerdown(ptr noundef %0) #2 {
  %2 = tail call i32 @regmap_update_bits_base(ptr noundef %0, i32 noundef 20, i32 noundef 512, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_iio_device_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @berlin2_adc_read_raw(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef readnone %3, i32 noundef %4) #2 {
  %6 = alloca %struct.wait_queue_entry, align 4
  %7 = alloca %struct.wait_queue_entry, align 4
  switch i32 %4, label %136 [
    i32 0, label %8
    i32 1, label %71
  ]

8:                                                ; preds = %5
  %9 = load i32, ptr %1, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %136

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.iio_chan_spec, ptr %1, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %15, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %16) #6
  %17 = load ptr, ptr %15, align 4
  %18 = shl i32 65536, %13
  %19 = tail call i32 @regmap_write(ptr noundef %17, i32 noundef 28, i32 noundef %18) #6
  %20 = load ptr, ptr %15, align 4
  %21 = shl i32 %13, 5
  %22 = or i32 %21, 4096
  %23 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 20, i32 noundef 12768, i32 noundef %22, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %24 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %15, i32 0, i32 3
  %25 = load i8, ptr %24, align 4, !range !9
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %15, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 28, i32 noundef %18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %63

30:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %7) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %7, i8 0, i32 20, i1 false) #6, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %7, i32 noundef 0) #6
  %31 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %15, i32 0, i32 2
  %32 = call i32 @prepare_to_wait_event(ptr noundef %31, ptr noundef nonnull %7, i32 noundef 1) #6
  %33 = load i8, ptr %24, align 4, !range !9
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %42, %30
  %36 = phi i32 [ %50, %42 ], [ 100, %30 ]
  %37 = phi i32 [ %44, %42 ], [ %32, %30 ]
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #6
  %40 = load ptr, ptr %15, align 4
  %41 = call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 28, i32 noundef %18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %58

42:                                               ; preds = %35
  %43 = call i32 @schedule_timeout(i32 noundef %36) #6
  %44 = call i32 @prepare_to_wait_event(ptr noundef %31, ptr noundef nonnull %7, i32 noundef 1) #6
  %45 = load i8, ptr %24, align 4, !range !9
  %46 = icmp ne i8 %45, 0
  %47 = xor i1 %46, true
  %48 = icmp ne i32 %43, 0
  %49 = select i1 %47, i1 true, i1 %48
  %50 = select i1 %49, i32 %43, i32 1
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %46, i1 true, i1 %51
  br i1 %52, label %53, label %35

53:                                               ; preds = %42, %30
  %54 = phi i32 [ 100, %30 ], [ %50, %42 ]
  call void @finish_wait(ptr noundef %31, ptr noundef nonnull %7) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %7) #6
  %55 = load ptr, ptr %15, align 4
  %56 = call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 28, i32 noundef %18, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %53, %39
  %59 = phi i32 [ %54, %53 ], [ %37, %39 ]
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58, %53
  %62 = phi i32 [ -110, %53 ], [ %59, %58 ]
  call void @mutex_unlock(ptr noundef %16) #6
  store i32 %62, ptr %2, align 4
  br label %69

63:                                               ; preds = %58, %27
  %64 = load ptr, ptr %15, align 4
  %65 = call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 20, i32 noundef 4096, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %66 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %15, i32 0, i32 4
  %67 = load i32, ptr %66, align 4
  store i8 0, ptr %24, align 4
  call void @mutex_unlock(ptr noundef %16) #6
  store i32 %67, ptr %2, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %136

69:                                               ; preds = %63, %61
  %70 = phi i32 [ %62, %61 ], [ %67, %63 ]
  br label %136

71:                                               ; preds = %5
  %72 = load i32, ptr %1, align 4
  %73 = icmp eq i32 %72, 9
  br i1 %73, label %74, label %136

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.iio_dev, ptr %0, i32 0, i32 19
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %76, i32 0, i32 1
  tail call void @mutex_lock(ptr noundef %77) #6
  %78 = load ptr, ptr %76, align 4
  %79 = tail call i32 @regmap_write(ptr noundef %78, i32 noundef 36, i32 noundef 2) #6
  %80 = load ptr, ptr %76, align 4
  %81 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 20, i32 noundef 537395200, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %82 = load ptr, ptr %76, align 4
  %83 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 116, i32 noundef 65011968, i32 noundef 14680320, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %84 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %76, i32 0, i32 3
  %85 = load i8, ptr %84, align 4, !range !9
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %74
  %88 = load ptr, ptr %76, align 4
  %89 = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 36, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %123

90:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #6
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false) #6, !annotation !8
  call void @init_wait_entry(ptr noundef nonnull %6, i32 noundef 0) #6
  %91 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %76, i32 0, i32 2
  %92 = call i32 @prepare_to_wait_event(ptr noundef %91, ptr noundef nonnull %6, i32 noundef 1) #6
  %93 = load i8, ptr %84, align 4, !range !9
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %113

95:                                               ; preds = %102, %90
  %96 = phi i32 [ %110, %102 ], [ 100, %90 ]
  %97 = phi i32 [ %104, %102 ], [ %92, %90 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #6
  %100 = load ptr, ptr %76, align 4
  %101 = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 36, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %118

102:                                              ; preds = %95
  %103 = call i32 @schedule_timeout(i32 noundef %96) #6
  %104 = call i32 @prepare_to_wait_event(ptr noundef %91, ptr noundef nonnull %6, i32 noundef 1) #6
  %105 = load i8, ptr %84, align 4, !range !9
  %106 = icmp ne i8 %105, 0
  %107 = xor i1 %106, true
  %108 = icmp ne i32 %103, 0
  %109 = select i1 %107, i1 true, i1 %108
  %110 = select i1 %109, i32 %103, i32 1
  %111 = icmp eq i32 %110, 0
  %112 = select i1 %106, i1 true, i1 %111
  br i1 %112, label %113, label %95

113:                                              ; preds = %102, %90
  %114 = phi i32 [ 100, %90 ], [ %110, %102 ]
  call void @finish_wait(ptr noundef %91, ptr noundef nonnull %6) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #6
  %115 = load ptr, ptr %76, align 4
  %116 = call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 36, i32 noundef 2, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %117 = icmp eq i32 %114, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113, %99
  %119 = phi i32 [ %114, %113 ], [ %97, %99 ]
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118, %113
  %122 = phi i32 [ -110, %113 ], [ %119, %118 ]
  call void @mutex_unlock(ptr noundef %77) #6
  br label %136

123:                                              ; preds = %118, %87
  %124 = load ptr, ptr %76, align 4
  %125 = call i32 @regmap_update_bits_base(ptr noundef %124, i32 noundef 116, i32 noundef 256, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %126 = getelementptr inbounds %struct.berlin2_adc_priv, ptr %76, i32 0, i32 4
  %127 = load i32, ptr %126, align 4
  store i8 0, ptr %84, align 4
  call void @mutex_unlock(ptr noundef %77) #6
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %136, label %129

129:                                              ; preds = %123
  %130 = icmp ugt i32 %127, 2047
  %131 = add nsw i32 %127, -4096
  %132 = select i1 %130, i32 %131, i32 %127
  %133 = mul i32 %132, 100000
  %134 = sdiv i32 %133, 264
  %135 = add nsw i32 %134, -270000
  store i32 %135, ptr %2, align 4
  br label %136

136:                                              ; preds = %129, %123, %121, %71, %69, %63, %8, %5
  %137 = phi i32 [ 1, %129 ], [ -22, %8 ], [ -22, %71 ], [ %127, %123 ], [ -22, %5 ], [ %70, %69 ], [ 1, %63 ], [ %122, %121 ]
  ret i32 %137
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

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
