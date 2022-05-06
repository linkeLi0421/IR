; ModuleID = '/llk/IR/net/core/netevent.c_pt.bc'
source_filename = "../net/core/netevent.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_register_netevent_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22register_netevent_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_register_netevent_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_unregister_netevent_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22unregister_netevent_notifier\22\09\09\09\09\09"
module asm "__kstrtabns_unregister_netevent_notifier:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_call_netevent_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22call_netevent_notifiers\22\09\09\09\09\09"
module asm "__kstrtabns_call_netevent_notifiers:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@netevent_notif_chain = internal global %struct.atomic_notifier_head zeroinitializer, align 4
@__kstrtab_register_netevent_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_register_netevent_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_register_netevent_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @register_netevent_notifier to i32), ptr @__kstrtab_register_netevent_notifier, ptr @__kstrtabns_register_netevent_notifier }, section "___ksymtab_gpl+register_netevent_notifier", align 4
@__kstrtab_unregister_netevent_notifier = external dso_local constant [0 x i8], align 1
@__kstrtabns_unregister_netevent_notifier = external dso_local constant [0 x i8], align 1
@__ksymtab_unregister_netevent_notifier = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @unregister_netevent_notifier to i32), ptr @__kstrtab_unregister_netevent_notifier, ptr @__kstrtabns_unregister_netevent_notifier }, section "___ksymtab_gpl+unregister_netevent_notifier", align 4
@__kstrtab_call_netevent_notifiers = external dso_local constant [0 x i8], align 1
@__kstrtabns_call_netevent_notifiers = external dso_local constant [0 x i8], align 1
@__ksymtab_call_netevent_notifiers = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @call_netevent_notifiers to i32), ptr @__kstrtab_call_netevent_notifiers, ptr @__kstrtabns_call_netevent_notifiers }, section "___ksymtab_gpl+call_netevent_notifiers", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_call_netevent_notifiers, ptr @__ksymtab_register_netevent_notifier, ptr @__ksymtab_unregister_netevent_notifier], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @register_netevent_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_register(ptr noundef nonnull @netevent_notif_chain, ptr noundef %0) #2
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @unregister_netevent_notifier(ptr noundef %0) #0 {
  %2 = tail call i32 @atomic_notifier_chain_unregister(ptr noundef nonnull @netevent_notif_chain, ptr noundef %0) #2
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @call_netevent_notifiers(i32 noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @atomic_notifier_call_chain(ptr noundef nonnull @netevent_notif_chain, i32 noundef %0, ptr noundef %1) #2
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
