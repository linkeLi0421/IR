; ModuleID = '/llk/IR/drivers/regulator/uniphier-regulator.c_pt.bc'
source_filename = "../drivers/regulator/uniphier-regulator.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.uniphier_regulator_soc_data = type { i32, ptr, i32, ptr, ptr, ptr }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regulator_config = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.uniphier_regulator_priv = type { [2 x %struct.clk_bulk_data], [2 x ptr], ptr }
%struct.clk_bulk_data = type { ptr, ptr }

@__initcall__kmod_uniphier_regulator__247_218_uniphier_regulator_driver_init6 = internal global ptr @uniphier_regulator_driver_init, section ".initcall6.init", align 4
@uniphier_regulator_driver = internal global %struct.platform_driver { ptr @uniphier_regulator_probe, ptr @uniphier_regulator_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @uniphier_regulator_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_uniphier_regulator_driver_exit = internal global ptr @uniphier_regulator_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [76 x i8] c"uniphier_regulator.author=Kunihiko Hayashi <hayashi.kunihiko@socionext.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description249 = internal constant [68 x i8] c"uniphier_regulator.description=UniPhier Regulator Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file250 = internal constant [61 x i8] c"uniphier_regulator.file=drivers/regulator/uniphier-regulator\00", section ".modinfo", align 1
@__UNIQUE_ID_license251 = internal constant [31 x i8] c"uniphier_regulator.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [19 x i8] c"uniphier-regulator\00", align 1
@uniphier_regulator_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro4-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_usb3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pro5-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pro4_usb3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs2-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_usb3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-ld20-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_usb3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-pxs3-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_usb3_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,uniphier-nx1-usb3-regulator\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @uniphier_pxs2_usb3_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"drivers/regulator/uniphier-regulator.c\00", align 1
@uniphier_pro4_usb3_data = internal constant %struct.uniphier_regulator_soc_data { i32 2, ptr @uniphier_pro4_clock_reset_names, i32 2, ptr @uniphier_pro4_clock_reset_names, ptr @uniphier_usb3_regulator_desc, ptr @uniphier_usb3_regulator_regconf }, align 4
@uniphier_pxs2_usb3_data = internal constant %struct.uniphier_regulator_soc_data { i32 1, ptr @uniphier_pxs2_clock_reset_names, i32 1, ptr @uniphier_pxs2_clock_reset_names, ptr @uniphier_usb3_regulator_desc, ptr @uniphier_usb3_regulator_regconf }, align 4
@uniphier_pro4_clock_reset_names = internal constant [2 x ptr] [ptr @.str.2, ptr @.str.3], align 4
@uniphier_usb3_regulator_desc = internal constant %struct.regulator_desc { ptr @.str.4, ptr null, ptr @.str.4, i8 0, ptr null, ptr null, i32 0, i8 0, i32 0, i32 0, ptr @uniphier_regulator_ops, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, ptr null, i32 0, ptr null, ptr null, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 24, i32 24, i32 8, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i32 0, ptr null }, align 4
@uniphier_usb3_regulator_regconf = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"gio\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"link\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"vbus\00", align 1
@uniphier_regulator_ops = internal constant %struct.regulator_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @regulator_enable_regmap, ptr @regulator_disable_regmap, ptr @regulator_is_enabled_regmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@uniphier_pxs2_clock_reset_names = internal constant [1 x ptr] [ptr @.str.3], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file250, ptr @__UNIQUE_ID_license251, ptr @__exitcall_uniphier_regulator_driver_exit, ptr @__initcall__kmod_uniphier_regulator__247_218_uniphier_regulator_driver_init6, ptr @uniphier_regulator_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @uniphier_regulator_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @uniphier_regulator_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @uniphier_regulator_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @uniphier_regulator_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_regulator_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.regulator_config, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 28, i32 noundef 3520) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %127, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @of_device_get_match_data(ptr noundef %3) #5
  %8 = getelementptr inbounds %struct.uniphier_regulator_priv, ptr %4, i32 0, i32 2
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 57, i32 noundef 9, ptr noundef null) #5
  br label %127

