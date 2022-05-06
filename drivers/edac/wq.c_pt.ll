; ModuleID = '/llk/IR/drivers/edac/wq.c_pt.bc'
source_filename = "../drivers/edac/wq.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_queue_work\22\09\09\09\09\09"
module asm "__kstrtabns_edac_queue_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_mod_work:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_mod_work\22\09\09\09\09\09"
module asm "__kstrtabns_edac_mod_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_edac_stop_work:\09\09\09\09\09"
module asm "\09.asciz \09\22edac_stop_work\22\09\09\09\09\09"
module asm "__kstrtabns_edac_stop_work:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@wq = internal unnamed_addr global ptr null, align 4
@__kstrtab_edac_queue_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_queue_work = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_queue_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_queue_work to i32), ptr @__kstrtab_edac_queue_work, ptr @__kstrtabns_edac_queue_work }, section "___ksymtab_gpl+edac_queue_work", align 4
@__kstrtab_edac_mod_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_mod_work = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_mod_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_mod_work to i32), ptr @__kstrtab_edac_mod_work, ptr @__kstrtabns_edac_mod_work }, section "___ksymtab_gpl+edac_mod_work", align 4
@__kstrtab_edac_stop_work = external dso_local constant [0 x i8], align 1
@__kstrtabns_edac_stop_work = external dso_local constant [0 x i8], align 1
@__ksymtab_edac_stop_work = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @edac_stop_work to i32), ptr @__kstrtab_edac_stop_work, ptr @__kstrtabns_edac_stop_work }, section "___ksymtab_gpl+edac_stop_work", align 4
@.str = private unnamed_addr constant [12 x i8] c"edac-poller\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_edac_mod_work, ptr @__ksymtab_edac_queue_work, ptr @__ksymtab_edac_stop_work], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @edac_queue_work(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @wq, align 4
  %4 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %0, i32 noundef %1) #2
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @edac_mod_work(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @wq, align 4
  %4 = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 16, ptr noundef %3, ptr noundef %0, i32 noundef %1) #2
  ret i1 %4
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @edac_stop_work(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %0) #2
  %3 = load ptr, ptr @wq, align 4
  tail call void @flush_workqueue(ptr noundef %3) #2
  ret i1 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @edac_workqueue_setup() local_unnamed_addr #0 {
  %1 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str, i32 noundef 655370, i32 noundef 1) #2
  store ptr %1, ptr @wq, align 4
  %2 = icmp eq ptr %1, null
  %3 = select i1 %2, i32 -19, i32 0
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @edac_workqueue_teardown() local_unnamed_addr #0 {
  %1 = load ptr, ptr @wq, align 4
  tail call void @flush_workqueue(ptr noundef %1) #2
  %2 = load ptr, ptr @wq, align 4
  tail call void @destroy_workqueue(ptr noundef %2) #2
  store ptr null, ptr @wq, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
