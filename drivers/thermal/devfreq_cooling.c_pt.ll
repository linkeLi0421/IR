; ModuleID = '/llk/IR/drivers/thermal/devfreq_cooling.c_pt.bc'
source_filename = "../drivers/thermal/devfreq_cooling.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_devfreq_cooling_register_power:\09\09\09\09\09"
module asm "\09.asciz \09\22of_devfreq_cooling_register_power\22\09\09\09\09\09"
module asm "__kstrtabns_of_devfreq_cooling_register_power:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_devfreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22of_devfreq_cooling_register\22\09\09\09\09\09"
module asm "__kstrtabns_of_devfreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_cooling_register\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_cooling_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_cooling_em_register:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_cooling_em_register\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_cooling_em_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devfreq_cooling_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22devfreq_cooling_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_devfreq_cooling_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.devfreq = type { %struct.list_head, %struct.mutex, %struct.device, ptr, ptr, ptr, %struct.notifier_block, %struct.delayed_work, i32, %struct.devfreq_dev_status, ptr, %struct.dev_pm_qos_request, %struct.dev_pm_qos_request, i32, i32, i8, i32, i32, %struct.atomic_t, %struct.devfreq_stats, %struct.srcu_notifier_head, ptr, %struct.notifier_block, %struct.notifier_block }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.devfreq_dev_status = type { i32, i32, i32, ptr }
%struct.dev_pm_qos_request = type { i32, %union.anon.5, ptr }
%union.anon.5 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.devfreq_stats = type { i32, ptr, ptr, i64 }
%struct.srcu_notifier_head = type { %struct.mutex, %struct.srcu_struct, ptr }
%struct.srcu_struct = type { [1 x %struct.srcu_node], [2 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.lockdep_map = type {}
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.devfreq_cooling_device = type { ptr, ptr, i32, ptr, i32, ptr, i32, i32, %struct.dev_pm_qos_request, ptr }
%struct.thermal_cooling_device = type { i32, ptr, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.em_perf_state = type { i32, i32, i32, i32 }

@devfreq_cooling_ops = internal global %struct.thermal_cooling_device_ops { ptr @devfreq_cooling_get_max_state, ptr @devfreq_cooling_get_cur_state, ptr @devfreq_cooling_set_cur_state, ptr null, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [11 x i8] c"devfreq-%s\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to register devfreq cooling device (%d)\0A\00", align 1
@__kstrtab_of_devfreq_cooling_register_power = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_devfreq_cooling_register_power = external dso_local constant [0 x i8], align 1
@__ksymtab_of_devfreq_cooling_register_power = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_devfreq_cooling_register_power to i32), ptr @__kstrtab_of_devfreq_cooling_register_power, ptr @__kstrtabns_of_devfreq_cooling_register_power }, section "___ksymtab_gpl+of_devfreq_cooling_register_power", align 4
@__kstrtab_of_devfreq_cooling_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_devfreq_cooling_register = external dso_local constant [0 x i8], align 1
@__ksymtab_of_devfreq_cooling_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_devfreq_cooling_register to i32), ptr @__kstrtab_of_devfreq_cooling_register, ptr @__kstrtabns_of_devfreq_cooling_register }, section "___ksymtab_gpl+of_devfreq_cooling_register", align 4
@__kstrtab_devfreq_cooling_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_cooling_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_cooling_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_cooling_register to i32), ptr @__kstrtab_devfreq_cooling_register, ptr @__kstrtabns_devfreq_cooling_register }, section "___ksymtab_gpl+devfreq_cooling_register", align 4
@__kstrtab_devfreq_cooling_em_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_cooling_em_register = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_cooling_em_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_cooling_em_register to i32), ptr @__kstrtab_devfreq_cooling_em_register, ptr @__kstrtabns_devfreq_cooling_em_register }, section "___ksymtab_gpl+devfreq_cooling_em_register", align 4
@__kstrtab_devfreq_cooling_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_devfreq_cooling_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_devfreq_cooling_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devfreq_cooling_unregister to i32), ptr @__kstrtab_devfreq_cooling_unregister, ptr @__kstrtabns_devfreq_cooling_unregister }, section "___ksymtab_gpl+devfreq_cooling_unregister", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_devfreq_cooling_em_register, ptr @__ksymtab_devfreq_cooling_register, ptr @__ksymtab_devfreq_cooling_unregister, ptr @__ksymtab_of_devfreq_cooling_register, ptr @__ksymtab_of_devfreq_cooling_register_power], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_devfreq_cooling_register_power(ptr noundef %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.devfreq, ptr %1, i32 0, i32 2, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 72) #8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %77, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %8, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %8, i32 0, i32 9
  store ptr null, ptr %12, align 4
  %13 = tail call i32 @dev_pm_opp_get_opp_count(ptr noundef %6) #9
  %14 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %13, i32 4) #9
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %17, label %19, !prof !8

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %8, i32 0, i32 3
  store ptr null, ptr %18, align 4
  br label %41

