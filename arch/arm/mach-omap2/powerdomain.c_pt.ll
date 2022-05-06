; ModuleID = '/llk/IR/arch/arm/mach-omap2/powerdomain.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/powerdomain.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.notifier_block = type { ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.3 }
%union.anon.3 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type {}
%struct.cpumask = type { [1 x i32] }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i32 }
%union.anon = type { ptr }
%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@arch_pwrdm = internal unnamed_addr global ptr null, align 4
@pwrdm_complete_init.nb = internal global %struct.notifier_block zeroinitializer, align 4
@pwrdm_list = internal global %struct.list_head { ptr @pwrdm_list, ptr @pwrdm_list }, align 4
@.str = private unnamed_addr constant [34 x i8] c"arch/arm/mach-omap2/powerdomain.c\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"powerdomain: %s: Fix max powerstate to ON\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"\013%s: unable to set power state of powerdomain: %s\0A\00", align 1
@__func__.omap_set_pwrdm_state = private unnamed_addr constant [21 x i8] c"omap_set_pwrdm_state\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"powerdomain: %s: pwrdm is null\0A\00", align 1
@__func__.pwrdm_get_context_loss_count = private unnamed_addr constant [29 x i8] c"pwrdm_get_context_loss_count\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"\013powerdomain: %s: missing OMAP4 PRCM partition ID\0A\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"\013powerdomain: %s: voltagedomain %s does not exist\0A\00", align 1
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@__tracepoint_power_domain_target = external dso_local global %struct.tracepoint, align 4
@trace_power_domain_target_rcuidle.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"include/trace/events/power.h\00", align 1
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @pwrdm_register_platform_funcs(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @arch_pwrdm, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  store ptr %0, ptr @arch_pwrdm, align 4
  br label %7

7:                                                ; preds = %6, %3, %1
  %8 = phi i32 [ 0, %6 ], [ -22, %1 ], [ -17, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_register_pwrdms(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = load ptr, ptr @arch_pwrdm, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %108, label %4

4:                                                ; preds = %1
  %5 = icmp eq ptr %0, null
  br i1 %5, label %108, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %108, label %9

9:                                                ; preds = %104, %6
  %10 = phi ptr [ %106, %104 ], [ %7, %6 ]
  %11 = phi ptr [ %105, %104 ], [ %0, %6 ]
  %12 = load ptr, ptr %10, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %104, label %14

14:                                               ; preds = %9
  %15 = tail call i32 @omap_rev() #10
  %16 = and i32 %15, 255
  %17 = icmp eq i32 %16, 68
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 9
  %20 = load i8, ptr %19, align 4
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load ptr, ptr %10, align 4
  %24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %23) #11
  br label %104

25:                                               ; preds = %18, %14
  %26 = load ptr, ptr %10, align 4
  br label %27

27:                                               ; preds = %31, %25
  %28 = phi ptr [ @pwrdm_list, %25 ], [ %29, %31 ]
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, @pwrdm_list
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = getelementptr i8, ptr %29, i32 -72
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 @strcmp(ptr noundef %26, ptr noundef %33) #10
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %27

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %29, i32 -72
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %104

39:                                               ; preds = %36, %27
  %40 = load ptr, ptr @arch_pwrdm, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.pwrdm_ops, ptr %40, i32 0, i32 18
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %42
  %47 = tail call i32 %44() #10
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %46, %42, %39
  %50 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = tail call ptr @voltdm_lookup(ptr noundef %51) #10
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load ptr, ptr %10, align 4
  %56 = load ptr, ptr %50, align 4
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %55, ptr noundef %56) #11
  br label %104

58:                                               ; preds = %49
  store ptr %52, ptr %50, align 4
  %59 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 12
  store volatile ptr %59, ptr %59, align 4
  %60 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 12, i32 1
  store ptr %59, ptr %60, align 4
  br label %61

61:                                               ; preds = %58, %46
  %62 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 17
  store i32 0, ptr %62, align 4
  %63 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 11
  %64 = load ptr, ptr @pwrdm_list, align 4
  %65 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %63, ptr %65, align 4
  store ptr %64, ptr %63, align 4
  %66 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 11, i32 1
  store ptr @pwrdm_list, ptr %66, align 4
  store volatile ptr %63, ptr @pwrdm_list, align 4
  %67 = getelementptr i8, ptr %10, i32 92
  %68 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(20) %67, i8 0, i64 20, i1 false) #10
  %69 = load i8, ptr %68, align 1
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %71, %61
  %72 = phi i32 [ %74, %71 ], [ 0, %61 ]
  %73 = getelementptr %struct.powerdomain, ptr %10, i32 0, i32 16, i32 %72
  store i32 0, ptr %73, align 4
  %74 = add nuw nsw i32 %72, 1
  %75 = load i8, ptr %68, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp ult i32 %74, %76
  br i1 %77, label %71, label %78

78:                                               ; preds = %71, %61
  %79 = load ptr, ptr @arch_pwrdm, align 4
  %80 = icmp eq ptr %79, null
  br i1 %80, label %87, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.pwrdm_ops, ptr %79, i32 0, i32 17
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85

85:                                               ; preds = %81
  %86 = tail call i32 %83(ptr noundef nonnull %10) #10
  br label %87

87:                                               ; preds = %85, %81, %78
  %88 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 3
  %89 = load i8, ptr %88, align 2
  %90 = icmp eq i8 %89, 8
  br i1 %90, label %100, label %91

91:                                               ; preds = %87
  %92 = load ptr, ptr @arch_pwrdm, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %100, label %94

94:                                               ; preds = %91
  %95 = getelementptr inbounds %struct.pwrdm_ops, ptr %92, i32 0, i32 2
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %100, label %98

98:                                               ; preds = %94
  %99 = tail call i32 %96(ptr noundef nonnull %10) #10
  br label %100

100:                                              ; preds = %98, %94, %91, %87
  %101 = phi i32 [ 3, %87 ], [ %99, %98 ], [ -22, %94 ], [ -22, %91 ]
  %102 = getelementptr inbounds %struct.powerdomain, ptr %10, i32 0, i32 13
  store i32 %101, ptr %102, align 4
  %103 = getelementptr %struct.powerdomain, ptr %10, i32 0, i32 14, i32 %101
  store i32 1, ptr %103, align 4
  br label %104

