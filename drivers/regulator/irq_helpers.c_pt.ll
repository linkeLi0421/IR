; ModuleID = '/llk/IR/drivers/regulator/irq_helpers.c_pt.bc'
source_filename = "../drivers/regulator/irq_helpers.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_irq_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_irq_helper\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_irq_helper:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_irq_helper_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_irq_helper_cancel\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_irq_helper_cancel:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regulator_irq_map_event_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22regulator_irq_map_event_simple\22\09\09\09\09\09"
module asm "__kstrtabns_regulator_irq_map_event_simple:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.regulator_irq_desc = type { ptr, i32, i32, i32, i8, i8, ptr, ptr, ptr, ptr }
%struct.regulator_irq = type { %struct.regulator_irq_data, %struct.regulator_irq_desc, i32, i32, %struct.delayed_work }
%struct.regulator_irq_data = type { ptr, i32, ptr, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.regulator_err_state = type { ptr, i32, i32, i32 }
%struct.regulator_dev = type { ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.coupling_desc, %struct.blocking_notifier_head, %struct.ww_mutex, ptr, i32, ptr, %struct.device, ptr, ptr, ptr, ptr, %struct.delayed_work, ptr, ptr, ptr, i8, i64, i32, i8, %struct.spinlock }
%struct.coupling_desc = type { ptr, ptr, i32, i32 }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.regulator_desc = type { ptr, ptr, ptr, i8, ptr, ptr, i32, i8, i32, i32, ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, ptr }
%struct.regulator_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@.str = private unnamed_addr constant [26 x i8] c"Failed to request IRQ %d\0A\00", align 1
@__kstrtab_regulator_irq_helper = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_irq_helper = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_irq_helper = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_irq_helper to i32), ptr @__kstrtab_regulator_irq_helper, ptr @__kstrtabns_regulator_irq_helper }, section "___ksymtab_gpl+regulator_irq_helper", align 4
@__kstrtab_regulator_irq_helper_cancel = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_irq_helper_cancel = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_irq_helper_cancel = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_irq_helper_cancel to i32), ptr @__kstrtab_regulator_irq_helper_cancel, ptr @__kstrtabns_regulator_irq_helper_cancel }, section "___ksymtab_gpl+regulator_irq_helper_cancel", align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/regulator/irq_helpers.c\00", align 1
@__kstrtab_regulator_irq_map_event_simple = external dso_local constant [0 x i8], align 1
@__kstrtabns_regulator_irq_map_event_simple = external dso_local constant [0 x i8], align 1
@__ksymtab_regulator_irq_map_event_simple = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regulator_irq_map_event_simple to i32), ptr @__kstrtab_regulator_irq_map_event_simple, ptr @__kstrtabns_regulator_irq_map_event_simple }, section "___ksymtab_gpl+regulator_irq_map_event_simple", align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Regulator HW failure? - no IC recovery\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Regulator HW failure. IC recovery failed\00", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@system_highpri_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"Regulator failure. Retry count exceeded\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"Regulator failure. Recovery failed\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_regulator_irq_helper, ptr @__ksymtab_regulator_irq_helper_cancel, ptr @__ksymtab_regulator_irq_map_event_simple], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @regulator_irq_helper(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5, ptr nocapture noundef readonly %6, i32 noundef %7) #0 {
  %9 = icmp ne i32 %7, 0
  %10 = icmp ne ptr %1, null
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %99

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.regulator_irq_desc, ptr %1, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %99, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %1, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %99, label %19

19:                                               ; preds = %16
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 104, i32 noundef 3520) #5
  %21 = icmp eq ptr %20, null
  br i1 %21, label %99, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.regulator_irq, ptr %20, i32 0, i32 2
  store i32 %2, ptr %23, align 4
  %24 = getelementptr inbounds %struct.regulator_irq, ptr %20, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(36) %24, ptr noundef nonnull align 4 dereferenceable(36) %1, i32 36, i1 false)
  %25 = shl i32 %7, 4
  %26 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef %25, i32 noundef 3520) #5
  store ptr %26, ptr %20, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %99, label %28

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.regulator_irq_data, ptr %20, i32 0, i32 1
  store i32 %7, ptr %29, align 4
  %30 = getelementptr inbounds %struct.regulator_irq, ptr %20, i32 0, i32 1, i32 6
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.regulator_irq_data, ptr %20, i32 0, i32 2
  store ptr %31, ptr %32, align 4
  %33 = icmp sgt i32 %7, 0
  br i1 %33, label %34, label %81

