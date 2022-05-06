; ModuleID = '/llk/IR/drivers/phy/samsung/phy-exynos-mipi-video.c_pt.bc'
source_filename = "../drivers/phy/samsung/phy-exynos-mipi-video.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mipi_phy_device_desc = type { i32, i32, [4 x ptr], [5 x %struct.exynos_mipi_phy_desc] }
%struct.exynos_mipi_phy_desc = type { i32, i32, i32, i32, i32, i32, i32 }
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
%struct.exynos_mipi_video_phy = type { [4 x ptr], i32, [5 x %struct.video_phy_desc], %struct.spinlock }
%struct.video_phy_desc = type { ptr, i32, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.phy = type { %struct.device, i32, ptr, %struct.mutex, i32, i32, %struct.phy_attrs, ptr }
%struct.phy_attrs = type { i32, i32, i32 }

@__initcall__kmod_phy_exynos_mipi_video__248_365_exynos_mipi_video_phy_driver_init6 = internal global ptr @exynos_mipi_video_phy_driver_init, section ".initcall6.init", align 4
@exynos_mipi_video_phy_driver = internal global %struct.platform_driver { ptr @exynos_mipi_video_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @exynos_mipi_video_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_exynos_mipi_video_phy_driver_exit = internal global ptr @exynos_mipi_video_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [83 x i8] c"phy_exynos_mipi_video.description=Samsung S5P/Exynos SoC MIPI CSI-2/DSI PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [73 x i8] c"phy_exynos_mipi_video.author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [69 x i8] c"phy_exynos_mipi_video.file=drivers/phy/samsung/phy-exynos-mipi-video\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [37 x i8] c"phy_exynos_mipi_video.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [22 x i8] c"exynos-mipi-video-phy\00", align 1
@exynos_mipi_video_phy_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-mipi-video-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @s5pv210_mipi_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-mipi-video-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5420_mipi_phy }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5433-mipi-video-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5433_mipi_phy }, %struct.of_device_id zeroinitializer], align 4
@exynos_mipi_video_phy_ops = internal constant %struct.phy_ops { ptr null, ptr null, ptr @exynos_mipi_video_phy_power_on, ptr @exynos_mipi_video_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to create PHY %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"drivers/phy/samsung/phy-exynos-mipi-video.c\00", align 1
@s5pv210_mipi_phy = internal constant %struct.mipi_phy_device_desc { i32 4, i32 1, [4 x ptr] [ptr @.str.3, ptr null, ptr null, ptr null], [5 x %struct.exynos_mipi_phy_desc] [%struct.exynos_mipi_phy_desc { i32 1, i32 1, i32 1808, i32 0, i32 2, i32 1808, i32 0 }, %struct.exynos_mipi_phy_desc { i32 0, i32 1, i32 1808, i32 0, i32 4, i32 1808, i32 0 }, %struct.exynos_mipi_phy_desc { i32 3, i32 1, i32 1812, i32 0, i32 2, i32 1812, i32 0 }, %struct.exynos_mipi_phy_desc { i32 2, i32 1, i32 1812, i32 0, i32 4, i32 1812, i32 0 }, %struct.exynos_mipi_phy_desc zeroinitializer] }, align 4
@exynos5420_mipi_phy = internal constant %struct.mipi_phy_device_desc { i32 5, i32 1, [4 x ptr] [ptr @.str.3, ptr null, ptr null, ptr null], [5 x %struct.exynos_mipi_phy_desc] [%struct.exynos_mipi_phy_desc { i32 1, i32 1, i32 1812, i32 0, i32 2, i32 1812, i32 0 }, %struct.exynos_mipi_phy_desc { i32 0, i32 1, i32 1812, i32 0, i32 4, i32 1812, i32 0 }, %struct.exynos_mipi_phy_desc { i32 3, i32 1, i32 1816, i32 0, i32 2, i32 1816, i32 0 }, %struct.exynos_mipi_phy_desc { i32 2, i32 1, i32 1816, i32 0, i32 4, i32 1816, i32 0 }, %struct.exynos_mipi_phy_desc { i32 -1, i32 1, i32 1820, i32 0, i32 2, i32 1820, i32 0 }] }, align 4
@exynos5433_mipi_phy = internal constant %struct.mipi_phy_device_desc { i32 5, i32 4, [4 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7], [5 x %struct.exynos_mipi_phy_desc] [%struct.exynos_mipi_phy_desc { i32 1, i32 1, i32 1808, i32 0, i32 1, i32 4116, i32 2 }, %struct.exynos_mipi_phy_desc { i32 0, i32 1, i32 1808, i32 0, i32 1, i32 4108, i32 1 }, %struct.exynos_mipi_phy_desc { i32 -1, i32 1, i32 1812, i32 0, i32 2, i32 4116, i32 2 }, %struct.exynos_mipi_phy_desc { i32 -1, i32 1, i32 1812, i32 0, i32 2, i32 4108, i32 1 }, %struct.exynos_mipi_phy_desc { i32 -1, i32 1, i32 1816, i32 0, i32 1, i32 4128, i32 3 }] }, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"syscon\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"samsung,pmu-syscon\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"samsung,disp-sysreg\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"samsung,cam0-sysreg\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"samsung,cam1-sysreg\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_exynos_mipi_video_phy_driver_exit, ptr @__initcall__kmod_phy_exynos_mipi_video__248_365_exynos_mipi_video_phy_driver_init6, ptr @exynos_mipi_video_phy_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @exynos_mipi_video_phy_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos_mipi_video_phy_driver, ptr noundef null) #4
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @exynos_mipi_video_phy_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @exynos_mipi_video_phy_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_mipi_video_phy_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %53, label %7

7:                                                ; preds = %1
  %8 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 84, i32 noundef 3520) #4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %53, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.mipi_phy_device_desc, ptr %5, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %27, label %18

