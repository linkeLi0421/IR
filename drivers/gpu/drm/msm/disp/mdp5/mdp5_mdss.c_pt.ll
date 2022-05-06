; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/mdp5/mdp5_mdss.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_mdss_funcs = type { ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.mdp5_mdss = type { %struct.msm_mdss, ptr, ptr, ptr, ptr, ptr, %struct.anon.83 }
%struct.msm_mdss = type { ptr, ptr }
%struct.anon.83 = type { i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.msm_drm_private = type { ptr, ptr, ptr, ptr, ptr, [2 x ptr], [3 x ptr], ptr, i8, i8, ptr, ptr, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.mutex, ptr, i32, [20 x ptr], i32, [8 x ptr], [8 x %struct.msm_drm_thread], i32, [8 x ptr], i32, [8 x ptr], i32, [8 x ptr], [3 x ptr], %struct.anon.82, %struct.notifier_block, %struct.shrinker, ptr, i32, i8 }
%struct.msm_drm_thread = type { ptr, i32, ptr }
%struct.anon.82 = type { i32, i32, %struct.drm_mm, %struct.spinlock }
%struct.drm_mm = type { ptr, %struct.list_head, %struct.drm_mm_node, %struct.rb_root_cached, %struct.rb_root_cached, %struct.rb_root, i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.shrinker = type { ptr, ptr, i32, i32, i32, %struct.list_head, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"qcom,mdss\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"mdss_phys\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"MDSS\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"vbif_phys\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"VBIF\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\013\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"mdss_isr\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"*ERROR* failed to init irq: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [43 x i8] c"*ERROR* failed to init sub-block irqs: %d\0A\00", align 1
@mdss_funcs = internal constant %struct.msm_mdss_funcs { ptr @mdp5_mdss_enable, ptr @mdp5_mdss_disable, ptr @mdp5_mdss_destroy }, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"iface\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"bus\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"vsync\00", align 1
@mdss_hw_irqdomain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @mdss_hw_irqdomain_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.14 = private unnamed_addr constant [36 x i8] c"*ERROR* mdss irq domain add failed\0A\00", align 1
@mdss_hw_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mdss_hw_mask_irq, ptr null, ptr @mdss_hw_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"mdss\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @mdp5_mdss_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  %7 = tail call i32 @of_device_is_compatible(ptr noundef %6, ptr noundef nonnull @.str.1) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %56, label %9

9:                                                ; preds = %1
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 36, i32 noundef 3520) #3
  %11 = icmp eq ptr %10, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %9
  store ptr %4, ptr %10, align 4
  %13 = tail call ptr @msm_ioremap(ptr noundef %0, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #3
  %14 = getelementptr inbounds %struct.mdp5_mdss, ptr %10, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %12
  %17 = ptrtoint ptr %13 to i32
  br label %56

18:                                               ; preds = %12
  %19 = tail call ptr @msm_ioremap(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #3
  %20 = getelementptr inbounds %struct.mdp5_mdss, ptr %10, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %19 to i32
  br label %56

24:                                               ; preds = %18
  %25 = tail call ptr @msm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.11) #3
  %26 = getelementptr inbounds %struct.mdp5_mdss, ptr %10, i32 0, i32 3
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  %28 = select i1 %27, ptr null, ptr %25
  store ptr %28, ptr %26, align 4
  %29 = tail call ptr @msm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.12) #3
  %30 = getelementptr inbounds %struct.mdp5_mdss, ptr %10, i32 0, i32 4
  %31 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  %32 = select i1 %31, ptr null, ptr %29
  store ptr %32, ptr %30, align 4
  %33 = tail call ptr @msm_clk_get(ptr noundef %0, ptr noundef nonnull @.str.13) #3
  %34 = getelementptr inbounds %struct.mdp5_mdss, ptr %10, i32 0, i32 5
  %35 = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  %36 = select i1 %35, ptr null, ptr %33
  store ptr %36, ptr %34, align 4
  %37 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #3
  %38 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %37, ptr noundef nonnull @mdss_irq, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull %10) #3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %24
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.9, i32 noundef %38) #3
  br label %56

41:                                               ; preds = %24
  %42 = load ptr, ptr %10, align 4
  %43 = getelementptr inbounds %struct.device, ptr %42, i32 0, i32 25
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  %46 = getelementptr inbounds %struct.device_node, ptr %44, i32 0, i32 3
  %47 = select i1 %45, ptr null, ptr %46
  %48 = tail call ptr @__irq_domain_add(ptr noundef %47, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @mdss_hw_irqdomain_ops, ptr noundef nonnull %10) #3
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %42, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.14) #3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.10, i32 noundef -6) #3
  br label %56

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.mdp5_mdss, ptr %10, i32 0, i32 6
  store volatile i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.mdp5_mdss, ptr %10, i32 0, i32 6, i32 1
  store ptr %48, ptr %53, align 4
  %54 = getelementptr inbounds %struct.msm_mdss, ptr %10, i32 0, i32 1
  store ptr @mdss_funcs, ptr %54, align 4
  %55 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 3
  store ptr %10, ptr %55, align 4
  tail call void @pm_runtime_enable(ptr noundef %4) #3
  br label %56