34:                                               ; preds = %55, %28
  %35 = phi ptr [ %57, %55 ], [ %26, %28 ]
  %36 = phi i32 [ %53, %55 ], [ 0, %28 ]
  %37 = phi ptr [ %49, %55 ], [ %5, %28 ]
  %38 = phi ptr [ %56, %55 ], [ %6, %28 ]
  %39 = getelementptr %struct.regulator_err_state, ptr %35, i32 %36, i32 3
  store i32 %4, ptr %39, align 4
  %40 = icmp eq ptr %37, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = getelementptr i32, ptr %37, i32 1
  %43 = load i32, ptr %37, align 4
  %44 = load ptr, ptr %20, align 4
  %45 = getelementptr %struct.regulator_err_state, ptr %44, i32 %36, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, ptr %45, align 4
  br label %48

48:                                               ; preds = %41, %34
  %49 = phi ptr [ %42, %41 ], [ null, %34 ]
  %50 = load ptr, ptr %38, align 4
  %51 = load ptr, ptr %20, align 4
  %52 = getelementptr %struct.regulator_err_state, ptr %51, i32 %36
  store ptr %50, ptr %52, align 4
  %53 = add nuw nsw i32 %36, 1
  %54 = icmp eq i32 %53, %7
  br i1 %54, label %58, label %55

55:                                               ; preds = %48
  %56 = getelementptr ptr, ptr %38, i32 1
  %57 = load ptr, ptr %20, align 4
  br label %34

58:                                               ; preds = %48
  %59 = load i32, ptr %29, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %81

61:                                               ; preds = %58
  %62 = load ptr, ptr %20, align 4
  br label %63

63:                                               ; preds = %76, %61
  %64 = phi i32 [ %77, %76 ], [ %59, %61 ]
  %65 = phi ptr [ %78, %76 ], [ %62, %61 ]
  %66 = phi i32 [ %79, %76 ], [ 0, %61 ]
  %67 = getelementptr %struct.regulator_err_state, ptr %65, i32 %66, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %63
  %71 = getelementptr %struct.regulator_err_state, ptr %65, i32 %66
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.regulator_dev, ptr %72, i32 0, i32 25
  store i8 1, ptr %73, align 4
  %74 = load ptr, ptr %20, align 4
  %75 = load i32, ptr %29, align 4
  br label %76

76:                                               ; preds = %70, %63
  %77 = phi i32 [ %64, %63 ], [ %75, %70 ]
  %78 = phi ptr [ %65, %63 ], [ %74, %70 ]
  %79 = add nuw nsw i32 %66, 1
  %80 = icmp slt i32 %79, %77
  br i1 %80, label %63, label %81

81:                                               ; preds = %76, %58, %28
  %82 = getelementptr inbounds %struct.regulator_irq, ptr %20, i32 0, i32 1, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = getelementptr inbounds %struct.regulator_irq, ptr %20, i32 0, i32 4
  store i32 -32, ptr %86, align 4
  %87 = getelementptr inbounds %struct.regulator_irq, ptr %20, i32 0, i32 4, i32 0, i32 1
  store volatile ptr %87, ptr %87, align 4
  %88 = getelementptr inbounds %struct.regulator_irq, ptr %20, i32 0, i32 4, i32 0, i32 1, i32 1
  store ptr %87, ptr %88, align 4
  %89 = getelementptr inbounds %struct.regulator_irq, ptr %20, i32 0, i32 4, i32 0, i32 2
  store ptr @regulator_notifier_isr_work, ptr %89, align 4
  %90 = getelementptr inbounds %struct.regulator_irq, ptr %20, i32 0, i32 4, i32 1
  tail call void @init_timer_key(ptr noundef %90, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef null, ptr noundef null) #5
  br label %91

91:                                               ; preds = %85, %81
  %92 = load i32, ptr %23, align 4
  %93 = or i32 %3, 8192
  %94 = load ptr, ptr %24, align 4
  %95 = tail call i32 @request_threaded_irq(i32 noundef %92, ptr noundef null, ptr noundef nonnull @regulator_notifier_isr, i32 noundef %93, ptr noundef %94, ptr noundef nonnull %20) #5
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %2) #6
  %98 = inttoptr i32 %95 to ptr
  br label %99

