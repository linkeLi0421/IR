; ModuleID = '/llk/IR/drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_mdss.c"
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
%struct.dpu_mdss = type { %struct.msm_mdss, ptr, %struct.dss_module_power, %struct.dpu_irq_controller }
%struct.msm_mdss = type { ptr, ptr }
%struct.dss_module_power = type { i32, ptr }
%struct.dpu_irq_controller = type { i32, ptr }
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
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@.str = private unnamed_addr constant [5 x i8] c"mdss\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"mapped mdss address space @%pK\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"\013[dpu error]failed to parse clocks, ret=%d\0A\00", align 1
@mdss_funcs = internal constant %struct.msm_mdss_funcs { ptr @dpu_mdss_enable, ptr @dpu_mdss_disable, ptr @dpu_mdss_destroy }, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"\013[dpu error]clock enable failed, ret:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"\013[dpu error]clock disable failed, ret:%d\0A\00", align 1
@dpu_mdss_irqdomain_ops = internal constant %struct.irq_domain_ops { ptr null, ptr null, ptr @dpu_mdss_irqdomain_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [39 x i8] c"\013[dpu error]failed to add irq_domain\0A\00", align 1
@dpu_mdss_irq_chip = internal global %struct.irq_chip { ptr null, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dpu_mdss_irq_mask, ptr null, ptr @dpu_mdss_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.6 = private unnamed_addr constant [9 x i8] c"dpu_mdss\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"handle irq fail: irq=%lu rc=%d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @dpu_mdss_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 28, i32 noundef 3520) #4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %54, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @msm_ioremap(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str) #4
  %9 = getelementptr inbounds %struct.dpu_mdss, ptr %5, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %8 to i32
  br label %54

13:                                               ; preds = %7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef %8) #4
  %14 = getelementptr inbounds %struct.dpu_mdss, ptr %5, i32 0, i32 2
  %15 = tail call i32 @msm_dss_parse_clock(ptr noundef %0, ptr noundef %14) #4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %15) #5
  br label %46

19:                                               ; preds = %13
  store ptr %4, ptr %5, align 4
  %20 = getelementptr inbounds %struct.msm_mdss, ptr %5, i32 0, i32 1
  store ptr @mdss_funcs, ptr %20, align 4
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct.device_node, ptr %22, i32 0, i32 3
  %25 = select i1 %23, ptr null, ptr %24
  %26 = tail call ptr @__irq_domain_add(ptr noundef %25, i32 noundef 32, i32 noundef 32, i32 noundef 0, ptr noundef nonnull @dpu_mdss_irqdomain_ops, ptr noundef nonnull %5) #4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #5
  br label %41

30:                                               ; preds = %19
  %31 = getelementptr inbounds %struct.dpu_mdss, ptr %5, i32 0, i32 3
  store i32 0, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dpu_mdss, ptr %5, i32 0, i32 3, i32 1
  store ptr %26, ptr %32, align 4
  %33 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load ptr, ptr %32, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  tail call void @irq_domain_remove(ptr noundef nonnull %36) #4
  store ptr null, ptr %32, align 4
  br label %41

39:                                               ; preds = %30
  tail call void @irq_set_chained_handler_and_data(i32 noundef %33, ptr noundef nonnull @dpu_mdss_irq, ptr noundef nonnull %5) #4
  %40 = getelementptr inbounds %struct.msm_drm_private, ptr %3, i32 0, i32 3
  store ptr %5, ptr %40, align 4
  tail call void @pm_runtime_enable(ptr noundef %4) #4
  br label %54

41:                                               ; preds = %38, %35, %28
  %42 = phi i32 [ -22, %28 ], [ %33, %35 ], [ %33, %38 ]
  %43 = getelementptr inbounds %struct.dpu_mdss, ptr %5, i32 0, i32 2, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = load i32, ptr %14, align 4
  tail call void @msm_dss_put_clk(ptr noundef %44, i32 noundef %45) #4
  br label %46

46:                                               ; preds = %41, %17
  %47 = phi i32 [ %15, %17 ], [ %42, %41 ]
  %48 = getelementptr inbounds %struct.dpu_mdss, ptr %5, i32 0, i32 2, i32 1
  %49 = load ptr, ptr %48, align 4
  tail call void @devm_kfree(ptr noundef %4, ptr noundef %49) #4
  %50 = load ptr, ptr %9, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %46
  tail call void @devm_iounmap(ptr noundef %4, ptr noundef nonnull %50) #4
  br label %53

53:                                               ; preds = %52, %46
  store ptr null, ptr %9, align 4
  br label %54

