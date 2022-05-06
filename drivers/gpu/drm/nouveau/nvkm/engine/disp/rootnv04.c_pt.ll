; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/disp/rootnv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_disp_oclass = type { ptr, %struct.nvkm_sclass }
%struct.nvkm_sclass = type { i32, i32, i32, ptr, ptr }
%struct.nvkm_object_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv04_disp_root = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.list_head = type { ptr, ptr }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_client = type { %struct.nvkm_object, [32 x i8], i64, i32, [32 x ptr], %struct.rb_root, ptr, ptr, %struct.list_head, %struct.spinlock }
%struct.rb_root = type { ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.nv04_disp_mthd_v0 = type { i8, i8, i8, [5 x i8] }

@nv04_disp_root_oclass = dso_local local_unnamed_addr constant %struct.nvkm_disp_oclass { ptr @nv04_disp_root_new, %struct.nvkm_sclass { i32 -1, i32 -1, i32 70, ptr null, ptr null } }, align 4
@nv04_disp_root = internal constant %struct.nvkm_object_func { ptr null, ptr null, ptr null, ptr @nv04_disp_mthd, ptr @nvkm_disp_ntfy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str = private unnamed_addr constant [51 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp mthd size %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [69 x i8] c"\016nouveau: %s:%08x:%08x: ioctl: disp mthd vers %d mthd %02x head %d\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_disp_root_new(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readnone %2, i32 noundef %3, ptr nocapture noundef writeonly %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 80) #4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nv04_disp_root, ptr %7, i32 0, i32 1
  store ptr %0, ptr %10, align 8
  store ptr %7, ptr %4, align 4
  tail call void @nvkm_object_ctor(ptr noundef nonnull @nv04_disp_root, ptr noundef %1, ptr noundef nonnull %7) #5
  br label %11

11:                                               ; preds = %9, %5
  %12 = phi i32 [ 0, %9 ], [ -12, %5 ]
  ret i32 %12
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_object_ctor(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_disp_mthd(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 8
  %9 = icmp ugt i32 %8, 4
  br i1 %9, label %10, label %17

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.nvkm_client, ptr %6, i32 0, i32 1
  %12 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %15 = load i32, ptr %14, align 4
  %16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %3) #6
  br label %17

17:                                               ; preds = %10, %4
  %18 = icmp ugt i32 %3, 7
  br i1 %18, label %19, label %56

19:                                               ; preds = %17
  %20 = load i8, ptr %2, align 1
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %19
  %23 = getelementptr i8, ptr %2, i32 8
  %24 = add i32 %3, -8
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 3
  %27 = load i32, ptr %26, align 8
  %28 = icmp ugt i32 %27, 4
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.nvkm_client, ptr %25, i32 0, i32 1
  %31 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr inbounds %struct.nvkm_object, ptr %0, i32 0, i32 3
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nv04_disp_mthd_v0, ptr %2, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = zext i8 %36 to i32
  %38 = getelementptr inbounds %struct.nv04_disp_mthd_v0, ptr %2, i32 0, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = zext i8 %39 to i32
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %30, i32 noundef %32, i32 noundef %34, i32 noundef 0, i32 noundef %37, i32 noundef %40) #6
  br label %42

42:                                               ; preds = %29, %22
  %43 = getelementptr inbounds %struct.nv04_disp_mthd_v0, ptr %2, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = getelementptr inbounds %struct.nv04_disp_mthd_v0, ptr %2, i32 0, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = zext i8 %46 to i32
  %48 = getelementptr inbounds %struct.nv04_disp_root, ptr %0, i32 0, i32 1
  %49 = load ptr, ptr %48, align 8
  %50 = tail call ptr @nvkm_head_find(ptr noundef %49, i32 noundef %47) #5
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %42
  %53 = icmp eq i8 %44, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %52
  %55 = tail call i32 @nvkm_head_mthd_scanoutpos(ptr noundef %0, ptr noundef nonnull %50, ptr noundef %23, i32 noundef %24) #5
  br label %56

56:                                               ; preds = %54, %52, %42, %19, %17
  %57 = phi i32 [ %55, %54 ], [ -6, %42 ], [ -22, %52 ], [ -38, %19 ], [ -38, %17 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_disp_ntfy(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_head_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_head_mthd_scanoutpos(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind allocsize(2) }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
