; ModuleID = '/llk/IR/drivers/pinctrl/pinctrl-utils.c_pt.bc'
source_filename = "../drivers/pinctrl/pinctrl-utils.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_utils_reserve_map:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_utils_reserve_map\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_utils_reserve_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_utils_add_map_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_utils_add_map_mux\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_utils_add_map_mux:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_utils_add_map_configs:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_utils_add_map_configs\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_utils_add_map_configs:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_utils_add_config:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_utils_add_config\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_utils_add_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pinctrl_utils_free_map:\09\09\09\09\09"
module asm "\09.asciz \09\22pinctrl_utils_free_map\22\09\09\09\09\09"
module asm "__kstrtabns_pinctrl_utils_free_map:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pinctrl_dev = type { %struct.list_head, ptr, %struct.xarray, %struct.xarray, i32, %struct.xarray, i32, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.pinctrl_map = type { ptr, ptr, i32, ptr, %union.anon.62 }
%union.anon.62 = type { %struct.pinctrl_map_configs }
%struct.pinctrl_map_configs = type { ptr, ptr, i32 }

@.str = private unnamed_addr constant [22 x i8] c"krealloc(map) failed\0A\00", align 1
@__kstrtab_pinctrl_utils_reserve_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_utils_reserve_map = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_utils_reserve_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_utils_reserve_map to i32), ptr @__kstrtab_pinctrl_utils_reserve_map, ptr @__kstrtabns_pinctrl_utils_reserve_map }, section "___ksymtab_gpl+pinctrl_utils_reserve_map", align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"drivers/pinctrl/pinctrl-utils.c\00", align 1
@__kstrtab_pinctrl_utils_add_map_mux = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_utils_add_map_mux = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_utils_add_map_mux = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_utils_add_map_mux to i32), ptr @__kstrtab_pinctrl_utils_add_map_mux, ptr @__kstrtabns_pinctrl_utils_add_map_mux }, section "___ksymtab_gpl+pinctrl_utils_add_map_mux", align 4
@__kstrtab_pinctrl_utils_add_map_configs = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_utils_add_map_configs = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_utils_add_map_configs = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_utils_add_map_configs to i32), ptr @__kstrtab_pinctrl_utils_add_map_configs, ptr @__kstrtabns_pinctrl_utils_add_map_configs }, section "___ksymtab_gpl+pinctrl_utils_add_map_configs", align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"krealloc(configs) failed\0A\00", align 1
@__kstrtab_pinctrl_utils_add_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_utils_add_config = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_utils_add_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_utils_add_config to i32), ptr @__kstrtab_pinctrl_utils_add_config, ptr @__kstrtabns_pinctrl_utils_add_config }, section "___ksymtab_gpl+pinctrl_utils_add_config", align 4
@__kstrtab_pinctrl_utils_free_map = external dso_local constant [0 x i8], align 1
@__kstrtabns_pinctrl_utils_free_map = external dso_local constant [0 x i8], align 1
@__ksymtab_pinctrl_utils_free_map = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pinctrl_utils_free_map to i32), ptr @__kstrtab_pinctrl_utils_free_map, ptr @__kstrtabns_pinctrl_utils_free_map }, section "___ksymtab_gpl+pinctrl_utils_free_map", align 4
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_pinctrl_utils_add_config, ptr @__ksymtab_pinctrl_utils_add_map_configs, ptr @__ksymtab_pinctrl_utils_add_map_mux, ptr @__ksymtab_pinctrl_utils_free_map, ptr @__ksymtab_pinctrl_utils_reserve_map], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinctrl_utils_reserve_map(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #0 {
  %6 = load i32, ptr %2, align 4
  %7 = load i32, ptr %3, align 4
  %8 = add i32 %7, %4
  %9 = icmp ugt i32 %8, %6
  br i1 %9, label %10, label %25

10:                                               ; preds = %5
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 28) #6
  %12 = extractvalue { i32, i1 } %11, 1
  br i1 %12, label %18, label %13, !prof !8

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 4
  %15 = extractvalue { i32, i1 } %11, 0
  %16 = tail call noalias ptr @krealloc(ptr noundef %14, i32 noundef %15, i32 noundef 3264) #7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13, %10
  %19 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str) #8
  br label %25

21:                                               ; preds = %13
  %22 = getelementptr %struct.pinctrl_map, ptr %16, i32 %6
  %23 = sub i32 %8, %6
  %24 = mul i32 %23, 28
  tail call void @llvm.memset.p0.i32(ptr align 4 %22, i8 0, i32 %24, i1 false)
  store ptr %16, ptr %1, align 4
  store i32 %8, ptr %2, align 4
  br label %25

