; ModuleID = '/llk/IR/drivers/clk/clk-devres.c_pt.bc'
source_filename = "../drivers/clk/clk-devres.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_get_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_get_optional\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_get_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_bulk_get\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_bulk_get_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_bulk_get_optional\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_bulk_get_optional:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_bulk_get_all:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_bulk_get_all\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_bulk_get_all:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_clk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_clk_put\22\09\09\09\09\09"
module asm "__kstrtabns_devm_clk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_devm_get_clk_from_child:\09\09\09\09\09"
module asm "\09.asciz \09\22devm_get_clk_from_child\22\09\09\09\09\09"
module asm "__kstrtabns_devm_get_clk_from_child:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_bulk_devres = type { ptr, i32 }

@.str = private unnamed_addr constant [17 x i8] c"devm_clk_release\00", align 1
@__kstrtab_devm_clk_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_get to i32), ptr @__kstrtab_devm_clk_get, ptr @__kstrtabns_devm_clk_get }, section "___ksymtab+devm_clk_get", align 4
@__kstrtab_devm_clk_get_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_get_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_get_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_get_optional to i32), ptr @__kstrtab_devm_clk_get_optional, ptr @__kstrtabns_devm_clk_get_optional }, section "___ksymtab+devm_clk_get_optional", align 4
@__kstrtab_devm_clk_bulk_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_bulk_get = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_bulk_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_bulk_get to i32), ptr @__kstrtab_devm_clk_bulk_get, ptr @__kstrtabns_devm_clk_bulk_get }, section "___ksymtab_gpl+devm_clk_bulk_get", align 4
@__kstrtab_devm_clk_bulk_get_optional = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_bulk_get_optional = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_bulk_get_optional = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_bulk_get_optional to i32), ptr @__kstrtab_devm_clk_bulk_get_optional, ptr @__kstrtabns_devm_clk_bulk_get_optional }, section "___ksymtab_gpl+devm_clk_bulk_get_optional", align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"devm_clk_bulk_release_all\00", align 1
@__kstrtab_devm_clk_bulk_get_all = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_bulk_get_all = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_bulk_get_all = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_bulk_get_all to i32), ptr @__kstrtab_devm_clk_bulk_get_all, ptr @__kstrtabns_devm_clk_bulk_get_all }, section "___ksymtab_gpl+devm_clk_bulk_get_all", align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"drivers/clk/clk-devres.c\00", align 1
@__kstrtab_devm_clk_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_clk_put = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_clk_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_clk_put to i32), ptr @__kstrtab_devm_clk_put, ptr @__kstrtabns_devm_clk_put }, section "___ksymtab+devm_clk_put", align 4
@__kstrtab_devm_get_clk_from_child = external dso_local constant [0 x i8], align 1
@__kstrtabns_devm_get_clk_from_child = external dso_local constant [0 x i8], align 1
@__ksymtab_devm_get_clk_from_child = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @devm_get_clk_from_child to i32), ptr @__kstrtab_devm_get_clk_from_child, ptr @__kstrtabns_devm_get_clk_from_child }, section "___ksymtab+devm_get_clk_from_child", align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"devm_clk_bulk_release\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_devm_clk_bulk_get, ptr @__ksymtab_devm_clk_bulk_get_all, ptr @__ksymtab_devm_clk_bulk_get_optional, ptr @__ksymtab_devm_clk_get, ptr @__ksymtab_devm_clk_get_optional, ptr @__ksymtab_devm_clk_put, ptr @__ksymtab_devm_get_clk_from_child], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_clk_get(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #2
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @clk_get(ptr noundef %0, ptr noundef %1) #2
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #2
  br label %10

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #2
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi ptr [ %6, %9 ], [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %2 ]
  ret ptr %11
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @__devres_alloc_node(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load ptr, ptr %1, align 4
  tail call void @clk_put(ptr noundef %3) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_clk_get_optional(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #2
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = tail call ptr @clk_get(ptr noundef %0, ptr noundef %1) #2
  %7 = icmp ugt ptr %6, inttoptr (i32 -4096 to ptr)
  br i1 %7, label %9, label %8

8:                                                ; preds = %5
  store ptr %6, ptr %3, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #2
  br label %10

9:                                                ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #2
  br label %10

10:                                               ; preds = %9, %8, %2
  %11 = phi ptr [ %6, %9 ], [ %6, %8 ], [ inttoptr (i32 -12 to ptr), %2 ]
  %12 = icmp eq ptr %11, inttoptr (i32 -2 to ptr)
  %13 = select i1 %12, ptr null, ptr %11
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_clk_bulk_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_bulk_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #2
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @clk_bulk_get(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  store ptr %2, ptr %4, align 4
  %10 = getelementptr inbounds %struct.clk_bulk_devres, ptr %4, i32 0, i32 1
  store i32 %1, ptr %10, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #2
  br label %12

11:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #2
  br label %12

12:                                               ; preds = %11, %9, %3
  %13 = phi i32 [ -12, %3 ], [ %7, %11 ], [ 0, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_clk_bulk_get_optional(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_bulk_release, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.3) #2
  %5 = icmp eq ptr %4, null
  br i1 %5, label %12, label %6

6:                                                ; preds = %3
  %7 = tail call i32 @clk_bulk_get_optional(ptr noundef %0, i32 noundef %1, ptr noundef %2) #2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  store ptr %2, ptr %4, align 4
  %10 = getelementptr inbounds %struct.clk_bulk_devres, ptr %4, i32 0, i32 1
  store i32 %1, ptr %10, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #2
  br label %12

11:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #2
  br label %12

12:                                               ; preds = %11, %9, %3
  %13 = phi i32 [ -12, %3 ], [ %7, %11 ], [ 0, %9 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @devm_clk_bulk_get_all(ptr noundef %0, ptr nocapture noundef writeonly %1) #0 {
  %3 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_bulk_release_all, i32 noundef 8, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str.1) #2
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @clk_bulk_get_all(ptr noundef %0, ptr noundef nonnull %3) #2
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %5
  %9 = load ptr, ptr %3, align 4
  store ptr %9, ptr %1, align 4
  %10 = getelementptr inbounds %struct.clk_bulk_devres, ptr %3, i32 0, i32 1
  store i32 %6, ptr %10, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %3) #2
  br label %12

11:                                               ; preds = %5
  tail call void @devres_free(ptr noundef nonnull %3) #2
  br label %12

12:                                               ; preds = %11, %8, %2
  %13 = phi i32 [ -12, %2 ], [ %6, %11 ], [ %6, %8 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_bulk_release_all(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.clk_bulk_devres, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  tail call void @clk_bulk_put_all(i32 noundef %4, ptr noundef %5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_get_all(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @devm_clk_put(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @devres_release(ptr noundef %0, ptr noundef nonnull @devm_clk_release, ptr noundef nonnull @devm_clk_match, ptr noundef %1) #2
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !8

5:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 142, i32 noundef 9, ptr noundef null) #2
  br label %6

6:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @devm_clk_match(ptr nocapture noundef readnone %0, ptr noundef readonly %1, ptr noundef readnone %2) #0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %1, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 130, i32 noundef 9, ptr noundef null) #2
  br label %12

9:                                                ; preds = %5
  %10 = icmp eq ptr %6, %2
  %11 = zext i1 %10 to i32
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi i32 [ %11, %9 ], [ 0, %8 ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @devm_get_clk_from_child(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call noalias ptr @__devres_alloc_node(ptr noundef nonnull @devm_clk_release, i32 noundef 4, i32 noundef 3264, i32 noundef -1, ptr noundef nonnull @.str) #2
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @of_clk_get_by_name(ptr noundef %1, ptr noundef %2) #2
  %8 = icmp ugt ptr %7, inttoptr (i32 -4096 to ptr)
  br i1 %8, label %10, label %9

9:                                                ; preds = %6
  store ptr %7, ptr %4, align 4
  tail call void @devres_add(ptr noundef %0, ptr noundef nonnull %4) #2
  br label %11

10:                                               ; preds = %6
  tail call void @devres_free(ptr noundef nonnull %4) #2
  br label %11

11:                                               ; preds = %10, %9, %3
  %12 = phi ptr [ %7, %10 ], [ %7, %9 ], [ inttoptr (i32 -12 to ptr), %3 ]
  ret ptr %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @devm_clk_bulk_release(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.clk_bulk_devres, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  tail call void @clk_bulk_put(i32 noundef %4, ptr noundef %5) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_get_optional(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_put_all(i32 noundef, ptr noundef) local_unnamed_addr #1

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
!8 = !{!"branch_weights", i32 2000, i32 1}
