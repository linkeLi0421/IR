; ModuleID = '/llk/IR/drivers/usb/core/notify.c_pt.bc'
source_filename = "../drivers/usb/core/notify.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_register_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_register_notify\22\09\09\09\09\09"
module asm "__kstrtabns_usb_register_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_usb_unregister_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22usb_unregister_notify\22\09\09\09\09\09"
module asm "__kstrtabns_usb_unregister_notify:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@usb_notifier_list = internal global %struct.blocking_notifier_head { %struct.rw_semaphore { %struct.atomic_t zeroinitializer, %struct.atomic_t zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @usb_notifier_list, i64 16), ptr getelementptr (i8, ptr @usb_notifier_list, i64 16) } }, ptr null }, align 4
@__kstrtab_usb_register_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_register_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_register_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_register_notify to i32), ptr @__kstrtab_usb_register_notify, ptr @__kstrtabns_usb_register_notify }, section "___ksymtab_gpl+usb_register_notify", align 4
@__kstrtab_usb_unregister_notify = external dso_local constant [0 x i8], align 1
@__kstrtabns_usb_unregister_notify = external dso_local constant [0 x i8], align 1
@__ksymtab_usb_unregister_notify = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @usb_unregister_notify to i32), ptr @__kstrtab_usb_unregister_notify, ptr @__kstrtabns_usb_unregister_notify }, section "___ksymtab_gpl+usb_unregister_notify", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_usb_register_notify, ptr @__ksymtab_usb_unregister_notify], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_register_notify(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_register(ptr noundef nonnull @usb_notifier_list, ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_unregister_notify(ptr noundef %0) #0 {
  %2 = tail call i32 @blocking_notifier_chain_unregister(ptr noundef nonnull @usb_notifier_list, ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_notify_add_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @usb_notifier_list, i32 noundef 1, ptr noundef %0) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blocking_notifier_call_chain(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_notify_remove_device(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @usb_notifier_list, i32 noundef 2, ptr noundef %0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_notify_add_bus(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @usb_notifier_list, i32 noundef 3, ptr noundef %0) #2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @usb_notify_remove_bus(ptr noundef %0) local_unnamed_addr #0 {
  %2 = tail call i32 @blocking_notifier_call_chain(ptr noundef nonnull @usb_notifier_list, i32 noundef 4, ptr noundef %0) #2
  ret void
}

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
