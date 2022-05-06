; ModuleID = '/llk/IR/drivers/interconnect/bulk.c_pt.bc'
source_filename = "../drivers/interconnect/bulk.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_of_icc_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22of_icc_bulk_get\22\09\09\09\09\09"
module asm "__kstrtabns_of_icc_bulk_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_bulk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_bulk_put\22\09\09\09\09\09"
module asm "__kstrtabns_icc_bulk_put:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_bulk_set_bw:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_bulk_set_bw\22\09\09\09\09\09"
module asm "__kstrtabns_icc_bulk_set_bw:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_bulk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_bulk_enable\22\09\09\09\09\09"
module asm "__kstrtabns_icc_bulk_enable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_icc_bulk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22icc_bulk_disable\22\09\09\09\09\09"
module asm "__kstrtabns_icc_bulk_disable:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.icc_bulk_data = type { ptr, ptr, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"of_icc_get() failed on path %s (%d)\0A\00", align 1
@__kstrtab_of_icc_bulk_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_of_icc_bulk_get = external dso_local constant [0 x i8], align 1
@__ksymtab_of_icc_bulk_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @of_icc_bulk_get to i32), ptr @__kstrtab_of_icc_bulk_get, ptr @__kstrtabns_of_icc_bulk_get }, section "___ksymtab_gpl+of_icc_bulk_get", align 4
@__kstrtab_icc_bulk_put = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_bulk_put = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_bulk_put = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_bulk_put to i32), ptr @__kstrtab_icc_bulk_put, ptr @__kstrtabns_icc_bulk_put }, section "___ksymtab_gpl+icc_bulk_put", align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\013icc_set_bw() failed on path %s (%d)\0A\00", align 1
@__kstrtab_icc_bulk_set_bw = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_bulk_set_bw = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_bulk_set_bw = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_bulk_set_bw to i32), ptr @__kstrtab_icc_bulk_set_bw, ptr @__kstrtabns_icc_bulk_set_bw }, section "___ksymtab_gpl+icc_bulk_set_bw", align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"\013icc_enable() failed on path %s (%d)\0A\00", align 1
@__kstrtab_icc_bulk_enable = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_bulk_enable = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_bulk_enable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_bulk_enable to i32), ptr @__kstrtab_icc_bulk_enable, ptr @__kstrtabns_icc_bulk_enable }, section "___ksymtab_gpl+icc_bulk_enable", align 4
@__kstrtab_icc_bulk_disable = external dso_local constant [0 x i8], align 1
@__kstrtabns_icc_bulk_disable = external dso_local constant [0 x i8], align 1
@__ksymtab_icc_bulk_disable = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @icc_bulk_disable to i32), ptr @__kstrtab_icc_bulk_disable, ptr @__kstrtabns_icc_bulk_disable }, section "___ksymtab_gpl+icc_bulk_disable", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_icc_bulk_disable, ptr @__ksymtab_icc_bulk_enable, ptr @__ksymtab_icc_bulk_put, ptr @__ksymtab_icc_bulk_set_bw, ptr @__ksymtab_of_icc_bulk_get], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @of_icc_bulk_get(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %28

5:                                                ; preds = %25, %3
  %6 = phi i32 [ %26, %25 ], [ 0, %3 ]
  %7 = getelementptr %struct.icc_bulk_data, ptr %2, i32 %6
  %8 = getelementptr %struct.icc_bulk_data, ptr %2, i32 %6, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = tail call ptr @of_icc_get(ptr noundef %0, ptr noundef %9) #3
  store ptr %10, ptr %7, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %25

12:                                               ; preds = %5
  %13 = ptrtoint ptr %10 to i32
  %14 = icmp eq ptr %10, inttoptr (i32 -517 to ptr)
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef %16, i32 noundef %13) #4
  br label %17

