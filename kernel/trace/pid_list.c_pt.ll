; ModuleID = '/llk/IR/kernel/trace/pid_list.c_pt.bc'
source_filename = "../kernel/trace/pid_list.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.trace_pid_list = type { %struct.raw_spinlock, %struct.irq_work, [256 x ptr], ptr, ptr, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.irq_work = type { %struct.__call_single_node, ptr, %struct.rcuwait }
%struct.__call_single_node = type { %struct.llist_node, %union.anon.0 }
%struct.llist_node = type { ptr }
%union.anon.0 = type { i32 }
%struct.rcuwait = type { ptr }

@trace_pid_list_alloc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@pid_max = external dso_local local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [24 x i8] c"kernel/trace/pid_list.c\00", align 1
@get_upper_chunk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@get_lower_chunk.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @trace_pid_list_is_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  %4 = icmp ugt i32 %1, 1073741823
  %5 = or i1 %3, %4
  br i1 %5, label %29, label %6, !prof !8

6:                                                ; preds = %2
  %7 = lshr i32 %1, 22
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %0) #4
  %9 = getelementptr %struct.trace_pid_list, ptr %0, i32 0, i32 2, i32 %7
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %27, label %12

12:                                               ; preds = %6
  %13 = lshr i32 %1, 14
  %14 = and i32 %13, 255
  %15 = getelementptr [256 x ptr], ptr %10, i32 0, i32 %14
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, null
  br i1 %17, label %27, label %18

18:                                               ; preds = %12
  %19 = lshr i32 %1, 5
  %20 = and i32 %19, 511
  %21 = getelementptr i32, ptr %16, i32 %20
  %22 = load volatile i32, ptr %21, align 4
  %23 = and i32 %1, 31
  %24 = shl nuw i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br label %27

27:                                               ; preds = %18, %12, %6
  %28 = phi i1 [ %26, %18 ], [ false, %12 ], [ false, %6 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %8) #4
  br label %29

29:                                               ; preds = %27, %2
  %30 = phi i1 [ %28, %27 ], [ false, %2 ]
  ret i1 %30
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_pid_list_set(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %66, label %4

4:                                                ; preds = %2
  %5 = icmp ugt i32 %1, 1073741823
  br i1 %5, label %66, label %6, !prof !9

6:                                                ; preds = %4
  %7 = lshr i32 %1, 22
  %8 = lshr i32 %1, 14
  %9 = and i32 %8, 255
  %10 = and i32 %1, 16383
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %0) #4
  %12 = getelementptr %struct.trace_pid_list, ptr %0, i32 0, i32 2, i32 %7
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %36

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %64, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 4
  store ptr %20, ptr %16, align 4
  %21 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = add i32 %22, -1
  store i32 %23, ptr %21, align 4
  %24 = icmp slt i32 %23, 0
  %25 = load i1, ptr @get_upper_chunk.__already_done, align 1
  %26 = xor i1 %25, true
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %19
  store i1 true, ptr @get_upper_chunk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #4
  br label %29

29:                                               ; preds = %28, %19
  store ptr null, ptr %17, align 4
  %30 = load i32, ptr %21, align 4
  %31 = icmp slt i32 %30, 3
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 1
  %34 = tail call zeroext i1 @irq_work_queue(ptr noundef %33) #4
  br label %35

35:                                               ; preds = %32, %29
  store ptr %17, ptr %12, align 4
  br label %36

36:                                               ; preds = %35, %6
  %37 = phi ptr [ %13, %6 ], [ %17, %35 ]
  %38 = getelementptr [256 x ptr], ptr %37, i32 0, i32 %9
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 4
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %64, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 4
  store ptr %46, ptr %42, align 4
  %47 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 6
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, -1
  store i32 %49, ptr %47, align 4
  %50 = icmp slt i32 %49, 0
  %51 = load i1, ptr @get_lower_chunk.__already_done, align 1
  %52 = xor i1 %51, true
  %53 = select i1 %50, i1 %52, i1 false
  br i1 %53, label %54, label %55, !prof !9

54:                                               ; preds = %45
  store i1 true, ptr @get_lower_chunk.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 24, i32 noundef 9, ptr noundef null) #4
  br label %55

55:                                               ; preds = %54, %45
  store ptr null, ptr %43, align 4
  %56 = load i32, ptr %47, align 4
  %57 = icmp slt i32 %56, 3
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 1
  %60 = tail call zeroext i1 @irq_work_queue(ptr noundef %59) #4
  br label %61

61:                                               ; preds = %58, %55
  store ptr %43, ptr %38, align 4
  br label %62

