; ModuleID = '/llk/IR/arch/arm/boot/compressed/misc.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/misc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

@__stack_chk_guard = local_unnamed_addr constant i32 658943, align 4
@output_data = local_unnamed_addr global ptr null, align 4
@free_mem_ptr = local_unnamed_addr global i32 0, align 4
@free_mem_end_ptr = local_unnamed_addr global i32 0, align 4
@__machine_arch_type = local_unnamed_addr global i32 0, align 4
@input_data = external global [0 x i8], align 1
@input_data_end = external global [0 x i8], align 1

; Function Attrs: nofree norecurse noreturn nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define void @error(ptr nocapture noundef %0) #0 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %4, %2 ], [ %0, %1 ]
  %4 = getelementptr i8, ptr %3, i32 1
  %5 = load i8, ptr %3, align 1
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %2

7:                                                ; preds = %7, %2
  br label %7
}

; Function Attrs: nofree norecurse noreturn nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define void @__div0() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  br label %1
}

; Function Attrs: nofree norecurse noreturn nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define void @__stack_chk_fail() local_unnamed_addr #0 {
  br label %1

1:                                                ; preds = %1, %0
  br label %1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define void @decompress_kernel(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 {
  %5 = inttoptr i32 %0 to ptr
  store ptr %5, ptr @output_data, align 4
  store i32 %1, ptr @free_mem_ptr, align 4
  store i32 %2, ptr @free_mem_end_ptr, align 4
  store i32 %3, ptr @__machine_arch_type, align 4
  %6 = tail call i32 @do_decompress(ptr noundef nonnull @input_data, i32 noundef sub (i32 ptrtoint (ptr @input_data_end to i32), i32 ptrtoint (ptr @input_data to i32)), ptr noundef %5, ptr noundef nonnull @error) #3
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  ret void

9:                                                ; preds = %9, %4
  br label %9
}

; Function Attrs: null_pointer_is_valid
declare i32 @do_decompress(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse noreturn nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define void @fortify_panic(ptr nocapture noundef %0) local_unnamed_addr #0 {
  br label %2

2:                                                ; preds = %2, %1
  br label %2
}

attributes #0 = { nofree norecurse noreturn nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nobuiltin nounwind "no-builtins" }

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
