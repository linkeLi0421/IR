; ModuleID = '/llk/IR/drivers/gpu/drm/msm/hdmi/hdmi_phy.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_phy.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hdmi_phy_cfg = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.regulator_bulk_data = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to enable regulators: (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"*ERROR* failed to enable clock: %s (%d)\0A\00", align 1
@msm_hdmi_phy_platform_driver = internal global %struct.platform_driver { ptr @msm_hdmi_phy_probe, ptr @msm_hdmi_phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @msm_hdmi_phy_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str.3 = private unnamed_addr constant [13 x i8] c"msm_hdmi_phy\00", align 1
@msm_hdmi_phy_dt_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-phy-8660\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_hdmi_phy_8x60_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-phy-8960\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_hdmi_phy_8960_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-phy-8974\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_hdmi_phy_8x74_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-phy-8084\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_hdmi_phy_8x74_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,hdmi-phy-8996\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msm_hdmi_phy_8996_cfg }, %struct.of_device_id zeroinitializer], align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"hdmi_phy\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"HDMI_PHY\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"*ERROR* %s: failed to map phy base\0A\00", align 1
@__func__.msm_hdmi_phy_probe = private unnamed_addr constant [19 x i8] c"msm_hdmi_phy_probe\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"*ERROR* couldn't init PLL\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to get phy regulators: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"*ERROR* failed to get phy clock: %s (%d)\0A\00", align 1
@msm_hdmi_phy_8x60_cfg = external dso_local constant %struct.hdmi_phy_cfg, align 4
@msm_hdmi_phy_8960_cfg = external dso_local constant %struct.hdmi_phy_cfg, align 4
@msm_hdmi_phy_8x74_cfg = external dso_local constant %struct.hdmi_phy_cfg, align 4
@msm_hdmi_phy_8996_cfg = external dso_local constant %struct.hdmi_phy_cfg, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_phy_resource_enable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_phy, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #4
  %7 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %3, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.hdmi_phy, ptr %0, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regulator_bulk_enable(i32 noundef %8, ptr noundef %10) #4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %3, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.hdmi_phy, ptr %0, i32 0, i32 5
  %19 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %3, i32 0, i32 5
  br label %21

20:                                               ; preds = %1
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %11) #4
  br label %42

21:                                               ; preds = %37, %17
  %22 = phi i32 [ 0, %17 ], [ %39, %37 ]
  %23 = load ptr, ptr %18, align 4
  %24 = getelementptr ptr, ptr %23, i32 %22
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 @clk_prepare(ptr noundef %25) #4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = tail call i32 @clk_enable(ptr noundef %25) #4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %28
  tail call void @clk_unprepare(ptr noundef %25) #4
  br label %32

32:                                               ; preds = %31, %21
  %33 = phi i32 [ %29, %31 ], [ %26, %21 ]
  %34 = load ptr, ptr %19, align 4
  %35 = getelementptr ptr, ptr %34, i32 %22
  %36 = load ptr, ptr %35, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %5, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, ptr noundef %36, i32 noundef %33) #4
  br label %37

37:                                               ; preds = %32, %28
  %38 = phi i32 [ %33, %32 ], [ 0, %28 ]
  %39 = add nuw nsw i32 %22, 1
  %40 = load i32, ptr %14, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %21, label %42

