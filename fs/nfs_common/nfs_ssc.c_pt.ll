; ModuleID = '/llk/IR/fs/nfs_common/nfs_ssc.c_pt.bc'
source_filename = "../fs/nfs_common/nfs_ssc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_ssc_client_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_ssc_client_tbl\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_ssc_client_tbl:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs42_ssc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs42_ssc_register\22\09\09\09\09\09"
module asm "__kstrtabns_nfs42_ssc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs42_ssc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs42_ssc_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_nfs42_ssc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_ssc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_ssc_register\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_ssc_register:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfs_ssc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22nfs_ssc_unregister\22\09\09\09\09\09"
module asm "__kstrtabns_nfs_ssc_unregister:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.nfs_ssc_client_ops_tbl = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__UNIQUE_ID_file446 = internal constant [35 x i8] c"nfs_ssc.file=fs/nfs_common/nfs_ssc\00", section ".modinfo", align 1
@__UNIQUE_ID_license447 = internal constant [20 x i8] c"nfs_ssc.license=GPL\00", section ".modinfo", align 1
@nfs_ssc_client_tbl = dso_local global %struct.nfs_ssc_client_ops_tbl zeroinitializer, align 4
@__kstrtab_nfs_ssc_client_tbl = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_ssc_client_tbl = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_ssc_client_tbl = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_ssc_client_tbl to i32), ptr @__kstrtab_nfs_ssc_client_tbl, ptr @__kstrtabns_nfs_ssc_client_tbl }, section "___ksymtab_gpl+nfs_ssc_client_tbl", align 4
@__kstrtab_nfs42_ssc_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs42_ssc_register = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs42_ssc_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs42_ssc_register to i32), ptr @__kstrtab_nfs42_ssc_register, ptr @__kstrtabns_nfs42_ssc_register }, section "___ksymtab_gpl+nfs42_ssc_register", align 4
@__kstrtab_nfs42_ssc_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs42_ssc_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs42_ssc_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs42_ssc_unregister to i32), ptr @__kstrtab_nfs42_ssc_unregister, ptr @__kstrtabns_nfs42_ssc_unregister }, section "___ksymtab_gpl+nfs42_ssc_unregister", align 4
@__kstrtab_nfs_ssc_register = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_ssc_register = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_ssc_register = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_ssc_register to i32), ptr @__kstrtab_nfs_ssc_register, ptr @__kstrtabns_nfs_ssc_register }, section "___ksymtab_gpl+nfs_ssc_register", align 4
@__kstrtab_nfs_ssc_unregister = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfs_ssc_unregister = external dso_local constant [0 x i8], align 1
@__ksymtab_nfs_ssc_unregister = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfs_ssc_unregister to i32), ptr @__kstrtab_nfs_ssc_unregister, ptr @__kstrtabns_nfs_ssc_unregister }, section "___ksymtab_gpl+nfs_ssc_unregister", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_file446, ptr @__UNIQUE_ID_license447, ptr @__ksymtab_nfs42_ssc_register, ptr @__ksymtab_nfs42_ssc_unregister, ptr @__ksymtab_nfs_ssc_client_tbl, ptr @__ksymtab_nfs_ssc_register, ptr @__ksymtab_nfs_ssc_unregister], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfs42_ssc_register(ptr noundef %0) #0 {
  store ptr %0, ptr @nfs_ssc_client_tbl, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nfs42_ssc_unregister(ptr nocapture noundef readnone %0) #1 {
  %2 = load ptr, ptr @nfs_ssc_client_tbl, align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr null, ptr @nfs_ssc_client_tbl, align 4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nfs_ssc_register(ptr noundef %0) #0 {
  store ptr %0, ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1), align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @nfs_ssc_unregister(ptr noundef readnone %0) #1 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1), align 4
  %3 = icmp eq ptr %2, %0
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  store ptr null, ptr getelementptr inbounds (%struct.nfs_ssc_client_ops_tbl, ptr @nfs_ssc_client_tbl, i32 0, i32 1), align 4
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }

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
