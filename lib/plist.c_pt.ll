; ModuleID = '/llk/IR/lib/plist.c_pt.bc'
source_filename = "../lib/plist.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.list_head = type { ptr, ptr }

@.str = private unnamed_addr constant [12 x i8] c"lib/plist.c\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @plist_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %7, label %6, !prof !8

6:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 79, i32 noundef 9, ptr noundef null) #3
  br label %7

7:                                                ; preds = %6, %2
  %8 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 1
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  br i1 %10, label %12, label %11, !prof !8

11:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 80, i32 noundef 9, ptr noundef null) #3
  br label %12

12:                                               ; preds = %11, %7
  %13 = load volatile ptr, ptr %1, align 4
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %46, label %15

15:                                               ; preds = %12
  %16 = getelementptr i8, ptr %13, i32 -12
  %17 = load i32, ptr %0, align 4
  %18 = load i32, ptr %16, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %23, label %27

20:                                               ; preds = %27
  %21 = load i32, ptr %31, align 4
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %20, %15
  %24 = phi ptr [ null, %15 ], [ %28, %20 ]
  %25 = phi ptr [ %16, %15 ], [ %31, %20 ]
  %26 = getelementptr inbounds %struct.plist_node, ptr %25, i32 0, i32 2
  br label %33

27:                                               ; preds = %20, %15
  %28 = phi ptr [ %31, %20 ], [ %16, %15 ]
  %29 = getelementptr inbounds %struct.plist_node, ptr %28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr i8, ptr %30, i32 -4
  %32 = icmp eq ptr %31, %16
  br i1 %32, label %33, label %20

33:                                               ; preds = %27, %23
  %34 = phi ptr [ %26, %23 ], [ %1, %27 ]
  %35 = phi ptr [ %24, %23 ], [ %28, %27 ]
  %36 = phi ptr [ %25, %23 ], [ %16, %27 ]
  %37 = icmp eq ptr %35, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load i32, ptr %35, align 4
  %40 = icmp eq i32 %39, %17
  br i1 %40, label %46, label %41

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.plist_node, ptr %36, i32 0, i32 1
  %43 = getelementptr inbounds %struct.plist_node, ptr %36, i32 0, i32 1, i32 1
  %44 = load ptr, ptr %43, align 4
  store ptr %8, ptr %43, align 4
  store ptr %42, ptr %8, align 4
  %45 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 1, i32 1
  store ptr %44, ptr %45, align 4
  store volatile ptr %8, ptr %44, align 4
  br label %46

46:                                               ; preds = %41, %38, %12
  %47 = phi ptr [ %1, %12 ], [ %34, %41 ], [ %34, %38 ]
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  store ptr %3, ptr %48, align 4
  store ptr %47, ptr %3, align 4
  %50 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2, i32 1
  store ptr %49, ptr %50, align 4
  store volatile ptr %3, ptr %49, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @plist_del(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 1
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  br i1 %5, label %22, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %17, label %10

10:                                               ; preds = %6
  %11 = getelementptr i8, ptr %8, i32 -8
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  store ptr %11, ptr %15, align 4
  store ptr %4, ptr %11, align 4
  %16 = getelementptr i8, ptr %8, i32 -4
  store ptr %3, ptr %16, align 4
  store volatile ptr %11, ptr %3, align 4
  br label %17

17:                                               ; preds = %14, %10, %6
  %18 = phi ptr [ %4, %10 ], [ %11, %14 ], [ %4, %6 ]
  %19 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 1, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %18, ptr %20, align 4
  store volatile ptr %3, ptr %3, align 4
  store ptr %3, ptr %19, align 4
  br label %22

22:                                               ; preds = %17, %2
  %23 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2
  %24 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %26, ptr %25, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %24, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @plist_requeue(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load volatile ptr, ptr %1, align 4
  %4 = icmp eq ptr %3, %1
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 151, 0\0A.popsection", ""() #3, !srcloc !10
  unreachable

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %6
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22lib/plist.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 152, 0\0A.popsection", ""() #3, !srcloc !11
  unreachable

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -12
  %15 = icmp eq ptr %14, %0
  br i1 %15, label %58, label %16

16:                                               ; preds = %11
  %17 = getelementptr i8, ptr %8, i32 -12
  %18 = load i32, ptr %0, align 4
  %19 = load i32, ptr %17, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %58

21:                                               ; preds = %16
  %22 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 1
  %23 = load volatile ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %40, label %25

25:                                               ; preds = %21
  %26 = icmp eq ptr %8, %1
  br i1 %26, label %34, label %27

27:                                               ; preds = %25
  %28 = getelementptr i8, ptr %8, i32 -8
  %29 = load volatile ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, %28
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %28, ptr %32, align 4
  store ptr %23, ptr %28, align 4
  %33 = getelementptr i8, ptr %8, i32 -4
  store ptr %22, ptr %33, align 4
  store volatile ptr %28, ptr %22, align 4
  br label %34

34:                                               ; preds = %31, %27, %25
  %35 = phi ptr [ %23, %27 ], [ %28, %31 ], [ %23, %25 ]
  %36 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 1, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %37, ptr %38, align 4
  store volatile ptr %35, ptr %37, align 4
  store volatile ptr %22, ptr %22, align 4
  store ptr %22, ptr %36, align 4
  %39 = load ptr, ptr %7, align 4
  br label %40

40:                                               ; preds = %34, %21
  %41 = phi ptr [ %8, %21 ], [ %39, %34 ]
  %42 = getelementptr inbounds %struct.plist_node, ptr %0, i32 0, i32 2, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %43, ptr %44, align 4
  store volatile ptr %41, ptr %43, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %42, align 4
  br label %45

45:                                               ; preds = %49, %40
  %46 = phi ptr [ %8, %40 ], [ %47, %49 ]
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, %1
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %47, i32 -12
  %51 = load i32, ptr %0, align 4
  %52 = load i32, ptr %50, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %45, label %54

54:                                               ; preds = %49, %45
  %55 = phi ptr [ %1, %45 ], [ %47, %49 ]
  %56 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  store ptr %7, ptr %56, align 4
  store ptr %55, ptr %7, align 4
  store ptr %57, ptr %42, align 4
  store volatile ptr %7, ptr %57, align 4
  br label %58

58:                                               ; preds = %54, %16, %11
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nofree norecurse nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2147963202, i64 2147963678, i64 2147963239, i64 2147963295, i64 2147963329, i64 2147963353, i64 2147963394, i64 2147963415, i64 2147963443, i64 2147963477}
!11 = !{i64 2147964214, i64 2147964690, i64 2147964251, i64 2147964307, i64 2147964341, i64 2147964365, i64 2147964406, i64 2147964427, i64 2147964455, i64 2147964489}
