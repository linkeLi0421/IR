; ModuleID = '/llk/IR/drivers/usb/dwc3/dwc3-exynos.c_pt.bc'
source_filename = "../drivers/usb/dwc3/dwc3-exynos.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dwc3_exynos_driverdata = type { [4 x ptr], i32, i32 }
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
%struct.dwc3_exynos = type { ptr, ptr, [4 x ptr], i32, i32, ptr, ptr }

@__initcall__kmod_dwc3_exynos__247_254_dwc3_exynos_driver_init6 = internal global ptr @dwc3_exynos_driver_init, section ".initcall6.init", align 4
@dwc3_exynos_driver = internal global %struct.platform_driver { ptr @dwc3_exynos_probe, ptr @dwc3_exynos_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @exynos_dwc3_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dwc3_exynos_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_dwc3_exynos_driver_exit = internal global ptr @dwc3_exynos_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author248 = internal constant [64 x i8] c"dwc3_exynos.author=Anton Tikhomirov <av.tikhomirov@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file249 = internal constant [46 x i8] c"dwc3_exynos.file=drivers/usb/dwc3/dwc3-exynos\00", section ".modinfo", align 1
@__UNIQUE_ID_license250 = internal constant [27 x i8] c"dwc3_exynos.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [58 x i8] c"dwc3_exynos.description=DesignWare USB3 Exynos Glue Layer\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [12 x i8] c"exynos-dwc3\00", align 1
@exynos_dwc3_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-dwusb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5250_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-dwusb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-dwusb3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7_drvdata }, %struct.of_device_id zeroinitializer], align 4
@dwc3_exynos_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @dwc3_exynos_suspend, ptr @dwc3_exynos_resume, ptr @dwc3_exynos_suspend, ptr @dwc3_exynos_resume, ptr @dwc3_exynos_suspend, ptr @dwc3_exynos_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"vdd33\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to enable VDD33 supply\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"vdd10\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to enable VDD10 supply\0A\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to add dwc3 core\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"no device node, failed to add dwc3 core\0A\00", align 1
@exynos5250_drvdata = internal constant %struct.dwc3_exynos_driverdata { [4 x ptr] [ptr @.str.8, ptr null, ptr null, ptr null], i32 1, i32 -1 }, align 4
@exynos5433_drvdata = internal constant %struct.dwc3_exynos_driverdata { [4 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], i32 4, i32 1 }, align 4
@exynos7_drvdata = internal constant %struct.dwc3_exynos_driverdata { [4 x ptr] [ptr @.str.8, ptr @.str.13, ptr @.str.14, ptr null], i32 3, i32 1 }, align 4
@.str.8 = private unnamed_addr constant [9 x i8] c"usbdrd30\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"aclk\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"susp_clk\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"pipe_pclk\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"phyclk\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"usbdrd30_susp_clk\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"usbdrd30_axius_clk\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author248, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file249, ptr @__UNIQUE_ID_license250, ptr @__exitcall_dwc3_exynos_driver_exit, ptr @__initcall__kmod_dwc3_exynos__247_254_dwc3_exynos_driver_init6, ptr @dwc3_exynos_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @dwc3_exynos_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @dwc3_exynos_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @dwc3_exynos_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 40, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %133, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  store ptr %2, ptr %5, align 4
  %9 = getelementptr inbounds %struct.dwc3_exynos_driverdata, ptr %8, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dwc3_exynos, ptr %5, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dwc3_exynos, ptr %5, i32 0, i32 1
  store ptr %8, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dwc3_exynos_driverdata, ptr %8, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dwc3_exynos, ptr %5, i32 0, i32 4
  store i32 %14, ptr %15, align 4
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %16, align 8
  %17 = icmp sgt i32 %10, 0
  br i1 %17, label %18, label %70

18:                                               ; preds = %7
  %19 = load ptr, ptr %8, align 4
  %20 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %19) #4
  %21 = getelementptr %struct.dwc3_exynos, ptr %5, i32 0, i32 2, i32 0
  store ptr %20, ptr %21, align 4
  %22 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %22, label %25, label %33

23:                                               ; preds = %33
  %24 = icmp sgt i32 %36, 0
  br i1 %24, label %45, label %68

25:                                               ; preds = %38, %18
  %26 = phi i32 [ 0, %18 ], [ %35, %38 ]
  %27 = phi ptr [ %21, %18 ], [ %43, %38 ]
  %28 = load ptr, ptr %12, align 4
  %29 = getelementptr ptr, ptr %28, i32 %26
  %30 = load ptr, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, ptr noundef %30) #5
  %31 = load ptr, ptr %27, align 4
  %32 = ptrtoint ptr %31 to i32
  br label %133

33:                                               ; preds = %38, %18
  %34 = phi i32 [ %35, %38 ], [ 0, %18 ]
  %35 = add nuw nsw i32 %34, 1
  %36 = load i32, ptr %11, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %23