62:                                               ; preds = %61, %36
  %63 = phi ptr [ %39, %36 ], [ %43, %61 ]
  tail call void @_set_bit(i32 noundef %10, ptr noundef nonnull %63) #4
  br label %64

64:                                               ; preds = %62, %41, %15
  %65 = phi i32 [ 0, %62 ], [ -12, %15 ], [ -12, %41 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %11) #4
  br label %66

66:                                               ; preds = %64, %4, %2
  %67 = phi i32 [ %65, %64 ], [ -19, %2 ], [ -22, %4 ]
  ret i32 %67
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_pid_list_clear(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %37, label %4

4:                                                ; preds = %2
  %5 = icmp ugt i32 %1, 1073741823
  br i1 %5, label %37, label %6, !prof !9

6:                                                ; preds = %4
  %7 = lshr i32 %1, 22
  %8 = and i32 %1, 16383
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %0) #4
  %10 = getelementptr %struct.trace_pid_list, ptr %0, i32 0, i32 2, i32 %7
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %36, label %13

13:                                               ; preds = %6
  %14 = lshr i32 %1, 14
  %15 = and i32 %14, 255
  %16 = getelementptr [256 x ptr], ptr %11, i32 0, i32 %15
  %17 = load ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %36, label %19

19:                                               ; preds = %13
  tail call void @_clear_bit(i32 noundef %8, ptr noundef nonnull %17) #4
  %20 = tail call i32 @_find_first_bit_le(ptr noundef nonnull %17, i32 noundef 16384) #4
  %21 = icmp sgt i32 %20, 16383
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 4
  %24 = load ptr, ptr %23, align 4
  store ptr %24, ptr %17, align 4
  store ptr %17, ptr %23, align 4
  %25 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 6
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store i32 %27, ptr %25, align 4
  store ptr null, ptr %16, align 4
  %28 = tail call i32 @_find_first_bit_le(ptr noundef nonnull %11, i32 noundef 8192) #4
  %29 = icmp ugt i32 %28, 8191
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  store ptr %32, ptr %11, align 4
  store ptr %11, ptr %31, align 4
  %33 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 5
  %34 = load i32, ptr %33, align 4
  %35 = add i32 %34, 1
  store i32 %35, ptr %33, align 4
  store ptr null, ptr %10, align 4
  br label %36

36:                                               ; preds = %30, %22, %19, %13, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %9) #4
  br label %37

37:                                               ; preds = %36, %4, %2
  %38 = phi i32 [ 0, %36 ], [ -19, %2 ], [ -22, %4 ]
  ret i32 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_pid_list_next(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %46, label %5

5:                                                ; preds = %3
  %6 = icmp ugt i32 %1, 1073741823
  br i1 %6, label %46, label %7, !prof !9

7:                                                ; preds = %5
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %0) #4
  %9 = and i32 %1, 16383
  %10 = lshr i32 %1, 14
  %11 = and i32 %10, 255
  %12 = lshr i32 %1, 22
  br label %14

13:                                               ; preds = %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %8) #4
  br label %46

14:                                               ; preds = %33, %7
  %15 = phi i32 [ %34, %33 ], [ %9, %7 ]
  %16 = phi i32 [ 0, %33 ], [ %11, %7 ]
  %17 = phi i32 [ %35, %33 ], [ %12, %7 ]
  %18 = getelementptr %struct.trace_pid_list, ptr %0, i32 0, i32 2, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %33, label %21

21:                                               ; preds = %30, %14
  %22 = phi i32 [ %31, %30 ], [ %16, %14 ]
  %23 = phi i32 [ 0, %30 ], [ %15, %14 ]
  %24 = getelementptr [256 x ptr], ptr %19, i32 0, i32 %22
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = tail call i32 @_find_next_bit_le(ptr noundef nonnull %25, i32 noundef 16384, i32 noundef %23) #4
  %29 = icmp ult i32 %28, 16384
  br i1 %29, label %37, label %30

30:                                               ; preds = %27, %21
  %31 = add nuw nsw i32 %22, 1
  %32 = icmp eq i32 %31, 256
  br i1 %32, label %33, label %21

33:                                               ; preds = %30, %14
  %34 = phi i32 [ %15, %14 ], [ 0, %30 ]
  %35 = add nuw nsw i32 %17, 1
  %36 = icmp ult i32 %17, 255
  br i1 %36, label %14, label %13

37:                                               ; preds = %27
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %0, i32 noundef %8) #4
  %38 = icmp ugt i32 %17, 255
  br i1 %38, label %46, label %39

