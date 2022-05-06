; ModuleID = '/llk/IR/lib/fdt_empty_tree.c_pt.bc'
source_filename = "../lib/fdt_empty_tree.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: nounwind null_pointer_is_valid optsize uwtable(sync)
define hidden i32 @fdt_create_empty_tree(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
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

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_finish_reservemap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_begin_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_end_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_finish(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid optsize
declare hidden i32 @fdt_open_into(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid optsize uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid optsize "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nobuiltin nounwind optsize "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (/llk/llvm-project-main/clang 126a1f78513fb688819156df98cf7ea83b5e8c18)"}
