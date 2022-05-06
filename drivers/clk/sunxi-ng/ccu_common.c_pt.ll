; ModuleID = '/llk/IR/drivers/clk/sunxi-ng/ccu_common.c_pt.bc'
source_filename = "../drivers/clk/sunxi-ng/ccu_common.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_helper_wait_for_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_helper_wait_for_lock\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_helper_wait_for_lock:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccu_pll_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22ccu_pll_notifier_register\22\09\09\09\09\09"
module asm "__kstrtabns_ccu_pll_notifier_register:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_sunxi_ccu_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_sunxi_ccu_probe\22\09\09\09\09\09"
module asm "__kstrtabns_devm_sunxi_ccu_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22SUNXI_CCU\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.ccu_common = type { ptr, i16, i16, i32, i32, ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.ccu_pll_nb = type { %struct.notifier_block, ptr, i32, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.sunxi_ccu = type { ptr, %struct.spinlock, %struct.ccu_reset }
%struct.ccu_reset = type { ptr, ptr, ptr, %struct.reset_controller_dev }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }
%struct.sunxi_ccu_desc = type { ptr, i32, ptr, ptr, i32 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [34 x i8] c"drivers/clk/sunxi-ng/ccu_common.c\00", align 1
@__kstrtab_ccu_helper_wait_for_lock = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_helper_wait_for_lock = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_helper_wait_for_lock = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_helper_wait_for_lock to i32), ptr @__kstrtab_ccu_helper_wait_for_lock, ptr @__kstrtabns_ccu_helper_wait_for_lock }, section "___ksymtab_gpl+ccu_helper_wait_for_lock", align 4
@__kstrtab_ccu_pll_notifier_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccu_pll_notifier_register = external dso_local constant [0 x i8], align 1
@__ksymtab_ccu_pll_notifier_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccu_pll_notifier_register to i32), ptr @__kstrtab_ccu_pll_notifier_register, ptr @__kstrtabns_ccu_pll_notifier_register }, section "___ksymtab_gpl+ccu_pll_notifier_register", align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"devm_sunxi_ccu_release\00", align 1
@__kstrtab_devm_sunxi_ccu_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_sunxi_ccu_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_sunxi_ccu_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_sunxi_ccu_probe to i32), ptr @__kstrtab_devm_sunxi_ccu_probe, ptr @__kstrtabns_devm_sunxi_ccu_probe }, section "___ksymtab_gpl+devm_sunxi_ccu_probe", align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"\013%pOF: probing clocks failed: %d\0A\00", align 1
@__UNIQUE_ID_file166 = internal constant [46 x i8] c"sunxi_ccu.file=drivers/clk/sunxi-ng/sunxi-ccu\00", section ".modinfo", align 1
@__UNIQUE_ID_license167 = internal constant [22 x i8] c"sunxi_ccu.license=GPL\00", section ".modinfo", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"\013Couldn't register clock %d - %s\0A\00", align 1
@ccu_reset_ops = external dso_local constant %struct.reset_control_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__UNIQUE_ID_file166, ptr @__UNIQUE_ID_license167, ptr @__ksymtab_ccu_helper_wait_for_lock, ptr @__ksymtab_ccu_pll_notifier_register, ptr @__ksymtab_devm_sunxi_ccu_probe], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ccu_helper_wait_for_lock(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 32
  %8 = icmp eq i32 %7, 0
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 1
  %11 = getelementptr inbounds %struct.ccu_common, ptr %0, i32 0, i32 2
  %12 = select i1 %8, ptr %10, ptr %11
  %13 = load i16, ptr %12, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %9, i32 %14
  %16 = tail call i64 @ktime_get() #4
  %17 = add i64 %16, 70000000
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  %19 = and i32 %18, %1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %26, %4
  %22 = tail call i64 @ktime_get() #4
  %23 = icmp sgt i64 %22, %17
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  br label %30

26:                                               ; preds = %21
  tail call void @usleep_range_state(i32 noundef 26, i32 noundef 100, i32 noundef 2) #4
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #4, !srcloc !8
  %28 = and i32 %27, %1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %21, label %30

30:                                               ; preds = %26, %24, %4
  %31 = phi i32 [ %25, %24 ], [ %18, %4 ], [ %27, %26 ]
  %32 = and i32 %31, %1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35, !prof !9

34:                                               ; preds = %30
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 38, i32 noundef 9, ptr noundef null) #4
  br label %35

