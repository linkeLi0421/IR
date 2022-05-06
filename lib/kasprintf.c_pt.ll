; ModuleID = '/llk/IR/lib/kasprintf.c_pt.bc'
source_filename = "../lib/kasprintf.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22kvasprintf\22\09\09\09\09\09"
module asm "__kstrtabns_kvasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kvasprintf_const:\09\09\09\09\09"
module asm "\09.asciz \09\22kvasprintf_const\22\09\09\09\09\09"
module asm "__kstrtabns_kvasprintf_const:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_kasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22kasprintf\22\09\09\09\09\09"
module asm "__kstrtabns_kasprintf:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.__va_list = type { ptr }

@.str = private unnamed_addr constant [16 x i8] c"lib/kasprintf.c\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"different return values (%u and %u) from vsnprintf(\22%s\22, ...)\00", align 1
@__kstrtab_kvasprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvasprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_kvasprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvasprintf to i32), ptr @__kstrtab_kvasprintf, ptr @__kstrtabns_kvasprintf }, section "___ksymtab+kvasprintf", align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@__kstrtab_kvasprintf_const = external dso_local constant [0 x i8], align 1
@__kstrtabns_kvasprintf_const = external dso_local constant [0 x i8], align 1
@__ksymtab_kvasprintf_const = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kvasprintf_const to i32), ptr @__kstrtab_kvasprintf_const, ptr @__kstrtabns_kvasprintf_const }, section "___ksymtab+kvasprintf_const", align 4
@__kstrtab_kasprintf = external dso_local constant [0 x i8], align 1
@__kstrtabns_kasprintf = external dso_local constant [0 x i8], align 1
@__ksymtab_kasprintf = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @kasprintf to i32), ptr @__kstrtab_kasprintf, ptr @__kstrtabns_kasprintf }, section "___ksymtab+kasprintf", align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__ksymtab_kasprintf, ptr @__ksymtab_kvasprintf, ptr @__ksymtab_kvasprintf_const], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @kvasprintf(i32 noundef %0, ptr noundef %1, [1 x i32] %2) #0 {
  %4 = alloca %struct.__va_list, align 4
  %5 = alloca %struct.__va_list, align 4
  %6 = extractvalue [1 x i32] %2, 0
  store i32 %6, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !8
  call void @llvm.va_copy(ptr nonnull %5, ptr nonnull %4)
  %7 = load i32, ptr %5, align 4
  %8 = insertvalue [1 x i32] poison, i32 %7, 0
  %9 = call i32 @vsnprintf(ptr noundef null, i32 noundef 0, ptr noundef %1, [1 x i32] %8)
  call void @llvm.va_end(ptr nonnull %5)
  %10 = add i32 %9, 1
  %11 = call ptr @llvm.returnaddress(i32 0)
  %12 = ptrtoint ptr %11 to i32
  %13 = call ptr @__kmalloc_track_caller(i32 noundef %10, i32 noundef %0, i32 noundef %12) #7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load i32, ptr %4, align 4
  %17 = insertvalue [1 x i32] poison, i32 %16, 0
  %18 = call i32 @vsnprintf(ptr noundef nonnull %13, i32 noundef %10, ptr noundef %1, [1 x i32] %17)
  %19 = icmp eq i32 %9, %18
  br i1 %19, label %21, label %20, !prof !9

20:                                               ; preds = %15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 31, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %9, i32 noundef %18, ptr noundef %1) #7
  br label %21

21:                                               ; preds = %20, %15, %3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  ret ptr %13
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_copy(ptr, ptr) #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__kmalloc_track_caller(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @kvasprintf_const(i32 noundef %0, ptr noundef %1, [1 x i32] %2) #0 {
  %4 = extractvalue [1 x i32] %2, 0
  %5 = inttoptr i32 %4 to ptr
  %6 = tail call ptr @strchr(ptr noundef %1, i32 noundef 37)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = tail call ptr @kstrdup_const(ptr noundef %1, i32 noundef %0) #7
  br label %18

10:                                               ; preds = %3
  %11 = tail call i32 @strcmp(ptr noundef %1, ptr noundef nonnull dereferenceable(3) @.str.2)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %5, align 4
  %15 = tail call ptr @kstrdup_const(ptr noundef %14, i32 noundef %0) #7
  br label %18

16:                                               ; preds = %10
  %17 = tail call noalias ptr @kvasprintf(i32 noundef %0, ptr noundef %1, [1 x i32] %2)
  br label %18

18:                                               ; preds = %16, %13, %8
  %19 = phi ptr [ %17, %16 ], [ %15, %13 ], [ %9, %8 ]
  ret ptr %19
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrdup_const(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @kasprintf(i32 noundef %0, ptr noundef %1, ...) #0 {
  %3 = alloca %struct.__va_list, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load i32, ptr %3, align 4
  %5 = insertvalue [1 x i32] poison, i32 %4, 0
  %6 = call noalias ptr @kvasprintf(i32 noundef %0, ptr noundef %1, [1 x i32] %5)
  call void @llvm.va_end(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret ptr %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }

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
!8 = !{!"auto-init"}
!9 = !{!"branch_weights", i32 2000, i32 1}
