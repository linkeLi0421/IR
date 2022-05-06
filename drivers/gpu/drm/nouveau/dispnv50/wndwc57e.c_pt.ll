; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/wndwc57e.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.105, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.105 = type { ptr, %struct.list_head }
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
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.104 }
%struct.anon.104 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.78, %struct.anon.79, [4 x i8], %struct.anon.80, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.78 = type { i32, i16 }
%struct.anon.79 = type { i32, i16, i32, i32 }
%struct.anon.80 = type { i32, [4 x i8], %struct.anon.81 }
%struct.anon.81 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.82 = type { [12 x i32], i8 }
%struct.anon.83 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.84 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.85 = type { i16, i16 }
%struct.anon.86 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.87 }
%struct.anon.87 = type { i8 }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@wndwc57e_modifiers = dso_local local_unnamed_addr constant [8 x i64] [i64 216172782120099856, i64 216172782120099857, i64 216172782120099858, i64 216172782120099859, i64 216172782120099860, i64 216172782120099861, i64 0, i64 72057594037927935], align 8
@wndwc57e = internal constant %struct.nv50_wndw_func { ptr @wndwc37e_acquire, ptr @wndwc37e_release, ptr null, ptr @wndwc37e_sema_set, ptr @wndwc37e_sema_clr, ptr @corec37d_ntfy_init, ptr @wndwc37e_ntfy_set, ptr @wndwc37e_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr @wndwc57e_ilut, ptr @base907c_csc, ptr @wndwc57e_csc_set, ptr @wndwc57e_csc_clr, i8 1, i32 1024, i8 0, ptr @wndwc57e_ilut_set, ptr @wndwc57e_ilut_clr, ptr @wndwc57e_image_set, ptr @wndwc37e_image_clr, ptr null, ptr @wndwc37e_blend_set, ptr @wndwc37e_update }, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc57e_csc_clr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 13
  %7 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 13) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 3146752, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  store i32 65536, ptr %19, align 4
  %20 = getelementptr inbounds i8, ptr %19, i32 4
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %20, i8 0, i32 16, i1 false)
  %21 = getelementptr inbounds i8, ptr %19, i32 20
  store i32 65536, ptr %21, align 4
  %22 = getelementptr inbounds i8, ptr %19, i32 24
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(16) %22, i8 0, i32 16, i1 false)
  %23 = getelementptr inbounds i8, ptr %19, i32 40
  store i32 65536, ptr %23, align 4
  %24 = getelementptr inbounds i8, ptr %19, i32 44
  store i32 0, ptr %24, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i32, ptr %25, i32 12
  store ptr %26, ptr %4, align 4
  br label %27

27:                                               ; preds = %16, %10
  %28 = phi i32 [ 0, %16 ], [ %12, %10 ]
  ret i32 %28
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc57e_csc_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 13) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 3146752, ptr %18, align 4
  %20 = load ptr, ptr %5, align 4
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %20, ptr noundef align 8 dereferenceable(48) %21, i32 48, i1 false)
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i32, ptr %22, i32 12
  store ptr %23, ptr %5, align 4
  br label %24

24:                                               ; preds = %17, %11
  %25 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc57e_ilut_clr(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 2
  %7 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 2) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 263236, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %4, align 4
  store i32 0, ptr %19, align 4
  br label %21

21:                                               ; preds = %16, %10
  %22 = phi i32 [ 0, %16 ], [ %12, %10 ]
  ret i32 %22
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc57e_ilut_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 4
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 4) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 787520, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2
  %22 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2, i32 1
  %23 = load i16, ptr %22, align 2
  %24 = and i16 %23, 2047
  %25 = zext i16 %24 to i32
  %26 = shl nuw nsw i32 %25, 8
  %27 = load i48, ptr %21, align 8
  %28 = lshr i48 %27, 41
  %29 = trunc i48 %28 to i32
  %30 = and i32 %29, 12
  %31 = or i32 %30, %26
  %32 = lshr i16 %23, 13
  %33 = and i16 %32, 1
  %34 = zext i16 %33 to i32
  %35 = or i32 %31, %34
  %36 = load ptr, ptr %5, align 4
  %37 = getelementptr i32, ptr %36, i32 1
  store ptr %37, ptr %5, align 4
  store i32 %35, ptr %36, align 4
  %38 = load i32, ptr %20, align 8
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %5, align 4
  store i32 %38, ptr %39, align 4
  %41 = load i48, ptr %21, align 8
  %42 = lshr i48 %41, 8
  %43 = trunc i48 %42 to i32
  %44 = load ptr, ptr %5, align 4
  %45 = getelementptr i32, ptr %44, i32 1
  store ptr %45, ptr %5, align 4
  store i32 %43, ptr %44, align 4
  br label %46