38:                                               ; preds = %33
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr ptr, ptr %39, i32 %35
  %41 = load ptr, ptr %40, align 4
  %42 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef %41) #4
  %43 = getelementptr %struct.dwc3_exynos, ptr %5, i32 0, i32 2, i32 %35
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %25, label %33

45:                                               ; preds = %64, %23
  %46 = phi i32 [ %65, %64 ], [ 0, %23 ]
  %47 = getelementptr %struct.dwc3_exynos, ptr %5, i32 0, i32 2, i32 %46
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @clk_prepare(ptr noundef %48) #4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = tail call i32 @clk_enable(ptr noundef %48) #4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %51
  tail call void @clk_unprepare(ptr noundef %48) #4
  br label %55

55:                                               ; preds = %54, %45
  %56 = phi i32 [ %52, %54 ], [ %49, %45 ]
  %57 = icmp eq i32 %46, 0
  br i1 %57, label %133, label %58

58:                                               ; preds = %58, %55
  %59 = phi i32 [ %60, %58 ], [ %46, %55 ]
  %60 = add nsw i32 %59, -1
  %61 = getelementptr %struct.dwc3_exynos, ptr %5, i32 0, i32 2, i32 %60
  %62 = load ptr, ptr %61, align 4
  tail call void @clk_disable(ptr noundef %62) #4
  tail call void @clk_unprepare(ptr noundef %62) #4
  %63 = icmp sgt i32 %59, 1
  br i1 %63, label %58, label %133

64:                                               ; preds = %51
  %65 = add nuw nsw i32 %46, 1
  %66 = load i32, ptr %11, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %45, label %68

68:                                               ; preds = %64, %23
  %69 = load i32, ptr %15, align 4
  br label %70

70:                                               ; preds = %68, %7
  %71 = phi i32 [ %69, %68 ], [ %14, %7 ]
  %72 = icmp sgt i32 %71, -1
  br i1 %72, label %73, label %82

73:                                               ; preds = %70
  %74 = getelementptr %struct.dwc3_exynos, ptr %5, i32 0, i32 2, i32 %71
  %75 = load ptr, ptr %74, align 4
  %76 = tail call i32 @clk_prepare(ptr noundef %75) #4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = tail call i32 @clk_enable(ptr noundef %75) #4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void @clk_unprepare(ptr noundef %75) #4
  br label %82

82:                                               ; preds = %81, %78, %73, %70
  %83 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.2) #4
  %84 = getelementptr inbounds %struct.dwc3_exynos, ptr %5, i32 0, i32 5
  store ptr %83, ptr %84, align 4
  %85 = icmp ugt ptr %83, inttoptr (i32 -4096 to ptr)
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = ptrtoint ptr %83 to i32
  br label %116

88:                                               ; preds = %82
  %89 = tail call i32 @regulator_enable(ptr noundef %83) #4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #5
  br label %116

92:                                               ; preds = %88
  %93 = tail call ptr @devm_regulator_get(ptr noundef %2, ptr noundef nonnull @.str.4) #4
  %94 = getelementptr inbounds %struct.dwc3_exynos, ptr %5, i32 0, i32 6
  store ptr %93, ptr %94, align 4
  %95 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %98

96:                                               ; preds = %92
  %97 = ptrtoint ptr %93 to i32
  br label %112

98:                                               ; preds = %92
  %99 = tail call i32 @regulator_enable(ptr noundef %93) #4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %98
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #5
  br label %112

102:                                              ; preds = %98
  %103 = icmp eq ptr %4, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %102
  %105 = tail call i32 @of_platform_populate(ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %2) #4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %133, label %107

107:                                              ; preds = %104, %102
  %108 = phi ptr [ @.str.6, %104 ], [ @.str.7, %102 ]
  %109 = phi i32 [ %105, %104 ], [ -19, %102 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull %108) #5
  %110 = load ptr, ptr %94, align 4
  %111 = tail call i32 @regulator_disable(ptr noundef %110) #4
  br label %112

112:                                              ; preds = %107, %101, %96
  %113 = phi i32 [ %97, %96 ], [ %99, %101 ], [ %109, %107 ]
  %114 = load ptr, ptr %84, align 4
  %115 = tail call i32 @regulator_disable(ptr noundef %114) #4
  br label %116

116:                                              ; preds = %112, %91, %86
  %117 = phi i32 [ %87, %86 ], [ %89, %91 ], [ %113, %112 ]
  %118 = load i32, ptr %11, align 4
  %119 = add i32 %118, -1
  %120 = icmp sgt i32 %119, -1
  br i1 %120, label %121, label %127

121:                                              ; preds = %121, %116
  %122 = phi i32 [ %125, %121 ], [ %119, %116 ]
  %123 = getelementptr %struct.dwc3_exynos, ptr %5, i32 0, i32 2, i32 %122
  %124 = load ptr, ptr %123, align 4
  tail call void @clk_disable(ptr noundef %124) #4
  tail call void @clk_unprepare(ptr noundef %124) #4
  %125 = add nsw i32 %122, -1
  %126 = icmp sgt i32 %122, 0
  br i1 %126, label %121, label %127