104:                                              ; preds = %100, %54, %36, %22, %9
  %105 = getelementptr ptr, ptr %11, i32 1
  %106 = load ptr, ptr %105, align 4
  %107 = icmp eq ptr %106, null
  br i1 %107, label %108, label %9

108:                                              ; preds = %104, %6, %4, %1
  %109 = phi i32 [ -17, %1 ], [ -22, %4 ], [ 0, %6 ], [ 0, %104 ]
  ret i32 %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_complete_init() local_unnamed_addr #1 {
  %1 = load volatile ptr, ptr @pwrdm_list, align 4
  %2 = icmp eq ptr %1, @pwrdm_list
  br i1 %2, label %15, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %7, %3 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -72
  %6 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %5, i8 noundef zeroext 3)
  %7 = load ptr, ptr %4, align 4
  %8 = icmp eq ptr %7, @pwrdm_list
  br i1 %8, label %9, label %3

9:                                                ; preds = %3
  %10 = tail call i32 @omap_rev() #10
  %11 = and i32 %10, -16777216
  %12 = icmp eq i32 %11, 1124073472
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  store ptr @cpu_notifier, ptr @pwrdm_complete_init.nb, align 4
  %14 = tail call i32 @cpu_pm_register_notifier(ptr noundef nonnull @pwrdm_complete_init.nb) #10
  br label %15

15:                                               ; preds = %13, %9, %0
  %16 = phi i32 [ -13, %0 ], [ 0, %13 ], [ 0, %9 ]
  ret i32 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_set_next_pwrst(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %50, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 2
  %7 = zext i8 %6 to i32
  %8 = zext i8 %1 to i32
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %50, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr @arch_pwrdm, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %13, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %50, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 4
  %20 = tail call ptr @llvm.thread.pointer() #10
  %21 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 2
  %22 = load i32, ptr %21, align 8
  %23 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_power_domain_target, i32 0, i32 1), align 4
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %18
  %26 = lshr i32 %22, 5
  %27 = getelementptr i32, ptr @__cpu_online_mask, i32 %26
  %28 = load volatile i32, ptr %27, align 4
  %29 = and i32 %22, 31
  %30 = shl nuw i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 1
  %35 = load volatile i32, ptr %34, align 4
  %36 = and i32 %35, 15728640
  %37 = icmp ne i32 %36, 0
  %38 = load i1, ptr @trace_power_domain_target_rcuidle.__already_done, align 1
  %39 = xor i1 %38, true
  %40 = select i1 %37, i1 %39, i1 false
  br i1 %40, label %41, label %42, !prof !8

41:                                               ; preds = %33
  store i1 true, ptr @trace_power_domain_target_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 359, i32 noundef 9, ptr noundef null) #10
  br label %42

42:                                               ; preds = %41, %33
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %43 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #10
  tail call void @rcu_irq_enter_irqson() #10
  %44 = tail call i32 @__traceiter_power_domain_target(ptr noundef null, ptr noundef %19, i32 noundef %8, i32 noundef %22) #10
  tail call void @rcu_irq_exit_irqson() #10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %43) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  %45 = load ptr, ptr @arch_pwrdm, align 4
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %42, %25, %18
  %48 = phi ptr [ %16, %18 ], [ %16, %25 ], [ %46, %42 ]
  %49 = tail call i32 %48(ptr noundef nonnull %0, i8 noundef zeroext %1) #10
  br label %50

50:                                               ; preds = %47, %15, %12, %4, %2
  %51 = phi i32 [ -22, %2 ], [ -22, %4 ], [ %49, %47 ], [ -22, %15 ], [ -22, %12 ]
  ret i32 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @cpu_notifier(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readnone %2) #1 {
  switch i32 %1, label %50 [
    i32 3, label %4
    i32 5, label %27
  ]

4:                                                ; preds = %3
  %5 = load i32, ptr @enable_off_mode, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %50, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr @pwrdm_list, align 4
  %9 = icmp eq ptr %8, @pwrdm_list
  br i1 %9, label %50, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr @arch_pwrdm, align 4
  br label %12

12:                                               ; preds = %23, %10
  %13 = phi ptr [ %24, %23 ], [ %11, %10 ]
  %14 = phi ptr [ %25, %23 ], [ %8, %10 ]
  %15 = getelementptr i8, ptr %14, i32 -72
  %16 = icmp eq ptr %13, null
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct.pwrdm_ops, ptr %13, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  tail call void %19(ptr noundef %15) #10
  %22 = load ptr, ptr @arch_pwrdm, align 4
  br label %23

23:                                               ; preds = %21, %17, %12
  %24 = phi ptr [ null, %12 ], [ %13, %17 ], [ %22, %21 ]
  %25 = load ptr, ptr %14, align 4
  %26 = icmp eq ptr %25, @pwrdm_list
  br i1 %26, label %50, label %12

27:                                               ; preds = %3
  %28 = load i32, ptr @enable_off_mode, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @pwrdm_list, align 4
  %32 = icmp eq ptr %31, @pwrdm_list
  br i1 %32, label %50, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr @arch_pwrdm, align 4
  br label %35

35:                                               ; preds = %46, %33
  %36 = phi ptr [ %47, %46 ], [ %34, %33 ]
  %37 = phi ptr [ %48, %46 ], [ %31, %33 ]
  %38 = getelementptr i8, ptr %37, i32 -72
  %39 = icmp eq ptr %36, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %struct.pwrdm_ops, ptr %36, i32 0, i32 20
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  tail call void %42(ptr noundef %38) #10
  %45 = load ptr, ptr @arch_pwrdm, align 4
  br label %46

46:                                               ; preds = %44, %40, %35
  %47 = phi ptr [ null, %35 ], [ %36, %40 ], [ %45, %44 ]
  %48 = load ptr, ptr %37, align 4
  %49 = icmp eq ptr %48, @pwrdm_list
  br i1 %49, label %50, label %35

50:                                               ; preds = %46, %30, %27, %23, %7, %4, %3
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwrdm_lock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 17
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 18
  store i32 %3, ptr %4, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwrdm_unlock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 17
  %3 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 18
  %4 = load i32, ptr %3, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %4) #10
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @pwrdm_lookup(ptr noundef readonly %0) local_unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %14, label %3