99:                                               ; preds = %97, %91, %22, %19, %16, %12, %8
  %100 = phi ptr [ %98, %97 ], [ %20, %91 ], [ inttoptr (i32 -22 to ptr), %16 ], [ inttoptr (i32 -22 to ptr), %12 ], [ inttoptr (i32 -22 to ptr), %8 ], [ inttoptr (i32 -12 to ptr), %19 ], [ inttoptr (i32 -12 to ptr), %22 ]
  ret ptr %100
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @regulator_notifier_isr_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -60
  %3 = getelementptr i8, ptr %0, i32 -56
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -40
  %6 = getelementptr i8, ptr %0, i32 -4
  %7 = getelementptr i8, ptr %0, i32 -12
  %8 = getelementptr i8, ptr %0, i32 -36
  br label %9

9:                                                ; preds = %31, %1
  %10 = load i32, ptr %5, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr %6, align 4
  %14 = icmp sgt i32 %13, %10
  br i1 %14, label %15, label %24

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %0, i32 -20
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  tail call void @hw_protection_shutdown(ptr noundef nonnull @.str.2, i32 noundef 10000) #5
  br label %95

20:                                               ; preds = %15
  %21 = tail call i32 %17(ptr noundef %2) #5
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %79, label %23

23:                                               ; preds = %20
  tail call void @hw_protection_shutdown(ptr noundef nonnull @.str.3, i32 noundef 10000) #5
  br label %95

24:                                               ; preds = %12, %9
  %25 = load ptr, ptr %7, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %60, label %27

27:                                               ; preds = %24
  %28 = tail call i32 %25(ptr noundef %2) #5
  switch i32 %28, label %29 [
    i32 1, label %31
    i32 0, label %60
  ]

29:                                               ; preds = %27
  %30 = icmp sgt i32 %4, 0
  br i1 %30, label %36, label %55

31:                                               ; preds = %27
  %32 = load i32, ptr %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, ptr %6, align 4
  %34 = load i32, ptr %8, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %9, label %82

36:                                               ; preds = %36, %29
  %37 = phi i32 [ %53, %36 ], [ 0, %29 ]
  %38 = load ptr, ptr %2, align 4
  %39 = getelementptr %struct.regulator_err_state, ptr %38, i32 %37
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr %struct.regulator_err_state, ptr %38, i32 %37, i32 2
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr %struct.regulator_err_state, ptr %38, i32 %37, i32 3
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.regulator_dev, ptr %40, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %45) #5
  %46 = xor i32 %44, -1
  %47 = or i32 %42, %46
  %48 = getelementptr inbounds %struct.regulator_dev, ptr %40, i32 0, i32 24
  %49 = load i32, ptr %48, align 8
  %50 = and i32 %49, %47
  store i32 %50, ptr %48, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %51 = load i16, ptr %45, align 4
  %52 = add i16 %51, 1
  store i16 %52, ptr %45, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  %53 = add nuw nsw i32 %37, 1
  %54 = icmp eq i32 %53, %4
  br i1 %54, label %55, label %36

55:                                               ; preds = %36, %29
  %56 = load i32, ptr %6, align 4
  %57 = add i32 %56, 1
  store i32 %57, ptr %6, align 4
  %58 = getelementptr i8, ptr %0, i32 -32
  %59 = load i32, ptr %58, align 4
  br label %82

60:                                               ; preds = %27, %24
  %61 = icmp sgt i32 %4, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %62, %60
  %63 = phi i32 [ %76, %62 ], [ 0, %60 ]
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr %struct.regulator_err_state, ptr %64, i32 %63
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr %struct.regulator_err_state, ptr %64, i32 %63, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.regulator_dev, ptr %66, i32 0, i32 26
  tail call void @_raw_spin_lock(ptr noundef %69) #5
  %70 = xor i32 %68, -1
  %71 = getelementptr inbounds %struct.regulator_dev, ptr %66, i32 0, i32 24
  %72 = load i32, ptr %71, align 8
  %73 = and i32 %72, %70
  store i32 %73, ptr %71, align 8
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %74 = load i16, ptr %69, align 4
  %75 = add i16 %74, 1
  store i16 %75, ptr %69, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  %76 = add nuw nsw i32 %63, 1
  %77 = icmp eq i32 %76, %4
  br i1 %77, label %78, label %62

78:                                               ; preds = %62, %60
  store i32 0, ptr %6, align 4
  br label %79

79:                                               ; preds = %78, %20
  %80 = getelementptr i8, ptr %0, i32 -8
  %81 = load i32, ptr %80, align 4
  tail call void @enable_irq(i32 noundef %81) #5
  br label %95