39:                                               ; preds = %37
  %40 = shl nuw nsw i32 %17, 22
  %41 = and i32 %40, 1069547520
  %42 = shl nuw nsw i32 %22, 14
  %43 = and i32 %42, 4177920
  %44 = or i32 %43, %41
  %45 = or i32 %44, %28
  store i32 %45, ptr %2, align 4
  br label %46

46:                                               ; preds = %39, %37, %13, %5, %3
  %47 = phi i32 [ 0, %39 ], [ -19, %3 ], [ -1, %37 ], [ -1, %13 ], [ -22, %5 ]
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @trace_pid_list_first(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #0 {
  %3 = tail call i32 @trace_pid_list_next(ptr noundef %0, i32 noundef 0, ptr noundef %1)
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @trace_pid_list_alloc() local_unnamed_addr #0 {
  %1 = load i32, ptr @pid_max, align 4
  %2 = icmp sgt i32 %1, 1073741824
  %3 = load i1, ptr @trace_pid_list_alloc.__already_done, align 1
  %4 = xor i1 %3, true
  %5 = select i1 %2, i1 %4, i1 false
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %0
  store i1 true, ptr @trace_pid_list_alloc.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 417, i32 noundef 9, ptr noundef null) #4
  br label %7

7:                                                ; preds = %6, %0
  %8 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %9 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3520, i32 noundef 1060) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %85, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.trace_pid_list, ptr %9, i32 0, i32 1
  store ptr null, ptr %12, align 4
  %13 = getelementptr inbounds %struct.trace_pid_list, ptr %9, i32 0, i32 1, i32 0, i32 1
  store i32 0, ptr %13, align 8
  %14 = getelementptr inbounds %struct.trace_pid_list, ptr %9, i32 0, i32 1, i32 1
  store ptr @pid_list_refill_irq, ptr %14, align 4
  %15 = getelementptr inbounds %struct.trace_pid_list, ptr %9, i32 0, i32 1, i32 2
  store ptr null, ptr %15, align 8
  store i32 0, ptr %9, align 8
  %16 = getelementptr inbounds %struct.trace_pid_list, ptr %9, i32 0, i32 3
  %17 = getelementptr inbounds %struct.trace_pid_list, ptr %9, i32 0, i32 5
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 1024) #5
  %20 = icmp eq ptr %19, null
  br i1 %20, label %50, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr %16, align 4
  store ptr %22, ptr %19, align 8
  store ptr %19, ptr %16, align 4
  %23 = load i32, ptr %17, align 4
  %24 = add i32 %23, 1
  store i32 %24, ptr %17, align 4
  %25 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %26 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 1024) #5
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %21
  store ptr %19, ptr %26, align 8
  store ptr %26, ptr %16, align 4
  %29 = add i32 %23, 2
  store i32 %29, ptr %17, align 4
  %30 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %31 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3520, i32 noundef 1024) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %50, label %33

33:                                               ; preds = %28
  store ptr %26, ptr %31, align 8
  store ptr %31, ptr %16, align 4
  %34 = add i32 %23, 3
  store i32 %34, ptr %17, align 4
  %35 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %36 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 3520, i32 noundef 1024) #5
  %37 = icmp eq ptr %36, null
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  store ptr %31, ptr %36, align 8
  store ptr %36, ptr %16, align 4
  %39 = add i32 %23, 4
  store i32 %39, ptr %17, align 4
  %40 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %41 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %40, i32 noundef 3520, i32 noundef 1024) #5
  %42 = icmp eq ptr %41, null
  br i1 %42, label %50, label %43

43:                                               ; preds = %38
  store ptr %36, ptr %41, align 8
  store ptr %41, ptr %16, align 4
  %44 = add i32 %23, 5
  store i32 %44, ptr %17, align 4
  %45 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %46 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %45, i32 noundef 3520, i32 noundef 1024) #5
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %43
  store ptr %41, ptr %46, align 8
  store ptr %46, ptr %16, align 4
  %49 = add i32 %23, 6
  store i32 %49, ptr %17, align 4
  br label %50

50:                                               ; preds = %48, %43, %38, %33, %28, %21, %11
  %51 = getelementptr inbounds %struct.trace_pid_list, ptr %9, i32 0, i32 4
  %52 = getelementptr inbounds %struct.trace_pid_list, ptr %9, i32 0, i32 6
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 2048) #5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %85, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr %51, align 8
  store ptr %57, ptr %54, align 8
  store ptr %54, ptr %51, align 8
  %58 = load i32, ptr %52, align 8
  %59 = add i32 %58, 1
  store i32 %59, ptr %52, align 8
  %60 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %61 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %60, i32 noundef 3520, i32 noundef 2048) #5
  %62 = icmp eq ptr %61, null
  br i1 %62, label %85, label %63

