; ModuleID = '/llk/IR/fs/fs_types.c_pt.bc'
source_filename = "../fs/fs_types.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_ftype_to_dtype:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_ftype_to_dtype\22\09\09\09\09\09"
module asm "__kstrtabns_fs_ftype_to_dtype:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_umode_to_ftype:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_umode_to_ftype\22\09\09\09\09\09"
module asm "__kstrtabns_fs_umode_to_ftype:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fs_umode_to_dtype:\09\09\09\09\09"
module asm "\09.asciz \09\22fs_umode_to_dtype\22\09\09\09\09\09"
module asm "__kstrtabns_fs_umode_to_dtype:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@fs_dtype_by_ftype = internal unnamed_addr constant [8 x i8] c"\00\08\04\02\06\01\0C\0A", align 1
@__kstrtab_fs_ftype_to_dtype = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_ftype_to_dtype = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_ftype_to_dtype = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_ftype_to_dtype to i32), ptr @__kstrtab_fs_ftype_to_dtype, ptr @__kstrtabns_fs_ftype_to_dtype }, section "___ksymtab_gpl+fs_ftype_to_dtype", align 4
@fs_ftype_by_dtype = internal unnamed_addr constant [16 x i8] c"\00\05\03\00\02\00\04\00\01\00\07\00\06\00\00\00", align 1
@__kstrtab_fs_umode_to_ftype = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_umode_to_ftype = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_umode_to_ftype = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_umode_to_ftype to i32), ptr @__kstrtab_fs_umode_to_ftype, ptr @__kstrtabns_fs_umode_to_ftype }, section "___ksymtab_gpl+fs_umode_to_ftype", align 4
@__kstrtab_fs_umode_to_dtype = external dso_local constant [0 x i8], align 1
@__kstrtabns_fs_umode_to_dtype = external dso_local constant [0 x i8], align 1
@__ksymtab_fs_umode_to_dtype = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fs_umode_to_dtype to i32), ptr @__kstrtab_fs_umode_to_dtype, ptr @__kstrtabns_fs_umode_to_dtype }, section "___ksymtab_gpl+fs_umode_to_dtype", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_fs_ftype_to_dtype, ptr @__ksymtab_fs_umode_to_dtype, ptr @__ksymtab_fs_umode_to_ftype], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @fs_ftype_to_dtype(i32 noundef %0) #0 {
  %2 = icmp ugt i32 %0, 7
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr [8 x i8], ptr @fs_dtype_by_ftype, i32 0, i32 %0
  %5 = load i8, ptr %4, align 1
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i8 [ %5, %3 ], [ 0, %1 ]
  ret i8 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @fs_umode_to_ftype(i16 noundef zeroext %0) #0 {
  %2 = lshr i16 %0, 12
  %3 = zext i16 %2 to i32
  %4 = getelementptr [16 x i8], ptr @fs_ftype_by_dtype, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  ret i8 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @fs_umode_to_dtype(i16 noundef zeroext %0) #0 {
  %2 = lshr i16 %0, 12
  %3 = zext i16 %2 to i32
  %4 = getelementptr [16 x i8], ptr @fs_ftype_by_dtype, i32 0, i32 %3
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i32
  %7 = getelementptr [8 x i8], ptr @fs_dtype_by_ftype, i32 0, i32 %6
  %8 = load i8, ptr %7, align 1
  ret i8 %8
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