82:                                               ; preds = %55, %31
  %83 = phi i32 [ %59, %55 ], [ %34, %31 ]
  %84 = getelementptr i8, ptr %0, i32 -27
  %85 = load i8, ptr %84, align 1, !range !12
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load ptr, ptr @system_wq, align 4
  %89 = tail call i32 @__msecs_to_jiffies(i32 noundef %83) #5
  %90 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %88, ptr noundef %0, i32 noundef %89) #5
  br label %95

91:                                               ; preds = %82
  %92 = load ptr, ptr @system_highpri_wq, align 4
  %93 = tail call i32 @__msecs_to_jiffies(i32 noundef %83) #5
  %94 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %92, ptr noundef %0, i32 noundef %93) #5
  br label %95

95:                                               ; preds = %91, %87, %79, %23, %19
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @regulator_notifier_isr(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #5
  store i32 0, ptr %3, align 4
  %4 = getelementptr inbounds %struct.regulator_irq_data, ptr %1, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 1, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = add i32 %11, 1
  store i32 %12, ptr %10, align 4
  br label %13

13:                                               ; preds = %9, %2
  %14 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 1, i32 8
  %15 = load ptr, ptr %14, align 4
  %16 = call i32 %15(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %3) #5
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %94, label %18, !prof !13

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 3
  store i32 0, ptr %19, align 4
  %20 = icmp eq i32 %16, 0
  %21 = load i32, ptr %3, align 4
  %22 = icmp ne i32 %21, 0
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %110

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 1, i32 4
  %26 = load i8, ptr %25, align 4, !range !12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %50, label %28

28:                                               ; preds = %24
  %29 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %5, i32 noundef 0) #5
  %30 = icmp slt i32 %29, %5
  br i1 %30, label %31, label %47

31:                                               ; preds = %43, %28
  %32 = phi i32 [ %45, %43 ], [ %29, %28 ]
  %33 = load ptr, ptr %1, align 4
  %34 = getelementptr %struct.regulator_err_state, ptr %33, i32 %32
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds %struct.regulator_desc, ptr %36, i32 0, i32 10
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.regulator_ops, ptr %38, i32 0, i32 16
  %40 = load ptr, ptr %39, align 4
  %41 = call i32 %40(ptr noundef %35) #5
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = add nsw i32 %32, 1
  %45 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %5, i32 noundef %44) #5
  %46 = icmp slt i32 %45, %5
  br i1 %46, label %31, label %47

47:                                               ; preds = %43, %31, %28
  %48 = phi i32 [ %29, %28 ], [ %32, %31 ], [ %45, %43 ]
  %49 = icmp eq i32 %48, %5
  br i1 %49, label %110, label %50

50:                                               ; preds = %47, %24
  %51 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 1, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  call void @disable_irq_nosync(i32 noundef %0) #5
  br label %55

55:                                               ; preds = %54, %50
  %56 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %5, i32 noundef 0) #5
  %57 = icmp slt i32 %56, %5
  br i1 %57, label %58, label %77

58:                                               ; preds = %58, %55
  %59 = phi i32 [ %75, %58 ], [ %56, %55 ]
  %60 = load ptr, ptr %1, align 4
  %61 = getelementptr %struct.regulator_err_state, ptr %60, i32 %59
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr %struct.regulator_err_state, ptr %60, i32 %59, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = call i32 @regulator_notifier_call_chain(ptr noundef %62, i32 noundef %64, ptr noundef null) #5
  %66 = getelementptr %struct.regulator_err_state, ptr %60, i32 %59, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 26
  call void @_raw_spin_lock(ptr noundef %68) #5
  %69 = getelementptr inbounds %struct.regulator_dev, ptr %62, i32 0, i32 24
  %70 = load i32, ptr %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, ptr %69, align 8
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !8
  %72 = load i16, ptr %68, align 4
  %73 = add i16 %72, 1
  store i16 %73, ptr %68, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !9
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !10
  call void asm sideeffect "", "~{memory}"() #5, !srcloc !11
  %74 = add nsw i32 %59, 1
  %75 = call i32 @_find_next_bit_le(ptr noundef nonnull %3, i32 noundef %5, i32 noundef %74) #5
  %76 = icmp slt i32 %75, %5
  br i1 %76, label %58, label %77