17:                                               ; preds = %15, %12
  store ptr null, ptr %7, align 4
  %18 = icmp eq i32 %6, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %19, %17
  %20 = phi i32 [ %21, %19 ], [ %6, %17 ]
  %21 = add nsw i32 %20, -1
  %22 = getelementptr %struct.icc_bulk_data, ptr %2, i32 %21
  %23 = load ptr, ptr %22, align 4
  tail call void @icc_put(ptr noundef %23) #3
  store ptr null, ptr %22, align 4
  %24 = icmp eq i32 %21, 0
  br i1 %24, label %28, label %19

25:                                               ; preds = %5
  %26 = add nuw nsw i32 %6, 1
  %27 = icmp eq i32 %26, %1
  br i1 %27, label %28, label %5

28:                                               ; preds = %25, %19, %17, %3
  %29 = phi i32 [ %13, %17 ], [ 0, %3 ], [ %13, %19 ], [ 0, %25 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_icc_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icc_bulk_put(i32 noundef %0, ptr nocapture noundef %1) #0 {
  %3 = add i32 %0, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %11

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %9, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.icc_bulk_data, ptr %1, i32 %6
  %8 = load ptr, ptr %7, align 4
  tail call void @icc_put(ptr noundef %8) #3
  store ptr null, ptr %7, align 4
  %9 = add nsw i32 %6, -1
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %5, label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @icc_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icc_bulk_set_bw(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %21

4:                                                ; preds = %18, %2
  %5 = phi i32 [ %19, %18 ], [ 0, %2 ]
  %6 = getelementptr %struct.icc_bulk_data, ptr %1, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.icc_bulk_data, ptr %1, i32 %5, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr %struct.icc_bulk_data, ptr %1, i32 %5, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 @icc_set_bw(ptr noundef %7, i32 noundef %9, i32 noundef %11) #3
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = getelementptr %struct.icc_bulk_data, ptr %1, i32 %5, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %16, i32 noundef %12) #4
  br label %21

18:                                               ; preds = %4
  %19 = add nuw nsw i32 %5, 1
  %20 = icmp eq i32 %19, %0
  br i1 %20, label %21, label %4

21:                                               ; preds = %18, %14, %2
  %22 = phi i32 [ %12, %14 ], [ 0, %2 ], [ 0, %18 ]
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_set_bw(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @icc_bulk_enable(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %25

4:                                                ; preds = %22, %2
  %5 = phi i32 [ %23, %22 ], [ 0, %2 ]
  %6 = getelementptr %struct.icc_bulk_data, ptr %1, i32 %5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @icc_enable(ptr noundef %7) #3
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %4
  %11 = getelementptr %struct.icc_bulk_data, ptr %1, i32 %5, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, ptr noundef %12, i32 noundef %8) #4
  %14 = icmp eq i32 %5, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %15, %10
  %16 = phi i32 [ %17, %15 ], [ %5, %10 ]
  %17 = add nsw i32 %16, -1
  %18 = getelementptr %struct.icc_bulk_data, ptr %1, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @icc_disable(ptr noundef %19) #3
  %21 = icmp eq i32 %17, 0
  br i1 %21, label %25, label %15

22:                                               ; preds = %4
  %23 = add nuw nsw i32 %5, 1
  %24 = icmp eq i32 %23, %0
  br i1 %24, label %25, label %4

25:                                               ; preds = %22, %15, %10, %2
  %26 = phi i32 [ %8, %10 ], [ 0, %2 ], [ %8, %15 ], [ 0, %22 ]
  ret i32 %26
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @icc_bulk_disable(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = add i32 %0, -1
  %4 = icmp sgt i32 %3, -1
  br i1 %4, label %5, label %12

5:                                                ; preds = %5, %2
  %6 = phi i32 [ %10, %5 ], [ %3, %2 ]
  %7 = getelementptr %struct.icc_bulk_data, ptr %1, i32 %6
  %8 = load ptr, ptr %7, align 4
  %9 = tail call i32 @icc_disable(ptr noundef %8) #3
  %10 = add nsw i32 %6, -1
  %11 = icmp sgt i32 %6, 0
  br i1 %11, label %5, label %12

12:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @icc_disable(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
