; ModuleID = '/llk/IR/kernel/rcu/rcu_segcblist.c_pt.bc'
source_filename = "../kernel/rcu/rcu_segcblist.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.rcu_cblist = type { ptr, ptr, i32 }
%struct.rcu_segcblist = type { ptr, [4 x ptr], [4 x i32], i32, [4 x i32], i8 }

@rcu_segcblist_disable.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [27 x i8] c"kernel/rcu/rcu_segcblist.c\00", align 1
@rcu_segcblist_disable.__already_done.1 = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_segcblist_advance.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcu_segcblist_accelerate.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @rcu_cblist_init(ptr noundef %0) local_unnamed_addr #0 {
  store ptr null, ptr %0, align 4
  %2 = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 1
  store ptr %0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 2
  store i32 0, ptr %3, align 4
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_cblist_enqueue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  store ptr %1, ptr %4, align 4
  store ptr %1, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, 1
  store volatile i32 %7, ptr %5, align 4
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_cblist_flush_enqueue(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 {
  %4 = load ptr, ptr %1, align 4
  store ptr %4, ptr %0, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %11 = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 1
  store ptr %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 2
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = icmp eq ptr %2, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store ptr null, ptr %1, align 4
  store i32 0, ptr %12, align 4
  br label %18

17:                                               ; preds = %9
  store ptr null, ptr %2, align 4
  store ptr %2, ptr %1, align 4
  store volatile i32 1, ptr %12, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = phi ptr [ %1, %16 ], [ %2, %17 ]
  %20 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 1
  store ptr %19, ptr %20, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @rcu_cblist_dequeue(ptr noundef %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %12, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 4
  %8 = load ptr, ptr %2, align 4
  store ptr %8, ptr %0, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %12

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.rcu_cblist, ptr %0, i32 0, i32 1
  store ptr %0, ptr %11, align 4
  br label %12

12:                                               ; preds = %10, %4, %1
  ret ptr %2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @rcu_segcblist_n_segment_cbs(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 0
  %3 = load volatile i32, ptr %2, align 4
  %4 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 1
  %5 = load volatile i32, ptr %4, align 4
  %6 = add i32 %5, %3
  %7 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 2
  %8 = load volatile i32, ptr %7, align 4
  %9 = add i32 %8, %6
  %10 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 3
  %11 = load volatile i32, ptr %10, align 4
  %12 = add i32 %11, %9
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_add_len(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, %1
  store volatile i32 %5, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_inc_len(ptr noundef %0) local_unnamed_addr #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %2 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  %4 = add i32 %3, 1
  store volatile i32 %4, ptr %2, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  ret void
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_init(ptr noundef %0) local_unnamed_addr #2 {
  store ptr null, ptr %0, align 4
  %2 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 0
  store ptr %0, ptr %2, align 4
  %3 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 0
  store volatile i32 0, ptr %3, align 4
  %4 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  store ptr %0, ptr %4, align 4
  %5 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 1
  store volatile i32 0, ptr %5, align 4
  %6 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  store ptr %0, ptr %6, align 4
  %7 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 2
  store volatile i32 0, ptr %7, align 4
  %8 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  store ptr %0, ptr %8, align 4
  %9 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 3
  store volatile i32 0, ptr %9, align 4
  %10 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 3
  store volatile i32 0, ptr %10, align 4
  %11 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %12 = load i8, ptr %11, align 4
  %13 = or i8 %12, 1
  store i8 %13, ptr %11, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_disable(ptr noundef %0) local_unnamed_addr #5 {
  %2 = load volatile ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  %4 = load i1, ptr @rcu_segcblist_disable.__already_done, align 1
  %5 = select i1 %3, i1 true, i1 %4
  br i1 %5, label %7, label %6, !prof !10

6:                                                ; preds = %1
  store i1 true, ptr @rcu_segcblist_disable.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 258, i32 noundef 9, ptr noundef null) #10
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 3
  %9 = load volatile i32, ptr %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = load i1, ptr @rcu_segcblist_disable.__already_done.1, align 1
  %12 = xor i1 %11, true
  %13 = select i1 %10, i1 %12, i1 false
  br i1 %13, label %14, label %15, !prof !11

14:                                               ; preds = %7
  store i1 true, ptr @rcu_segcblist_disable.__already_done.1, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 259, i32 noundef 9, ptr noundef null) #10
  br label %15

15:                                               ; preds = %14, %7
  %16 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, -2
  store i8 %18, ptr %16, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @rcu_segcblist_offload(ptr nocapture noundef %0, i1 noundef zeroext %1) local_unnamed_addr #7 {
  %3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, -33
  %6 = or i8 %4, 36
  %7 = select i1 %1, i8 %6, i8 %5
  store i8 %7, ptr %3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcu_segcblist_ready_cbs(ptr noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %3 = load volatile i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 1
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp ne ptr %8, %0
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi i1 [ false, %1 ], [ %9, %6 ]
  ret i1 %11
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcu_segcblist_pend_cbs(ptr noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %3 = load volatile i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 0
  %8 = load volatile ptr, ptr %7, align 4
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp ne ptr %9, null
  br label %11

11:                                               ; preds = %6, %1
  %12 = phi i1 [ false, %1 ], [ %10, %6 ]
  ret i1 %12
}

; Function Attrs: argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @rcu_segcblist_first_cb(ptr noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %3 = load volatile i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = phi ptr [ %7, %6 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local ptr @rcu_segcblist_first_pend_cb(ptr noundef %0) local_unnamed_addr #9 {
  %2 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %3 = load volatile i8, ptr %2, align 4
  %4 = and i8 %3, 1
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  br label %10

10:                                               ; preds = %6, %1
  %11 = phi ptr [ %9, %6 ], [ null, %1 ]
  ret ptr %11
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @rcu_segcblist_nextgp(ptr noundef %0, ptr nocapture noundef writeonly %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %4 = load volatile i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %15, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 0
  %9 = load volatile ptr, ptr %8, align 4
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %7
  %13 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 2, i32 1
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %1, align 4
  br label %15

15:                                               ; preds = %12, %7, %2
  %16 = phi i1 [ false, %7 ], [ true, %12 ], [ false, %2 ]
  ret i1 %16
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_enqueue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = add i32 %4, 1
  store volatile i32 %5, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %6 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 1
  store volatile i32 %8, ptr %6, align 4
  store ptr null, ptr %1, align 4
  %9 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  store volatile ptr %1, ptr %10, align 4
  store volatile ptr %1, ptr %9, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rcu_segcblist_entrain(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 3
  %4 = load volatile i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %43, label %6

6:                                                ; preds = %2
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %7 = load i32, ptr %3, align 4
  %8 = add i32 %7, 1
  store volatile i32 %8, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !12
  store ptr null, ptr %1, align 4
  %9 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %10, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %6
  %15 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %10, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  %19 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 0
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ne ptr %10, %20
  %22 = zext i1 %21 to i32
  br label %23

23:                                               ; preds = %18, %14, %6
  %24 = phi i32 [ 3, %6 ], [ 2, %14 ], [ %22, %18 ]
  %25 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = add i32 %26, 1
  store volatile i32 %27, ptr %25, align 4
  %28 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 %24
  %29 = load ptr, ptr %28, align 4
  store volatile ptr %1, ptr %29, align 4
  %30 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 %24
  store volatile ptr %1, ptr %30, align 4
  %31 = add nuw nsw i32 %24, 1
  %32 = icmp eq i32 %31, 4
  br i1 %32, label %43, label %33

33:                                               ; preds = %23
  %34 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 %31
  store volatile ptr %1, ptr %34, align 4
  %35 = add nuw nsw i32 %24, 2
  %36 = icmp eq i32 %35, 4
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 %35
  store volatile ptr %1, ptr %38, align 4
  %39 = add nuw nsw i32 %24, 3
  %40 = icmp eq i32 %39, 4
  br i1 %40, label %43, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 %39
  store volatile ptr %1, ptr %42, align 4
  br label %43

43:                                               ; preds = %41, %37, %33, %23, %2
  %44 = xor i1 %5, true
  ret i1 %44
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_extract_done_cbs(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %4 = load volatile i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %37, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %0
  br i1 %10, label %37, label %11

11:                                               ; preds = %7
  %12 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 0
  %13 = load volatile i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 2
  store i32 %13, ptr %14, align 4
  %15 = load ptr, ptr %0, align 4
  %16 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr %15, ptr %17, align 4
  %18 = load ptr, ptr %8, align 4
  %19 = load ptr, ptr %18, align 4
  store volatile ptr %19, ptr %0, align 4
  store volatile ptr null, ptr %18, align 4
  %20 = load ptr, ptr %8, align 4
  store ptr %20, ptr %16, align 4
  %21 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %8, align 4
  %24 = icmp eq ptr %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %11
  store volatile ptr %0, ptr %21, align 4
  br label %26

26:                                               ; preds = %25, %11
  %27 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %23
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store volatile ptr %0, ptr %27, align 4
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %23
  br i1 %34, label %35, label %36

35:                                               ; preds = %31
  store volatile ptr %0, ptr %32, align 4
  br label %36

36:                                               ; preds = %35, %31
  store volatile ptr %0, ptr %8, align 4
  store volatile i32 0, ptr %12, align 4
  br label %37

37:                                               ; preds = %36, %7, %2
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_extract_pend_cbs(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %4 = load volatile i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %2
  %8 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 0
  %9 = load volatile ptr, ptr %8, align 4
  %10 = load volatile ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = load ptr, ptr %8, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  store ptr %15, ptr %17, align 4
  %18 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  %19 = load ptr, ptr %18, align 4
  store ptr %19, ptr %16, align 4
  %20 = load ptr, ptr %8, align 4
  store volatile ptr null, ptr %20, align 4
  %21 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 1
  %22 = load volatile i32, ptr %21, align 4
  %23 = load i32, ptr %13, align 4
  %24 = add i32 %23, %22
  store i32 %24, ptr %13, align 4
  %25 = load ptr, ptr %8, align 4
  %26 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  store volatile ptr %25, ptr %26, align 4
  store volatile i32 0, ptr %21, align 4
  %27 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 2
  %28 = load volatile i32, ptr %27, align 4
  %29 = load i32, ptr %13, align 4
  %30 = add i32 %29, %28
  store i32 %30, ptr %13, align 4
  %31 = load ptr, ptr %8, align 4
  %32 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  store volatile ptr %31, ptr %32, align 4
  store volatile i32 0, ptr %27, align 4
  %33 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 3
  %34 = load volatile i32, ptr %33, align 4
  %35 = load i32, ptr %13, align 4
  %36 = add i32 %35, %34
  store i32 %36, ptr %13, align 4
  %37 = load ptr, ptr %8, align 4
  store volatile ptr %37, ptr %18, align 4
  store volatile i32 0, ptr %33, align 4
  br label %38

38:                                               ; preds = %12, %7, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_insert_count(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 2
  %4 = load i32, ptr %3, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %5 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = add i32 %6, %4
  store volatile i32 %7, ptr %5, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_insert_done_cbs(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %36, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 0
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  store volatile i32 %10, ptr %8, align 4
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  store ptr %11, ptr %13, align 4
  %14 = load ptr, ptr %1, align 4
  store volatile ptr %14, ptr %0, align 4
  %15 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 0
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %0
  br i1 %17, label %18, label %35

18:                                               ; preds = %5
  %19 = load ptr, ptr %12, align 4
  store volatile ptr %19, ptr %15, align 4
  %20 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load ptr, ptr %12, align 4
  store volatile ptr %24, ptr %20, align 4
  %25 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, %0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load ptr, ptr %12, align 4
  store volatile ptr %29, ptr %25, align 4
  %30 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load ptr, ptr %12, align 4
  store volatile ptr %34, ptr %30, align 4
  br label %35

35:                                               ; preds = %33, %28, %23, %18, %5
  store ptr null, ptr %1, align 4
  store ptr %1, ptr %12, align 4
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_insert_pend_cbs(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = load ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 3
  %9 = load i32, ptr %8, align 4
  %10 = add i32 %9, %7
  store volatile i32 %10, ptr %8, align 4
  %11 = load ptr, ptr %1, align 4
  %12 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  %13 = load ptr, ptr %12, align 4
  store volatile ptr %11, ptr %13, align 4
  %14 = getelementptr inbounds %struct.rcu_cblist, ptr %1, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  store volatile ptr %15, ptr %12, align 4
  br label %16

16:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_advance(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %4 = load volatile i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp ne i8 %5, 0
  %7 = load i1, ptr @rcu_segcblist_advance.__already_done, align 1
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %2
  store i1 true, ptr @rcu_segcblist_advance.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 484, i32 noundef 9, ptr noundef null) #10
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 0
  %12 = load volatile ptr, ptr %11, align 4
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %67, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 0
  %17 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 2, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = sub i32 %1, %18
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %67, label %21

21:                                               ; preds = %15
  %22 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  %23 = load ptr, ptr %22, align 4
  store volatile ptr %23, ptr %11, align 4
  %24 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 1
  %25 = load volatile i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %16, align 4
  %29 = add i32 %28, %25
  store volatile i32 %29, ptr %16, align 4
  store volatile i32 0, ptr %24, align 4
  br label %30

30:                                               ; preds = %27, %21
  %31 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 2, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = sub i32 %1, %32
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %30
  %36 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  %37 = load ptr, ptr %36, align 4
  store volatile ptr %37, ptr %11, align 4
  %38 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 2
  %39 = load volatile i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, ptr %16, align 4
  %43 = add i32 %42, %39
  store volatile i32 %43, ptr %16, align 4
  store volatile i32 0, ptr %38, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  store volatile ptr %37, ptr %45, align 4
  %46 = load ptr, ptr %11, align 4
  %47 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  store volatile ptr %46, ptr %47, align 4
  br label %67

48:                                               ; preds = %30
  %49 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  store volatile ptr %23, ptr %49, align 4
  %50 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  %51 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 2
  %52 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 2, i32 2
  %53 = load ptr, ptr %50, align 4
  %54 = icmp eq ptr %23, %53
  br i1 %54, label %67, label %55

55:                                               ; preds = %48
  %56 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  %57 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  %58 = load ptr, ptr %57, align 4
  store volatile ptr %58, ptr %56, align 4
  %59 = load volatile i32, ptr %51, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %55
  %62 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = add i32 %63, %59
  store volatile i32 %64, ptr %62, align 4
  store volatile i32 0, ptr %51, align 4
  br label %65

65:                                               ; preds = %61, %55
  %66 = load i32, ptr %52, align 4
  store i32 %66, ptr %17, align 4
  br label %67

67:                                               ; preds = %65, %48, %44, %15, %10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @rcu_segcblist_accelerate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #5 {
  %3 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 5
  %4 = load volatile i8, ptr %3, align 4
  %5 = and i8 %4, 1
  %6 = icmp ne i8 %5, 0
  %7 = load i1, ptr @rcu_segcblist_accelerate.__already_done, align 1
  %8 = select i1 %6, i1 true, i1 %7
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %2
  store i1 true, ptr @rcu_segcblist_accelerate.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 541, i32 noundef 9, ptr noundef null) #10
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 0
  %12 = load volatile ptr, ptr %11, align 4
  %13 = load volatile ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %75, label %15

15:                                               ; preds = %10
  %16 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %17, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %15
  %22 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 2, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = sub i32 %23, %1
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %21, %15
  %27 = icmp eq ptr %19, %12
  br i1 %27, label %33, label %28

28:                                               ; preds = %26
  %29 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 2, i32 1
  %30 = load i32, ptr %29, align 4
  %31 = sub i32 %30, %1
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28, %26
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi i32 [ 0, %33 ], [ 1, %28 ]
  %36 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 %35
  %37 = load volatile ptr, ptr %36, align 4
  %38 = load volatile ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %75, label %44

40:                                               ; preds = %21
  %41 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  %42 = load volatile ptr, ptr %41, align 4
  %43 = load volatile ptr, ptr %42, align 4
  br label %75

44:                                               ; preds = %34
  %45 = add nuw nsw i32 %35, 1
  %46 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 %45
  %47 = or i32 %35, 2
  %48 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 %47
  %49 = load volatile i32, ptr %48, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %61, label %58

51:                                               ; preds = %68, %64, %61
  %52 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 %45
  store volatile ptr %53, ptr %54, align 4
  %55 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 2, i32 %45
  store i32 %1, ptr %55, align 4
  %56 = or i32 %35, 2
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %75, label %71

58:                                               ; preds = %44
  %59 = load i32, ptr %46, align 4
  %60 = add i32 %59, %49
  store volatile i32 %60, ptr %46, align 4
  store volatile i32 0, ptr %48, align 4
  br label %61

61:                                               ; preds = %58, %44
  %62 = add nuw nsw i32 %35, 3
  %63 = icmp eq i32 %62, 4
  br i1 %63, label %51, label %64

64:                                               ; preds = %61
  %65 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 %62
  %66 = load volatile i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %51, label %68

68:                                               ; preds = %64
  %69 = load i32, ptr %46, align 4
  %70 = add i32 %69, %66
  store volatile i32 %70, ptr %46, align 4
  store volatile i32 0, ptr %65, align 4
  br label %51

71:                                               ; preds = %51
  %72 = load ptr, ptr %52, align 4
  %73 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 %56
  store volatile ptr %72, ptr %73, align 4
  %74 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 2, i32 %56
  store i32 %1, ptr %74, align 4
  br label %75

75:                                               ; preds = %71, %51, %40, %34, %10
  %76 = phi i1 [ false, %10 ], [ false, %34 ], [ false, %40 ], [ true, %71 ], [ true, %51 ]
  ret i1 %76
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @rcu_segcblist_merge(ptr noundef %0, ptr noundef %1) local_unnamed_addr #5 {
  %3 = alloca %struct.rcu_cblist, align 4
  %4 = alloca %struct.rcu_cblist, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #10
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #10
  tail call void @lockdep_assert_cpus_held() #10
  store ptr null, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rcu_cblist, ptr %3, i32 0, i32 1
  store ptr %3, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rcu_cblist, ptr %3, i32 0, i32 2
  store i32 0, ptr %6, align 4
  store ptr null, ptr %4, align 4
  %7 = getelementptr inbounds %struct.rcu_cblist, ptr %4, i32 0, i32 1
  store ptr %4, ptr %7, align 4
  %8 = getelementptr inbounds %struct.rcu_cblist, ptr %4, i32 0, i32 2
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 5
  %10 = load volatile i8, ptr %9, align 4
  %11 = and i8 %10, 1
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %38, label %13

13:                                               ; preds = %2
  %14 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %38, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 4, i32 0
  %19 = load volatile i32, ptr %18, align 4
  store i32 %19, ptr %6, align 4
  %20 = load ptr, ptr %1, align 4
  store ptr %20, ptr %3, align 4
  %21 = load ptr, ptr %15, align 4
  store volatile ptr %21, ptr %1, align 4
  store volatile ptr null, ptr %15, align 4
  %22 = load ptr, ptr %14, align 4
  store ptr %22, ptr %5, align 4
  %23 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %22
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store volatile ptr %1, ptr %23, align 4
  br label %27

27:                                               ; preds = %26, %17
  %28 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %22
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store volatile ptr %1, ptr %28, align 4
  br label %32

32:                                               ; preds = %31, %27
  %33 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %22
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store volatile ptr %1, ptr %33, align 4
  br label %37

37:                                               ; preds = %36, %32
  store volatile ptr %1, ptr %14, align 4
  store volatile i32 0, ptr %18, align 4
  br label %38

38:                                               ; preds = %37, %13, %2
  %39 = load volatile i8, ptr %9, align 4
  %40 = and i8 %39, 1
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %66, label %42

42:                                               ; preds = %38
  %43 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 0
  %44 = load volatile ptr, ptr %43, align 4
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %66, label %47

47:                                               ; preds = %42
  store i32 0, ptr %8, align 4
  %48 = load ptr, ptr %44, align 4
  %49 = load ptr, ptr %7, align 4
  store ptr %48, ptr %49, align 4
  %50 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 3
  %51 = load ptr, ptr %50, align 4
  store ptr %51, ptr %7, align 4
  %52 = load ptr, ptr %43, align 4
  store volatile ptr null, ptr %52, align 4
  %53 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 4, i32 1
  %54 = load volatile i32, ptr %53, align 4
  %55 = load i32, ptr %8, align 4
  %56 = add i32 %55, %54
  %57 = load ptr, ptr %43, align 4
  %58 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 1
  store volatile ptr %57, ptr %58, align 4
  store volatile i32 0, ptr %53, align 4
  %59 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 4, i32 2
  %60 = load volatile i32, ptr %59, align 4
  %61 = add i32 %60, %56
  %62 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 2
  store volatile ptr %57, ptr %62, align 4
  store volatile i32 0, ptr %59, align 4
  %63 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 4, i32 3
  %64 = load volatile i32, ptr %63, align 4
  %65 = add i32 %64, %61
  store i32 %65, ptr %8, align 4
  store volatile ptr %57, ptr %50, align 4
  store volatile i32 0, ptr %63, align 4
  br label %66

66:                                               ; preds = %47, %42, %38
  %67 = getelementptr inbounds %struct.rcu_segcblist, ptr %1, i32 0, i32 3
  store volatile i32 0, ptr %67, align 4
  %68 = load i32, ptr %6, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %69 = getelementptr inbounds %struct.rcu_segcblist, ptr %0, i32 0, i32 3
  %70 = load i32, ptr %69, align 4
  %71 = add i32 %70, %68
  store volatile i32 %71, ptr %69, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %72 = load i32, ptr %8, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !8
  %73 = load i32, ptr %69, align 4
  %74 = add i32 %73, %72
  store volatile i32 %74, ptr %69, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !9
  %75 = load ptr, ptr %3, align 4
  %76 = icmp eq ptr %75, null
  br i1 %76, label %102, label %77

77:                                               ; preds = %66
  %78 = load i32, ptr %6, align 4
  %79 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 0
  %80 = load i32, ptr %79, align 4
  %81 = add i32 %80, %78
  store volatile i32 %81, ptr %79, align 4
  %82 = load ptr, ptr %0, align 4
  %83 = load ptr, ptr %5, align 4
  store ptr %82, ptr %83, align 4
  %84 = load ptr, ptr %3, align 4
  store volatile ptr %84, ptr %0, align 4
  %85 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 0
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %0
  br i1 %87, label %88, label %102

88:                                               ; preds = %77
  %89 = load ptr, ptr %5, align 4
  store volatile ptr %89, ptr %85, align 4
  %90 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 1
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  store volatile ptr %89, ptr %90, align 4
  %94 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, %0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  store volatile ptr %89, ptr %94, align 4
  %98 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, %0
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store volatile ptr %89, ptr %98, align 4
  br label %102

102:                                              ; preds = %101, %97, %93, %88, %77, %66
  %103 = load ptr, ptr %4, align 4
  %104 = icmp eq ptr %103, null
  br i1 %104, label %113, label %105

105:                                              ; preds = %102
  %106 = load i32, ptr %8, align 4
  %107 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 4, i32 3
  %108 = load i32, ptr %107, align 4
  %109 = add i32 %108, %106
  store volatile i32 %109, ptr %107, align 4
  %110 = getelementptr %struct.rcu_segcblist, ptr %0, i32 0, i32 1, i32 3
  %111 = load ptr, ptr %110, align 4
  store volatile ptr %103, ptr %111, align 4
  %112 = load ptr, ptr %7, align 4
  store volatile ptr %112, ptr %110, align 4
  br label %113

113:                                              ; preds = %105, %102
  store ptr null, ptr %1, align 4
  %114 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 0
  store ptr %1, ptr %114, align 4
  %115 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 4, i32 0
  store volatile i32 0, ptr %115, align 4
  %116 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 1
  store ptr %1, ptr %116, align 4
  %117 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 4, i32 1
  store volatile i32 0, ptr %117, align 4
  %118 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 2
  store ptr %1, ptr %118, align 4
  %119 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 4, i32 2
  store volatile i32 0, ptr %119, align 4
  %120 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 1, i32 3
  store ptr %1, ptr %120, align 4
  %121 = getelementptr %struct.rcu_segcblist, ptr %1, i32 0, i32 4, i32 3
  store volatile i32 0, ptr %121, align 4
  store volatile i32 0, ptr %67, align 4
  %122 = load i8, ptr %9, align 4
  %123 = or i8 %122, 1
  store i8 %123, ptr %9, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_assert_cpus_held() local_unnamed_addr #6

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }

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
!8 = !{i64 2151620980}
!9 = !{i64 2151623170}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{i64 2151639875}