35:                                               ; preds = %34, %30, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ccu_pll_notifier_register(ptr noundef %0) #0 {
  store ptr @ccu_pll_notifier_cb, ptr %0, align 4
  %2 = getelementptr inbounds %struct.ccu_pll_nb, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.ccu_common, ptr %3, i32 0, i32 6, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_notifier_register(ptr noundef %5, ptr noundef %0) #4
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ccu_pll_notifier_cb(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = icmp eq i32 %1, 2
  br i1 %4, label %5, label %21

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.ccu_pll_nb, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.ccu_pll_nb, ptr %0, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  tail call void @ccu_gate_helper_disable(ptr noundef %7, i32 noundef %9) #4
  %10 = load ptr, ptr %6, align 4
  %11 = load i32, ptr %8, align 4
  %12 = tail call i32 @ccu_gate_helper_enable(ptr noundef %10, i32 noundef %11) #4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %5
  %15 = load ptr, ptr %6, align 4
  %16 = getelementptr inbounds %struct.ccu_pll_nb, ptr %0, i32 0, i32 3
  %17 = load i32, ptr %16, align 4
  tail call void @ccu_helper_wait_for_lock(ptr noundef %15, i32 noundef %17)
  br label %21

18:                                               ; preds = %5
  %19 = sub i32 1, %12
  %20 = or i32 %19, 32768
  br label %21

21:                                               ; preds = %18, %14, %3
  %22 = phi i32 [ %20, %18 ], [ 1, %3 ], [ 1, %14 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_notifier_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_sunxi_ccu_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_sunxi_ccu_release, i32 noundef 64, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call fastcc i32 @sunxi_ccu_probe(ptr noundef nonnull %4, ptr noundef %0, ptr noundef %8, ptr noundef %1, ptr noundef %2)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #4
  br label %13

12:                                               ; preds = %6
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #4
  br label %13

13:                                               ; preds = %12, %11, %3
  %14 = phi i32 [ %9, %11 ], [ 0, %12 ], [ -12, %3 ]
  ret i32 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_sunxi_ccu_release(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.sunxi_ccu, ptr %1, i32 0, i32 2, i32 3
  tail call void @reset_controller_unregister(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %6 = load ptr, ptr %5, align 8
  tail call void @of_clk_del_provider(ptr noundef %6) #4
  %7 = getelementptr inbounds %struct.sunxi_ccu_desc, ptr %3, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %21, %2
  %12 = phi i32 [ %22, %21 ], [ %9, %2 ]
  %13 = phi ptr [ %23, %21 ], [ %8, %2 ]
  %14 = phi i32 [ %24, %21 ], [ 0, %2 ]
  %15 = getelementptr %struct.clk_hw_onecell_data, ptr %13, i32 0, i32 1, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  tail call void @clk_hw_unregister(ptr noundef nonnull %16) #4
  %19 = load ptr, ptr %7, align 4
  %20 = load i32, ptr %19, align 4
  br label %21

21:                                               ; preds = %18, %11
  %22 = phi i32 [ %12, %11 ], [ %20, %18 ]
  %23 = phi ptr [ %13, %11 ], [ %19, %18 ]
  %24 = add nuw i32 %14, 1
  %25 = icmp ult i32 %24, %22
  br i1 %25, label %11, label %26

26:                                               ; preds = %21, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_ccu_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 {
  store ptr %4, ptr %0, align 4
  %6 = getelementptr inbounds %struct.sunxi_ccu, ptr %0, i32 0, i32 1
  store i32 0, ptr %6, align 4
  %7 = getelementptr inbounds %struct.sunxi_ccu_desc, ptr %4, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %27, %5
  %11 = getelementptr inbounds %struct.sunxi_ccu_desc, ptr %4, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %59, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %1, null
  br label %31

17:                                               ; preds = %27, %5
  %18 = phi i32 [ %28, %27 ], [ %8, %5 ]
  %19 = phi i32 [ %29, %27 ], [ 0, %5 ]
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr ptr, ptr %20, i32 %19
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  store ptr %3, ptr %22, align 4
  %25 = getelementptr inbounds %struct.ccu_common, ptr %22, i32 0, i32 5
  store ptr %6, ptr %25, align 4
  %26 = load i32, ptr %7, align 4
  br label %27

27:                                               ; preds = %24, %17
  %28 = phi i32 [ %18, %17 ], [ %26, %24 ]
  %29 = add nuw i32 %19, 1
  %30 = icmp ult i32 %29, %28
  br i1 %30, label %17, label %10

31:                                               ; preds = %54, %15
  %32 = phi i32 [ %13, %15 ], [ %55, %54 ]
  %33 = phi ptr [ %12, %15 ], [ %56, %54 ]
  %34 = phi i32 [ 0, %15 ], [ %57, %54 ]
  %35 = getelementptr %struct.clk_hw_onecell_data, ptr %33, i32 0, i32 1, i32 %34
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %54, label %38

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.clk_hw, ptr %36, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = load ptr, ptr %40, align 4
  br i1 %16, label %44, label %42

42:                                               ; preds = %38
  %43 = tail call i32 @clk_hw_register(ptr noundef nonnull %1, ptr noundef nonnull %36) #4
  br label %46

44:                                               ; preds = %38
  %45 = tail call i32 @of_clk_hw_register(ptr noundef %2, ptr noundef nonnull %36) #4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load ptr, ptr %11, align 4
  %51 = load i32, ptr %50, align 4
  br label %54

52:                                               ; preds = %46
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %34, ptr noundef %41) #5
  br label %87

54:                                               ; preds = %49, %31
  %55 = phi i32 [ %51, %49 ], [ %32, %31 ]
  %56 = phi ptr [ %50, %49 ], [ %33, %31 ]
  %57 = add nuw i32 %34, 1
  %58 = icmp ult i32 %57, %55
  br i1 %58, label %31, label %59

59:                                               ; preds = %54, %10
  %60 = phi i32 [ 0, %10 ], [ %57, %54 ]
  %61 = phi ptr [ %12, %10 ], [ %56, %54 ]
  %62 = tail call i32 @of_clk_add_hw_provider(ptr noundef %2, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %61) #4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.sunxi_ccu, ptr %0, i32 0, i32 2
  %66 = getelementptr inbounds %struct.sunxi_ccu, ptr %0, i32 0, i32 2, i32 3
  %67 = getelementptr inbounds %struct.sunxi_ccu, ptr %0, i32 0, i32 2, i32 3, i32 5
  store ptr %2, ptr %67, align 4
  store ptr @ccu_reset_ops, ptr %66, align 4
  %68 = icmp eq ptr %1, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 6
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.device_driver, ptr %71, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  br label %74

74:                                               ; preds = %69, %64
  %75 = phi ptr [ %73, %69 ], [ null, %64 ]
  %76 = getelementptr inbounds %struct.sunxi_ccu, ptr %0, i32 0, i32 2, i32 3, i32 1
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.sunxi_ccu_desc, ptr %4, i32 0, i32 4
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr inbounds %struct.sunxi_ccu, ptr %0, i32 0, i32 2, i32 3, i32 8
  store i32 %78, ptr %79, align 4
  store ptr %3, ptr %65, align 4
  %80 = getelementptr inbounds %struct.sunxi_ccu, ptr %0, i32 0, i32 2, i32 2
  store ptr %6, ptr %80, align 4
  %81 = getelementptr inbounds %struct.sunxi_ccu_desc, ptr %4, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.sunxi_ccu, ptr %0, i32 0, i32 2, i32 1
  store ptr %82, ptr %83, align 4
  %84 = tail call i32 @reset_controller_register(ptr noundef %66) #4
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %102, label %86

86:                                               ; preds = %74
  tail call void @of_clk_del_provider(ptr noundef %2) #4
  br label %87

87:                                               ; preds = %86, %59, %52
  %88 = phi i32 [ %34, %52 ], [ %60, %59 ], [ %60, %86 ]
  %89 = phi i32 [ %47, %52 ], [ %62, %59 ], [ %84, %86 ]
  %90 = add i32 %88, -1
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %102

92:                                               ; preds = %99, %87
  %93 = phi i32 [ %100, %99 ], [ %90, %87 ]
  %94 = load ptr, ptr %11, align 4
  %95 = getelementptr %struct.clk_hw_onecell_data, ptr %94, i32 0, i32 1, i32 %93
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %99, label %98

98:                                               ; preds = %92
  tail call void @clk_hw_unregister(ptr noundef nonnull %96) #4
  br label %99

99:                                               ; preds = %98, %92
  %100 = add i32 %93, -1
  %101 = icmp sgt i32 %100, -1
  br i1 %101, label %92, label %102

102:                                              ; preds = %99, %87, %74
  %103 = phi i32 [ 0, %74 ], [ %89, %87 ], [ %89, %99 ]
  ret i32 %103
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @of_sunxi_ccu_probe(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 64) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = tail call fastcc i32 @sunxi_ccu_probe(ptr noundef nonnull %5, ptr noundef null, ptr noundef %0, ptr noundef %1, ptr noundef %2)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %7
  %11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %0, i32 noundef %8) #5
  tail call void @kfree(ptr noundef nonnull %5) #4
  br label %12

12:                                               ; preds = %10, %7, %3
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ccu_gate_helper_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ccu_gate_helper_enable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @reset_controller_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { cold nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!8 = !{i64 3831346}
!9 = !{!"branch_weights", i32 1, i32 2000}