56:                                               ; preds = %51, %50, %40, %22, %16, %9, %1
  %57 = phi i32 [ 0, %51 ], [ 0, %1 ], [ %17, %16 ], [ %23, %22 ], [ %38, %40 ], [ -6, %50 ], [ -12, %9 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdss_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.mdp5_mdss, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 16
  %6 = tail call i32 @msm_readl(ptr noundef %5) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mdp5_mdss, ptr %1, i32 0, i32 6, i32 1
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ %6, %8 ], [ %18, %10 ]
  %12 = tail call i32 @llvm.ctlz.i32(i32 %11, i1 true) #3, !range !8
  %13 = xor i32 %12, 31
  %14 = load ptr, ptr %9, align 4
  %15 = tail call i32 @generic_handle_domain_irq(ptr noundef %14, i32 noundef %13) #3
  %16 = shl nuw i32 1, %13
  %17 = xor i32 %16, -1
  %18 = and i32 %11, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %10

20:                                               ; preds = %10, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdss_hw_irqdomain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = shl nuw i32 1, %2
  %5 = and i32 %4, 4401
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @mdss_hw_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #3
  %10 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %9) #3
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %7 ], [ -1, %3 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdss_hw_mask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !9
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mdp5_mdss, ptr %3, i32 0, i32 6
  tail call void @_clear_bit(i32 noundef %5, ptr noundef %6) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdss_hw_unmask_irq(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !11
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mdp5_mdss, ptr %3, i32 0, i32 6
  tail call void @_set_bit(i32 noundef %5, ptr noundef %6) #3
  tail call void asm sideeffect "dmb ish", "~{memory}"() #3, !srcloc !12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_mdss_enable(ptr nocapture noundef readonly %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  %2 = getelementptr inbounds %struct.mdp5_mdss, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #3
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %10

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #3
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  tail call void @clk_unprepare(ptr noundef %3) #3
  br label %10

10:                                               ; preds = %9, %6, %1
  %11 = getelementptr inbounds %struct.mdp5_mdss, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #3
  br label %19

19:                                               ; preds = %18, %15, %10
  %20 = getelementptr inbounds %struct.mdp5_mdss, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @clk_prepare(ptr noundef %21) #3
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = tail call i32 @clk_enable(ptr noundef %21) #3
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  tail call void @clk_unprepare(ptr noundef %21) #3
  br label %28

28:                                               ; preds = %27, %24, %19
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mdp5_mdss_disable(ptr nocapture noundef readonly %0) #0 {
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str) #3
  %2 = getelementptr inbounds %struct.mdp5_mdss, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %3) #3
  tail call void @clk_unprepare(ptr noundef %3) #3
  %4 = getelementptr inbounds %struct.mdp5_mdss, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #3
  tail call void @clk_unprepare(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.mdp5_mdss, ptr %0, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #3
  tail call void @clk_unprepare(ptr noundef %7) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mdp5_mdss_destroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.mdp5_mdss, ptr %0, i32 0, i32 6, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void @irq_domain_remove(ptr noundef %5) #3
  store ptr null, ptr %4, align 4
  %6 = load ptr, ptr %0, align 4
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #3
  br label %7

7:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }

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
!8 = !{i32 0, i32 33}
!9 = !{i64 2155727020}
!10 = !{i64 2155727337}
!11 = !{i64 2155727489}
!12 = !{i64 2155727800}
