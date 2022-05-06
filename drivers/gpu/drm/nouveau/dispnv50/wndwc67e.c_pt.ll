; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/wndwc67e.c"
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

@wndwc67e = internal constant %struct.nv50_wndw_func { ptr @wndwc37e_acquire, ptr @wndwc37e_release, ptr null, ptr @wndwc37e_sema_set, ptr @wndwc37e_sema_clr, ptr @corec37d_ntfy_init, ptr @wndwc37e_ntfy_set, ptr @wndwc37e_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr @wndwc57e_ilut, ptr @base907c_csc, ptr @wndwc57e_csc_set, ptr @wndwc57e_csc_clr, i8 1, i32 1024, i8 0, ptr @wndwc57e_ilut_set, ptr @wndwc57e_ilut_clr, ptr @wndwc67e_image_set, ptr @wndwc37e_image_clr, ptr null, ptr @wndwc37e_blend_set, ptr @wndwc37e_update }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc67e_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = ashr i32 %2, 1
  %7 = shl nuw i32 1, %6
  %8 = tail call i32 @wndwc37e_new_(ptr noundef nonnull @wndwc67e, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %7, ptr noundef %4) #2
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_acquire(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wndwc37e_release(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_sema_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_sema_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @corec37d_ntfy_init(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_ntfy_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_ntfy_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_wait_begun(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wndwc57e_ilut(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @base907c_csc(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc57e_csc_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc57e_csc_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc57e_ilut_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc57e_ilut_clr(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wndwc67e_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 17
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 17) #2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %112

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 262920, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8
  %21 = load i8, ptr %20, align 8
  %22 = lshr i8 %21, 2
  %23 = and i8 %22, 15
  %24 = shl i8 %21, 4
  %25 = and i8 %24, 48
  %26 = or i8 %23, %25
  %27 = zext i8 %26 to i32
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i32, ptr %28, i32 1
  store ptr %29, ptr %5, align 4
  store i32 %27, ptr %28, align 4
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i32, ptr %30, i32 1
  store ptr %31, ptr %5, align 4
  store i32 1049124, ptr %30, align 4
  %32 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 5
  %33 = load i16, ptr %32, align 8
  %34 = zext i16 %33 to i32
  %35 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 6
  %36 = load i16, ptr %35, align 2
  %37 = zext i16 %36 to i32
  %38 = shl nuw i32 %37, 16
  %39 = or i32 %38, %34
  %40 = load ptr, ptr %5, align 4
  %41 = getelementptr i32, ptr %40, i32 1
  store ptr %41, ptr %5, align 4
  store i32 %39, ptr %40, align 4
  %42 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 2
  %43 = load i16, ptr %42, align 2
  %44 = lshr i16 %43, 8
  %45 = and i16 %44, 15
  %46 = zext i16 %45 to i32
  %47 = load ptr, ptr %5, align 4
  %48 = getelementptr i32, ptr %47, i32 1
  store ptr %48, ptr %5, align 4
  store i32 %46, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 1
  %50 = load i8, ptr %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load ptr, ptr %5, align 4
  %53 = getelementptr i32, ptr %52, i32 1
  store ptr %53, ptr %5, align 4
  store i32 %51, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 3
  %55 = load i16, ptr %54, align 4
  %56 = and i16 %55, 8191
  %57 = zext i16 %56 to i32
  %58 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 6
  %61 = and i32 %60, 8191
  %62 = or i32 %61, %57
  %63 = load ptr, ptr %5, align 4
  %64 = getelementptr i32, ptr %63, i32 1
  store ptr %64, ptr %5, align 4
  store i32 %62, ptr %63, align 4
  %65 = load ptr, ptr %5, align 4
  %66 = getelementptr i32, ptr %65, i32 1
  store ptr %66, ptr %5, align 4
  store i32 262720, ptr %65, align 4
  %67 = load ptr, ptr %5, align 4
  %68 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 7
  %69 = load i32, ptr %68, align 4
  store i32 %69, ptr %67, align 4
  %70 = load ptr, ptr %5, align 4
  %71 = getelementptr i32, ptr %70, i32 1
  %72 = getelementptr i32, ptr %70, i32 2
  store ptr %72, ptr %5, align 4
  store i32 262752, ptr %71, align 4
  %73 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 8
  %74 = load i64, ptr %73, align 8
  %75 = lshr i64 %74, 8
  %76 = trunc i64 %75 to i32
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr i32, ptr %77, i32 1
  store ptr %78, ptr %5, align 4
  store i32 %76, ptr %77, align 4
  %79 = load ptr, ptr %5, align 4
  %80 = getelementptr i32, ptr %79, i32 1
  store ptr %80, ptr %5, align 4
  store i32 262800, ptr %79, align 4
  %81 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 8
  %82 = load i32, ptr %81, align 8
  %83 = lshr i32 %82, 16
  %84 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 9
  %85 = load i32, ptr %84, align 4
  %86 = and i32 %85, -65536
  %87 = or i32 %86, %83
  %88 = load ptr, ptr %5, align 4
  %89 = getelementptr i32, ptr %88, i32 1
  store ptr %89, ptr %5, align 4
  store i32 %87, ptr %88, align 4
  %90 = load ptr, ptr %5, align 4
  %91 = getelementptr i32, ptr %90, i32 1
  store ptr %91, ptr %5, align 4
  store i32 262808, ptr %90, align 4
  %92 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 11
  %93 = load i32, ptr %92, align 4
  %94 = lshr i32 %93, 16
  %95 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 10
  %96 = load i32, ptr %95, align 8
  %97 = and i32 %96, -65536
  %98 = or i32 %97, %94
  %99 = load ptr, ptr %5, align 4
  %100 = getelementptr i32, ptr %99, i32 1
  store ptr %100, ptr %5, align 4
  store i32 %98, ptr %99, align 4
  %101 = load ptr, ptr %5, align 4
  %102 = getelementptr i32, ptr %101, i32 1
  store ptr %102, ptr %5, align 4
  store i32 262820, ptr %101, align 4
  %103 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 6
  %104 = load i32, ptr %103, align 8
  %105 = and i32 %104, 65535
  %106 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 7
  %107 = load i32, ptr %106, align 4
  %108 = shl i32 %107, 16
  %109 = or i32 %108, %105
  %110 = load ptr, ptr %5, align 4
  %111 = getelementptr i32, ptr %110, i32 1
  store ptr %111, ptr %5, align 4
  store i32 %109, ptr %110, align 4
  br label %112

112:                                              ; preds = %17, %11
  %113 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %113
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_image_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_blend_set(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_update(ptr noundef, ptr noundef) #1

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