14:                                               ; preds = %18
  %15 = add nuw i32 %19, 1
  %16 = load i32, ptr %11, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14, %10
  %19 = phi i32 [ %15, %14 ], [ 0, %10 ]
  %20 = getelementptr %struct.mipi_phy_device_desc, ptr %5, i32 0, i32 2, i32 %19
  %21 = load ptr, ptr %20, align 4
  %22 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %4, ptr noundef %21) #4
  %23 = getelementptr [4 x ptr], ptr %8, i32 0, i32 %19
  store ptr %22, ptr %23, align 4
  %24 = icmp ugt ptr %22, inttoptr (i32 -4096 to ptr)
  br i1 %24, label %25, label %14

25:                                               ; preds = %18
  %26 = ptrtoint ptr %22 to i32
  br label %53

27:                                               ; preds = %14, %10
  %28 = load i32, ptr %5, align 4
  %29 = getelementptr inbounds %struct.exynos_mipi_video_phy, ptr %8, i32 0, i32 1
  store i32 %28, ptr %29, align 4
  %30 = getelementptr inbounds %struct.exynos_mipi_video_phy, ptr %8, i32 0, i32 3
  store i32 0, ptr %30, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %8, ptr %31, align 8
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %48, label %33

33:                                               ; preds = %39, %27
  %34 = phi i32 [ %45, %39 ], [ 0, %27 ]
  %35 = tail call ptr @devm_phy_create(ptr noundef %2, ptr noundef null, ptr noundef nonnull @exynos_mipi_video_phy_ops) #4
  %36 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %34) #5
  %38 = ptrtoint ptr %35 to i32
  br label %53

39:                                               ; preds = %33
  %40 = getelementptr %struct.exynos_mipi_video_phy, ptr %8, i32 0, i32 2, i32 %34
  store ptr %35, ptr %40, align 4
  %41 = getelementptr %struct.exynos_mipi_video_phy, ptr %8, i32 0, i32 2, i32 %34, i32 1
  store i32 %34, ptr %41, align 4
  %42 = getelementptr %struct.mipi_phy_device_desc, ptr %5, i32 0, i32 3, i32 %34
  %43 = getelementptr %struct.exynos_mipi_video_phy, ptr %8, i32 0, i32 2, i32 %34, i32 2
  store ptr %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 8
  store ptr %40, ptr %44, align 8
  %45 = add nuw i32 %34, 1
  %46 = load i32, ptr %29, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %33, label %48