46:                                               ; preds = %17, %11
  %47 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %47
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local void @wndwc57e_ilut(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #3 {
  %4 = icmp eq i32 %2, 0
  %5 = select i1 %4, i32 1024, i32 %2
  %6 = icmp eq i32 %5, 256
  %7 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2
  %8 = load i48, ptr %7, align 8
  %9 = and i48 %8, -131941395333121
  %10 = select i1 %6, i48 8796093022208, i48 17592186044416
  %11 = or i48 %9, %10
  store i48 %11, ptr %7, align 8
  %12 = trunc i32 %5 to i16
  %13 = add i16 %12, 5
  %14 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2, i32 1
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %13, 2047
  %17 = and i16 %15, -26624
  %18 = or i16 %17, %16
  store i16 %18, ptr %14, align 2
  %19 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2, i32 2
  store ptr @wndwc57e_ilut_load, ptr %19, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @wndwc57e_ilut_load(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #0 {
  tail call void @mmioset(ptr noundef %2, i32 noundef 0, i32 noundef 32) #5
  %4 = getelementptr i8, ptr %2, i32 32
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %81, label %6

6:                                                ; preds = %74, %3
  %7 = phi ptr [ %78, %74 ], [ %0, %3 ]
  %8 = phi i32 [ %10, %74 ], [ %1, %3 ]
  %9 = phi ptr [ %79, %74 ], [ %4, %3 ]
  %10 = add i32 %8, -1
  %11 = load i16, ptr %7, align 2
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %30, label %13

13:                                               ; preds = %13, %6
  %14 = phi i16 [ %22, %13 ], [ %11, %6 ]
  %15 = phi i32 [ %16, %13 ], [ 0, %6 ]
  %16 = add i32 %15, -1
  %17 = icmp ne i32 %16, 0
  %18 = zext i16 %14 to i32
  %19 = and i32 %18, 32768
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %17, i1 %20, i1 false
  %22 = shl i16 %14, 1
  br i1 %21, label %13, label %23

23:                                               ; preds = %13
  %24 = lshr i32 %18, 5
  %25 = and i32 %24, 1023
  %26 = shl i32 %16, 10
  %27 = add i32 %26, 15360
  %28 = or i32 %27, %25
  %29 = trunc i32 %28 to i16
  br label %30

30:                                               ; preds = %23, %6
  %31 = phi i16 [ %29, %23 ], [ 0, %6 ]
  %32 = getelementptr inbounds %struct.drm_color_lut, ptr %7, i32 0, i32 1
  %33 = load i16, ptr %32, align 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %52, label %35

35:                                               ; preds = %35, %30
  %36 = phi i16 [ %44, %35 ], [ %33, %30 ]
  %37 = phi i32 [ %38, %35 ], [ 0, %30 ]
  %38 = add i32 %37, -1
  %39 = icmp ne i32 %38, 0
  %40 = zext i16 %36 to i32
  %41 = and i32 %40, 32768
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %39, i1 %42, i1 false
  %44 = shl i16 %36, 1
  br i1 %43, label %35, label %45

45:                                               ; preds = %35
  %46 = lshr i32 %40, 5
  %47 = and i32 %46, 1023
  %48 = shl i32 %38, 10
  %49 = add i32 %48, 15360
  %50 = or i32 %49, %47
  %51 = trunc i32 %50 to i16
  br label %52

52:                                               ; preds = %45, %30
  %53 = phi i16 [ %51, %45 ], [ 0, %30 ]
  %54 = getelementptr inbounds %struct.drm_color_lut, ptr %7, i32 0, i32 2
  %55 = load i16, ptr %54, align 2
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %74, label %57

57:                                               ; preds = %57, %52
  %58 = phi i16 [ %66, %57 ], [ %55, %52 ]
  %59 = phi i32 [ %60, %57 ], [ 0, %52 ]
  %60 = add i32 %59, -1
  %61 = icmp ne i32 %60, 0
  %62 = zext i16 %58 to i32
  %63 = and i32 %62, 32768
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %61, i1 %64, i1 false
  %66 = shl i16 %58, 1
  br i1 %65, label %57, label %67

67:                                               ; preds = %57
  %68 = lshr i32 %62, 5
  %69 = and i32 %68, 1023
  %70 = shl i32 %60, 10
  %71 = add i32 %70, 15360
  %72 = or i32 %71, %69
  %73 = trunc i32 %72 to i16
  br label %74

74:                                               ; preds = %67, %52
  %75 = phi i16 [ %73, %67 ], [ 0, %52 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !8
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 %31) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  %76 = getelementptr i8, ptr %9, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 %53) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !11
  tail call void @arm_heavy_mb() #5
  %77 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %77, i16 %75) #5, !srcloc !9
  %78 = getelementptr %struct.drm_color_lut, ptr %7, i32 1
  %79 = getelementptr i8, ptr %9, i32 8
  %80 = icmp eq i32 %10, 0
  br i1 %80, label %81, label %6

