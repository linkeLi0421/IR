; ModuleID = '/llk/IR/kernel/iomem.c_pt.bc'
source_filename = "../kernel/iomem.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memremap:\09\09\09\09\09"
module asm "\09.asciz \09\22memremap\22\09\09\09\09\09"
module asm "__kstrtabns_memremap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_memunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22memunmap\22\09\09\09\09\09"
module asm "__kstrtabns_memunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_memremap:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_memremap\22\09\09\09\09\09"
module asm "__kstrtabns_devm_memremap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_memunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_memunmap\22\09\09\09\09\09"
module asm "__kstrtabns_devm_memunmap:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.page = type { i32, %union.anon.1, %union.anon.58, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%struct.list_head = type { ptr, ptr }
%union.anon.58 = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@memremap.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = private unnamed_addr constant [15 x i8] c"kernel/iomem.c\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"memremap attempted on mixed range %pa size: %#lx\0A\00", align 1
@memremap.__already_done.2 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"memremap attempted on ram %pa size: %#lx\0A\00", align 1
@__kstrtab_memremap = external dso_local constant [0 x i8], align 1
@__kstrtabns_memremap = external dso_local constant [0 x i8], align 1
@__ksymtab_memremap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memremap to i32), ptr @__kstrtab_memremap, ptr @__kstrtabns_memremap }, section "___ksymtab+memremap", align 4
@__kstrtab_memunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_memunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_memunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @memunmap to i32), ptr @__kstrtab_memunmap, ptr @__kstrtabns_memunmap }, section "___ksymtab+memunmap", align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"devm_memremap_release\00", align 1
@__kstrtab_devm_memremap = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_memremap = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_memremap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_memremap to i32), ptr @__kstrtab_devm_memremap, ptr @__kstrtabns_devm_memremap }, section "___ksymtab+devm_memremap", align 4
@__kstrtab_devm_memunmap = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_memunmap = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_memunmap = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_memunmap to i32), ptr @__kstrtab_devm_memunmap, ptr @__kstrtabns_devm_memunmap }, section "___ksymtab+devm_memunmap", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@movable_zone = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_devm_memremap, ptr @__ksymtab_devm_memunmap, ptr @__ksymtab_memremap, ptr @__ksymtab_memunmap], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @memremap(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  %5 = tail call i32 @region_intersects(i32 noundef %0, i32 noundef %1, i32 noundef 16777728, i32 noundef 0) #3
  %6 = icmp eq i32 %2, 0
  br i1 %6, label %62, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %5, 2
  br i1 %8, label %9, label %12

9:                                                ; preds = %7
  %10 = load i1, ptr @memremap.__already_done, align 1
  br i1 %10, label %62, label %11, !prof !8

11:                                               ; preds = %9
  store i1 true, ptr @memremap.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 82, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef nonnull %4, i32 noundef %1) #3
  br label %62

12:                                               ; preds = %7
  %13 = and i32 %2, 1
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %40, label %15

15:                                               ; preds = %12
  %16 = icmp eq i32 %5, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %15
  %18 = lshr i32 %0, 12
  %19 = tail call i32 @pfn_valid(i32 noundef %18) #3
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr @mem_map, align 4
  %23 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %24 = sub i32 %18, %23
  %25 = getelementptr %struct.page, ptr %22, i32 %24
  %26 = load i32, ptr %25, align 4
  %27 = lshr i32 %26, 30
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %38, label %29

29:                                               ; preds = %21
  %30 = icmp ne i32 %27, 3
  %31 = load i32, ptr @movable_zone, align 4
  %32 = icmp ne i32 %31, 2
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = tail call i32 asm "@ __pv_stub\0A1:\09sub\09$0, $1, $2\0A2:\09sub\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %0, i32 -2130706432, i32 8454144) #4, !srcloc !9
  %36 = inttoptr i32 %35 to ptr
  %37 = icmp eq i32 %35, 0
  br i1 %37, label %38, label %62

38:                                               ; preds = %34, %29, %21, %17, %15
  %39 = tail call ptr @arch_memremap_wb(i32 noundef %0, i32 noundef %1) #3
  br label %40

40:                                               ; preds = %38, %12
  %41 = phi ptr [ %39, %38 ], [ null, %12 ]
  %42 = icmp eq ptr %41, null
  %43 = icmp eq i32 %5, 0
  %44 = select i1 %42, i1 %43, i1 false
  %45 = icmp ne i32 %2, 1
  %46 = and i1 %45, %44
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i1, ptr @memremap.__already_done.2, align 1
  br i1 %48, label %62, label %49, !prof !8

49:                                               ; preds = %47
  store i1 true, ptr @memremap.__already_done.2, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 108, i32 noundef 9, ptr noundef nonnull @.str.3, ptr noundef nonnull %4, i32 noundef %1) #3
  br label %62

50:                                               ; preds = %40
  br i1 %42, label %51, label %62

51:                                               ; preds = %50
  %52 = and i32 %2, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = tail call ptr @ioremap_wc(i32 noundef %0, i32 noundef %1) #3
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54, %51
  %58 = and i32 %2, 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = tail call ptr @ioremap_wc(i32 noundef %0, i32 noundef %1) #3
  br label %62

62:                                               ; preds = %60, %57, %54, %50, %49, %47, %34, %11, %9, %3
  %63 = phi ptr [ null, %3 ], [ null, %11 ], [ null, %9 ], [ null, %49 ], [ null, %47 ], [ %55, %54 ], [ %61, %60 ], [ null, %57 ], [ %36, %34 ], [ %41, %50 ]
  ret ptr %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @region_intersects(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @arch_memremap_wb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap_wc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @memunmap(ptr noundef %0) #0 {
  %2 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %0) #3
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  tail call void @iounmap(ptr noundef %0) #3
  br label %4

4:                                                ; preds = %3, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_memremap(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_memremap_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.4) #3
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @memremap(i32 noundef %1, i32 noundef %2, i32 noundef %3)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store ptr %8, ptr %5, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %5) #3
  br label %12

11:                                               ; preds = %7
  tail call void @devres_free(ptr noundef nonnull %5) #3
  br label %12

12:                                               ; preds = %11, %10, %4
  %13 = phi ptr [ %8, %10 ], [ inttoptr (i32 -6 to ptr), %11 ], [ inttoptr (i32 -12 to ptr), %4 ]
  ret ptr %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_memremap_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %3) #3
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @iounmap(ptr noundef %3) #3
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_memunmap(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_memremap_release, ptr noundef nonnull @devm_memremap_match, ptr noundef %1) #3
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 165, i32 noundef 9, ptr noundef null) #3
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @devm_memremap_match(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2) #2 {
  %4 = load ptr, ptr %1, align 4
  %5 = icmp eq ptr %4, %2
  %6 = zext i1 %5 to i32
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pfn_valid(i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone }

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
!9 = !{i64 2148771902, i64 2148771925, i64 2148771957, i64 2148771989, i64 2148772027, i64 2148772057}
