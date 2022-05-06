; ModuleID = '/llk/IR/lib/llist.c_pt.bc'
source_filename = "../lib/llist.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llist_add_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22llist_add_batch\22\09\09\09\09\09"
module asm "__kstrtabns_llist_add_batch:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llist_del_first:\09\09\09\09\09"
module asm "\09.asciz \09\22llist_del_first\22\09\09\09\09\09"
module asm "__kstrtabns_llist_del_first:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_llist_reverse_order:\09\09\09\09\09"
module asm "\09.asciz \09\22llist_reverse_order\22\09\09\09\09\09"
module asm "__kstrtabns_llist_reverse_order:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_llist_add_batch = external dso_local constant [0 x i8], align 1
@__kstrtabns_llist_add_batch = external dso_local constant [0 x i8], align 1
@__ksymtab_llist_add_batch = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llist_add_batch to i32), ptr @__kstrtab_llist_add_batch, ptr @__kstrtabns_llist_add_batch }, section "___ksymtab_gpl+llist_add_batch", align 4
@__kstrtab_llist_del_first = external dso_local constant [0 x i8], align 1
@__kstrtabns_llist_del_first = external dso_local constant [0 x i8], align 1
@__ksymtab_llist_del_first = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llist_del_first to i32), ptr @__kstrtab_llist_del_first, ptr @__kstrtabns_llist_del_first }, section "___ksymtab_gpl+llist_del_first", align 4
@__kstrtab_llist_reverse_order = external dso_local constant [0 x i8], align 1
@__kstrtabns_llist_reverse_order = external dso_local constant [0 x i8], align 1
@__ksymtab_llist_reverse_order = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @llist_reverse_order to i32), ptr @__kstrtab_llist_reverse_order, ptr @__kstrtabns_llist_reverse_order }, section "___ksymtab_gpl+llist_reverse_order", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_llist_add_batch, ptr @__ksymtab_llist_del_first, ptr @__ksymtab_llist_reverse_order], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @llist_add_batch(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr noundef %2) #0 {
  %4 = ptrtoint ptr %0 to i32
  br label %5

5:                                                ; preds = %12, %3
  %6 = load volatile ptr, ptr %2, align 4
  store ptr %6, ptr %1, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !8
  %7 = ptrtoint ptr %6 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %2) #2, !srcloc !9
  br label %8

8:                                                ; preds = %8, %5
  %9 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %2, i32 %7, i32 %4) #2, !srcloc !10
  %10 = extractvalue { i32, i32 } %9, 0
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = extractvalue { i32, i32 } %9, 1
  %14 = inttoptr i32 %13 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !11
  %15 = icmp eq ptr %6, %14
  br i1 %15, label %16, label %5

16:                                               ; preds = %12
  %17 = icmp eq ptr %6, null
  ret i1 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @llist_del_first(ptr noundef %0) #0 {
  %2 = load volatile ptr, ptr %0, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !12
  br label %3

3:                                                ; preds = %14, %1
  %4 = phi ptr [ %2, %1 ], [ %16, %14 ]
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = load volatile ptr, ptr %4, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !13
  %8 = ptrtoint ptr %4 to i32
  %9 = ptrtoint ptr %7 to i32
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #2, !srcloc !9
  br label %10

10:                                               ; preds = %10, %6
  %11 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %0, i32 %8, i32 %9) #2, !srcloc !10
  %12 = extractvalue { i32, i32 } %11, 0
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %10

14:                                               ; preds = %10
  %15 = extractvalue { i32, i32 } %11, 1
  %16 = inttoptr i32 %15 to ptr
  tail call void asm sideeffect "dmb ish", "~{memory}"() #2, !srcloc !14
  %17 = icmp eq ptr %4, %16
  br i1 %17, label %18, label %3

18:                                               ; preds = %14, %3
  ret ptr %4
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @llist_reverse_order(ptr noundef %0) #1 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %3, %1
  %4 = phi ptr [ %6, %3 ], [ %0, %1 ]
  %5 = phi ptr [ %4, %3 ], [ null, %1 ]
  %6 = load ptr, ptr %4, align 4
  store ptr %5, ptr %4, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %3

8:                                                ; preds = %3, %1
  %9 = phi ptr [ null, %1 ], [ %4, %3 ]
  ret ptr %9
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }

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
!8 = !{i64 2148416959}
!9 = !{i64 410967, i64 2147900938, i64 2147900964, i64 2147901011, i64 2147901033, i64 2147901061, i64 2147901081}
!10 = !{i64 423138, i64 423159, i64 423182, i64 423201, i64 423220}
!11 = !{i64 2148417346}
!12 = !{i64 2148428310}
!13 = !{i64 2148432053}
!14 = !{i64 2148432439}