81:                                               ; preds = %74, %3
  %82 = phi ptr [ %4, %3 ], [ %79, %74 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !12
  tail call void @arm_heavy_mb() #5
  %83 = getelementptr i8, ptr %82, i32 -8
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %83) #5, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !14
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %82, i16 %84) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %85 = getelementptr i8, ptr %82, i32 -6
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %85) #5, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !16
  %87 = getelementptr i8, ptr %82, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %87, i16 %86) #5, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %88 = getelementptr i8, ptr %82, i32 -4
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %88) #5, !srcloc !13
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !18
  %90 = getelementptr i8, ptr %82, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %90, i16 %89) #5, !srcloc !9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @wndwc57e_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = ashr i32 %2, 1
  %7 = shl nuw i32 1, %6
  %8 = tail call i32 @wndwc37e_new_(ptr noundef nonnull @wndwc57e, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %7, ptr noundef %4) #5
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_acquire(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @wndwc37e_release(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_sema_set(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_sema_clr(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @corec37d_ntfy_init(ptr noundef, i32 noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_ntfy_set(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_ntfy_clr(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_ntfy_wait_begun(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @base907c_csc(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @wndwc57e_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
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
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 17) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %115

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
  %46 = lshr i16 %43, 3
  %47 = and i16 %46, 16
  %48 = or i16 %45, %47
  %49 = zext i16 %48 to i32
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr i32, ptr %50, i32 1
  store ptr %51, ptr %5, align 4
  store i32 %49, ptr %50, align 4
  %52 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 1
  %53 = load i8, ptr %52, align 1
  %54 = zext i8 %53 to i32
  %55 = load ptr, ptr %5, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %5, align 4
  store i32 %54, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 3
  %58 = load i16, ptr %57, align 4
  %59 = and i16 %58, 8191
  %60 = zext i16 %59 to i32
  %61 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = lshr i32 %62, 6
  %64 = and i32 %63, 8191
  %65 = or i32 %64, %60
  %66 = load ptr, ptr %5, align 4
  %67 = getelementptr i32, ptr %66, i32 1
  store ptr %67, ptr %5, align 4
  store i32 %65, ptr %66, align 4
  %68 = load ptr, ptr %5, align 4
  %69 = getelementptr i32, ptr %68, i32 1
  store ptr %69, ptr %5, align 4
  store i32 262720, ptr %68, align 4
  %70 = load ptr, ptr %5, align 4
  %71 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 7
  %72 = load i32, ptr %71, align 4
  store i32 %72, ptr %70, align 4
  %73 = load ptr, ptr %5, align 4
  %74 = getelementptr i32, ptr %73, i32 1
  %75 = getelementptr i32, ptr %73, i32 2
  store ptr %75, ptr %5, align 4
  store i32 262752, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 8
  %77 = load i64, ptr %76, align 8
  %78 = lshr i64 %77, 8
  %79 = trunc i64 %78 to i32
  %80 = load ptr, ptr %5, align 4
  %81 = getelementptr i32, ptr %80, i32 1
  store ptr %81, ptr %5, align 4
  store i32 %79, ptr %80, align 4
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr i32, ptr %82, i32 1
  store ptr %83, ptr %5, align 4
  store i32 262800, ptr %82, align 4
  %84 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 8
  %85 = load i32, ptr %84, align 8
  %86 = lshr i32 %85, 16
  %87 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 9
  %88 = load i32, ptr %87, align 4
  %89 = and i32 %88, -65536
  %90 = or i32 %89, %86
  %91 = load ptr, ptr %5, align 4
  %92 = getelementptr i32, ptr %91, i32 1
  store ptr %92, ptr %5, align 4
  store i32 %90, ptr %91, align 4
  %93 = load ptr, ptr %5, align 4
  %94 = getelementptr i32, ptr %93, i32 1
  store ptr %94, ptr %5, align 4
  store i32 262808, ptr %93, align 4
  %95 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 11
  %96 = load i32, ptr %95, align 4
  %97 = lshr i32 %96, 16
  %98 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 10
  %99 = load i32, ptr %98, align 8
  %100 = and i32 %99, -65536
  %101 = or i32 %100, %97
  %102 = load ptr, ptr %5, align 4
  %103 = getelementptr i32, ptr %102, i32 1
  store ptr %103, ptr %5, align 4
  store i32 %101, ptr %102, align 4
  %104 = load ptr, ptr %5, align 4
  %105 = getelementptr i32, ptr %104, i32 1
  store ptr %105, ptr %5, align 4
  store i32 262820, ptr %104, align 4
  %106 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 6
  %107 = load i32, ptr %106, align 8
  %108 = and i32 %107, 65535
  %109 = getelementptr inbounds %struct.drm_plane_state, ptr %1, i32 0, i32 7
  %110 = load i32, ptr %109, align 4
  %111 = shl i32 %110, 16
  %112 = or i32 %111, %108
  %113 = load ptr, ptr %5, align 4
  %114 = getelementptr i32, ptr %113, i32 1
  store ptr %114, ptr %5, align 4
  store i32 %112, ptr %113, align 4
  br label %115

115:                                              ; preds = %17, %11
  %116 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %116
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_image_clr(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_blend_set(ptr noundef, ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wndwc37e_update(ptr noundef, ptr noundef) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nofree nounwind willreturn writeonly }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i64 2156519339}
!9 = !{i64 3951175}
!10 = !{i64 2156519627}
!11 = !{i64 2156519915}
!12 = !{i64 2156520671}
!13 = !{i64 3951375}
!14 = !{i64 2156521112}
!15 = !{i64 2156521755}
!16 = !{i64 2156522196}
!17 = !{i64 2156522839}
!18 = !{i64 2156523280}