3:                                                ; preds = %7, %1
  %4 = phi ptr [ %5, %7 ], [ @pwrdm_list, %1 ]
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @pwrdm_list
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %5, i32 -72
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @strcmp(ptr noundef nonnull %0, ptr noundef %9) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %3

12:                                               ; preds = %7
  %13 = getelementptr i8, ptr %5, i32 -72
  br label %14

14:                                               ; preds = %12, %3, %1
  %15 = phi ptr [ null, %1 ], [ %13, %12 ], [ null, %3 ]
  ret ptr %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_for_each(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %6, %8 ], [ @pwrdm_list, %2 ]
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, @pwrdm_list
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr i8, ptr %6, i32 -72
  %10 = tail call i32 %0(ptr noundef %9, ptr noundef %1) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %4, label %12

12:                                               ; preds = %8, %4, %2
  %13 = phi i32 [ -22, %2 ], [ 0, %4 ], [ %10, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_add_clkdm(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %54

6:                                                ; preds = %2
  %7 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 0
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %51, label %10

10:                                               ; preds = %6
  %11 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %51, label %14

14:                                               ; preds = %10
  %15 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 3
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 4
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %51, label %26

26:                                               ; preds = %22
  %27 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %51, label %30

30:                                               ; preds = %26
  %31 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 6
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %51, label %34

34:                                               ; preds = %30
  %35 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %51, label %38

38:                                               ; preds = %34
  %39 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %38
  %43 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 9
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 10
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 490, i32 noundef 9, ptr noundef null) #10
  br label %54

51:                                               ; preds = %46, %42, %38, %34, %30, %26, %22, %18, %14, %10, %6
  %52 = phi i32 [ 0, %6 ], [ 1, %10 ], [ 2, %14 ], [ 3, %18 ], [ 4, %22 ], [ 5, %26 ], [ 6, %30 ], [ 7, %34 ], [ 8, %38 ], [ 9, %42 ], [ 10, %46 ]
  %53 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 10, i32 %52
  store ptr %1, ptr %53, align 4
  br label %54

54:                                               ; preds = %51, %50, %2
  %55 = phi i32 [ -22, %2 ], [ -12, %50 ], [ 0, %51 ]
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @pwrdm_get_mem_bank_count(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 6
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi i32 [ %6, %3 ], [ -22, %1 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_next_pwrst(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @arch_pwrdm, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pwrdm_ops, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef nonnull %0) #10
  br label %12

12:                                               ; preds = %10, %6, %3, %1
  %13 = phi i32 [ -22, %1 ], [ %11, %10 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_pwrst(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 2
  %6 = icmp eq i8 %5, 8
  br i1 %6, label %16, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @arch_pwrdm, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.pwrdm_ops, ptr %8, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = tail call i32 %12(ptr noundef nonnull %0) #10
  br label %16

16:                                               ; preds = %14, %10, %7, %3, %1
  %17 = phi i32 [ -22, %1 ], [ 3, %3 ], [ %15, %14 ], [ -22, %10 ], [ -22, %7 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_prev_pwrst(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @arch_pwrdm, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pwrdm_ops, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef nonnull %0) #10
  br label %12

12:                                               ; preds = %10, %6, %3, %1
  %13 = phi i32 [ -22, %1 ], [ %11, %10 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_set_logic_retst(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %21, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 1
  %7 = zext i8 %6 to i32
  %8 = zext i8 %1 to i32
  %9 = shl nuw i32 1, %8
  %10 = and i32 %9, %7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  %13 = load ptr, ptr @arch_pwrdm, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.pwrdm_ops, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 %17(ptr noundef nonnull %0, i8 noundef zeroext %1) #10
  br label %21

21:                                               ; preds = %19, %15, %12, %4, %2
  %22 = phi i32 [ -22, %2 ], [ -22, %4 ], [ %20, %19 ], [ -22, %15 ], [ -22, %12 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_set_mem_onst(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = icmp ugt i8 %7, %1
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = zext i8 %1 to i32
  %11 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 8, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = zext i8 %2 to i32
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr @arch_pwrdm, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.pwrdm_ops, ptr %19, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #10
  br label %27

27:                                               ; preds = %25, %21, %18, %9, %5, %3
  %28 = phi i32 [ -22, %3 ], [ -17, %5 ], [ -22, %9 ], [ %26, %25 ], [ -22, %21 ], [ -22, %18 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_set_mem_retst(ptr noundef %0, i8 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 6
  %7 = load i8, ptr %6, align 1
  %8 = icmp ugt i8 %7, %1
  br i1 %8, label %9, label %27

9:                                                ; preds = %5
  %10 = zext i8 %1 to i32
  %11 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 7, i32 %10
  %12 = load i8, ptr %11, align 1
  %13 = zext i8 %12 to i32
  %14 = zext i8 %2 to i32
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr @arch_pwrdm, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.pwrdm_ops, ptr %19, i32 0, i32 6
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef nonnull %0, i8 noundef zeroext %1, i8 noundef zeroext %2) #10
  br label %27

27:                                               ; preds = %25, %21, %18, %9, %5, %3
  %28 = phi i32 [ -22, %3 ], [ -17, %5 ], [ -22, %9 ], [ %26, %25 ], [ -22, %21 ], [ -22, %18 ]
  ret i32 %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_logic_pwrst(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @arch_pwrdm, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pwrdm_ops, ptr %4, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef nonnull %0) #10
  br label %12

12:                                               ; preds = %10, %6, %3, %1
  %13 = phi i32 [ -22, %1 ], [ %11, %10 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_prev_logic_pwrst(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @arch_pwrdm, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pwrdm_ops, ptr %4, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef nonnull %0) #10
  br label %12

12:                                               ; preds = %10, %6, %3, %1
  %13 = phi i32 [ -22, %1 ], [ %11, %10 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_logic_retst(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @arch_pwrdm, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pwrdm_ops, ptr %4, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef nonnull %0) #10
  br label %12

12:                                               ; preds = %10, %6, %3, %1
  %13 = phi i32 [ -22, %1 ], [ %11, %10 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_mem_pwrst(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = icmp ugt i8 %6, %1
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i8 %1, i8 1
  %14 = load ptr, ptr @arch_pwrdm, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.pwrdm_ops, ptr %14, i32 0, i32 10
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef nonnull %0, i8 noundef zeroext %13) #10
  br label %22

22:                                               ; preds = %20, %16, %8, %4, %2
  %23 = phi i32 [ -22, %2 ], [ -22, %4 ], [ %21, %20 ], [ -22, %16 ], [ -22, %8 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_prev_mem_pwrst(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %22, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = icmp ugt i8 %6, %1
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 5
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 2
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i8 %1, i8 1
  %14 = load ptr, ptr @arch_pwrdm, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.pwrdm_ops, ptr %14, i32 0, i32 11
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call i32 %18(ptr noundef nonnull %0, i8 noundef zeroext %13) #10
  br label %22

22:                                               ; preds = %20, %16, %8, %4, %2
  %23 = phi i32 [ -22, %2 ], [ -22, %4 ], [ %21, %20 ], [ -22, %16 ], [ -22, %8 ]
  ret i32 %23
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_read_mem_retst(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 6
  %6 = load i8, ptr %5, align 1
  %7 = icmp ugt i8 %6, %1
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load ptr, ptr @arch_pwrdm, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pwrdm_ops, ptr %9, i32 0, i32 12
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef nonnull %0, i8 noundef zeroext %1) #10
  br label %17

17:                                               ; preds = %15, %11, %8, %4, %2
  %18 = phi i32 [ -22, %2 ], [ -22, %4 ], [ %16, %15 ], [ -22, %11 ], [ -22, %8 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_clear_all_prev_pwrst(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @arch_pwrdm, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.pwrdm_ops, ptr %4, i32 0, i32 13
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = tail call i32 %8(ptr noundef nonnull %0) #10
  br label %12

12:                                               ; preds = %10, %6, %3, %1
  %13 = phi i32 [ -22, %1 ], [ %11, %10 ], [ -22, %6 ], [ -22, %3 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_enable_hdwr_sar(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @arch_pwrdm, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pwrdm_ops, ptr %9, i32 0, i32 14
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef nonnull %0) #10
  br label %17

17:                                               ; preds = %15, %11, %8, %3, %1
  %18 = phi i32 [ -22, %1 ], [ -22, %3 ], [ %16, %15 ], [ -22, %11 ], [ -22, %8 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_disable_hdwr_sar(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @arch_pwrdm, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pwrdm_ops, ptr %9, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef nonnull %0) #10
  br label %17

17:                                               ; preds = %15, %11, %8, %3, %1
  %18 = phi i32 [ -22, %1 ], [ -22, %3 ], [ %16, %15 ], [ -22, %11 ], [ -22, %8 ]
  ret i32 %18
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @pwrdm_has_hdwr_sar(ptr noundef readonly %0) local_unnamed_addr #4 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 5
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp ne i8 %6, 0
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi i1 [ false, %1 ], [ %7, %3 ]
  ret i1 %9
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_state_switch_nolock(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp ne ptr %0, null
  %3 = load ptr, ptr @arch_pwrdm, align 4
  %4 = icmp ne ptr %3, null
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %34

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pwrdm_ops, ptr %3, i32 0, i32 17
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 %8(ptr noundef nonnull %0) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %34

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 2
  %14 = icmp eq i8 %13, 8
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr @arch_pwrdm, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.pwrdm_ops, ptr %16, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = tail call i32 %20(ptr noundef nonnull %0) #10
  br label %24

24:                                               ; preds = %22, %18, %15, %11
  %25 = phi i32 [ 3, %11 ], [ %23, %22 ], [ -22, %18 ], [ -22, %15 ]
  %26 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 13
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 14, i32 %25
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, 1
  store i32 %32, ptr %30, align 4
  br label %33

33:                                               ; preds = %29, %24
  store i32 %25, ptr %26, align 4
  br label %34

34:                                               ; preds = %33, %6, %1
  %35 = phi i32 [ -22, %1 ], [ %9, %6 ], [ 0, %33 ]
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_state_switch(ptr noundef %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 17
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #10
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 18
  store i32 %3, ptr %4, align 4
  %5 = icmp ne ptr %0, null
  %6 = load ptr, ptr @arch_pwrdm, align 4
  %7 = icmp ne ptr %6, null
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %37

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pwrdm_ops, ptr %6, i32 0, i32 17
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 %11(ptr noundef nonnull %0) #10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %16 = load i8, ptr %15, align 2
  %17 = icmp eq i8 %16, 8
  br i1 %17, label %27, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr @arch_pwrdm, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.pwrdm_ops, ptr %19, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef nonnull %0) #10
  br label %27

27:                                               ; preds = %25, %21, %18, %14
  %28 = phi i32 [ 3, %14 ], [ %26, %25 ], [ -22, %21 ], [ -22, %18 ]
  %29 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 13
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 14, i32 %28
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  br label %36

36:                                               ; preds = %32, %27
  store i32 %28, ptr %29, align 4
  br label %37

37:                                               ; preds = %36, %9, %1
  %38 = phi i32 [ -22, %1 ], [ %12, %9 ], [ 0, %36 ]
  %39 = load i32, ptr %4, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %39) #10
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_pre_transition(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %6

3:                                                ; preds = %1
  %4 = load ptr, ptr @pwrdm_list, align 4
  %5 = icmp eq ptr %4, @pwrdm_list
  br i1 %5, label %77, label %38

6:                                                ; preds = %1
  %7 = load ptr, ptr @arch_pwrdm, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.pwrdm_ops, ptr %7, i32 0, i32 13
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %9
  %14 = tail call i32 %11(ptr noundef nonnull %0) #10
  br label %15

15:                                               ; preds = %13, %9, %6
  %16 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %17 = load i8, ptr %16, align 2
  %18 = icmp eq i8 %17, 8
  br i1 %18, label %28, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @arch_pwrdm, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.pwrdm_ops, ptr %20, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call i32 %24(ptr noundef nonnull %0) #10
  br label %28

28:                                               ; preds = %26, %22, %19, %15
  %29 = phi i32 [ 3, %15 ], [ %27, %26 ], [ -22, %22 ], [ -22, %19 ]
  %30 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 14, i32 %29
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %28
  store i32 %29, ptr %30, align 4
  br label %77

38:                                               ; preds = %74, %3
  %39 = phi ptr [ %75, %74 ], [ %4, %3 ]
  %40 = getelementptr i8, ptr %39, i32 -72
  %41 = icmp eq ptr %40, null
  br i1 %41, label %74, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr @arch_pwrdm, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.pwrdm_ops, ptr %43, i32 0, i32 13
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  %50 = tail call i32 %47(ptr noundef nonnull %40) #10
  br label %51

51:                                               ; preds = %49, %45, %42
  %52 = getelementptr i8, ptr %39, i32 -62
  %53 = load i8, ptr %52, align 2
  %54 = icmp eq i8 %53, 8
  br i1 %54, label %64, label %55

55:                                               ; preds = %51
  %56 = load ptr, ptr @arch_pwrdm, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.pwrdm_ops, ptr %56, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = icmp eq ptr %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %58
  %63 = tail call i32 %60(ptr noundef nonnull %40) #10
  br label %64

64:                                               ; preds = %62, %58, %55, %51
  %65 = phi i32 [ 3, %51 ], [ %63, %62 ], [ -22, %58 ], [ -22, %55 ]
  %66 = getelementptr i8, ptr %39, i32 16
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = getelementptr %struct.powerdomain, ptr %40, i32 0, i32 14, i32 %65
  %71 = load i32, ptr %70, align 4
  %72 = add i32 %71, 1
  store i32 %72, ptr %70, align 4
  br label %73

73:                                               ; preds = %69, %64
  store i32 %65, ptr %66, align 4
  br label %74

74:                                               ; preds = %73, %38
  %75 = load ptr, ptr %39, align 4
  %76 = icmp eq ptr %75, @pwrdm_list
  br i1 %76, label %77, label %38

77:                                               ; preds = %74, %37, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_post_transition(ptr noundef %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = tail call fastcc i32 @_pwrdm_post_transition_cb(ptr noundef nonnull %0, ptr noundef null)
  br label %13

5:                                                ; preds = %9, %1
  %6 = phi ptr [ %7, %9 ], [ @pwrdm_list, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, @pwrdm_list
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr i8, ptr %7, i32 -72
  %11 = tail call fastcc i32 @_pwrdm_post_transition_cb(ptr noundef %10, ptr noundef null) #10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %5, label %13

13:                                               ; preds = %9, %5, %3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @_pwrdm_post_transition_cb(ptr noundef %0, ptr nocapture noundef readnone %1) unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %148, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 8
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @arch_pwrdm, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %27, label %11

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct.pwrdm_ops, ptr %9, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = tail call i32 %13(ptr noundef nonnull %0) #10
  br label %17

17:                                               ; preds = %15, %11, %4
  %18 = phi i32 [ -22, %11 ], [ %16, %15 ], [ 3, %4 ]
  %19 = load ptr, ptr @arch_pwrdm, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.pwrdm_ops, ptr %19, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = tail call i32 %23(ptr noundef nonnull %0) #10
  br label %27

27:                                               ; preds = %25, %21, %17, %8
  %28 = phi i32 [ %18, %25 ], [ %18, %21 ], [ %18, %17 ], [ -22, %8 ]
  %29 = phi i32 [ %26, %25 ], [ -22, %21 ], [ -22, %17 ], [ -22, %8 ]
  %30 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 13
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %29
  br i1 %32, label %37, label %33

33:                                               ; preds = %27
  %34 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 14, i32 %29
  %35 = load i32, ptr %34, align 4
  %36 = add i32 %35, 1
  store i32 %36, ptr %34, align 4
  br label %37

37:                                               ; preds = %33, %27
  %38 = icmp eq i32 %29, 1
  br i1 %38, label %39, label %97

39:                                               ; preds = %37
  %40 = load ptr, ptr @arch_pwrdm, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %58, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.pwrdm_ops, ptr %40, i32 0, i32 8
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %58, label %46

46:                                               ; preds = %42
  %47 = tail call i32 %44(ptr noundef nonnull %0) #10
  %48 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = icmp eq i8 %49, 3
  %51 = and i32 %47, 255
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %58

54:                                               ; preds = %46
  %55 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 15
  %56 = load i32, ptr %55, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %55, align 4
  br label %58

58:                                               ; preds = %54, %46, %42, %39
  %59 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 6
  %60 = load i8, ptr %59, align 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %97, label %62

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 5
  br label %64

64:                                               ; preds = %92, %62
  %65 = phi i8 [ %60, %62 ], [ %94, %92 ]
  %66 = phi i32 [ 0, %62 ], [ %93, %92 ]
  %67 = trunc i32 %66 to i8
  %68 = icmp ugt i8 %65, %67
  br i1 %68, label %69, label %92

69:                                               ; preds = %64
  %70 = load i8, ptr %63, align 4
  %71 = and i8 %70, 2
  %72 = icmp eq i8 %71, 0
  %73 = select i1 %72, i8 %67, i8 1
  %74 = load ptr, ptr @arch_pwrdm, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %92, label %76

76:                                               ; preds = %69
  %77 = getelementptr inbounds %struct.pwrdm_ops, ptr %74, i32 0, i32 11
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %92, label %80

80:                                               ; preds = %76
  %81 = tail call i32 %78(ptr noundef nonnull %0, i8 noundef zeroext %73) #10
  %82 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 7, i32 %66
  %83 = load i8, ptr %82, align 1
  %84 = icmp eq i8 %83, 3
  %85 = and i32 %81, 255
  %86 = icmp eq i32 %85, 0
  %87 = select i1 %84, i1 %86, i1 false
  br i1 %87, label %88, label %92

88:                                               ; preds = %80
  %89 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 16, i32 %66
  %90 = load i32, ptr %89, align 4
  %91 = add i32 %90, 1
  store i32 %91, ptr %89, align 4
  br label %92

92:                                               ; preds = %88, %80, %76, %69, %64
  %93 = add nuw nsw i32 %66, 1
  %94 = load i8, ptr %59, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %64, label %97

97:                                               ; preds = %92, %58, %37
  %98 = load ptr, ptr @arch_pwrdm, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.pwrdm_ops, ptr %98, i32 0, i32 1
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, null
  br i1 %103, label %106, label %104

104:                                              ; preds = %100
  %105 = tail call i32 %102(ptr noundef nonnull %0) #10
  br label %106

106:                                              ; preds = %104, %100, %97
  %107 = phi i32 [ %105, %104 ], [ -22, %100 ], [ -22, %97 ]
  %108 = icmp eq i32 %107, %29
  br i1 %108, label %141, label %109

109:                                              ; preds = %106
  %110 = shl i32 %107, 8
  %111 = and i32 %110, 768
  %112 = and i32 %29, 3
  %113 = or i32 %112, %111
  %114 = or i32 %113, -2147483648
  %115 = load ptr, ptr %0, align 4
  %116 = tail call ptr @llvm.thread.pointer() #10
  %117 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 2
  %118 = load i32, ptr %117, align 8
  %119 = load volatile i32, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_power_domain_target, i32 0, i32 1), align 4
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %141

121:                                              ; preds = %109
  %122 = lshr i32 %118, 5
  %123 = getelementptr i32, ptr @__cpu_online_mask, i32 %122
  %124 = load volatile i32, ptr %123, align 4
  %125 = and i32 %118, 31
  %126 = shl nuw i32 1, %125
  %127 = and i32 %124, %126
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %141, label %129

129:                                              ; preds = %121
  %130 = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %131 = load volatile i32, ptr %130, align 4
  %132 = and i32 %131, 15728640
  %133 = icmp ne i32 %132, 0
  %134 = load i1, ptr @trace_power_domain_target_rcuidle.__already_done, align 1
  %135 = xor i1 %134, true
  %136 = select i1 %133, i1 %135, i1 false
  br i1 %136, label %137, label %138, !prof !8

137:                                              ; preds = %129
  store i1 true, ptr @trace_power_domain_target_rcuidle.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 359, i32 noundef 9, ptr noundef null) #10
  br label %138

138:                                              ; preds = %137, %129
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !9
  %139 = tail call i32 @__srcu_read_lock(ptr noundef nonnull @tracepoint_srcu) #10
  tail call void @rcu_irq_enter_irqson() #10
  %140 = tail call i32 @__traceiter_power_domain_target(ptr noundef null, ptr noundef %115, i32 noundef %114, i32 noundef %118) #10
  tail call void @rcu_irq_exit_irqson() #10
  tail call void @__srcu_read_unlock(ptr noundef nonnull @tracepoint_srcu, i32 noundef %139) #10
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !10
  br label %141

141:                                              ; preds = %138, %121, %109, %106
  %142 = icmp eq i32 %28, %29
  br i1 %142, label %147, label %143

143:                                              ; preds = %141
  %144 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 14, i32 %28
  %145 = load i32, ptr %144, align 4
  %146 = add i32 %145, 1
  store i32 %146, ptr %144, align 4
  br label %147

147:                                              ; preds = %143, %141
  store i32 %28, ptr %30, align 4
  br label %148

148:                                              ; preds = %147, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @pwrdm_get_valid_lp_state(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, i8 noundef zeroext %2) local_unnamed_addr #1 {
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 4
  %6 = select i1 %1, i32 1, i32 3
  %7 = select i1 %1, ptr %5, ptr %4
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = zext i8 %2 to i32
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %76

14:                                               ; preds = %3
  %15 = icmp eq i8 %2, 0
  br i1 %15, label %24, label %16

16:                                               ; preds = %22, %14
  %17 = phi i32 [ %18, %22 ], [ %10, %14 ]
  %18 = add nsw i32 %17, -1
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %74

22:                                               ; preds = %16
  %23 = icmp eq i32 %18, 0
  br i1 %23, label %24, label %16

24:                                               ; preds = %22, %14
  %25 = add i8 %2, 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %9
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %76

30:                                               ; preds = %24
  %31 = icmp ugt i8 %25, 3
  br i1 %31, label %32, label %34

32:                                               ; preds = %66, %62, %52, %42, %30
  %33 = load ptr, ptr %0, align 4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1083, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %33) #10
  br label %76

34:                                               ; preds = %30
  %35 = icmp eq i32 %6, %26
  br i1 %35, label %76, label %36

36:                                               ; preds = %34
  %37 = add i8 %2, 2
  %38 = zext i8 %37 to i32
  %39 = shl nuw i32 1, %38
  %40 = and i32 %39, %9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %76

42:                                               ; preds = %36
  %43 = icmp ugt i8 %37, 3
  br i1 %43, label %32, label %44

44:                                               ; preds = %42
  %45 = icmp eq i32 %6, %38
  br i1 %45, label %76, label %46

46:                                               ; preds = %44
  %47 = add i8 %2, 3
  %48 = zext i8 %47 to i32
  %49 = shl nuw i32 1, %48
  %50 = and i32 %49, %9
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %46
  %53 = icmp ugt i8 %47, 3
  br i1 %53, label %32, label %54

54:                                               ; preds = %52
  %55 = icmp eq i32 %6, %48
  br i1 %55, label %76, label %56

56:                                               ; preds = %54
  %57 = add i8 %2, 4
  %58 = zext i8 %57 to i32
  %59 = shl nuw i32 1, %58
  %60 = and i32 %59, %9
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = icmp ult i8 %2, -4
  br i1 %63, label %32, label %64

64:                                               ; preds = %62
  %65 = icmp eq i32 %6, %58
  br i1 %65, label %76, label %66

66:                                               ; preds = %64
  %67 = add i8 %2, 5
  %68 = zext i8 %67 to i32
  %69 = shl nuw i32 1, %68
  %70 = and i32 %69, %9
  %71 = icmp eq i32 %70, 0
  %72 = icmp ugt i8 %67, 3
  %73 = and i1 %71, %72
  br i1 %73, label %32, label %76

74:                                               ; preds = %16
  %75 = trunc i32 %18 to i8
  br label %76

76:                                               ; preds = %74, %66, %64, %56, %54, %46, %44, %36, %34, %32, %24, %3
  %77 = phi i8 [ 3, %32 ], [ %2, %3 ], [ %75, %74 ], [ %25, %24 ], [ %25, %34 ], [ %37, %36 ], [ %37, %44 ], [ %47, %46 ], [ %47, %54 ], [ %57, %56 ], [ %57, %64 ], [ %67, %66 ]
  ret i8 %77
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @omap_set_pwrdm_state(ptr noundef %0, i8 noundef zeroext %1) local_unnamed_addr #1 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %135, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %8 = load i8, ptr %7, align 2
  %9 = zext i8 %8 to i32
  %10 = zext i8 %1 to i32
  %11 = shl nuw i32 1, %10
  %12 = and i32 %11, %9
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %25

14:                                               ; preds = %17, %6
  %15 = phi i32 [ %24, %17 ], [ %10, %6 ]
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %135, label %17

17:                                               ; preds = %14
  %18 = trunc i32 %15 to i8
  %19 = add i8 %18, -1
  %20 = zext i8 %19 to i32
  %21 = shl nuw i32 1, %20
  %22 = and i32 %21, %9
  %23 = icmp eq i32 %22, 0
  %24 = add nsw i32 %15, -1
  br i1 %23, label %14, label %25

25:                                               ; preds = %17, %6
  %26 = phi i8 [ %1, %6 ], [ %19, %17 ]
  %27 = phi i32 [ %10, %6 ], [ %20, %17 ]
  %28 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 17
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #10
  %30 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 18
  store i32 %29, ptr %30, align 4
  %31 = load i8, ptr %7, align 2
  %32 = icmp eq i8 %31, 8
  br i1 %32, label %43, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr @arch_pwrdm, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %132, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.pwrdm_ops, ptr %34, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %132, label %40

40:                                               ; preds = %36
  %41 = tail call i32 %38(ptr noundef nonnull %0) #10
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %132, label %43

43:                                               ; preds = %40, %25
  %44 = phi i32 [ %41, %40 ], [ 3, %25 ]
  %45 = load ptr, ptr @arch_pwrdm, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.pwrdm_ops, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = tail call i32 %49(ptr noundef nonnull %0) #10
  %53 = and i32 %52, 255
  br label %54

54:                                               ; preds = %51, %47, %43
  %55 = phi i32 [ %53, %51 ], [ 234, %47 ], [ 234, %43 ]
  %56 = icmp eq i32 %44, %27
  %57 = icmp eq i32 %55, %27
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %132, label %59

59:                                               ; preds = %54
  %60 = trunc i32 %44 to i8
  %61 = icmp ult i8 %60, 3
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = icmp ult i8 %26, %60
  br i1 %63, label %64, label %74

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 5
  %66 = load i8, ptr %65, align 4
  %67 = and i8 %66, 4
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %64
  %70 = load ptr, ptr @arch_pwrdm, align 4
  %71 = getelementptr inbounds %struct.pwrdm_ops, ptr %70, i32 0, i32 16
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %69, %64, %62
  %75 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 10
  %76 = load ptr, ptr %75, align 4
  tail call void @clkdm_deny_idle_nolock(ptr noundef %76) #10
  br label %77

77:                                               ; preds = %74, %69, %59
  %78 = phi i2 [ 1, %74 ], [ -2, %69 ], [ 0, %59 ]
  %79 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef nonnull %0, i8 noundef zeroext %26)
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load ptr, ptr %0, align 4
  %83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.omap_set_pwrdm_state, ptr noundef %82) #11
  br label %84

84:                                               ; preds = %81, %77
  switch i2 %78, label %132 [
    i2 1, label %85
    i2 -2, label %88
  ]

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 10
  %87 = load ptr, ptr %86, align 4
  tail call void @clkdm_allow_idle_nolock(ptr noundef %87) #10
  br label %132

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 5
  %90 = load i8, ptr %89, align 4
  %91 = and i8 %90, 4
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = load ptr, ptr @arch_pwrdm, align 4
  %95 = getelementptr inbounds %struct.pwrdm_ops, ptr %94, i32 0, i32 16
  %96 = load ptr, ptr %95, align 4
  %97 = icmp eq ptr %96, null
  br i1 %97, label %102, label %98

98:                                               ; preds = %93
  %99 = tail call i32 %96(ptr noundef %0) #10
  br label %100

100:                                              ; preds = %98, %88
  %101 = load ptr, ptr @arch_pwrdm, align 4
  br label %102

102:                                              ; preds = %100, %93
  %103 = phi ptr [ %101, %100 ], [ %94, %93 ]
  %104 = icmp eq ptr %103, null
  br i1 %104, label %132, label %105

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.pwrdm_ops, ptr %103, i32 0, i32 17
  %107 = load ptr, ptr %106, align 4
  %108 = tail call i32 %107(ptr noundef nonnull %0) #10
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %132

110:                                              ; preds = %105
  %111 = load i8, ptr %7, align 2
  %112 = icmp eq i8 %111, 8
  br i1 %112, label %122, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr @arch_pwrdm, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %122, label %116

116:                                              ; preds = %113
  %117 = getelementptr inbounds %struct.pwrdm_ops, ptr %114, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %122, label %120

120:                                              ; preds = %116
  %121 = tail call i32 %118(ptr noundef nonnull %0) #10
  br label %122

122:                                              ; preds = %120, %116, %113, %110
  %123 = phi i32 [ 3, %110 ], [ %121, %120 ], [ -22, %116 ], [ -22, %113 ]
  %124 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 13
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %123, %125
  br i1 %126, label %131, label %127

127:                                              ; preds = %122
  %128 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 14, i32 %123
  %129 = load i32, ptr %128, align 4
  %130 = add i32 %129, 1
  store i32 %130, ptr %128, align 4
  br label %131

131:                                              ; preds = %127, %122
  store i32 %123, ptr %124, align 4
  br label %132

132:                                              ; preds = %131, %105, %102, %85, %84, %54, %40, %36, %33
  %133 = phi i32 [ -22, %40 ], [ 0, %54 ], [ %79, %84 ], [ %79, %85 ], [ %79, %102 ], [ %79, %105 ], [ %79, %131 ], [ -22, %36 ], [ -22, %33 ]
  %134 = load i32, ptr %30, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %134) #10
  br label %135

135:                                              ; preds = %132, %14, %2
  %136 = phi i32 [ %133, %132 ], [ -22, %2 ], [ 0, %14 ]
  ret i32 %136
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pwrdm_get_context_loss_count(ptr noundef readonly %0) local_unnamed_addr #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 1164, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.pwrdm_get_context_loss_count) #10
  br label %25

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 14
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 15
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 6
  %11 = load i8, ptr %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %11, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %14, %4
  %15 = phi i32 [ %20, %14 ], [ 0, %4 ]
  %16 = phi i32 [ %19, %14 ], [ %9, %4 ]
  %17 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 16, i32 %15
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, %16
  %20 = add nuw nsw i32 %15, 1
  %21 = icmp eq i32 %20, %12
  br i1 %21, label %22, label %14

22:                                               ; preds = %14, %4
  %23 = phi i32 [ %9, %4 ], [ %19, %14 ]
  %24 = and i32 %23, 2147483647
  br label %25

25:                                               ; preds = %22, %3
  %26 = phi i32 [ %24, %22 ], [ -19, %3 ]
  ret i32 %26
}

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @pwrdm_can_ever_lose_context(ptr noundef readonly %0) local_unnamed_addr #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %50, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 3
  %5 = load i8, ptr %4, align 2
  %6 = zext i8 %5 to i32
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %50

9:                                                ; preds = %3
  %10 = and i32 %6, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 6
  %14 = load i8, ptr %13, align 1
  br label %34

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = and i8 %17, 1
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.powerdomain, ptr %0, i32 0, i32 6
  %22 = load i8, ptr %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i8 %22, 0
  br i1 %24, label %50, label %28

25:                                               ; preds = %28
  %26 = add nuw nsw i32 %29, 1
  %27 = icmp eq i32 %26, %23
  br i1 %27, label %34, label %28

28:                                               ; preds = %25, %20
  %29 = phi i32 [ %26, %25 ], [ 0, %20 ]
  %30 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 7, i32 %29
  %31 = load i8, ptr %30, align 1
  %32 = and i8 %31, 1
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %25, label %50

34:                                               ; preds = %25, %12
  %35 = phi i8 [ %14, %12 ], [ %22, %25 ]
  %36 = zext i8 %35 to i32
  %37 = icmp eq i8 %35, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %38, %34
  %39 = phi i32 [ %45, %38 ], [ 0, %34 ]
  %40 = getelementptr %struct.powerdomain, ptr %0, i32 0, i32 8, i32 %39
  %41 = load i8, ptr %40, align 1
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  %44 = xor i1 %43, true
  %45 = add nuw nsw i32 %39, 1
  %46 = icmp eq i32 %45, %36
  %47 = select i1 %44, i1 true, i1 %46
  br i1 %47, label %48, label %38

48:                                               ; preds = %38
  %49 = xor i1 %43, true
  br label %50

50:                                               ; preds = %48, %34, %28, %20, %15, %3, %1
  %51 = phi i1 [ true, %1 ], [ true, %3 ], [ true, %15 ], [ false, %34 ], [ %49, %48 ], [ false, %20 ], [ true, %28 ]
  ret i1 %51
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwrdms_save_context() local_unnamed_addr #1 {
  %1 = load ptr, ptr @pwrdm_list, align 4
  %2 = icmp eq ptr %1, @pwrdm_list
  br i1 %2, label %20, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @arch_pwrdm, align 4
  br label %5

5:                                                ; preds = %16, %3
  %6 = phi ptr [ %17, %16 ], [ %4, %3 ]
  %7 = phi ptr [ %18, %16 ], [ %1, %3 ]
  %8 = getelementptr i8, ptr %7, i32 -72
  %9 = icmp eq ptr %6, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pwrdm_ops, ptr %6, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %8) #10
  %15 = load ptr, ptr @arch_pwrdm, align 4
  br label %16

16:                                               ; preds = %14, %10, %5
  %17 = phi ptr [ null, %5 ], [ %6, %10 ], [ %15, %14 ]
  %18 = load ptr, ptr %7, align 4
  %19 = icmp eq ptr %18, @pwrdm_list
  br i1 %19, label %20, label %5

20:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwrdms_restore_context() local_unnamed_addr #1 {
  %1 = load ptr, ptr @pwrdm_list, align 4
  %2 = icmp eq ptr %1, @pwrdm_list
  br i1 %2, label %20, label %3

3:                                                ; preds = %0
  %4 = load ptr, ptr @arch_pwrdm, align 4
  br label %5

5:                                                ; preds = %16, %3
  %6 = phi ptr [ %17, %16 ], [ %4, %3 ]
  %7 = phi ptr [ %18, %16 ], [ %1, %3 ]
  %8 = getelementptr i8, ptr %7, i32 -72
  %9 = icmp eq ptr %6, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.pwrdm_ops, ptr %6, i32 0, i32 20
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  tail call void %12(ptr noundef %8) #10
  %15 = load ptr, ptr @arch_pwrdm, align 4
  br label %16

16:                                               ; preds = %14, %10, %5
  %17 = phi ptr [ null, %5 ], [ %6, %10 ], [ %15, %14 ]
  %18 = load ptr, ptr %7, align 4
  %19 = icmp eq ptr %18, @pwrdm_list
  br i1 %19, label %20, label %5

20:                                               ; preds = %16, %0
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pwrdms_lost_power() local_unnamed_addr #1 {
  %1 = load ptr, ptr @pwrdm_list, align 4
  %2 = icmp eq ptr %1, @pwrdm_list
  br i1 %2, label %34, label %3

3:                                                ; preds = %29, %0
  %4 = phi ptr [ %32, %29 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %3
  %8 = getelementptr i8, ptr %4, i32 -62
  %9 = load i8, ptr %8, align 2
  %10 = icmp eq i8 %9, 8
  br i1 %10, label %21, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr @arch_pwrdm, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.pwrdm_ops, ptr %12, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = tail call i32 %16(ptr noundef nonnull %5) #10
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18, %14, %11, %7, %3
  %22 = phi i32 [ %19, %18 ], [ -22, %11 ], [ -22, %14 ], [ 3, %7 ], [ -22, %3 ]
  %23 = getelementptr i8, ptr %4, i32 20
  %24 = getelementptr %struct.powerdomain, ptr %5, i32 0, i32 14, i32 %22
  %25 = load i32, ptr %24, align 4
  %26 = add i32 %25, 1
  store i32 %26, ptr %24, align 4
  %27 = load i32, ptr %23, align 4
  %28 = add i32 %27, 1
  store i32 %28, ptr %23, align 4
  br label %29

29:                                               ; preds = %21, %18
  %30 = phi i32 [ %22, %21 ], [ 0, %18 ]
  %31 = getelementptr i8, ptr %4, i32 16
  store i32 %30, ptr %31, align 4
  %32 = load ptr, ptr %4, align 4
  %33 = icmp eq ptr %32, @pwrdm_list
  br i1 %33, label %34, label %3

34:                                               ; preds = %29, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @voltdm_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_enter_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__traceiter_power_domain_target(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_irq_exit_irqson() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__srcu_read_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__srcu_read_unlock(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_deny_idle_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clkdm_allow_idle_nolock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn writeonly }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 2154070331}
!10 = !{i64 2154070519}
