; ModuleID = '/llk/IR/sound/hda/array.c_pt.bc'
source_filename = "../sound/hda/array.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_array_new:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_array_new\22\09\09\09\09\09"
module asm "__kstrtabns_snd_array_new:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_array_free:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_array_free\22\09\09\09\09\09"
module asm "__kstrtabns_snd_array_free:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_array = type { i32, i32, i32, i32, ptr }

@__kstrtab_snd_array_new = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_array_new = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_array_new = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_array_new to i32), ptr @__kstrtab_snd_array_new, ptr @__kstrtabns_snd_array_new }, section "___ksymtab_gpl+snd_array_new", align 4
@__kstrtab_snd_array_free = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_array_free = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_array_free = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_array_free to i32), ptr @__kstrtab_snd_array_free, ptr @__kstrtabns_snd_array_free }, section "___ksymtab_gpl+snd_array_free", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_snd_array_free, ptr @__ksymtab_snd_array_new], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @snd_array_new(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 2
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %38, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 4
  %7 = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  br label %31

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = add i32 %15, %8
  %17 = mul i32 %8, %3
  %18 = add i32 %16, 1
  %19 = mul i32 %18, %3
  %20 = icmp sgt i32 %16, 4095
  br i1 %20, label %38, label %21

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 4
  %23 = load ptr, ptr %22, align 4
  %24 = tail call noalias ptr @krealloc(ptr noundef %23, i32 noundef %19, i32 noundef 3264) #4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %38, label %26

26:                                               ; preds = %21
  %27 = getelementptr i8, ptr %24, i32 %17
  %28 = sub i32 %19, %17
  tail call void @llvm.memset.p0.i32(ptr align 1 %27, i8 0, i32 %28, i1 false)
  store ptr %24, ptr %22, align 4
  store i32 %16, ptr %7, align 4
  %29 = load i32, ptr %0, align 4
  %30 = load i32, ptr %2, align 4
  br label %31

31:                                               ; preds = %26, %10
  %32 = phi i32 [ %30, %26 ], [ %3, %10 ]
  %33 = phi ptr [ %24, %26 ], [ %12, %10 ]
  %34 = phi i32 [ %29, %26 ], [ %6, %10 ]
  %35 = add i32 %34, 1
  store i32 %35, ptr %0, align 4
  %36 = mul i32 %32, %34
  %37 = getelementptr i8, ptr %33, i32 %36
  br label %38

38:                                               ; preds = %31, %21, %13, %1
  %39 = phi ptr [ %37, %31 ], [ null, %1 ], [ null, %13 ], [ null, %21 ]
  ret ptr %39
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @snd_array_free(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 4
  %3 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %3) #5
  store i32 0, ptr %0, align 4
  %4 = getelementptr inbounds %struct.snd_array, ptr %0, i32 0, i32 1
  store i32 0, ptr %4, align 4
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(1) }
attributes #5 = { nounwind }

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