19:                                               ; preds = %10
  %20 = extractvalue { i32, i1 } %15, 0
  %21 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #10
  %22 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %8, i32 0, i32 3
  store ptr %21, ptr %22, align 4
  %23 = icmp eq ptr %21, null
  br i1 %23, label %41, label %24

24:                                               ; preds = %19
  store i32 -1, ptr %4, align 4
  %25 = icmp eq i32 %13, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %74

27:                                               ; preds = %31, %24
  %28 = phi i32 [ %35, %31 ], [ 0, %24 ]
  %29 = call ptr @dev_pm_opp_find_freq_floor(ptr noundef %14, ptr noundef nonnull %4) #9
  %30 = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %42, label %31

31:                                               ; preds = %27
  call void @dev_pm_opp_put(ptr noundef %29) #9
  %32 = load i32, ptr %4, align 4
  %33 = load ptr, ptr %22, align 4
  %34 = getelementptr i32, ptr %33, i32 %28
  store i32 %32, ptr %34, align 4
  %35 = add nuw nsw i32 %28, 1
  %36 = load i32, ptr %4, align 4
  %37 = add i32 %36, -1
  store i32 %37, ptr %4, align 4
  %38 = icmp eq i32 %35, %13
  br i1 %38, label %39, label %27

39:                                               ; preds = %31
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  %40 = icmp slt i32 %13, 1
  br i1 %40, label %74, label %45

41:                                               ; preds = %19, %17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %74

42:                                               ; preds = %27
  %43 = load ptr, ptr %22, align 4
  call void @kfree(ptr noundef %43) #9
  %44 = ptrtoint ptr %29 to i32
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  br label %74

45:                                               ; preds = %39
  %46 = add nsw i32 %13, -1
  %47 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %8, i32 0, i32 4
  store i32 %46, ptr %47, align 8
  %48 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %8, i32 0, i32 8
  %49 = call i32 @dev_pm_qos_add_request(ptr noundef %6, ptr noundef %48, i32 noundef 4, i32 noundef 2147483647) #9
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load ptr, ptr %6, align 4
  br label %57

57:                                               ; preds = %55, %51
  %58 = phi ptr [ %56, %55 ], [ %53, %51 ]
  %59 = call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str, ptr noundef %58) #9
  %60 = icmp eq ptr %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %57
  %62 = call ptr @thermal_of_cooling_device_register(ptr noundef %0, ptr noundef nonnull %59, ptr noundef nonnull %8, ptr noundef nonnull @devfreq_cooling_ops) #9
  call void @kfree(ptr noundef nonnull %59) #9
  %63 = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = ptrtoint ptr %62 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.1, i32 noundef %65) #11
  br label %67

66:                                               ; preds = %61
  store ptr %62, ptr %8, align 8
  br label %77

67:                                               ; preds = %64, %57
  %68 = phi i32 [ %65, %64 ], [ -12, %57 ]
  %69 = call i32 @dev_pm_qos_remove_request(ptr noundef %48) #9
  br label %70

