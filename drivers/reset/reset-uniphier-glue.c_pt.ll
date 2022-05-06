; ModuleID = '/llk/IR/drivers/reset/reset-uniphier-glue.c_pt.bc'
source_filename = "../drivers/reset/reset-uniphier-glue.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.uniphier_glue_reset_soc_data = type { i32, ptr, i32, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.uniphier_glue_reset_priv = type { [2 x %struct.clk_bulk_data], [2 x ptr], %struct.reset_simple_data, ptr }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.reset_simple_data = type { %struct.spinlock, ptr, %struct.reset_controller_dev, i8, i8, i32 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_reset_uniphier_glue__162_186_uniphier_glue_reset_driver_init6 = internal global ptr @uniphier_glue_reset_driver_init, section ".initcall6.init", align 4
@uniphier_glue_reset_driver = internal global %struct.platform_driver { ptr @uniphier_glue_reset_probe, ptr @uniphier_glue_reset_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_glue_reset_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_glue_reset_driver_exit = internal global ptr @uniphier_glue_reset_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author163 = internal constant [77 x i8] c"reset_uniphier_glue.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description164 = internal constant [65 x i8] c"reset_uniphier_glue.description=UniPhier Glue layer reset driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file165 = internal constant [59 x i8] c"reset_uniphier_glue.file=drivers/reset/reset-uniphier-glue\00", section ".modinfo", align 1
@__UNIQUE_ID_license166 = internal constant [32 x i8] c"reset_uniphier_glue.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [20 x i8] c"uniphier-glue-reset\00", align 1
@uniphier_glue_reset_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-usb3-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-ahci-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-ahci-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-ahci-reset\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"drivers/reset/reset-uniphier-glue.c\00", align 1
@reset_simple_ops = external dso_local constant %struct.reset_control_ops, align 4
@uniphier_pro4_data = internal constant %struct.uniphier_glue_reset_soc_data { i32 2, ptr @uniphier_pro4_clock_reset_names, i32 2, ptr @uniphier_pro4_clock_reset_names }, align 4
@uniphier_pxs2_data = internal constant %struct.uniphier_glue_reset_soc_data { i32 1, ptr @uniphier_pxs2_clock_reset_names, i32 1, ptr @uniphier_pxs2_clock_reset_names }, align 4
@uniphier_pro4_clock_reset_names = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.3], align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"gio\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@uniphier_pxs2_clock_reset_names = internal constant [1 x ptr] [ptr @.str.3], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author163, ptr @__UNIQUE_ID_description164, ptr @__UNIQUE_ID_file165, ptr @__UNIQUE_ID_license166, ptr @__exitcall_uniphier_glue_reset_driver_exit, ptr @__initcall__kmod_reset_uniphier_glue__162_186_uniphier_glue_reset_driver_init6, ptr @uniphier_glue_reset_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_glue_reset_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_glue_reset_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_glue_reset_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_glue_reset_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_glue_reset_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 88, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %120, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %7 = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 3
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %5
  %10 = load i32, ptr %6, align 4
  %11 = icmp sgt i32 %10, 2
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %6, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp sgt i32 %14, 2
  br i1 %15, label %16, label %17, !prof !8

16:                                               ; preds = %12, %9, %5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 46, i32 noundef 9, ptr noundef null) #4
  br label %120

17:                                               ; preds = %12
  %18 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #4
  %19 = getelementptr inbounds %struct.resource, ptr %18, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = load i32, ptr %18, align 4
  %22 = add i32 %20, 1
  %23 = sub i32 %22, %21
  %24 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %18) #4
  %25 = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 2
  %26 = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 2, i32 1
  store ptr %24, ptr %26, align 4
  %27 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %33, label %28

28:                                               ; preds = %17
  %29 = load i32, ptr %6, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %6, i32 0, i32 1
  br label %35

33:                                               ; preds = %17
  %34 = ptrtoint ptr %24 to i32
  br label %120

35:                                               ; preds = %35, %31
  %36 = phi i32 [ %41, %35 ], [ 0, %31 ]
  %37 = load ptr, ptr %32, align 4
  %38 = getelementptr ptr, ptr %37, i32 %36
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr [2 x %struct.clk_bulk_data], ptr %3, i32 0, i32 %36
  store ptr %39, ptr %40, align 4
  %41 = add nuw nsw i32 %36, 1
  %42 = load i32, ptr %6, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %35, label %44

44:                                               ; preds = %35, %28
  %45 = phi i32 [ %29, %28 ], [ %42, %35 ]
  %46 = tail call i32 @devm_clk_bulk_get(ptr noundef %2, i32 noundef %45, ptr noundef nonnull %3) #4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %120

48:                                               ; preds = %44
  %49 = load ptr, ptr %7, align 4
  %50 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %49, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %59, label %71