11:                                               ; preds = %6
  %12 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %13 = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, ptr %7, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %19, label %31

17:                                               ; preds = %11
  %18 = ptrtoint ptr %12 to i32
  br label %127

19:                                               ; preds = %19, %14
  %20 = phi ptr [ %28, %19 ], [ %7, %14 ]
  %21 = phi i32 [ %27, %19 ], [ 0, %14 ]
  %22 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr ptr, ptr %23, i32 %21
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr [2 x %struct.clk_bulk_data], ptr %4, i32 0, i32 %21
  store ptr %25, ptr %26, align 4
  %27 = add nuw nsw i32 %21, 1
  %28 = load ptr, ptr %8, align 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %27, %29
  br i1 %30, label %19, label %31

31:                                               ; preds = %19, %14
  %32 = phi i32 [ %15, %14 ], [ %29, %19 ]
  %33 = tail call i32 @devm_clk_bulk_get(ptr noundef %3, i32 noundef %32, ptr noundef nonnull %4) #5
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %127

35:                                               ; preds = %31
  %36 = load ptr, ptr %8, align 4
  %37 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %36, i32 0, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %46, label %58

40:                                               ; preds = %46
  %41 = add nuw nsw i32 %48, 1
  %42 = load ptr, ptr %8, align 4
  %43 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %42, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %40, %35
  %47 = phi ptr [ %42, %40 ], [ %36, %35 ]
  %48 = phi i32 [ %41, %40 ], [ 0, %35 ]
  %49 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %47, i32 0, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr ptr, ptr %50, i32 %48
  %52 = load ptr, ptr %51, align 4
  %53 = tail call ptr @__devm_reset_control_get(ptr noundef %3, ptr noundef %52, i32 noundef 0, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %54 = getelementptr %struct.uniphier_regulator_priv, ptr %4, i32 0, i32 1, i32 %48
  store ptr %53, ptr %54, align 4
  %55 = icmp ugt ptr %53, inttoptr (i32 -4096 to ptr)
  br i1 %55, label %56, label %40

56:                                               ; preds = %46
  %57 = ptrtoint ptr %53 to i32
  br label %127

58:                                               ; preds = %40, %35
  %59 = phi ptr [ %36, %35 ], [ %42, %40 ]
  %60 = load i32, ptr %59, align 4
  %61 = tail call i32 @clk_bulk_prepare(i32 noundef %60, ptr noundef nonnull %4) #5
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %127

63:                                               ; preds = %58
  %64 = tail call i32 @clk_bulk_enable(i32 noundef %60, ptr noundef nonnull %4) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %63
  %67 = load ptr, ptr %8, align 4
  %68 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %67, i32 0, i32 2
  %69 = load i32, ptr %68, align 4
  %70 = icmp sgt i32 %69, 0
  br i1 %70, label %72, label %84

71:                                               ; preds = %63
  tail call void @clk_bulk_unprepare(i32 noundef %60, ptr noundef nonnull %4) #5
  br label %127

72:                                               ; preds = %78, %66
  %73 = phi i32 [ %79, %78 ], [ 0, %66 ]
  %74 = getelementptr %struct.uniphier_regulator_priv, ptr %4, i32 0, i32 1, i32 %73
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 @reset_control_deassert(ptr noundef %75) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %113

78:                                               ; preds = %72
  %79 = add nuw nsw i32 %73, 1
  %80 = load ptr, ptr %8, align 4
  %81 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %80, i32 0, i32 2
  %82 = load i32, ptr %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %72, label %84

84:                                               ; preds = %78, %66
  %85 = phi i32 [ 0, %66 ], [ %79, %78 ]
  %86 = phi ptr [ %67, %66 ], [ %80, %78 ]
  %87 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %86, i32 0, i32 5
  %88 = load ptr, ptr %87, align 4
  %89 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %12, ptr noundef %88, ptr noundef null, ptr noundef null) #5
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = ptrtoint ptr %89 to i32
  br label %113

