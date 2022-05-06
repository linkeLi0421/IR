; ModuleID = '/llk/IR/kernel/regset.c_pt.bc'
source_filename = "../kernel/regset.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regset_get:\09\09\09\09\09"
module asm "\09.asciz \09\22regset_get\22\09\09\09\09\09"
module asm "__kstrtabns_regset_get:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_regset_get_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22regset_get_alloc\22\09\09\09\09\09"
module asm "__kstrtabns_regset_get_alloc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.user_regset = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.user_regset_view = type { ptr, ptr, i32, i32, i16, i8 }
%struct.thread_info = type { i32, i32, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], [4 x i8], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__kstrtab_regset_get = external dso_local constant [0 x i8], align 1
@__kstrtabns_regset_get = external dso_local constant [0 x i8], align 1
@__ksymtab_regset_get = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regset_get to i32), ptr @__kstrtab_regset_get, ptr @__kstrtabns_regset_get }, section "___ksymtab+regset_get", align 4
@__kstrtab_regset_get_alloc = external dso_local constant [0 x i8], align 1
@__kstrtabns_regset_get_alloc = external dso_local constant [0 x i8], align 1
@__ksymtab_regset_get_alloc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @regset_get_alloc to i32), ptr @__kstrtab_regset_get_alloc, ptr @__kstrtabns_regset_get_alloc }, section "___ksymtab+regset_get_alloc", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_regset_get, ptr @__ksymtab_regset_get_alloc], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regset_get(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %32, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.user_regset, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.user_regset, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %9
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %2) #5
  %14 = icmp eq ptr %3, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #6
  %17 = icmp eq ptr %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %1, align 4
  br label %20

20:                                               ; preds = %18, %7
  %21 = phi ptr [ %5, %7 ], [ %19, %18 ]
  %22 = phi ptr [ %3, %7 ], [ %16, %18 ]
  %23 = phi ptr [ null, %7 ], [ %16, %18 ]
  %24 = ptrtoint ptr %22 to i32
  %25 = insertvalue [2 x i32] poison, i32 %24, 0
  %26 = insertvalue [2 x i32] %25, i32 %13, 1
  %27 = tail call i32 %21(ptr noundef %0, ptr noundef %1, [2 x i32] %26) #5
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %20
  tail call void @kfree(ptr noundef %23) #5
  br label %32

30:                                               ; preds = %20
  %31 = sub i32 %13, %27
  br label %32

32:                                               ; preds = %30, %29, %15, %4
  %33 = phi i32 [ %27, %29 ], [ %31, %30 ], [ -95, %4 ], [ -12, %15 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @regset_get_alloc(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef %3) #0 {
  store ptr null, ptr %3, align 4
  %5 = load ptr, ptr %1, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.user_regset, ptr %1, i32 0, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.user_regset, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = mul i32 %11, %9
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %2) #5
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #6
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %7
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %14 to i32
  %19 = insertvalue [2 x i32] poison, i32 %18, 0
  %20 = insertvalue [2 x i32] %19, i32 %13, 1
  %21 = tail call i32 %17(ptr noundef %0, ptr noundef %1, [2 x i32] %20) #5
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  tail call void @kfree(ptr noundef nonnull %14) #5
  br label %26

24:                                               ; preds = %16
  store ptr %14, ptr %3, align 4
  %25 = sub i32 %13, %21
  br label %26

26:                                               ; preds = %24, %23, %7, %4
  %27 = phi i32 [ %21, %23 ], [ %25, %24 ], [ -95, %4 ], [ -12, %7 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @copy_regset_to_user(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
  %7 = getelementptr inbounds %struct.user_regset_view, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.user_regset, ptr %8, i32 %2
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %45, label %12

12:                                               ; preds = %6
  %13 = getelementptr %struct.user_regset, ptr %8, i32 %2, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.user_regset, ptr %8, i32 %2, i32 5
  %16 = load i32, ptr %15, align 4
  %17 = mul i32 %16, %14
  %18 = tail call i32 @llvm.umin.i32(i32 %17, i32 %4) #5
  %19 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #6
  %20 = icmp eq ptr %19, null
  br i1 %20, label %45, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr %9, align 4
  %23 = ptrtoint ptr %19 to i32
  %24 = insertvalue [2 x i32] poison, i32 %23, 0
  %25 = insertvalue [2 x i32] %24, i32 %18, 1
  %26 = tail call i32 %22(ptr noundef %0, ptr noundef %9, [2 x i32] %25) #5
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  tail call void @kfree(ptr noundef nonnull %19) #5
  br label %45

29:                                               ; preds = %21
  %30 = sub i32 %18, %26
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %29
  %33 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %5, i32 %30, i32 -1090519040) #7, !srcloc !8
  %34 = extractvalue { i32, i32 } %33, 0
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %32
  %37 = tail call ptr @llvm.thread.pointer() #5
  %38 = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %39 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %38) #8, !srcloc !9
  %40 = and i32 %39, -13
  %41 = or i32 %40, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %41) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %42 = tail call i32 @arm_copy_to_user(ptr noundef %5, ptr noundef nonnull %19, i32 noundef %30) #5
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %39) #5, !srcloc !10
  tail call void asm sideeffect "isb ", "~{memory}"() #5, !srcloc !11
  %43 = icmp eq i32 %42, 0
  %44 = select i1 %43, i32 0, i32 -14
  br label %45

45:                                               ; preds = %36, %32, %29, %28, %12, %6
  %46 = phi ptr [ %19, %29 ], [ null, %28 ], [ null, %6 ], [ null, %12 ], [ %19, %32 ], [ %19, %36 ]
  %47 = phi i32 [ %30, %29 ], [ %26, %28 ], [ -95, %6 ], [ -12, %12 ], [ -14, %32 ], [ %44, %36 ]
  tail call void @kfree(ptr noundef %46) #5
  ret i32 %47
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.thread.pointer() #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { nounwind readnone }
attributes #8 = { nounwind readonly }

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
!8 = !{i64 2150663316, i64 2150663341}
!9 = !{i64 3158850}
!10 = !{i64 3159047}
!11 = !{i64 2150644326}