54:                                               ; preds = %53, %39, %11, %1
  %55 = phi i32 [ %12, %11 ], [ %47, %53 ], [ 0, %39 ], [ -12, %1 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_parse_clock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_mdss_irq(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.irq_common_data, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %23

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %11(ptr noundef %14) #4
  br label %23

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %17(ptr noundef %18) #4
  %19 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  tail call void %20(ptr noundef %18) #4
  br label %23

23:                                               ; preds = %22, %15, %13, %1
  %24 = getelementptr inbounds %struct.dpu_mdss, ptr %3, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %25, i32 16
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #4, !srcloc !8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.dpu_mdss, ptr %3, i32 0, i32 3, i32 1
  br label %31

31:                                               ; preds = %39, %29
  %32 = phi i32 [ %27, %29 ], [ %42, %39 ]
  %33 = tail call i32 @llvm.ctlz.i32(i32 %32, i1 true) #4, !range !9
  %34 = xor i32 %33, 31
  %35 = load ptr, ptr %30, align 4
  %36 = tail call i32 @generic_handle_domain_irq(ptr noundef %35, i32 noundef %34) #4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.7, i32 noundef %34, i32 noundef %36) #4
  br label %44

39:                                               ; preds = %31
  %40 = shl nuw i32 1, %34
  %41 = xor i32 %40, -1
  %42 = and i32 %32, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %31

44:                                               ; preds = %39, %38, %23
  %45 = load ptr, ptr %6, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = phi ptr [ %49, %47 ], [ %45, %44 ]
  %52 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1
  tail call void %51(ptr noundef %52) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dss_put_clk(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_mdss_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_mdss, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dpu_mdss, ptr %0, i32 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = tail call i32 @msm_dss_enable_clk(ptr noundef %4, i32 noundef %5, i32 noundef 1) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %6) #5
  br label %30

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.dpu_mdss, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #4, !srcloc !8
  switch i32 %13, label %30 [
    i32 1342177280, label %14
    i32 1342177281, label %14
    i32 1610612736, label %17
    i32 1610743808, label %24
    i32 1879179264, label %27
  ]

14:                                               ; preds = %10, %10
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr i8, ptr %15, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1056) #4, !srcloc !10
  br label %30

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr i8, ptr %18, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 4158) #4, !srcloc !10
  %20 = load ptr, ptr %11, align 4
  %21 = getelementptr i8, ptr %20, i32 336
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 2) #4, !srcloc !10
  %22 = load ptr, ptr %11, align 4
  %23 = getelementptr i8, ptr %22, i32 340
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 1) #4, !srcloc !10
  br label %30

24:                                               ; preds = %10
  %25 = load ptr, ptr %11, align 4
  %26 = getelementptr i8, ptr %25, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 30) #4, !srcloc !10
  br label %30

27:                                               ; preds = %10
  %28 = load ptr, ptr %11, align 4
  %29 = getelementptr i8, ptr %28, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 4126) #4, !srcloc !10
  br label %30

30:                                               ; preds = %27, %24, %17, %14, %10, %8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_mdss_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.dpu_mdss, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dpu_mdss, ptr %0, i32 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = load i32, ptr %2, align 4
  %6 = tail call i32 @msm_dss_enable_clk(ptr noundef %4, i32 noundef %5, i32 noundef 0) #4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %6) #5
  br label %10

10:                                               ; preds = %8, %1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_mdss_destroy(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr i8, ptr %2, i32 -16
  %4 = getelementptr inbounds %struct.dpu_mdss, ptr %0, i32 0, i32 2
  %5 = tail call i32 @__pm_runtime_suspend(ptr noundef %2, i32 noundef 0) #4
  %6 = load ptr, ptr %0, align 4
  tail call void @__pm_runtime_disable(ptr noundef %6, i1 noundef zeroext true) #4
  %7 = getelementptr inbounds %struct.dpu_mdss, ptr %0, i32 0, i32 3, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  tail call void @irq_domain_remove(ptr noundef nonnull %8) #4
  store ptr null, ptr %7, align 4
  br label %11

11:                                               ; preds = %10, %1
  %12 = tail call i32 @platform_get_irq(ptr noundef %3, i32 noundef 0) #4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %12, ptr noundef null, ptr noundef null) #4
  %13 = getelementptr inbounds %struct.dpu_mdss, ptr %0, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load i32, ptr %4, align 4
  tail call void @msm_dss_put_clk(ptr noundef %14, i32 noundef %15) #4
  %16 = load ptr, ptr %13, align 4
  tail call void @devm_kfree(ptr noundef %2, ptr noundef %16) #4
  %17 = getelementptr inbounds %struct.dpu_mdss, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  tail call void @devm_iounmap(ptr noundef %2, ptr noundef nonnull %18) #4
  br label %21

21:                                               ; preds = %20, %11
  store ptr null, ptr %17, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dss_enable_clk(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dpu_mdss_irqdomain_map(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.irq_domain, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @irq_set_chip_and_handler_name(i32 noundef %1, ptr noundef nonnull @dpu_mdss_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #4
  %6 = tail call i32 @irq_set_chip_data(i32 noundef %1, ptr noundef %5) #4
  ret i32 %6
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
define internal void @dpu_mdss_irq_mask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !11
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpu_mdss, ptr %3, i32 0, i32 3
  tail call void @_clear_bit(i32 noundef %5, ptr noundef %6) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dpu_mdss_irq_unmask(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 7
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !13
  %4 = getelementptr inbounds %struct.irq_data, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dpu_mdss, ptr %3, i32 0, i32 3
  tail call void @_set_bit(i32 noundef %5, ptr noundef %6) #4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
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
!8 = !{i64 2462148}
!9 = !{i32 0, i32 33}
!10 = !{i64 2461730}
!11 = !{i64 2155730921}
!12 = !{i64 2155731238}
!13 = !{i64 2155731390}
!14 = !{i64 2155731701}