48:                                               ; preds = %39, %27
  %49 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %2, ptr noundef null, ptr noundef null, ptr noundef nonnull @exynos_mipi_video_phy_xlate) #4
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  %51 = ptrtoint ptr %49 to i32
  %52 = select i1 %50, i32 %51, i32 0
  br label %53

53:                                               ; preds = %48, %37, %25, %7, %1
  %54 = phi i32 [ %26, %25 ], [ %52, %48 ], [ -19, %1 ], [ -12, %7 ], [ %38, %37 ]
  ret i32 %54
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @exynos_mipi_video_phy_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.exynos_mipi_video_phy, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %11, label %10, !prof !8

10:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 282, i32 noundef 9, ptr noundef null) #4
  br label %14

11:                                               ; preds = %2
  %12 = getelementptr %struct.exynos_mipi_video_phy, ptr %4, i32 0, i32 2, i32 %6
  %13 = load ptr, ptr %12, align 4
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi ptr [ inttoptr (i32 -19 to ptr), %10 ], [ %13, %11 ]
  ret ptr %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_mipi_video_phy_power_on(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.video_phy_desc, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -12
  %7 = add i32 %6, -20
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.video_phy_desc, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %10, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr [4 x ptr], ptr %8, i32 0, i32 %12
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %10, i32 0, i32 6
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr [4 x ptr], ptr %8, i32 0, i32 %16
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.exynos_mipi_video_phy, ptr %8, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %19) #4
  %20 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %10, i32 0, i32 5
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %10, i32 0, i32 4
  %23 = load i32, ptr %22, align 4
  %24 = tail call i32 @regmap_update_bits_base(ptr noundef %18, i32 noundef %21, i32 noundef %23, i32 noundef %23, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %25 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %10, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %10, i32 0, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef %26, i32 noundef %28, i32 noundef %28, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %30 = load i16, ptr %19, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @exynos_mipi_video_phy_power_off(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.video_phy_desc, ptr %3, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = mul i32 %5, -12
  %7 = add i32 %6, -20
  %8 = getelementptr i8, ptr %3, i32 %7
  %9 = getelementptr inbounds %struct.video_phy_desc, ptr %3, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  tail call fastcc void @__set_phy_state(ptr noundef %10, ptr noundef %8, i32 noundef 0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @__set_phy_state(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %0, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr [4 x ptr], ptr %1, i32 0, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %0, i32 0, i32 6
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr [4 x ptr], ptr %1, i32 0, i32 %9
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.exynos_mipi_video_phy, ptr %1, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %12) #4
  %13 = icmp eq i32 %2, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load i32, ptr %0, align 4
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = getelementptr %struct.exynos_mipi_video_phy, ptr %1, i32 0, i32 2, i32 %15
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.phy, ptr %19, i32 0, i32 5
  %21 = load i32, ptr %20, align 8
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %17
  %24 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %0, i32 0, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %0, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %25, i32 noundef %27, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %40

29:                                               ; preds = %3
  %30 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %0, i32 0, i32 5
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %0, i32 0, i32 4
  %33 = load i32, ptr %32, align 4
  %34 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %31, i32 noundef %33, i32 noundef %33, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  %35 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %0, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %0, i32 0, i32 1
  %38 = load i32, ptr %37, align 4
  %39 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef %36, i32 noundef %38, i32 noundef %38, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %46

40:                                               ; preds = %23, %17, %14
  %41 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %0, i32 0, i32 5
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.exynos_mipi_phy_desc, ptr %0, i32 0, i32 4
  %44 = load i32, ptr %43, align 4
  %45 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef %42, i32 noundef %44, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #4
  br label %46

46:                                               ; preds = %40, %29
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !9
  %47 = load i16, ptr %12, align 4
  %48 = add i16 %47, 1
  store i16 %48, ptr %12, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !10
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !11
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i64 2148906826}
!10 = !{i64 2148902650}
!11 = !{i64 2148902725, i64 2148902752, i64 2148902799, i64 2148902821, i64 2148902849, i64 2148902869}
!12 = !{i64 2148929829}
