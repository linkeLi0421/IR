; ModuleID = '/llk/IR/drivers/gpu/drm/drm_cache.c_pt.bc'
source_filename = "../drivers/gpu/drm/drm_cache.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_clflush_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_clflush_pages\22\09\09\09\09\09"
module asm "__kstrtabns_drm_clflush_pages:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_clflush_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_clflush_sg\22\09\09\09\09\09"
module asm "__kstrtabns_drm_clflush_sg:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_clflush_virt_range:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_clflush_virt_range\22\09\09\09\09\09"
module asm "__kstrtabns_drm_clflush_virt_range:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_need_swiotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_need_swiotlb\22\09\09\09\09\09"
module asm "__kstrtabns_drm_need_swiotlb:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_drm_memcpy_from_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22drm_memcpy_from_wc\22\09\09\09\09\09"
module asm "__kstrtabns_drm_memcpy_from_wc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.dma_buf_map = type { %union.anon.63, i8 }
%union.anon.63 = type { ptr }

@.str = private unnamed_addr constant [43 x i8] c"\013Architecture has no drm_cache.c support\0A\00", align 1
@drm_clflush_pages.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"drivers/gpu/drm/drm_cache.c\00", align 1
@__kstrtab_drm_clflush_pages = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_clflush_pages = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_clflush_pages = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_clflush_pages to i32), ptr @__kstrtab_drm_clflush_pages, ptr @__kstrtabns_drm_clflush_pages }, section "___ksymtab+drm_clflush_pages", align 4
@drm_clflush_sg.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_drm_clflush_sg = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_clflush_sg = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_clflush_sg = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_clflush_sg to i32), ptr @__kstrtab_drm_clflush_sg, ptr @__kstrtabns_drm_clflush_sg }, section "___ksymtab+drm_clflush_sg", align 4
@drm_clflush_virt_range.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_drm_clflush_virt_range = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_clflush_virt_range = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_clflush_virt_range = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_clflush_virt_range to i32), ptr @__kstrtab_drm_clflush_virt_range, ptr @__kstrtabns_drm_clflush_virt_range }, section "___ksymtab+drm_clflush_virt_range", align 4
@iomem_resource = external dso_local local_unnamed_addr global %struct.resource, align 4
@__kstrtab_drm_need_swiotlb = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_need_swiotlb = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_need_swiotlb = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_need_swiotlb to i32), ptr @__kstrtab_drm_need_swiotlb, ptr @__kstrtabns_drm_need_swiotlb }, section "___ksymtab+drm_need_swiotlb", align 4
@__kstrtab_drm_memcpy_from_wc = external dso_local constant [0 x i8], align 1
@__kstrtabns_drm_memcpy_from_wc = external dso_local constant [0 x i8], align 1
@__ksymtab_drm_memcpy_from_wc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @drm_memcpy_from_wc to i32), ptr @__kstrtab_drm_memcpy_from_wc, ptr @__kstrtabns_drm_memcpy_from_wc }, section "___ksymtab+drm_memcpy_from_wc", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_drm_clflush_pages, ptr @__ksymtab_drm_clflush_sg, ptr @__ksymtab_drm_clflush_virt_range, ptr @__ksymtab_drm_memcpy_from_wc, ptr @__ksymtab_drm_need_swiotlb], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_clflush_pages(ptr nocapture readnone %0, i32 %1) #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %4 = load i1, ptr @drm_clflush_pages.__already_done, align 1
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %2
  store i1 true, ptr @drm_clflush_pages.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 116, i32 noundef 9, ptr noundef null) #11
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_clflush_sg(ptr nocapture readnone %0) #0 {
  %2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %3 = load i1, ptr @drm_clflush_sg.__already_done, align 1
  br i1 %3, label %5, label %4, !prof !8

4:                                                ; preds = %1
  store i1 true, ptr @drm_clflush_sg.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 147, i32 noundef 9, ptr noundef null) #11
  br label %5

5:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_clflush_virt_range(ptr nocapture readnone %0, i32 %1) #0 {
  %3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  %4 = load i1, ptr @drm_clflush_virt_range.__already_done, align 1
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %2
  store i1 true, ptr @drm_clflush_virt_range.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 181, i32 noundef 9, ptr noundef null) #11
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local zeroext i1 @drm_need_swiotlb(i32 noundef %0) #4 {
  %2 = load ptr, ptr getelementptr inbounds (%struct.resource, ptr @iomem_resource, i32 0, i32 7), align 4
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %4, %1
  %5 = phi ptr [ %11, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %9, %4 ], [ 0, %1 ]
  %7 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = tail call i32 @llvm.umax.i32(i32 %6, i32 %8)
  %10 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %4