77:                                               ; preds = %58, %55
  %78 = load i32, ptr %51, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %77
  %81 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 1, i32 5
  %82 = load i8, ptr %81, align 1, !range !12
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 4
  %86 = call i32 @__msecs_to_jiffies(i32 noundef %78) #5
  %87 = load ptr, ptr @system_wq, align 4
  %88 = call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %87, ptr noundef %85, i32 noundef %86) #5
  br label %110

89:                                               ; preds = %80
  %90 = load ptr, ptr @system_highpri_wq, align 4
  %91 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 4
  %92 = call i32 @__msecs_to_jiffies(i32 noundef %78) #5
  %93 = call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %90, ptr noundef %91, i32 noundef %92) #5
  br label %110

94:                                               ; preds = %13
  %95 = load i32, ptr %6, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %110, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = icmp sgt i32 %99, %95
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = getelementptr inbounds %struct.regulator_irq, ptr %1, i32 0, i32 1, i32 7
  %103 = load ptr, ptr %102, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %101
  call void @hw_protection_shutdown(ptr noundef nonnull @.str.4, i32 noundef 10000) #5
  br label %110

106:                                              ; preds = %101
  %107 = call i32 %103(ptr noundef %1) #5
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %106
  call void @hw_protection_shutdown(ptr noundef nonnull @.str.5, i32 noundef 10000) #5
  br label %110

110:                                              ; preds = %109, %106, %105, %97, %94, %89, %84, %77, %47, %18
  %111 = phi i32 [ 0, %18 ], [ 0, %47 ], [ 1, %84 ], [ 1, %89 ], [ 1, %77 ], [ 0, %105 ], [ 0, %109 ], [ 0, %106 ], [ 0, %97 ], [ 0, %94 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #5
  ret i32 %111
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @regulator_irq_helper_cancel(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %16, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.regulator_irq, ptr %4, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = tail call ptr @free_irq(i32 noundef %8, ptr noundef nonnull %4) #5
  %10 = getelementptr inbounds %struct.regulator_irq, ptr %4, i32 0, i32 1, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %6
  %14 = getelementptr inbounds %struct.regulator_irq, ptr %4, i32 0, i32 4
  %15 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %14) #5
  br label %16

16:                                               ; preds = %13, %6, %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regulator_irq_map_event_simple(i32 %0, ptr nocapture noundef readonly %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = load ptr, ptr %1, align 4
  %5 = getelementptr inbounds %struct.regulator_err_state, ptr %4, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  store i32 1, ptr %2, align 4
  %7 = getelementptr inbounds %struct.regulator_irq_data, ptr %1, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = tail call i32 @__sw_hweight32(i32 noundef %6) #5
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %14, label %13, !prof !14

13:                                               ; preds = %10, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 427, i32 noundef 9, ptr noundef null) #5
  br label %30

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 4
  %16 = getelementptr inbounds %struct.regulator_err_state, ptr %15, i32 0, i32 2
  store i32 %6, ptr %16, align 4
  switch i32 %6, label %25 [
    i32 2, label %26
    i32 4, label %17
    i32 8, label %18
    i32 16, label %19
    i32 32, label %20
    i32 64, label %21
    i32 128, label %22
    i32 256, label %23
    i32 512, label %24
  ]

17:                                               ; preds = %14
  br label %26

18:                                               ; preds = %14
  br label %26

19:                                               ; preds = %14
  br label %26

20:                                               ; preds = %14
  br label %26

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %14
  br label %26

23:                                               ; preds = %14
  br label %26

24:                                               ; preds = %14
  br label %26

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25, %24, %23, %22, %21, %20, %19, %18, %17, %14
  %27 = phi i32 [ 0, %25 ], [ 65536, %24 ], [ 32768, %23 ], [ 16384, %22 ], [ 8192, %21 ], [ 16, %20 ], [ 8, %19 ], [ 4, %18 ], [ 2, %17 ], [ 1, %14 ]
  %28 = load ptr, ptr %1, align 4
  %29 = getelementptr inbounds %struct.regulator_err_state, ptr %28, i32 0, i32 1
  store i32 %27, ptr %29, align 4
  br label %30

30:                                               ; preds = %26, %13
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @hw_protection_shutdown(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!8 = !{i64 2149219486}
!9 = !{i64 2149215310}
!10 = !{i64 2149215385, i64 2149215412, i64 2149215459, i64 2149215481, i64 2149215509, i64 2149215529}
!11 = !{i64 2149242489}
!12 = !{i8 0, i8 2}
!13 = !{!"branch_weights", i32 1, i32 2000}
!14 = !{!"branch_weights", i32 2000, i32 1}
