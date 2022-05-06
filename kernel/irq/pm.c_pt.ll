; ModuleID = '/llk/IR/kernel/irq/pm.c_pt.bc'
source_filename = "../kernel/irq/pm.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_suspend_device_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22suspend_device_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_suspend_device_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_resume_device_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22resume_device_irqs\22\09\09\09\09\09"
module asm "__kstrtabns_resume_device_irqs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irqaction = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, [12 x i8] }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [12 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, [1 x %struct.cpumask], [1 x %struct.cpumask], i32 }
%struct.cpumask = type { [1 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.atomic_t = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }

@irq_pm_install_action.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [16 x i8] c"kernel/irq/pm.c\00", align 1
@irq_pm_install_action.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@nr_irqs = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_suspend_device_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_suspend_device_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_suspend_device_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @suspend_device_irqs to i32), ptr @__kstrtab_suspend_device_irqs, ptr @__kstrtabns_suspend_device_irqs }, section "___ksymtab_gpl+suspend_device_irqs", align 4
@__initcall__kmod_pm__248_249_irq_pm_init_ops6 = internal global ptr @irq_pm_init_ops, section ".initcall6.init", align 4
@__kstrtab_resume_device_irqs = external dso_local constant [0 x i8], align 1
@__kstrtabns_resume_device_irqs = external dso_local constant [0 x i8], align 1
@__ksymtab_resume_device_irqs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @resume_device_irqs to i32), ptr @__kstrtab_resume_device_irqs, ptr @__kstrtabns_resume_device_irqs }, section "___ksymtab_gpl+resume_device_irqs", align 4
@chained_action = external dso_local global %struct.irqaction, align 64
@irq_pm_syscore_ops = internal global %struct.syscore_ops { %struct.list_head zeroinitializer, ptr null, ptr @irq_pm_syscore_resume, ptr null }, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__initcall__kmod_pm__248_249_irq_pm_init_ops6, ptr @__ksymtab_resume_device_irqs, ptr @__ksymtab_suspend_device_irqs], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @irq_pm_check_wakeup(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = and i32 %4, 524288
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = and i32 %4, -524289
  store i32 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 8
  %11 = or i32 %10, 2560
  store i32 %11, ptr %9, align 8
  %12 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, 1
  store i32 %14, ptr %12, align 4
  tail call void @irq_disable(ptr noundef %0) #5
  %15 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 1, i32 1
  %16 = load i32, ptr %15, align 4
  tail call void @pm_system_irq_wakeup(i32 noundef %16) #5
  br label %17

17:                                               ; preds = %7, %1
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_system_irq_wakeup(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @irq_pm_install_action(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 32
  %8 = and i32 %7, 32768
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 26
  %11 = load i32, ptr %10, align 32
  br i1 %9, label %14, label %12

12:                                               ; preds = %2
  %13 = add i32 %11, 1
  store i32 %13, ptr %10, align 32
  br label %14

14:                                               ; preds = %12, %2
  %15 = phi i32 [ %13, %12 ], [ %11, %2 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %14
  %18 = icmp ne i32 %15, %5
  %19 = load i1, ptr @irq_pm_install_action.__already_done, align 1
  %20 = xor i1 %19, true
  %21 = select i1 %18, i1 %20, i1 false
  br i1 %21, label %22, label %23, !prof !8

22:                                               ; preds = %17
  store i1 true, ptr @irq_pm_install_action.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 41, i32 noundef 9, ptr noundef null) #5
  br label %23

23:                                               ; preds = %22, %17, %14
  %24 = load i32, ptr %6, align 32
  %25 = and i32 %24, 16384
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 24
  %29 = load i32, ptr %28, align 8
  %30 = add i32 %29, 1
  store i32 %30, ptr %28, align 8
  br label %38

31:                                               ; preds = %23
  %32 = and i32 %24, 262144
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 25
  %36 = load i32, ptr %35, align 4
  %37 = add i32 %36, 1
  store i32 %37, ptr %35, align 4
  br label %38

38:                                               ; preds = %34, %31, %27
  %39 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 24
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 25
  %44 = load i32, ptr %43, align 4
  %45 = add i32 %44, %40
  %46 = load i32, ptr %3, align 4
  %47 = icmp ne i32 %45, %46
  %48 = load i1, ptr @irq_pm_install_action.__already_done.1, align 1
  %49 = xor i1 %48, true
  %50 = select i1 %47, i1 %49, i1 false
  br i1 %50, label %51, label %52, !prof !8

51:                                               ; preds = %42
  store i1 true, ptr @irq_pm_install_action.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 50, i32 noundef 9, ptr noundef null) #5
  br label %52

52:                                               ; preds = %51, %42, %38
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @irq_pm_remove_action(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 23
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 4
  %6 = getelementptr inbounds %struct.irqaction, ptr %1, i32 0, i32 8
  %7 = load i32, ptr %6, align 32
  %8 = and i32 %7, 32768
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 26
  %12 = load i32, ptr %11, align 32
  %13 = add i32 %12, -1
  store i32 %13, ptr %11, align 32
  %14 = load i32, ptr %6, align 32
  br label %15

15:                                               ; preds = %10, %2
  %16 = phi i32 [ %14, %10 ], [ %7, %2 ]
  %17 = and i32 %16, 16384
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 24
  %21 = load i32, ptr %20, align 8
  %22 = add i32 %21, -1
  store i32 %22, ptr %20, align 8
  br label %30

23:                                               ; preds = %15
  %24 = and i32 %16, 262144
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.irq_desc, ptr %0, i32 0, i32 25
  %28 = load i32, ptr %27, align 4
  %29 = add i32 %28, -1
  store i32 %29, ptr %27, align 4
  br label %30

30:                                               ; preds = %26, %23, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @suspend_device_irqs() #0 {
  %1 = tail call ptr @irq_to_desc(i32 noundef 0) #5
  %2 = load i32, ptr @nr_irqs, align 4
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %62

4:                                                ; preds = %57, %0
  %5 = phi ptr [ %59, %57 ], [ %1, %0 ]
  %6 = phi i32 [ %58, %57 ], [ 0, %0 ]
  %7 = icmp eq ptr %5, null
  br i1 %7, label %57, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 32768
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 15
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #5
  %16 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1, i32 4
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.irq_chip, ptr %17, i32 0, i32 33
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 4
  %21 = load ptr, ptr %20, align 64
  %22 = icmp eq ptr %21, null
  %23 = icmp eq ptr %21, @chained_action
  %24 = or i1 %22, %23
  br i1 %24, label %55, label %25

25:                                               ; preds = %13
  %26 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 24
  %27 = load i32, ptr %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %55

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 1, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, 16384
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %29
  %36 = or i32 %32, 524288
  store i32 %36, ptr %31, align 4
  %37 = and i32 %19, 512
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %56, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %30, align 4
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, 65536
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %39
  tail call void @__enable_irq(ptr noundef nonnull %5) #5
  %45 = load ptr, ptr %30, align 4
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, 1073741824
  store i32 %47, ptr %45, align 4
  br label %56

48:                                               ; preds = %29
  %49 = getelementptr inbounds %struct.irq_desc, ptr %5, i32 0, i32 6
  %50 = load i32, ptr %49, align 8
  %51 = or i32 %50, 2048
  store i32 %51, ptr %49, align 8
  tail call void @__disable_irq(ptr noundef nonnull %5) #5
  %52 = and i32 %19, 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %48
  tail call void @mask_irq(ptr noundef nonnull %5) #5
  br label %56

55:                                               ; preds = %25, %13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #5
  br label %57

56:                                               ; preds = %54, %48, %44, %39, %35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #5
  tail call void @synchronize_irq(i32 noundef %6) #5
  br label %57

57:                                               ; preds = %56, %55, %8, %4
  %58 = add nuw nsw i32 %6, 1
  %59 = tail call ptr @irq_to_desc(i32 noundef %58) #5
  %60 = load i32, ptr @nr_irqs, align 4
  %61 = icmp slt i32 %58, %60
  br i1 %61, label %4, label %62

62:                                               ; preds = %57, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rearm_wake_irq(i32 noundef %0) local_unnamed_addr #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #5
  store i32 0, ptr %2, align 4, !annotation !9
  %3 = call ptr @__irq_get_desc_lock(i32 noundef %0, ptr noundef nonnull %2, i1 noundef zeroext true, i32 noundef 1) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 6
  %7 = load i32, ptr %6, align 8
  %8 = and i32 %7, 2048
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %20, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.irq_desc, ptr %3, i32 0, i32 1, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 16384
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %10
  %17 = and i32 %7, -2049
  store i32 %17, ptr %6, align 8
  %18 = load i32, ptr %12, align 4
  %19 = or i32 %18, 524288
  store i32 %19, ptr %12, align 4
  call void @__enable_irq(ptr noundef nonnull %3) #5
  br label %20

20:                                               ; preds = %16, %10, %5
  %21 = load i32, ptr %2, align 4
  call void @__irq_put_desc_unlock(ptr noundef nonnull %3, i32 noundef %21, i1 noundef zeroext true) #5
  br label %22

22:                                               ; preds = %20, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__enable_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @irq_pm_init_ops() #4 section ".init.text" {
  tail call void @register_syscore_ops(ptr noundef nonnull @irq_pm_syscore_ops) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @resume_device_irqs() #0 {
  tail call fastcc void @resume_irqs(i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @resume_irqs(i1 noundef zeroext %0) unnamed_addr #0 {
  %2 = tail call ptr @irq_to_desc(i32 noundef 0) #5
  %3 = load i32, ptr @nr_irqs, align 4
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %69

5:                                                ; preds = %64, %1
  %6 = phi ptr [ %66, %64 ], [ %2, %1 ]
  %7 = phi i32 [ %65, %64 ], [ 0, %1 ]
  %8 = icmp eq ptr %6, null
  br i1 %8, label %64, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 4
  %11 = load ptr, ptr %10, align 64
  %12 = icmp eq ptr %11, null
  br i1 %12, label %19, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.irqaction, ptr %11, i32 0, i32 8
  %15 = load i32, ptr %14, align 32
  %16 = and i32 %15, 131072
  %17 = icmp eq i32 %16, 0
  %18 = and i1 %17, %0
  br i1 %18, label %64, label %20

19:                                               ; preds = %9
  br i1 %0, label %64, label %20

20:                                               ; preds = %19, %13
  %21 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = and i32 %22, 32768
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %64

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 15
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #5
  %28 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, -524289
  store i32 %31, ptr %29, align 4
  %32 = load ptr, ptr %28, align 4
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 1073741824
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %25
  tail call void @__disable_irq(ptr noundef nonnull %6) #5
  %37 = load ptr, ptr %28, align 4
  %38 = load i32, ptr %37, align 4
  %39 = and i32 %38, -1073741825
  store i32 %39, ptr %37, align 4
  br label %40

40:                                               ; preds = %36, %25
  %41 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 6
  %42 = load i32, ptr %41, align 8
  %43 = and i32 %42, 2048
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 26
  %47 = load i32, ptr %46, align 32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.irq_desc, ptr %6, i32 0, i32 7
  %51 = load i32, ptr %50, align 4
  %52 = add i32 %51, 1
  store i32 %52, ptr %50, align 4
  %53 = load ptr, ptr %28, align 4
  %54 = load i32, ptr %53, align 4
  %55 = or i32 %54, 65536
  store i32 %55, ptr %53, align 4
  %56 = load ptr, ptr %28, align 4
  %57 = load i32, ptr %56, align 4
  %58 = or i32 %57, 131072
  store i32 %58, ptr %56, align 4
  %59 = load i32, ptr %41, align 8
  br label %60

60:                                               ; preds = %49, %40
  %61 = phi i32 [ %42, %40 ], [ %59, %49 ]
  %62 = and i32 %61, -2049
  store i32 %62, ptr %41, align 8
  tail call void @__enable_irq(ptr noundef nonnull %6) #5
  br label %63

63:                                               ; preds = %60, %45
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #5
  br label %64

64:                                               ; preds = %63, %20, %19, %13, %5
  %65 = add nuw nsw i32 %7, 1
  %66 = tail call ptr @irq_to_desc(i32 noundef %65) #5
  %67 = load i32, ptr @nr_irqs, align 4
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %5, label %69

69:                                               ; preds = %64, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__disable_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mask_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_get_desc_lock(i32 noundef, ptr noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_put_desc_unlock(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @irq_pm_syscore_resume() #0 {
  tail call fastcc void @resume_irqs(i1 noundef zeroext true)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!9 = !{!"auto-init"}