13:                                               ; preds = %4, %1
  %14 = phi i32 [ 0, %1 ], [ %9, %4 ]
  %15 = zext i32 %14 to i64
  %16 = zext i32 %0 to i64
  %17 = shl nuw i64 1, %16
  %18 = icmp ult i64 %17, %15
  ret i1 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @drm_memcpy_from_wc(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [128 x i8], align 1
  %5 = tail call ptr @llvm.thread.pointer() #11
  %6 = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %7 = load volatile i32, ptr %6, align 4
  %8 = and i32 %7, 15728640
  %9 = load volatile i32, ptr %6, align 4
  %10 = and i32 %9, 983040
  %11 = or i32 %10, %8
  %12 = load volatile i32, ptr %6, align 4
  %13 = and i32 %12, 65280
  %14 = or i32 %11, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %17, label %16, !prof !8

16:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 350, i32 noundef 9, ptr noundef null) #11
  br label %17

17:                                               ; preds = %16, %3
  %18 = getelementptr inbounds %struct.dma_buf_map, ptr %0, i32 0, i32 1
  %19 = load i8, ptr %18, align 4, !range !9
  %20 = icmp eq i8 %19, 0
  %21 = getelementptr inbounds %struct.dma_buf_map, ptr %1, i32 0, i32 1
  %22 = load i8, ptr %21, align 4, !range !9
  %23 = icmp eq i8 %22, 0
  br i1 %20, label %24, label %28

24:                                               ; preds = %17
  %25 = load ptr, ptr %0, align 4
  %26 = load ptr, ptr %1, align 4
  br i1 %23, label %27, label %32

27:                                               ; preds = %24
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %25, ptr align 1 %26, i32 %2, i1 false) #11
  br label %52

28:                                               ; preds = %17
  br i1 %23, label %29, label %33

29:                                               ; preds = %28
  %30 = load ptr, ptr %1, align 4
  %31 = load ptr, ptr %0, align 4
  tail call void @mmiocpy(ptr noundef %31, ptr noundef %30, i32 noundef %2) #11
  br label %52

32:                                               ; preds = %24
  tail call void @mmiocpy(ptr noundef %25, ptr noundef %26, i32 noundef %2) #11
  br label %52

33:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(128) %4, i8 0, i32 128, i1 false) #11, !annotation !10
  %34 = load ptr, ptr %1, align 4
  %35 = load ptr, ptr %0, align 4
  %36 = icmp ugt i32 %2, 127
  br i1 %36, label %37, label %45

37:                                               ; preds = %37, %33
  %38 = phi ptr [ %42, %37 ], [ %35, %33 ]
  %39 = phi ptr [ %41, %37 ], [ %34, %33 ]
  %40 = phi i32 [ %43, %37 ], [ %2, %33 ]
  call void @mmiocpy(ptr noundef nonnull %4, ptr noundef %39, i32 noundef 128) #11
  call void @mmiocpy(ptr noundef %38, ptr noundef nonnull %4, i32 noundef 128) #11
  %41 = getelementptr i8, ptr %39, i32 128
  %42 = getelementptr i8, ptr %38, i32 128
  %43 = add i32 %40, -128
  %44 = icmp ugt i32 %43, 127
  br i1 %44, label %37, label %45

45:                                               ; preds = %37, %33
  %46 = phi i32 [ %2, %33 ], [ %43, %37 ]
  %47 = phi ptr [ %34, %33 ], [ %41, %37 ]
  %48 = phi ptr [ %35, %33 ], [ %42, %37 ]
  %49 = icmp eq i32 %46, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  call void @mmiocpy(ptr noundef nonnull %4, ptr noundef %47, i32 noundef 128) #11
  call void @mmiocpy(ptr noundef %48, ptr noundef nonnull %4, i32 noundef 128) #11
  br label %51

51:                                               ; preds = %50, %45
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #11
  br label %52

52:                                               ; preds = %51, %32, %29, %27
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define dso_local void @drm_memcpy_init_early() local_unnamed_addr #5 {
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind }

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
!8 = !{!"branch_weights", i32 2000, i32 1}
!9 = !{i8 0, i8 2}
!10 = !{!"auto-init"}
