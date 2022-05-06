; ModuleID = '/llk/IR/lib/mpi/mpi-mod.c_pt.bc'
source_filename = "../lib/mpi/mpi-mod.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.barrett_ctx_s = type { ptr, i32, i32, ptr, ptr, ptr, ptr }
%struct.gcry_mpi = type { i32, i32, i32, i32, i32, ptr }

@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_mod(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  tail call void @mpi_fdiv_r(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_fdiv_r(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local noalias ptr @mpi_barrett_init(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  tail call void @mpi_normalize(ptr noundef %0) #3
  %3 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %4 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %6
  %9 = tail call ptr @mpi_copy(ptr noundef %0) #3
  store ptr %9, ptr %4, align 8
  %10 = getelementptr inbounds %struct.barrett_ctx_s, ptr %4, i32 0, i32 1
  store i32 1, ptr %10, align 4
  br label %12

11:                                               ; preds = %6
  store ptr %0, ptr %4, align 8
  br label %12

12:                                               ; preds = %11, %8
  %13 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.barrett_ctx_s, ptr %4, i32 0, i32 2
  store i32 %14, ptr %15, align 8
  %16 = add i32 %14, 1
  %17 = tail call ptr @mpi_alloc(i32 noundef %16) #3
  %18 = tail call ptr @mpi_set_ui(ptr noundef %17, i32 noundef 1) #3
  %19 = shl i32 %14, 1
  tail call void @mpi_lshift_limbs(ptr noundef %17, i32 noundef %19) #3
  tail call void @mpi_fdiv_q(ptr noundef %17, ptr noundef %17, ptr noundef %0) #3
  %20 = getelementptr inbounds %struct.barrett_ctx_s, ptr %4, i32 0, i32 3
  store ptr %17, ptr %20, align 4
  %21 = or i32 %19, 1
  %22 = tail call ptr @mpi_alloc(i32 noundef %21) #3
  %23 = getelementptr inbounds %struct.barrett_ctx_s, ptr %4, i32 0, i32 4
  store ptr %22, ptr %23, align 8
  %24 = tail call ptr @mpi_alloc(i32 noundef %21) #3
  %25 = getelementptr inbounds %struct.barrett_ctx_s, ptr %4, i32 0, i32 5
  store ptr %24, ptr %25, align 4
  br label %26

26:                                               ; preds = %12, %2
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_normalize(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_copy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_alloc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_set_ui(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_lshift_limbs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_fdiv_q(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_barrett_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %21, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.barrett_ctx_s, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  tail call void @mpi_free(ptr noundef %5) #3
  %6 = getelementptr inbounds %struct.barrett_ctx_s, ptr %0, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @mpi_free(ptr noundef %7) #3
  %8 = getelementptr inbounds %struct.barrett_ctx_s, ptr %0, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  tail call void @mpi_free(ptr noundef %9) #3
  %10 = getelementptr inbounds %struct.barrett_ctx_s, ptr %0, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  tail call void @mpi_free(ptr noundef nonnull %11) #3
  br label %14

14:                                               ; preds = %13, %3
  %15 = getelementptr inbounds %struct.barrett_ctx_s, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 4
  tail call void @mpi_free(ptr noundef %19) #3
  br label %20

20:                                               ; preds = %18, %14
  tail call void @kfree(ptr noundef nonnull %0) #3
  br label %21

21:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_mod_barrett(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) local_unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.barrett_ctx_s, ptr %2, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.barrett_ctx_s, ptr %2, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.barrett_ctx_s, ptr %2, i32 0, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.barrett_ctx_s, ptr %2, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  tail call void @mpi_normalize(ptr noundef %1) #3
  %13 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %6, 1
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  tail call void @mpi_fdiv_r(ptr noundef %0, ptr noundef %1, ptr noundef %4) #3
  br label %57

18:                                               ; preds = %3
  %19 = getelementptr inbounds %struct.gcry_mpi, ptr %1, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  store i32 0, ptr %19, align 4
  %21 = tail call ptr @mpi_set(ptr noundef %12, ptr noundef %1) #3
  %22 = add i32 %6, -1
  tail call void @mpi_rshift_limbs(ptr noundef %12, i32 noundef %22) #3
  tail call void @mpi_mul(ptr noundef %12, ptr noundef %12, ptr noundef %8) #3
  %23 = add i32 %6, 1
  tail call void @mpi_rshift_limbs(ptr noundef %12, i32 noundef %23) #3
  %24 = tail call ptr @mpi_set(ptr noundef %10, ptr noundef %1) #3
  %25 = getelementptr inbounds %struct.gcry_mpi, ptr %10, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = icmp sgt i32 %26, %23
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  store i32 %23, ptr %25, align 4
  br label %29

29:                                               ; preds = %28, %18
  tail call void @mpi_mul(ptr noundef %12, ptr noundef %12, ptr noundef %4) #3
  %30 = getelementptr inbounds %struct.gcry_mpi, ptr %12, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, %23
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 %23, ptr %30, align 4
  br label %34

34:                                               ; preds = %33, %29
  tail call void @mpi_sub(ptr noundef %0, ptr noundef %10, ptr noundef %12) #3
  %35 = getelementptr inbounds %struct.gcry_mpi, ptr %0, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.barrett_ctx_s, ptr %2, i32 0, i32 6
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = add i32 %6, 2
  %44 = tail call ptr @mpi_alloc(i32 noundef %43) #3
  store ptr %44, ptr %39, align 4
  %45 = tail call ptr @mpi_set_ui(ptr noundef %44, i32 noundef 1) #3
  %46 = load ptr, ptr %39, align 4
  tail call void @mpi_lshift_limbs(ptr noundef %46, i32 noundef %23) #3
  %47 = load ptr, ptr %39, align 4
  br label %48

48:                                               ; preds = %42, %38
  %49 = phi ptr [ %47, %42 ], [ %40, %38 ]
  tail call void @mpi_add(ptr noundef %0, ptr noundef %0, ptr noundef %49) #3
  br label %50

50:                                               ; preds = %48, %34
  %51 = tail call i32 @mpi_cmp(ptr noundef %0, ptr noundef %4) #3
  %52 = icmp sgt i32 %51, -1
  br i1 %52, label %53, label %56

53:                                               ; preds = %53, %50
  tail call void @mpi_sub(ptr noundef %0, ptr noundef %0, ptr noundef %4) #3
  %54 = tail call i32 @mpi_cmp(ptr noundef %0, ptr noundef %4) #3
  %55 = icmp sgt i32 %54, -1
  br i1 %55, label %53, label %56

56:                                               ; preds = %53, %50
  store i32 %20, ptr %19, align 4
  br label %57

57:                                               ; preds = %56, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mpi_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_rshift_limbs(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_mul(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mpi_add(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mpi_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @mpi_mul_barrett(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef %3) local_unnamed_addr #0 {
  tail call void @mpi_mul(ptr noundef %0, ptr noundef %1, ptr noundef %2) #3
  tail call void @mpi_mod_barrett(ptr noundef %0, ptr noundef %0, ptr noundef %3)
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind allocsize(2) }

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