53:                                               ; preds = %59
  %54 = add nuw nsw i32 %61, 1
  %55 = load ptr, ptr %7, align 4
  %56 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %55, i32 0, i32 2
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %53, %48
  %60 = phi ptr [ %55, %53 ], [ %49, %48 ]
  %61 = phi i32 [ %54, %53 ], [ 0, %48 ]
  %62 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %60, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr ptr, ptr %63, i32 %61
  %65 = load ptr, ptr %64, align 4
  %66 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef %65, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %67 = getelementptr %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 1, i32 %61
  store ptr %66, ptr %67, align 4
  %68 = icmp ugt ptr %66, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %53

69:                                               ; preds = %59
  %70 = ptrtoint ptr %66 to i32
  br label %120

71:                                               ; preds = %53, %48
  %72 = phi ptr [ %49, %48 ], [ %55, %53 ]
  %73 = load i32, ptr %72, align 4
  %74 = tail call fastcc i32 @clk_bulk_prepare_enable(i32 noundef %73, ptr noundef nonnull %3)
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %120

76:                                               ; preds = %71
  %77 = load ptr, ptr %7, align 4
  %78 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %77, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %93

81:                                               ; preds = %87, %76
  %82 = phi i32 [ %88, %87 ], [ 0, %76 ]
  %83 = getelementptr %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 1, i32 %82
  %84 = load ptr, ptr %83, align 4
  %85 = tail call i32 @reset_control_deassert(ptr noundef %84) #4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = add nuw nsw i32 %82, 1
  %89 = load ptr, ptr %7, align 4
  %90 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %89, i32 0, i32 2
  %91 = load i32, ptr %90, align 4
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %81, label %93

93:                                               ; preds = %87, %76
  %94 = phi i32 [ 0, %76 ], [ %88, %87 ]
  store i32 0, ptr %25, align 4
  %95 = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 2, i32 2
  %96 = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 2, i32 2, i32 1
  store ptr null, ptr %96, align 4
  %97 = shl i32 %23, 3
  %98 = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 2, i32 2, i32 8
  store i32 %97, ptr %98, align 4
  store ptr @reset_simple_ops, ptr %95, align 4
  %99 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %100 = load ptr, ptr %99, align 8
  %101 = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 2, i32 2, i32 5
  store ptr %100, ptr %101, align 4
  %102 = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 2, i32 3
  store i8 1, ptr %102, align 4
  %103 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %103, align 8
  %104 = tail call i32 @devm_reset_controller_register(ptr noundef %2, ptr noundef %95) #4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %120, label %106

106:                                              ; preds = %93, %81
  %107 = phi i32 [ %94, %93 ], [ %82, %81 ]
  %108 = phi i32 [ %104, %93 ], [ %85, %81 ]
  %109 = icmp eq i32 %107, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %110, %106
  %111 = phi i32 [ %112, %110 ], [ %107, %106 ]
  %112 = add nsw i32 %111, -1
  %113 = getelementptr %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 1, i32 %112
  %114 = load ptr, ptr %113, align 4
  %115 = tail call i32 @reset_control_assert(ptr noundef %114) #4
  %116 = icmp eq i32 %112, 0
  br i1 %116, label %117, label %110

117:                                              ; preds = %110, %106
  %118 = load ptr, ptr %7, align 4
  %119 = load i32, ptr %118, align 4
  tail call void @clk_bulk_disable(i32 noundef %119, ptr noundef nonnull %3) #4
  tail call void @clk_bulk_unprepare(i32 noundef %119, ptr noundef nonnull %3) #4
  br label %120

120:                                              ; preds = %117, %93, %71, %69, %44, %33, %16, %1
  %121 = phi i32 [ -22, %16 ], [ %34, %33 ], [ %70, %69 ], [ %108, %117 ], [ -12, %1 ], [ %46, %44 ], [ %74, %71 ], [ 0, %93 ]
  ret i32 %121
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_glue_reset_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %9, %1
  %10 = phi i32 [ %14, %9 ], [ 0, %1 ]
  %11 = getelementptr %struct.uniphier_glue_reset_priv, ptr %3, i32 0, i32 1, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @reset_control_assert(ptr noundef %12) #4
  %14 = add nuw nsw i32 %10, 1
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.uniphier_glue_reset_soc_data, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %9, label %19

19:                                               ; preds = %9, %1
  %20 = phi ptr [ %5, %1 ], [ %15, %9 ]
  %21 = load i32, ptr %20, align 4
  tail call void @clk_bulk_disable(i32 noundef %21, ptr noundef %3) #4
  tail call void @clk_bulk_unprepare(i32 noundef %21, ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_bulk_prepare_enable(i32 noundef %0, ptr noundef %1) unnamed_addr #3 {
  %3 = tail call i32 @clk_bulk_prepare(i32 noundef %0, ptr noundef %1) #4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = tail call i32 @clk_bulk_enable(i32 noundef %0, ptr noundef %1) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  tail call void @clk_bulk_unprepare(i32 noundef %0, ptr noundef %1) #4
  br label %9

9:                                                ; preds = %8, %5, %2
  %10 = phi i32 [ %3, %2 ], [ %6, %8 ], [ 0, %5 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_reset_controller_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