63:                                               ; preds = %56
  store ptr %54, ptr %61, align 8
  store ptr %61, ptr %51, align 8
  %64 = add i32 %58, 2
  store i32 %64, ptr %52, align 8
  %65 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %66 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 2048) #5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %85, label %68

68:                                               ; preds = %63
  store ptr %61, ptr %66, align 8
  store ptr %66, ptr %51, align 8
  %69 = add i32 %58, 3
  store i32 %69, ptr %52, align 8
  %70 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %71 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 2048) #5
  %72 = icmp eq ptr %71, null
  br i1 %72, label %85, label %73

73:                                               ; preds = %68
  store ptr %66, ptr %71, align 8
  store ptr %71, ptr %51, align 8
  %74 = add i32 %58, 4
  store i32 %74, ptr %52, align 8
  %75 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %76 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %75, i32 noundef 3520, i32 noundef 2048) #5
  %77 = icmp eq ptr %76, null
  br i1 %77, label %85, label %78

78:                                               ; preds = %73
  store ptr %71, ptr %76, align 8
  store ptr %76, ptr %51, align 8
  %79 = add i32 %58, 5
  store i32 %79, ptr %52, align 8
  %80 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %81 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %80, i32 noundef 3520, i32 noundef 2048) #5
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %78
  store ptr %76, ptr %81, align 8
  store ptr %81, ptr %51, align 8
  %84 = add i32 %58, 6
  store i32 %84, ptr %52, align 8
  br label %85

85:                                               ; preds = %83, %78, %73, %68, %63, %56, %50, %7
  ret ptr %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pid_list_refill_irq(ptr noundef %0) #0 {
  %2 = alloca ptr, align 4
  %3 = alloca ptr, align 4
  %4 = getelementptr i8, ptr %0, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2)
  store ptr null, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3)
  store ptr null, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 1048
  %6 = getelementptr i8, ptr %0, i32 1052
  %7 = getelementptr i8, ptr %0, i32 1040
  %8 = getelementptr i8, ptr %0, i32 1044
  br label %9

9:                                                ; preds = %79, %1
  %10 = phi ptr [ %2, %1 ], [ %41, %79 ]
  %11 = phi ptr [ %3, %1 ], [ %61, %79 ]
  %12 = phi i32 [ 0, %1 ], [ %42, %79 ]
  %13 = phi i32 [ 0, %1 ], [ %62, %79 ]
  tail call void @_raw_spin_lock(ptr noundef %4) #4
  %14 = load i32, ptr %5, align 4
  %15 = sub i32 6, %14
  %16 = load i32, ptr %6, align 4
  %17 = sub i32 6, %16
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %18 = load i16, ptr %4, align 4
  %19 = add i16 %18, 1
  store i16 %19, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  %20 = icmp slt i32 %15, 1
  %21 = icmp slt i32 %17, 1
  %22 = select i1 %20, i1 %21, i1 false
  br i1 %22, label %85, label %23

23:                                               ; preds = %9
  %24 = sub i32 5, %14
  %25 = icmp sgt i32 %15, 0
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = add i32 %12, 6
  %28 = sub i32 %27, %14
  br label %29

29:                                               ; preds = %36, %26
  %30 = phi i32 [ %38, %36 ], [ %24, %26 ]
  %31 = phi i32 [ %37, %36 ], [ %12, %26 ]
  %32 = phi ptr [ %34, %36 ], [ %10, %26 ]
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 1024) #5
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  store ptr %34, ptr %32, align 4
  %37 = add i32 %31, 1
  %38 = add i32 %30, -1
  %39 = icmp sgt i32 %30, 0
  br i1 %39, label %29, label %40

40:                                               ; preds = %36, %29, %23
  %41 = phi ptr [ %10, %23 ], [ %32, %29 ], [ %34, %36 ]
  %42 = phi i32 [ %12, %23 ], [ %31, %29 ], [ %28, %36 ]
  %43 = phi i32 [ %24, %23 ], [ %30, %29 ], [ -1, %36 ]
  %44 = sub i32 5, %16
  %45 = icmp sgt i32 %17, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %40
  %47 = add i32 %13, 6
  %48 = sub i32 %47, %16
  br label %49