93:                                               ; preds = %84
  store ptr %3, ptr %2, align 4
  %94 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 2
  store ptr %4, ptr %94, align 4
  %95 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %96 = load ptr, ptr %95, align 8
  %97 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 3
  store ptr %96, ptr %97, align 4
  %98 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 4
  store ptr %89, ptr %98, align 4
  %99 = load ptr, ptr %8, align 4
  %100 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %99, i32 0, i32 4
  %101 = load ptr, ptr %100, align 4
  %102 = tail call ptr @of_get_regulator_init_data(ptr noundef %3, ptr noundef %96, ptr noundef %101) #5
  %103 = getelementptr inbounds %struct.regulator_config, ptr %2, i32 0, i32 1
  store ptr %102, ptr %103, align 4
  %104 = load ptr, ptr %8, align 4
  %105 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %104, i32 0, i32 4
  %106 = load ptr, ptr %105, align 4
  %107 = call ptr @devm_regulator_register(ptr noundef %3, ptr noundef %106, ptr noundef nonnull %2) #5
  %108 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %108, label %109, label %111

109:                                              ; preds = %93
  %110 = ptrtoint ptr %107 to i32
  br label %113

111:                                              ; preds = %93
  %112 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %112, align 8
  br label %127

113:                                              ; preds = %109, %91, %72
  %114 = phi i32 [ %85, %91 ], [ %85, %109 ], [ %73, %72 ]
  %115 = phi i32 [ %92, %91 ], [ %110, %109 ], [ %76, %72 ]
  %116 = icmp eq i32 %114, 0
  br i1 %116, label %124, label %117

117:                                              ; preds = %117, %113
  %118 = phi i32 [ %119, %117 ], [ %114, %113 ]
  %119 = add nsw i32 %118, -1
  %120 = getelementptr %struct.uniphier_regulator_priv, ptr %4, i32 0, i32 1, i32 %119
  %121 = load ptr, ptr %120, align 4
  %122 = call i32 @reset_control_assert(ptr noundef %121) #5
  %123 = icmp eq i32 %119, 0
  br i1 %123, label %124, label %117

124:                                              ; preds = %117, %113
  %125 = load ptr, ptr %8, align 4
  %126 = load i32, ptr %125, align 4
  call void @clk_bulk_disable(i32 noundef %126, ptr noundef nonnull %4) #5
  call void @clk_bulk_unprepare(i32 noundef %126, ptr noundef nonnull %4) #5
  br label %127

127:                                              ; preds = %124, %111, %71, %58, %56, %31, %17, %10, %1
  %128 = phi i32 [ -22, %10 ], [ %18, %17 ], [ %57, %56 ], [ %115, %124 ], [ 0, %111 ], [ -12, %1 ], [ %33, %31 ], [ %64, %71 ], [ %61, %58 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #5
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @uniphier_regulator_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.uniphier_regulator_priv, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %5, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %9, %1
  %10 = phi i32 [ %14, %9 ], [ 0, %1 ]
  %11 = getelementptr %struct.uniphier_regulator_priv, ptr %3, i32 0, i32 1, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @reset_control_assert(ptr noundef %12) #5
  %14 = add nuw nsw i32 %10, 1
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr inbounds %struct.uniphier_regulator_soc_data, ptr %15, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %9, label %19

19:                                               ; preds = %9, %1
  %20 = phi ptr [ %5, %1 ], [ %15, %9 ]
  %21 = load i32, ptr %20, align 4
  tail call void @clk_bulk_disable(i32 noundef %21, ptr noundef %3) #5
  tail call void @clk_bulk_unprepare(i32 noundef %21, ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_regulator_init_data(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable_regmap(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled_regmap(ptr noundef) #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nounwind }

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