42:                                               ; preds = %37, %20, %13
  %43 = phi i32 [ %11, %20 ], [ 0, %13 ], [ %38, %37 ]
  ret i32 %43
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_phy_resource_disable(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.hdmi_phy, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %3, i32 0, i32 6
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.hdmi_phy, ptr %0, i32 0, i32 5
  br label %11

11:                                               ; preds = %11, %9
  %12 = phi i32 [ %7, %9 ], [ %16, %11 ]
  %13 = load ptr, ptr %10, align 4
  %14 = getelementptr ptr, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #4
  tail call void @clk_unprepare(ptr noundef %15) #4
  %16 = add nsw i32 %12, -1
  %17 = icmp sgt i32 %12, 0
  br i1 %17, label %11, label %18

18:                                               ; preds = %11, %1
  %19 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %20 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %3, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr inbounds %struct.hdmi_phy, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i32 @regulator_bulk_disable(i32 noundef %21, ptr noundef %23) #4
  %25 = tail call i32 @__pm_runtime_idle(ptr noundef %19, i32 noundef 4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_phy_powerup(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %11, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.hdmi_phy, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %4
  tail call void %8(ptr noundef nonnull %0, i32 noundef %1) #4
  br label %11

11:                                               ; preds = %10, %4, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @msm_hdmi_phy_powerdown(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.hdmi_phy, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  tail call void %7(ptr noundef nonnull %0) #4
  br label %10

10:                                               ; preds = %9, %3, %1
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_hdmi_phy_driver_register() local_unnamed_addr #2 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @msm_hdmi_phy_platform_driver, ptr noundef nonnull @__this_module) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @msm_hdmi_phy_driver_unregister() local_unnamed_addr #2 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @msm_hdmi_phy_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_hdmi_phy_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 24, i32 noundef 3520) #4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %108, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_device_get_match_data(ptr noundef %2) #4
  %7 = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 2
  store ptr %6, ptr %7, align 4
  %8 = icmp eq ptr %6, null
  br i1 %8, label %108, label %9

9:                                                ; preds = %5
  %10 = tail call ptr @msm_ioremap(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #4
  %11 = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %12, label %13, label %14

13:                                               ; preds = %9
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.msm_hdmi_phy_probe) #4
  br label %108

14:                                               ; preds = %9
  store ptr %0, ptr %3, align 4
  %15 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %6, i32 0, i32 4
  %16 = load i32, ptr %15, align 4
  %17 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %16, i32 12) #4
  %18 = extractvalue { i32, i1 } %17, 1
  br i1 %18, label %19, label %21, !prof !8

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 4
  store ptr null, ptr %20, align 4
  br label %108

21:                                               ; preds = %14
  %22 = extractvalue { i32, i1 } %17, 0
  %23 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %22, i32 noundef 3520) #4
  %24 = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 4
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %108, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %6, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #4
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %31, label %33, !prof !8

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 5
  store ptr null, ptr %32, align 4
  br label %108

33:                                               ; preds = %26
  %34 = extractvalue { i32, i1 } %29, 0
  %35 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %34, i32 noundef 3520) #4
  %36 = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 5
  store ptr %35, ptr %36, align 4
  %37 = icmp eq ptr %35, null
  br i1 %37, label %108, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %15, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %6, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = load ptr, ptr %43, align 4
  store ptr %44, ptr %23, align 4
  %45 = load i32, ptr %15, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %57

47:                                               ; preds = %47, %41
  %48 = phi i32 [ %54, %47 ], [ 1, %41 ]
  %49 = load ptr, ptr %24, align 4
  %50 = load ptr, ptr %42, align 4
  %51 = getelementptr ptr, ptr %50, i32 %48
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr %struct.regulator_bulk_data, ptr %49, i32 %48
  store ptr %52, ptr %53, align 4
  %54 = add nuw nsw i32 %48, 1
  %55 = load i32, ptr %15, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %47, label %57

57:                                               ; preds = %47, %41
  %58 = phi i32 [ %45, %41 ], [ %55, %47 ]
  %59 = load ptr, ptr %24, align 4
  br label %60

60:                                               ; preds = %57, %38
  %61 = phi ptr [ %23, %38 ], [ %59, %57 ]
  %62 = phi i32 [ %39, %38 ], [ %58, %57 ]
  %63 = tail call i32 @devm_regulator_bulk_get(ptr noundef %2, i32 noundef %62, ptr noundef %61) #4
  switch i32 %63, label %69 [
    i32 0, label %64
    i32 -517, label %108
  ]

64:                                               ; preds = %60
  %65 = load i32, ptr %27, align 4
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %92

67:                                               ; preds = %64
  %68 = getelementptr inbounds %struct.hdmi_phy_cfg, ptr %6, i32 0, i32 5
  br label %70

69:                                               ; preds = %60
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %63) #4
  br label %89

70:                                               ; preds = %83, %67
  %71 = phi i32 [ 0, %67 ], [ %86, %83 ]
  %72 = load ptr, ptr %3, align 4
  %73 = load ptr, ptr %68, align 4
  %74 = getelementptr ptr, ptr %73, i32 %71
  %75 = load ptr, ptr %74, align 4
  %76 = tail call ptr @msm_clk_get(ptr noundef %72, ptr noundef %75) #4
  %77 = icmp ugt ptr %76, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = ptrtoint ptr %76 to i32
  %80 = load ptr, ptr %68, align 4
  %81 = getelementptr ptr, ptr %80, i32 %71
  %82 = load ptr, ptr %81, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, ptr noundef %82, i32 noundef %79) #4
  br label %89

83:                                               ; preds = %70
  %84 = load ptr, ptr %36, align 4
  %85 = getelementptr ptr, ptr %84, i32 %71
  store ptr %76, ptr %85, align 4
  %86 = add nuw nsw i32 %71, 1
  %87 = load i32, ptr %27, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %70, label %92

89:                                               ; preds = %78, %69
  %90 = phi i32 [ %63, %69 ], [ %79, %78 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %108

92:                                               ; preds = %89, %83, %64
  tail call void @pm_runtime_enable(ptr noundef %2) #4
  %93 = tail call i32 @msm_hdmi_phy_resource_enable(ptr noundef nonnull %3)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load ptr, ptr %7, align 4
  %97 = load i32, ptr %96, align 4
  switch i32 %97, label %106 [
    i32 1, label %98
    i32 3, label %100
  ]

98:                                               ; preds = %95
  %99 = tail call i32 @msm_hdmi_pll_8960_init(ptr noundef %0) #4
  br label %102

100:                                              ; preds = %95
  %101 = tail call i32 @msm_hdmi_pll_8996_init(ptr noundef %0) #4
  br label %102

102:                                              ; preds = %100, %98
  %103 = phi i32 [ %101, %100 ], [ %99, %98 ]
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %102
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7) #4
  tail call void @msm_hdmi_phy_resource_disable(ptr noundef nonnull %3)
  br label %108

106:                                              ; preds = %102, %95
  tail call void @msm_hdmi_phy_resource_disable(ptr noundef nonnull %3)
  %107 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %107, align 8
  br label %108

108:                                              ; preds = %106, %105, %92, %89, %60, %33, %31, %21, %19, %13, %5, %1
  %109 = phi i32 [ -12, %13 ], [ %103, %105 ], [ 0, %106 ], [ -19, %1 ], [ -19, %5 ], [ %90, %89 ], [ %93, %92 ], [ -12, %31 ], [ -12, %19 ], [ %63, %60 ], [ -12, %33 ], [ -12, %21 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @msm_hdmi_phy_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_pll_8960_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_hdmi_pll_8996_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
