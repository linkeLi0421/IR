; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/ovly827e.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/ovly827e.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.127, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.127 = type { ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.81 }
%struct.anon.81 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.102, %struct.anon.103, [4 x i8], %struct.anon.104, %struct.anon.106, %struct.anon.107, %struct.anon.108, %struct.anon.109, %struct.anon.110, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.102 = type { i32, i16 }
%struct.anon.103 = type { i32, i16, i32, i32 }
%struct.anon.104 = type { i32, [4 x i8], %struct.anon.105 }
%struct.anon.105 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.106 = type { [12 x i32], i8 }
%struct.anon.107 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.108 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.109 = type { i16, i16 }
%struct.anon.110 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.111 }
%struct.anon.111 = type { i8 }

@ovly827e_format = dso_local constant [6 x i32] [i32 1448695129, i32 1498831189, i32 875713112, i32 892424792, i32 808665688, i32 0], align 4
@ovly827e = internal constant %struct.nv50_wndw_func { ptr @ovly507e_acquire, ptr @ovly507e_release, ptr null, ptr null, ptr null, ptr @ovly827e_ntfy_reset, ptr @base507c_ntfy_set, ptr @base507c_ntfy_clr, ptr @ovly827e_ntfy_wait_begun, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i8 0, ptr null, ptr null, ptr @ovly827e_image_set, ptr @base507c_image_clr, ptr @ovly507e_scale_set, ptr null, ptr @base507c_update }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ovly827e_ntfy_wait_begun(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.nvif_timer_wait, align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #5
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  call void @nvif_timer_wait_init(ptr noundef %2, i64 noundef 2000000000, ptr noundef nonnull %4) #5
  %5 = lshr i32 %1, 2
  %6 = add nuw nsw i32 %5, 3
  %7 = call i32 @nouveau_bo_rd32(ptr noundef %0, i32 noundef %6) #5
  %8 = icmp ugt i32 %7, -65537
  br i1 %8, label %15, label %12

9:                                                ; preds = %12
  %10 = call i32 @nouveau_bo_rd32(ptr noundef %0, i32 noundef %6) #5
  %11 = icmp ugt i32 %10, -65537
  br i1 %11, label %15, label %12

12:                                               ; preds = %9, %3
  call void @usleep_range_state(i32 noundef 1, i32 noundef 2, i32 noundef 2) #5
  %13 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %4) #5
  %14 = icmp sgt i64 %13, -1
  br i1 %14, label %9, label %15

15:                                               ; preds = %12, %9, %3
  %16 = phi i64 [ 0, %3 ], [ %13, %9 ], [ %13, %12 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #5
  %17 = call i64 @llvm.smin.i64(i64 %16, i64 0)
  %18 = trunc i64 %17 to i32
  ret i32 %18
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_rd32(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @ovly827e_ntfy_reset(ptr noundef %0, i32 noundef %1) #0 {
  %3 = lshr i32 %1, 2
  tail call void @nouveau_bo_wr32(ptr noundef %0, i32 noundef %3, i32 noundef 0) #5
  %4 = add nuw nsw i32 %3, 1
  tail call void @nouveau_bo_wr32(ptr noundef %0, i32 noundef %4, i32 noundef 0) #5
  %5 = add nuw nsw i32 %3, 2
  tail call void @nouveau_bo_wr32(ptr noundef %0, i32 noundef %5, i32 noundef 0) #5
  %6 = add nuw nsw i32 %3, 3
  tail call void @nouveau_bo_wr32(ptr noundef %0, i32 noundef %6, i32 noundef -2147483648) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_wr32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @ovly827e_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 3
  %6 = shl i32 4, %5
  %7 = tail call i32 @ovly507e_new_(ptr noundef nonnull @ovly827e, ptr noundef nonnull @ovly827e_format, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %6, ptr noundef %3) #5
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly507e_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly507e_acquire(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @ovly507e_release(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_set(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_clr(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @ovly827e_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 12
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 12) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %91

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 262276, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8
  %21 = load i8, ptr %20, align 8
  %22 = shl i8 %21, 2
  %23 = and i8 %22, -16
  %24 = zext i8 %23 to i32
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  store ptr %26, ptr %5, align 4
  store i32 %24, ptr %25, align 4
  %27 = load ptr, ptr %5, align 4
  %28 = getelementptr i32, ptr %27, i32 1
  store ptr %28, ptr %5, align 4
  store i32 262336, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %5, align 4
  store i32 %30, ptr %31, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr i32, ptr %33, i32 1
  store ptr %34, ptr %5, align 4
  store i32 262400, ptr %33, align 4
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %5, align 4
  store i32 2, ptr %35, align 4
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %5, align 4
  store i32 264192, ptr %37, align 4
  %39 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 8
  %40 = load i64, ptr %39, align 8
  %41 = lshr i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = load ptr, ptr %5, align 4
  %44 = getelementptr i32, ptr %43, i32 1
  store ptr %44, ptr %5, align 4
  store i32 %42, ptr %43, align 4
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %5, align 4
  store i32 788488, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 5
  %48 = load i16, ptr %47, align 8
  %49 = and i16 %48, 32767
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 6
  %52 = load i16, ptr %51, align 2
  %53 = and i16 %52, 32767
  %54 = zext i16 %53 to i32
  %55 = shl nuw nsw i32 %54, 16
  %56 = or i32 %55, %50
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %5, align 4
  store i32 %56, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 2
  %60 = load i16, ptr %59, align 2
  %61 = lshr i16 %60, 8
  %62 = and i16 %61, 15
  %63 = zext i16 %62 to i32
  %64 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, 261888
  %67 = or i32 %66, %63
  %68 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 3
  %69 = load i16, ptr %68, align 4
  %70 = and i16 %69, 1023
  %71 = zext i16 %70 to i32
  %72 = shl nuw nsw i32 %71, 8
  %73 = or i32 %67, %72
  %74 = lshr i16 %60, 7
  %75 = and i16 %74, 1
  %76 = zext i16 %75 to i32
  %77 = shl nuw nsw i32 %76, 20
  %78 = or i32 %73, %77
  %79 = load ptr, ptr %5, align 4
  %80 = getelementptr i32, ptr %79, i32 1
  store ptr %80, ptr %5, align 4
  store i32 %78, ptr %79, align 4
  %81 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = shl nuw nsw i32 %83, 8
  %85 = load i8, ptr %20, align 8
  %86 = lshr i8 %85, 6
  %87 = zext i8 %86 to i32
  %88 = or i32 %84, %87
  %89 = load ptr, ptr %5, align 4
  %90 = getelementptr i32, ptr %89, i32 1
  store ptr %90, ptr %5, align 4
  store i32 %88, ptr %89, align 4
  br label %91

91:                                               ; preds = %17, %11
  %92 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %92
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_image_clr(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ovly507e_scale_set(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_update(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

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