49:                                               ; preds = %56, %46
  %50 = phi i32 [ %58, %56 ], [ %44, %46 ]
  %51 = phi i32 [ %57, %56 ], [ %13, %46 ]
  %52 = phi ptr [ %54, %56 ], [ %11, %46 ]
  %53 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %54 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %53, i32 noundef 3520, i32 noundef 2048) #5
  %55 = icmp eq ptr %54, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %49
  store ptr %54, ptr %52, align 4
  %57 = add i32 %51, 1
  %58 = add i32 %50, -1
  %59 = icmp sgt i32 %50, 0
  br i1 %59, label %49, label %60

60:                                               ; preds = %56, %49, %40
  %61 = phi ptr [ %11, %40 ], [ %52, %49 ], [ %54, %56 ]
  %62 = phi i32 [ %13, %40 ], [ %51, %49 ], [ %48, %56 ]
  %63 = phi i32 [ %44, %40 ], [ %50, %49 ], [ -1, %56 ]
  tail call void @_raw_spin_lock(ptr noundef %4) #4
  %64 = load ptr, ptr %2, align 4
  %65 = icmp eq ptr %64, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr %7, align 4
  store ptr %67, ptr %41, align 4
  %68 = load ptr, ptr %2, align 4
  store ptr %68, ptr %7, align 4
  %69 = load i32, ptr %5, align 4
  %70 = add i32 %69, %42
  store i32 %70, ptr %5, align 4
  br label %71

71:                                               ; preds = %66, %60
  %72 = load ptr, ptr %3, align 4
  %73 = icmp eq ptr %72, null
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  %75 = load ptr, ptr %8, align 4
  store ptr %75, ptr %61, align 4
  %76 = load ptr, ptr %3, align 4
  store ptr %76, ptr %8, align 4
  %77 = load i32, ptr %6, align 4
  %78 = add i32 %77, %62
  store i32 %78, ptr %6, align 4
  br label %79

79:                                               ; preds = %74, %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #4, !srcloc !10
  %80 = load i16, ptr %4, align 4
  %81 = add i16 %80, 1
  store i16 %81, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #4, !srcloc !11
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #4, !srcloc !12
  tail call void asm sideeffect "", "~{memory}"() #4, !srcloc !13
  %82 = icmp sgt i32 %43, -1
  %83 = icmp sgt i32 %63, -1
  %84 = select i1 %82, i1 true, i1 %83
  br i1 %84, label %85, label %9

85:                                               ; preds = %79, %9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @trace_pid_list_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %39, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 1
  tail call void @irq_work_sync(ptr noundef %4) #4
  %5 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %12

8:                                                ; preds = %12, %3
  %9 = getelementptr inbounds %struct.trace_pid_list, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %22, label %17

12:                                               ; preds = %12, %3
  %13 = phi ptr [ %15, %12 ], [ %6, %3 ]
  %14 = load ptr, ptr %13, align 4
  store ptr %14, ptr %5, align 4
  tail call void @kfree(ptr noundef nonnull %13) #4
  %15 = load ptr, ptr %5, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %8, label %12

17:                                               ; preds = %17, %8
  %18 = phi ptr [ %20, %17 ], [ %10, %8 ]
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %9, align 4
  tail call void @kfree(ptr noundef nonnull %18) #4
  %20 = load ptr, ptr %9, align 4
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %17

22:                                               ; preds = %17, %8
  br label %23

23:                                               ; preds = %35, %22
  %24 = phi i32 [ %36, %35 ], [ 0, %22 ]
  %25 = getelementptr %struct.trace_pid_list, ptr %0, i32 0, i32 2, i32 %24
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %28, %23
  %29 = phi i32 [ %32, %28 ], [ 0, %23 ]
  %30 = getelementptr [256 x ptr], ptr %26, i32 0, i32 %29
  %31 = load ptr, ptr %30, align 4
  tail call void @kfree(ptr noundef %31) #4
  %32 = add nuw nsw i32 %29, 1
  %33 = icmp eq i32 %32, 256
  br i1 %33, label %34, label %28

34:                                               ; preds = %28
  tail call void @kfree(ptr noundef nonnull %26) #4
  br label %35

35:                                               ; preds = %34, %23
  %36 = add nuw nsw i32 %24, 1
  %37 = icmp eq i32 %36, 256
  br i1 %37, label %38, label %23

38:                                               ; preds = %35
  tail call void @kfree(ptr noundef nonnull %0) #4
  br label %39

39:                                               ; preds = %38, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @irq_work_queue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind allocsize(2) }

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
!8 = !{!"branch_weights", i32 2002, i32 2000}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2148831359}
!11 = !{i64 2148827183}
!12 = !{i64 2148827258, i64 2148827285, i64 2148827332, i64 2148827354, i64 2148827382, i64 2148827402}
!13 = !{i64 2148854362}