25:                                               ; preds = %21, %18, %5
  %26 = phi i32 [ 0, %21 ], [ -12, %18 ], [ 0, %5 ]
  ret i32 %26
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinctrl_utils_add_map_mux(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = load i32, ptr %3, align 4
  %8 = load i32, ptr %2, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11, !prof !8

10:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef 9, ptr noundef null) #6
  br label %22

11:                                               ; preds = %6
  %12 = load ptr, ptr %1, align 4
  %13 = getelementptr %struct.pinctrl_map, ptr %12, i32 %7, i32 2
  store i32 2, ptr %13, align 4
  %14 = load ptr, ptr %1, align 4
  %15 = load i32, ptr %3, align 4
  %16 = getelementptr %struct.pinctrl_map, ptr %14, i32 %15, i32 4
  store ptr %4, ptr %16, align 4
  %17 = load ptr, ptr %1, align 4
  %18 = load i32, ptr %3, align 4
  %19 = getelementptr %struct.pinctrl_map, ptr %17, i32 %18, i32 4, i32 0, i32 1
  store ptr %5, ptr %19, align 4
  %20 = load i32, ptr %3, align 4
  %21 = add i32 %20, 1
  store i32 %21, ptr %3, align 4
  br label %22

22:                                               ; preds = %11, %10
  %23 = phi i32 [ -28, %10 ], [ 0, %11 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinctrl_utils_add_map_configs(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7) #0 {
  %9 = load i32, ptr %3, align 4
  %10 = load i32, ptr %2, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13, !prof !8

12:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 81, i32 noundef 9, ptr noundef null) #6
  br label %32

13:                                               ; preds = %8
  %14 = shl i32 %6, 2
  %15 = tail call ptr @kmemdup(ptr noundef %5, i32 noundef %14, i32 noundef 3264) #6
  %16 = icmp eq ptr %15, null
  br i1 %16, label %32, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %1, align 4
  %19 = load i32, ptr %3, align 4
  %20 = getelementptr %struct.pinctrl_map, ptr %18, i32 %19, i32 2
  store i32 %7, ptr %20, align 4
  %21 = load ptr, ptr %1, align 4
  %22 = load i32, ptr %3, align 4
  %23 = getelementptr %struct.pinctrl_map, ptr %21, i32 %22, i32 4
  store ptr %4, ptr %23, align 4
  %24 = load ptr, ptr %1, align 4
  %25 = load i32, ptr %3, align 4
  %26 = getelementptr %struct.pinctrl_map, ptr %24, i32 %25, i32 4, i32 0, i32 1
  store ptr %15, ptr %26, align 4
  %27 = load ptr, ptr %1, align 4
  %28 = load i32, ptr %3, align 4
  %29 = getelementptr %struct.pinctrl_map, ptr %27, i32 %28, i32 4, i32 0, i32 2
  store i32 %6, ptr %29, align 4
  %30 = load i32, ptr %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, ptr %3, align 4
  br label %32

32:                                               ; preds = %17, %13, %12
  %33 = phi i32 [ -28, %12 ], [ 0, %17 ], [ -12, %13 ]
  ret i32 %33
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @pinctrl_utils_add_config(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3) #0 {
  %5 = load i32, ptr %2, align 4
  %6 = add i32 %5, 1
  %7 = load ptr, ptr %1, align 4
  %8 = shl i32 %6, 2
  %9 = tail call noalias ptr @krealloc(ptr noundef %7, i32 noundef %8, i32 noundef 3264) #7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.pinctrl_dev, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2) #8
  br label %16

14:                                               ; preds = %4
  %15 = getelementptr i32, ptr %9, i32 %5
  store i32 %3, ptr %15, align 4
  store ptr %9, ptr %1, align 4
  store i32 %6, ptr %2, align 4
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ 0, %14 ], [ -12, %11 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @krealloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @pinctrl_utils_free_map(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %17, label %5

5:                                                ; preds = %14, %3
  %6 = phi i32 [ %15, %14 ], [ 0, %3 ]
  %7 = getelementptr %struct.pinctrl_map, ptr %1, i32 %6, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -3
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = getelementptr %struct.pinctrl_map, ptr %1, i32 %6, i32 4, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  tail call void @kfree(ptr noundef %13) #6
  br label %14

14:                                               ; preds = %11, %5
  %15 = add nuw i32 %6, 1
  %16 = icmp eq i32 %15, %2
  br i1 %16, label %17, label %5

17:                                               ; preds = %14, %3
  tail call void @kfree(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(1) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(1) }
attributes #8 = { cold nounwind }

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
!8 = !{!"branch_weights", i32 1, i32 2000}
