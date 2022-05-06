; ModuleID = '/llk/IR/crypto/testmgr.c_pt.bc'
source_filename = "../crypto/testmgr.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_alg_test:\09\09\09\09\09"
module asm "\09.asciz \09\22alg_test\22\09\09\09\09\09"
module asm "__kstrtabns_alg_test:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__UNIQUE_ID_import_ns222 = internal constant [36 x i8] c"cryptomgr.import_ns=CRYPTO_INTERNAL\00", section ".modinfo", align 1
@__param_str_notests = internal constant [18 x i8] c"cryptomgr.notests\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@notests = internal global i8 0, align 1
@__param_notests = internal constant %struct.kernel_param { ptr @__param_str_notests, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @notests } }, section "__param", align 4
@__UNIQUE_ID_noteststype223 = internal constant [32 x i8] c"cryptomgr.parmtype=notests:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_notests224 = internal constant [49 x i8] c"cryptomgr.parm=notests:disable crypto self-tests\00", section ".modinfo", align 1
@__param_str_panic_on_fail = internal constant [24 x i8] c"cryptomgr.panic_on_fail\00", align 1
@panic_on_fail = internal global i8 0, align 1
@__param_panic_on_fail = internal constant %struct.kernel_param { ptr @__param_str_panic_on_fail, ptr null, ptr @param_ops_bool, i16 292, i8 -1, i8 0, %union.anon.63 { ptr @panic_on_fail } }, section "__param", align 4
@__UNIQUE_ID_panic_on_failtype225 = internal constant [38 x i8] c"cryptomgr.parmtype=panic_on_fail:bool\00", section ".modinfo", align 1
@__kstrtab_alg_test = external dso_local constant [0 x i8], align 1
@__kstrtabns_alg_test = external dso_local constant [0 x i8], align 1
@__ksymtab_alg_test = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @alg_test to i32), ptr @__kstrtab_alg_test, ptr @__kstrtabns_alg_test }, section "___ksymtab_gpl+alg_test", align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_import_ns222, ptr @__UNIQUE_ID_notests224, ptr @__UNIQUE_ID_noteststype223, ptr @__UNIQUE_ID_panic_on_failtype225, ptr @__ksymtab_alg_test, ptr @__param_notests, ptr @__param_panic_on_fail], section "llvm.metadata"

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local i32 @alg_test(ptr nocapture readnone %0, ptr nocapture readnone %1, i32 %2, i32 %3) #0 {
  ret i32 0
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