70:                                               ; preds = %67, %45
  %71 = phi i32 [ %49, %45 ], [ %68, %67 ]
  %72 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %8, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  call void @kfree(ptr noundef %73) #9
  br label %74

74:                                               ; preds = %70, %42, %41, %39, %26
  %75 = phi i32 [ %71, %70 ], [ %44, %42 ], [ -22, %39 ], [ -12, %41 ], [ -22, %26 ]
  call void @kfree(ptr noundef nonnull %8) #9
  %76 = inttoptr i32 %75 to ptr
  br label %77

77:                                               ; preds = %74, %66, %3
  %78 = phi ptr [ %76, %74 ], [ %62, %66 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %78
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_get_opp_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_add_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @thermal_of_cooling_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_remove_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @of_devfreq_cooling_register(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call ptr @of_devfreq_cooling_register_power(ptr noundef %0, ptr noundef %1, ptr undef)
  ret ptr %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devfreq_cooling_register(ptr noundef %0) #0 {
  %2 = tail call ptr @of_devfreq_cooling_register_power(ptr noundef null, ptr noundef %0, ptr undef) #9
  ret ptr %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devfreq_cooling_em_register(ptr noundef %0, ptr nocapture readnone %1) #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %5 = or i1 %3, %4
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.devfreq, ptr %0, i32 0, i32 2, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @dev_pm_opp_of_register_em(ptr noundef %8, ptr noundef null) #9
  %10 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = tail call ptr @of_devfreq_cooling_register_power(ptr noundef %11, ptr noundef nonnull %0, ptr undef)
  br label %13

13:                                               ; preds = %6, %2
  %14 = phi ptr [ inttoptr (i32 -22 to ptr), %2 ], [ %12, %6 ]
  ret ptr %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_opp_of_register_em(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devfreq_cooling_unregister(ptr noundef readonly %0) #0 {
  %2 = icmp eq ptr %0, null
  %3 = icmp ugt ptr %0, inttoptr (i32 -4096 to ptr)
  %4 = or i1 %2, %3
  br i1 %4, label %13, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 4
  tail call void @thermal_cooling_device_unregister(ptr noundef %8) #9
  %9 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %7, i32 0, i32 8
  %10 = tail call i32 @dev_pm_qos_remove_request(ptr noundef %9) #9
  %11 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  tail call void @kfree(ptr noundef %12) #9
  tail call void @kfree(ptr noundef %7) #9
  br label %13

13:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @thermal_cooling_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dev_pm_opp_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @devfreq_cooling_get_max_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %4, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @devfreq_cooling_get_cur_state(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #6 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  store i32 %6, ptr %1, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devfreq_cooling_set_cur_state(ptr nocapture noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %4, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, %1
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %4, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %10, %1
  br i1 %11, label %33, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %4, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = sub i32 %10, %1
  %18 = load ptr, ptr %14, align 4
  %19 = getelementptr %struct.em_perf_state, ptr %18, i32 %17
  %20 = load i32, ptr %19, align 4
  %21 = mul i32 %20, 1000
  br label %27

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %4, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i32, ptr %24, i32 %1
  %26 = load i32, ptr %25, align 4
  br label %27

27:                                               ; preds = %22, %16
  %28 = phi i32 [ %21, %16 ], [ %26, %22 ]
  %29 = getelementptr inbounds %struct.devfreq_cooling_device, ptr %4, i32 0, i32 8
  %30 = add i32 %28, 999
  %31 = udiv i32 %30, 1000
  %32 = tail call i32 @dev_pm_qos_update_request(ptr noundef %29, i32 noundef %31) #9
  store i32 %1, ptr %5, align 4
  br label %33

33:                                               ; preds = %27, %8, %2
  %34 = phi i32 [ 0, %27 ], [ 0, %2 ], [ -22, %8 ]
  ret i32 %34
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pm_qos_update_request(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_pm_opp_find_freq_floor(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0) }
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
