; ModuleID = '/llk/IR/net/nfc/hci/llc.c_pt.bc'
source_filename = "../net/nfc/hci/llc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_llc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_llc_start\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_llc_start:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nfc_llc_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22nfc_llc_stop\22\09\09\09\09\09"
module asm "__kstrtabns_nfc_llc_stop:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.list_head = type { ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nfc_llc_engine = type { ptr, ptr, %struct.list_head }
%struct.nfc_llc = type { ptr, ptr, i32, i32 }
%struct.nfc_llc_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@llc_engines = internal global %struct.list_head { ptr @llc_engines, ptr @llc_engines }, align 4
@__kstrtab_nfc_llc_start = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_llc_start = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_llc_start = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_llc_start to i32), ptr @__kstrtab_nfc_llc_start, ptr @__kstrtabns_nfc_llc_start }, section "___ksymtab+nfc_llc_start", align 4
@__kstrtab_nfc_llc_stop = external dso_local constant [0 x i8], align 1
@__kstrtabns_nfc_llc_stop = external dso_local constant [0 x i8], align 1
@__ksymtab_nfc_llc_stop = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nfc_llc_stop to i32), ptr @__kstrtab_nfc_llc_stop, ptr @__kstrtabns_nfc_llc_stop }, section "___ksymtab+nfc_llc_stop", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_nfc_llc_start, ptr @__ksymtab_nfc_llc_stop], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_init() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @nfc_llc_nop_register() #6
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %6

3:                                                ; preds = %0
  %4 = tail call i32 @nfc_llc_shdlc_register() #6
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %3, %0
  %7 = phi i32 [ %1, %0 ], [ %4, %3 ]
  tail call void @nfc_llc_exit()
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ 0, %3 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_nop_register() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nfc_llc_shdlc_register() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llc_exit() local_unnamed_addr #2 {
  %1 = load ptr, ptr @llc_engines, align 4
  %2 = icmp eq ptr %1, @llc_engines
  br i1 %2, label %12, label %3

3:                                                ; preds = %3, %0
  %4 = phi ptr [ %6, %3 ], [ %1, %0 ]
  %5 = getelementptr i8, ptr %4, i32 -8
  %6 = load ptr, ptr %4, align 4
  %7 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %8, ptr %9, align 4
  store volatile ptr %6, ptr %8, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %7, align 4
  %10 = load ptr, ptr %5, align 4
  tail call void @kfree(ptr noundef %10) #6
  tail call void @kfree(ptr noundef %5) #6
  %11 = icmp eq ptr %6, @llc_engines
  br i1 %11, label %12, label %3

12:                                               ; preds = %3, %0
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_register(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 16) #7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = tail call noalias ptr @kstrdup(ptr noundef %0, i32 noundef 3264) #6
  store ptr %7, ptr %4, align 8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %6
  tail call void @kfree(ptr noundef nonnull %4) #6
  br label %15

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.nfc_llc_engine, ptr %4, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nfc_llc_engine, ptr %4, i32 0, i32 2
  store volatile ptr %12, ptr %12, align 8
  %13 = getelementptr inbounds %struct.nfc_llc_engine, ptr %4, i32 0, i32 2, i32 1
  %14 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @llc_engines, i32 0, i32 1), align 4
  store ptr %12, ptr getelementptr inbounds (%struct.list_head, ptr @llc_engines, i32 0, i32 1), align 4
  store ptr @llc_engines, ptr %12, align 8
  store ptr %14, ptr %13, align 4
  store volatile ptr %12, ptr %14, align 4
  br label %15

15:                                               ; preds = %10, %9, %2
  %16 = phi i32 [ -12, %9 ], [ 0, %10 ], [ -12, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llc_unregister(ptr nocapture noundef readonly %0) local_unnamed_addr #2 {
  br label %2

2:                                                ; preds = %6, %1
  %3 = phi ptr [ @llc_engines, %1 ], [ %4, %6 ]
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, @llc_engines
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr i8, ptr %4, i32 -8
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @strcmp(ptr noundef %8, ptr noundef %0) #6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %2

11:                                               ; preds = %6
  %12 = getelementptr i8, ptr %4, i32 -8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %4, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  %19 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %19) #6
  tail call void @kfree(ptr noundef nonnull %12) #6
  br label %20

20:                                               ; preds = %14, %11, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nfc_llc_allocate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #2 {
  br label %8

8:                                                ; preds = %12, %7
  %9 = phi ptr [ @llc_engines, %7 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, @llc_engines
  br i1 %11, label %36, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 -8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @strcmp(ptr noundef %14, ptr noundef %0) #6
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %8

17:                                               ; preds = %12
  %18 = getelementptr i8, ptr %10, i32 -8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %17
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 16) #7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %10, i32 -4
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nfc_llc, ptr %22, i32 0, i32 2
  %29 = getelementptr inbounds %struct.nfc_llc, ptr %22, i32 0, i32 3
  %30 = tail call ptr %27(ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %28, ptr noundef %29, ptr noundef %6) #6
  store ptr %30, ptr %22, align 8
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  tail call void @kfree(ptr noundef nonnull %22) #6
  br label %36

33:                                               ; preds = %24
  %34 = load ptr, ptr %25, align 4
  %35 = getelementptr inbounds %struct.nfc_llc, ptr %22, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  br label %36

36:                                               ; preds = %33, %32, %20, %17, %8
  %37 = phi ptr [ null, %32 ], [ %22, %33 ], [ null, %17 ], [ null, %20 ], [ null, %8 ]
  ret ptr %37
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llc_free(ptr noundef %0) local_unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.nfc_llc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfc_llc_ops, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #6
  tail call void @kfree(ptr noundef %0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.nfc_llc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfc_llc_ops, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_stop(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.nfc_llc, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nfc_llc_ops, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 %5(ptr noundef %0) #6
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nfc_llc_rcv_from_drv(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.nfc_llc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfc_llc_ops, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  tail call void %6(ptr noundef %0, ptr noundef %1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nfc_llc_xmit_from_hci(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.nfc_llc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nfc_llc_ops, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 %6(ptr noundef %0, ptr noundef %1) #6
  ret i32 %7
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @nfc_llc_get_data(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = load ptr, ptr %0, align 4
  ret ptr %2
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(2) }

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