127:                                              ; preds = %121, %116
  %128 = load i32, ptr %15, align 4
  %129 = icmp sgt i32 %128, -1
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = getelementptr %struct.dwc3_exynos, ptr %5, i32 0, i32 2, i32 %128
  %132 = load ptr, ptr %131, align 4
  tail call void @clk_disable(ptr noundef %132) #4
  tail call void @clk_unprepare(ptr noundef %132) #4
  br label %133

133:                                              ; preds = %130, %127, %104, %58, %55, %25, %1
  %134 = phi i32 [ %32, %25 ], [ -12, %1 ], [ 0, %104 ], [ %117, %130 ], [ %117, %127 ], [ %56, %55 ], [ %56, %58 ]
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @device_for_each_child(ptr noundef %4, ptr noundef null, ptr noundef nonnull @dwc3_exynos_remove_child) #4
  %6 = getelementptr inbounds %struct.dwc3_exynos, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, -1
  %9 = icmp sgt i32 %8, -1
  br i1 %9, label %10, label %16

10:                                               ; preds = %10, %1
  %11 = phi i32 [ %14, %10 ], [ %8, %1 ]
  %12 = getelementptr %struct.dwc3_exynos, ptr %3, i32 0, i32 2, i32 %11
  %13 = load ptr, ptr %12, align 4
  tail call void @clk_disable(ptr noundef %13) #4
  tail call void @clk_unprepare(ptr noundef %13) #4
  %14 = add nsw i32 %11, -1
  %15 = icmp sgt i32 %11, 0
  br i1 %15, label %10, label %16

16:                                               ; preds = %10, %1
  %17 = getelementptr inbounds %struct.dwc3_exynos, ptr %3, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = getelementptr %struct.dwc3_exynos, ptr %3, i32 0, i32 2, i32 %18
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #4
  tail call void @clk_unprepare(ptr noundef %22) #4
  br label %23

23:                                               ; preds = %20, %16
  %24 = getelementptr inbounds %struct.dwc3_exynos, ptr %3, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @regulator_disable(ptr noundef %25) #4
  %27 = getelementptr inbounds %struct.dwc3_exynos, ptr %3, i32 0, i32 6
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @regulator_disable(ptr noundef %28) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_for_each_child(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_remove_child(ptr noundef %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -16
  tail call void @platform_device_unregister(ptr noundef %3) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_exynos, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %14

8:                                                ; preds = %8, %1
  %9 = phi i32 [ %12, %8 ], [ %6, %1 ]
  %10 = getelementptr %struct.dwc3_exynos, ptr %3, i32 0, i32 2, i32 %9
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #4
  tail call void @clk_unprepare(ptr noundef %11) #4
  %12 = add nsw i32 %9, -1
  %13 = icmp sgt i32 %9, 0
  br i1 %13, label %8, label %14

14:                                               ; preds = %8, %1
  %15 = getelementptr inbounds %struct.dwc3_exynos, ptr %3, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 @regulator_disable(ptr noundef %16) #4
  %18 = getelementptr inbounds %struct.dwc3_exynos, ptr %3, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @regulator_disable(ptr noundef %19) #4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dwc3_exynos_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dwc3_exynos, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regulator_enable(ptr noundef %5) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %40

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.dwc3_exynos, ptr %3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regulator_enable(ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.dwc3_exynos, ptr %3, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %43

17:                                               ; preds = %36, %13
  %18 = phi i32 [ %37, %36 ], [ 0, %13 ]
  %19 = getelementptr %struct.dwc3_exynos, ptr %3, i32 0, i32 2, i32 %18
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 @clk_prepare(ptr noundef %20) #4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = tail call i32 @clk_enable(ptr noundef %20) #4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  tail call void @clk_unprepare(ptr noundef %20) #4
  br label %27

27:                                               ; preds = %26, %17
  %28 = phi i32 [ %24, %26 ], [ %21, %17 ]
  %29 = icmp eq i32 %18, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %30, %27
  %31 = phi i32 [ %32, %30 ], [ %18, %27 ]
  %32 = add nsw i32 %31, -1
  %33 = getelementptr %struct.dwc3_exynos, ptr %3, i32 0, i32 2, i32 %32
  %34 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %34) #4
  tail call void @clk_unprepare(ptr noundef %34) #4
  %35 = icmp sgt i32 %31, 1
  br i1 %35, label %30, label %43

36:                                               ; preds = %23
  %37 = add nuw nsw i32 %18, 1
  %38 = load i32, ptr %14, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %17, label %43

40:                                               ; preds = %8, %1
  %41 = phi ptr [ @.str.3, %1 ], [ @.str.5, %8 ]
  %42 = phi i32 [ %6, %1 ], [ %11, %8 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull %41) #5
  br label %43

43:                                               ; preds = %40, %36, %30, %27, %13
  %44 = phi i32 [ %28, %27 ], [ 0, %13 ], [ %42, %40 ], [ %28, %30 ], [ 0, %36 ]
  ret i32 %44
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }

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
