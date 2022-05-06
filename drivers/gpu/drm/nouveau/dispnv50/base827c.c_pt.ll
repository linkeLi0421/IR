; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/base827c.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/base827c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
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

@base827c = internal constant %struct.nv50_wndw_func { ptr @base507c_acquire, ptr @base507c_release, ptr null, ptr @base507c_sema_set, ptr @base507c_sema_clr, ptr @base507c_ntfy_reset, ptr @base507c_ntfy_set, ptr @base507c_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, i8 1, ptr @base507c_xlut_set, ptr @base507c_xlut_clr, ptr @base827c_image_set, ptr @base507c_image_clr, ptr null, ptr null, ptr @base507c_update }, align 4
@base507c_format = external dso_local constant [0 x i32], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @base827c_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
  %5 = shl i32 %1, 3
  %6 = shl i32 2, %5
  %7 = tail call i32 @base507c_new_(ptr noundef nonnull @base827c, ptr noundef nonnull @base507c_format, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %6, ptr noundef %3) #2
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_acquire(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @base507c_release(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_sema_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_sema_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @base507c_ntfy_reset(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_wait_begun(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_xlut_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_xlut_clr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @base827c_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 13
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 13) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %100

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
  %22 = and i8 %21, 3
  %23 = zext i8 %22 to i32
  %24 = shl nuw nsw i32 %23, 8
  %25 = shl i8 %21, 2
  %26 = and i8 %25, -16
  %27 = zext i8 %26 to i32
  %28 = or i32 %24, %27
  %29 = load ptr, ptr %5, align 4
  %30 = getelementptr i32, ptr %29, i32 1
  store ptr %30, ptr %5, align 4
  store i32 %28, ptr %29, align 4
  %31 = load ptr, ptr %5, align 4
  %32 = getelementptr i32, ptr %31, i32 1
  store ptr %32, ptr %5, align 4
  store i32 262336, ptr %31, align 4
  %33 = load ptr, ptr %5, align 4
  %34 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 7
  %35 = load i32, ptr %34, align 4
  store i32 %35, ptr %33, align 4
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr i32, ptr %36, i32 1
  store ptr %37, ptr %5, align 4
  %38 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 1
  %39 = load i8, ptr %38, align 1
  %40 = icmp eq i8 %39, -54
  %41 = getelementptr i32, ptr %36, i32 2
  store ptr %41, ptr %5, align 4
  store i32 524560, ptr %37, align 4
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr i32, ptr %42, i32 1
  store ptr %43, ptr %5, align 4
  br i1 %40, label %44, label %47

44:                                               ; preds = %17
  store i32 1, ptr %42, align 4
  %45 = load ptr, ptr %5, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %5, align 4
  store i32 6553600, ptr %45, align 4
  br label %50

47:                                               ; preds = %17
  store i32 0, ptr %42, align 4
  %48 = load ptr, ptr %5, align 4
  %49 = getelementptr i32, ptr %48, i32 1
  store ptr %49, ptr %5, align 4
  store i32 0, ptr %48, align 4
  br label %50

50:                                               ; preds = %47, %44
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %5, align 4
  store i32 1312768, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 8
  %54 = load i64, ptr %53, align 8
  %55 = lshr i64 %54, 8
  %56 = trunc i64 %55 to i32
  %57 = load ptr, ptr %5, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %5, align 4
  store i32 %56, ptr %57, align 4
  %59 = load ptr, ptr %5, align 4
  %60 = getelementptr i32, ptr %59, i32 1
  store ptr %60, ptr %5, align 4
  store i32 0, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 5
  %62 = load i16, ptr %61, align 8
  %63 = and i16 %62, 32767
  %64 = zext i16 %63 to i32
  %65 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 6
  %66 = load i16, ptr %65, align 2
  %67 = and i16 %66, 32767
  %68 = zext i16 %67 to i32
  %69 = shl nuw nsw i32 %68, 16
  %70 = or i32 %69, %64
  %71 = load ptr, ptr %5, align 4
  %72 = getelementptr i32, ptr %71, i32 1
  store ptr %72, ptr %5, align 4
  store i32 %70, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 2
  %74 = load i16, ptr %73, align 2
  %75 = lshr i16 %74, 8
  %76 = and i16 %75, 15
  %77 = zext i16 %76 to i32
  %78 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 261888
  %81 = or i32 %80, %77
  %82 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 3
  %83 = load i16, ptr %82, align 4
  %84 = and i16 %83, 1023
  %85 = zext i16 %84 to i32
  %86 = shl nuw nsw i32 %85, 8
  %87 = or i32 %81, %86
  %88 = lshr i16 %74, 7
  %89 = and i16 %88, 1
  %90 = zext i16 %89 to i32
  %91 = shl nuw nsw i32 %90, 20
  %92 = or i32 %87, %91
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr i32, ptr %93, i32 1
  store ptr %94, ptr %5, align 4
  store i32 %92, ptr %93, align 4
  %95 = load i8, ptr %38, align 1
  %96 = zext i8 %95 to i32
  %97 = shl nuw nsw i32 %96, 8
  %98 = load ptr, ptr %5, align 4
  %99 = getelementptr i32, ptr %98, i32 1
  store ptr %99, ptr %5, align 4
  store i32 %97, ptr %98, align 4
  br label %100

100:                                              ; preds = %50, %11
  %101 = phi i32 [ 0, %50 ], [ %13, %11 ]
  ret i32 %101
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_image_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_update(ptr noundef, ptr noundef) #1

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
