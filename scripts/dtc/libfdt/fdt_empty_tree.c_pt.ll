; ModuleID = '/llk/IR/scripts/dtc/libfdt/fdt_empty_tree.c_pt.bc'
source_filename = "../scripts/dtc/libfdt/fdt_empty_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdt_create_empty_tree(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @fdt_create(ptr noundef %0, i32 noundef %1) #2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %19

5:                                                ; preds = %2
  %6 = tail call i32 @fdt_finish_reservemap(ptr noundef %0) #2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = tail call i32 @fdt_begin_node(ptr noundef %0, ptr noundef nonnull @.str) #2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %8
  %12 = tail call i32 @fdt_end_node(ptr noundef %0) #2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = tail call i32 @fdt_finish(ptr noundef %0) #2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = tail call i32 @fdt_open_into(ptr noundef %0, ptr noundef %0, i32 noundef %1) #2
  br label %19

19:                                               ; preds = %17, %14, %11, %8, %5, %2
  %20 = phi i32 [ %18, %17 ], [ %3, %2 ], [ %6, %5 ], [ %9, %8 ], [ %12, %11 ], [ %15, %14 ]
  ret i32 %20
}

declare i32 @fdt_create(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @fdt_finish_reservemap(ptr noundef) local_unnamed_addr #1

declare i32 @fdt_begin_node(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @fdt_end_node(ptr noundef) local_unnamed_addr #1

declare i32 @fdt_finish(ptr noundef) local_unnamed_addr #1

declare i32 @fdt_open_into(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
