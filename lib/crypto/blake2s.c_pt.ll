; ModuleID = '/llk/IR/lib/crypto/blake2s.c_pt.bc'
source_filename = "../lib/crypto/blake2s.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blake2s_update:\09\09\09\09\09"
module asm "\09.asciz \09\22blake2s_update\22\09\09\09\09\09"
module asm "__kstrtabns_blake2s_update:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_blake2s_final:\09\09\09\09\09"
module asm "\09.asciz \09\22blake2s_final\22\09\09\09\09\09"
module asm "__kstrtabns_blake2s_final:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.blake2s_state = type { [8 x i32], [2 x i32], [2 x i32], [64 x i8], i32, i32 }

@__kstrtab_blake2s_update = external dso_local constant [0 x i8], align 1
@__kstrtabns_blake2s_update = external dso_local constant [0 x i8], align 1
@__ksymtab_blake2s_update = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blake2s_update to i32), ptr @__kstrtab_blake2s_update, ptr @__kstrtabns_blake2s_update }, section "___ksymtab+blake2s_update", align 4
@__kstrtab_blake2s_final = external dso_local constant [0 x i8], align 1
@__kstrtabns_blake2s_final = external dso_local constant [0 x i8], align 1
@__ksymtab_blake2s_final = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @blake2s_final to i32), ptr @__kstrtab_blake2s_final, ptr @__kstrtabns_blake2s_final }, section "___ksymtab+blake2s_final", align 4
@__initcall__kmod_libblake2s__104_45_blake2s_mod_init6 = internal global ptr @blake2s_mod_init, section ".initcall6.init", align 4
@__exitcall_blake2s_mod_exit = internal global ptr @blake2s_mod_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file105 = internal constant [38 x i8] c"libblake2s.file=lib/crypto/libblake2s\00", section ".modinfo", align 1
@__UNIQUE_ID_license106 = internal constant [26 x i8] c"libblake2s.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description107 = internal constant [45 x i8] c"libblake2s.description=BLAKE2s hash function\00", section ".modinfo", align 1
@__UNIQUE_ID_author108 = internal constant [55 x i8] c"libblake2s.author=Jason A. Donenfeld <Jason@zx2c4.com>\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_author108, ptr @__UNIQUE_ID_description107, ptr @__UNIQUE_ID_file105, ptr @__UNIQUE_ID_license106, ptr @__exitcall_blake2s_mod_exit, ptr @__initcall__kmod_libblake2s__104_45_blake2s_mod_init6, ptr @__ksymtab_blake2s_final, ptr @__ksymtab_blake2s_update, ptr @blake2s_mod_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blake2s_update(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.blake2s_state, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = sub i32 64, %5
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %37, label %8, !prof !8

8:                                                ; preds = %3
  %9 = icmp ult i32 %6, %2
  br i1 %9, label %10, label %15

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.blake2s_state, ptr %0, i32 0, i32 3
  %12 = getelementptr i8, ptr %11, i32 %5
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %12, ptr align 1 %1, i32 %6, i1 false) #5
  tail call void @blake2s_compress(ptr noundef %0, ptr noundef %11, i32 noundef 1, i32 noundef 64) #5
  store i32 0, ptr %4, align 4
  %13 = getelementptr i8, ptr %1, i32 %6
  %14 = sub i32 %2, %6
  br label %15

15:                                               ; preds = %10, %8
  %16 = phi i32 [ 0, %10 ], [ %5, %8 ]
  %17 = phi i32 [ %14, %10 ], [ %2, %8 ]
  %18 = phi ptr [ %13, %10 ], [ %1, %8 ]
  %19 = icmp ugt i32 %17, 64
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = add i32 %17, 63
  %22 = lshr i32 %21, 6
  %23 = add nsw i32 %22, -1
  tail call void @blake2s_compress(ptr noundef %0, ptr noundef %18, i32 noundef %23, i32 noundef 64) #5
  %24 = add i32 %17, -1
  %25 = and i32 %24, -64
  %26 = getelementptr i8, ptr %18, i32 %25
  %27 = sub i32 %17, %25
  %28 = load i32, ptr %4, align 4
  br label %29

29:                                               ; preds = %20, %15
  %30 = phi i32 [ %28, %20 ], [ %16, %15 ]
  %31 = phi i32 [ %27, %20 ], [ %17, %15 ]
  %32 = phi ptr [ %26, %20 ], [ %18, %15 ]
  %33 = getelementptr inbounds %struct.blake2s_state, ptr %0, i32 0, i32 3
  %34 = getelementptr i8, ptr %33, i32 %30
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %34, ptr align 1 %32, i32 %31, i1 false) #5
  %35 = load i32, ptr %4, align 4
  %36 = add i32 %35, %31
  store i32 %36, ptr %4, align 4
  br label %37

37:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @blake2s_final(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = getelementptr inbounds %struct.blake2s_state, ptr %0, i32 0, i32 2
  store i32 -1, ptr %3, align 4
  %4 = getelementptr inbounds %struct.blake2s_state, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.blake2s_state, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr i8, ptr %4, i32 %6
  %8 = sub i32 64, %6
  tail call void @llvm.memset.p0.i32(ptr align 1 %7, i8 0, i32 %8, i1 false) #5
  %9 = load i32, ptr %5, align 4
  tail call void @blake2s_compress(ptr noundef %0, ptr noundef %4, i32 noundef 1, i32 noundef %9) #5
  %10 = getelementptr inbounds %struct.blake2s_state, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %1, ptr align 4 %0, i32 %11, i1 false) #5
  tail call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(120) %0, i8 0, i32 120, i1 false) #5
  tail call void asm sideeffect "", "r,~{memory}"(ptr %0) #5, !srcloc !9
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal void @blake2s_mod_exit() #1 section ".exit.text" {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync)
define internal i32 @blake2s_mod_init() #1 section ".init.text" {
  ret i32 0
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blake2s_compress(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{i64 2147853258}
