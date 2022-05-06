; ModuleID = '/llk/IR/drivers/gpu/drm/drm_hashtab.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_hashtab.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_open_hash = type { ptr, i8 }
%struct.hlist_head = type { ptr }
%struct.drm_hash_item = type { %struct.hlist_node, i32 }
%struct.hlist_node = type { ptr, ptr }

@.str = private unnamed_addr constant [30 x i8] c"Out of memory for hash table\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Key is 0x%08lx, Hashed key is 0x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"count %d, key: 0x%08lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Available key bit space exhausted\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_ht_create(ptr nocapture noundef writeonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = shl nuw i32 1, %1
  %4 = trunc i32 %1 to i8
  %5 = getelementptr inbounds %struct.drm_open_hash, ptr %0, i32 0, i32 1
  store i8 %4, ptr %5, align 4
  store ptr null, ptr %0, align 4
  %6 = icmp ult i32 %1, 11
  %7 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #5
  %8 = extractvalue { i32, i1 } %7, 1
  %9 = extractvalue { i32, i1 } %7, 0
  br i1 %6, label %10, label %13

10:                                               ; preds = %2
  br i1 %8, label %19, label %11, !prof !8

11:                                               ; preds = %10
  %12 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %9, i32 noundef 3520) #6
  br label %16

13:                                               ; preds = %2
  %14 = select i1 %8, i32 -1, i32 %9
  %15 = tail call noalias ptr @vzalloc(i32 noundef %14) #6
  br label %16

16:                                               ; preds = %13, %11
  %17 = phi ptr [ %15, %13 ], [ %12, %11 ]
  store ptr %17, ptr %0, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %16, %10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str) #5
  br label %20

20:                                               ; preds = %19, %16
  %21 = phi i32 [ -12, %19 ], [ 0, %16 ]
  ret i32 %21
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_ht_verbose_list(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_open_hash, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = mul i32 %1, 1640531527
  %7 = sub nsw i32 32, %5
  %8 = lshr i32 %6, %7
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.1, i32 noundef %1, i32 noundef %8) #5
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr %struct.hlist_head, ptr %9, i32 %8
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %13, %2
  %14 = phi ptr [ %19, %13 ], [ %11, %2 ]
  %15 = phi i32 [ %16, %13 ], [ 0, %2 ]
  %16 = add i32 %15, 1
  %17 = getelementptr inbounds %struct.drm_hash_item, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 1, ptr noundef nonnull @.str.2, i32 noundef %15, i32 noundef %18) #5
  %19 = load ptr, ptr %14, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %13

21:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_ht_insert_item(ptr nocapture noundef readonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_hash_item, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_open_hash, ptr %0, i32 0, i32 1
  %6 = load i8, ptr %5, align 4
  %7 = zext i8 %6 to i32
  %8 = mul i32 %4, 1640531527
  %9 = sub nsw i32 32, %7
  %10 = lshr i32 %8, %9
  %11 = load ptr, ptr %0, align 4
  %12 = getelementptr %struct.hlist_head, ptr %11, i32 %10
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %40, label %15

15:                                               ; preds = %23, %2
  %16 = phi ptr [ %24, %23 ], [ %13, %2 ]
  %17 = phi ptr [ %16, %23 ], [ null, %2 ]
  %18 = getelementptr inbounds %struct.drm_hash_item, ptr %16, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, %4
  br i1 %20, label %44, label %21

21:                                               ; preds = %15
  %22 = icmp ugt i32 %19, %4
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %16, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %15

26:                                               ; preds = %21
  %27 = icmp eq ptr %17, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %26, %23
  %29 = phi ptr [ %17, %26 ], [ %16, %23 ]
  %30 = load ptr, ptr %29, align 4
  store ptr %30, ptr %1, align 4
  %31 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  store volatile ptr %29, ptr %31, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  store volatile ptr %1, ptr %29, align 4
  %32 = load ptr, ptr %1, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.hlist_node, ptr %32, i32 0, i32 1
  br label %42

36:                                               ; preds = %26
  store ptr %13, ptr %1, align 4
  %37 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  store volatile ptr %12, ptr %37, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  store volatile ptr %1, ptr %12, align 4
  br i1 %14, label %44, label %38

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  br label %42

40:                                               ; preds = %2
  store ptr %13, ptr %1, align 4
  %41 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  store volatile ptr %12, ptr %41, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  br label %42

42:                                               ; preds = %40, %38, %34
  %43 = phi ptr [ %12, %40 ], [ %39, %38 ], [ %35, %34 ]
  store volatile ptr %1, ptr %43, align 4
  br label %44

44:                                               ; preds = %42, %36, %28, %15
  %45 = phi i32 [ 0, %28 ], [ 0, %36 ], [ 0, %42 ], [ -22, %15 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_ht_just_insert_please(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = shl nsw i32 -1, %3
  %8 = xor i32 %7, -1
  %9 = mul i32 %2, 1640531527
  %10 = sub i32 32, %3
  %11 = lshr i32 %9, %10
  %12 = getelementptr inbounds %struct.drm_hash_item, ptr %1, i32 0, i32 1
  %13 = getelementptr inbounds %struct.drm_open_hash, ptr %0, i32 0, i32 1
  br label %14

14:                                               ; preds = %57, %6
  %15 = phi i32 [ %11, %6 ], [ %59, %57 ]
  %16 = shl i32 %15, %4
  %17 = add i32 %16, %5
  store i32 %17, ptr %12, align 4
  %18 = load i8, ptr %13, align 4
  %19 = zext i8 %18 to i32
  %20 = mul i32 %17, 1640531527
  %21 = sub nsw i32 32, %19
  %22 = lshr i32 %20, %21
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr %struct.hlist_head, ptr %23, i32 %22
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %53, label %27

27:                                               ; preds = %35, %14
  %28 = phi ptr [ %36, %35 ], [ %25, %14 ]
  %29 = phi ptr [ %28, %35 ], [ null, %14 ]
  %30 = getelementptr inbounds %struct.drm_hash_item, ptr %28, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, %17
  br i1 %32, label %57, label %33

33:                                               ; preds = %27
  %34 = icmp ugt i32 %31, %17
  br i1 %34, label %38, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %28, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %27

38:                                               ; preds = %33
  %39 = icmp eq ptr %29, null
  br i1 %39, label %50, label %40

40:                                               ; preds = %38
  %41 = load ptr, ptr %29, align 4
  br label %42

42:                                               ; preds = %40, %35
  %43 = phi ptr [ %41, %40 ], [ null, %35 ]
  %44 = phi ptr [ %29, %40 ], [ %28, %35 ]
  store ptr %43, ptr %1, align 4
  %45 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  store volatile ptr %44, ptr %45, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !9
  store volatile ptr %1, ptr %44, align 4
  %46 = load ptr, ptr %1, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %62, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.hlist_node, ptr %46, i32 0, i32 1
  br label %55

50:                                               ; preds = %38
  store ptr %25, ptr %1, align 4
  %51 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  store volatile ptr %24, ptr %51, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  store volatile ptr %1, ptr %24, align 4
  %52 = getelementptr inbounds %struct.hlist_node, ptr %25, i32 0, i32 1
  br label %55

53:                                               ; preds = %14
  store ptr null, ptr %1, align 4
  %54 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  store volatile ptr %24, ptr %54, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !10
  br label %55

55:                                               ; preds = %53, %50, %48
  %56 = phi ptr [ %24, %53 ], [ %52, %50 ], [ %49, %48 ]
  store volatile ptr %1, ptr %56, align 4
  br label %62

57:                                               ; preds = %27
  %58 = add i32 %15, 1
  %59 = and i32 %58, %8
  %60 = icmp eq i32 %59, %11
  br i1 %60, label %61, label %14

61:                                               ; preds = %57
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.3) #5
  br label %62

62:                                               ; preds = %61, %55, %42
  %63 = phi i32 [ -22, %61 ], [ 0, %55 ], [ 0, %42 ]
  ret i32 %63
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_ht_find_item(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.drm_open_hash, ptr %0, i32 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = zext i8 %5 to i32
  %7 = mul i32 %1, 1640531527
  %8 = sub nsw i32 32, %6
  %9 = lshr i32 %7, %8
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr %struct.hlist_head, ptr %10, i32 %9
  br label %12

12:                                               ; preds = %20, %3
  %13 = phi ptr [ %11, %3 ], [ %14, %20 ]
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_hash_item, ptr %14, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, %1
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp ugt i32 %18, %1
  br i1 %21, label %23, label %12

22:                                               ; preds = %16
  store ptr %14, ptr %2, align 4
  br label %23

23:                                               ; preds = %22, %20, %12
  %24 = phi i32 [ 0, %22 ], [ -22, %20 ], [ -22, %12 ]
  ret i32 %24
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_ht_remove_key(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.drm_open_hash, ptr %0, i32 0, i32 1
  %4 = load i8, ptr %3, align 4
  %5 = zext i8 %4 to i32
  %6 = mul i32 %1, 1640531527
  %7 = sub nsw i32 32, %5
  %8 = lshr i32 %6, %7
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr %struct.hlist_head, ptr %9, i32 %8
  br label %11

11:                                               ; preds = %19, %2
  %12 = phi ptr [ %10, %2 ], [ %13, %19 ]
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.drm_hash_item, ptr %13, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = icmp ugt i32 %17, %1
  br i1 %20, label %31, label %11

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.hlist_node, ptr %13, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %13, align 4
  store volatile ptr %26, ptr %23, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.hlist_node, ptr %26, i32 0, i32 1
  store volatile ptr %23, ptr %29, align 4
  br label %30

30:                                               ; preds = %28, %25
  store volatile ptr null, ptr %22, align 4
  br label %31

31:                                               ; preds = %30, %21, %19, %11
  %32 = phi i32 [ 0, %21 ], [ 0, %30 ], [ -22, %19 ], [ -22, %11 ]
  ret i32 %32
}

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @drm_ht_remove_item(ptr nocapture noundef readnone %0, ptr noundef %1) local_unnamed_addr #3 {
  %3 = getelementptr inbounds %struct.hlist_node, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  store volatile ptr %7, ptr %4, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.hlist_node, ptr %7, i32 0, i32 1
  store volatile ptr %4, ptr %10, align 4
  br label %11

11:                                               ; preds = %9, %6
  store volatile ptr null, ptr %3, align 4
  br label %12

12:                                               ; preds = %11, %2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_ht_remove(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %5, label %4

4:                                                ; preds = %1
  tail call void @kvfree(ptr noundef nonnull %2) #5
  store ptr null, ptr %0, align 4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }

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
!9 = !{i64 2150444851}
!10 = !{i64 2150397966}
