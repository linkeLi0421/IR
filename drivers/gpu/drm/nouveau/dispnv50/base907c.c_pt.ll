; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/base907c.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/base907c.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.104, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.104 = type { ptr, %struct.list_head }
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
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.103 }
%struct.anon.103 = type { ptr, i64 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }

@base907c = dso_local constant %struct.nv50_wndw_func { ptr @base507c_acquire, ptr @base507c_release, ptr null, ptr @base507c_sema_set, ptr @base507c_sema_clr, ptr @base507c_ntfy_reset, ptr @base507c_ntfy_set, ptr @base507c_ntfy_clr, ptr @base507c_ntfy_wait_begun, ptr @base907c_ilut, ptr @base907c_csc, ptr @base907c_csc_set, ptr @base907c_csc_clr, i8 0, i32 1024, i8 1, ptr @base907c_xlut_set, ptr @base907c_xlut_clr, ptr @base907c_image_set, ptr @base507c_image_clr, ptr null, ptr null, ptr @base507c_update }, align 4
@base507c_format = external dso_local constant [0 x i32], align 4

; Function Attrs: argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @base907c_csc(ptr nocapture readnone %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 7
  br label %5

5:                                                ; preds = %71, %3
  %6 = phi i32 [ 0, %3 ], [ %75, %71 ]
  %7 = shl i32 %6, 2
  %8 = mul nuw nsw i32 %6, 3
  %9 = getelementptr [12 x i32], ptr %4, i32 0, i32 %7
  %10 = getelementptr [9 x i64], ptr %2, i32 0, i32 %8
  %11 = load i64, ptr %10, align 8
  %12 = lshr i64 %11, 32
  %13 = trunc i64 %12 to i32
  %14 = and i32 %13, 2147483644
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %5
  %17 = lshr i64 %11, 63
  %18 = trunc i64 %17 to i32
  %19 = add nuw nsw i32 %18, 262143
  br label %27

20:                                               ; preds = %5
  %21 = trunc i64 %11 to i32
  %22 = tail call i32 @llvm.fshl.i32(i32 %13, i32 %21, i32 16) #6
  %23 = sub i32 0, %22
  %24 = icmp slt i64 %11, 0
  %25 = select i1 %24, i32 %23, i32 %22
  %26 = and i32 %25, 524287
  br label %27

27:                                               ; preds = %20, %16
  %28 = phi i32 [ %19, %16 ], [ %26, %20 ]
  store i32 %28, ptr %9, align 4
  %29 = or i32 %7, 1
  %30 = getelementptr [12 x i32], ptr %4, i32 0, i32 %29
  %31 = add nuw nsw i32 %8, 1
  %32 = getelementptr [9 x i64], ptr %2, i32 0, i32 %31
  %33 = load i64, ptr %32, align 8
  %34 = lshr i64 %33, 32
  %35 = trunc i64 %34 to i32
  %36 = and i32 %35, 2147483644
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %27
  %39 = lshr i64 %33, 63
  %40 = trunc i64 %39 to i32
  %41 = add nuw nsw i32 %40, 262143
  br label %49

42:                                               ; preds = %27
  %43 = trunc i64 %33 to i32
  %44 = tail call i32 @llvm.fshl.i32(i32 %35, i32 %43, i32 16) #6
  %45 = sub i32 0, %44
  %46 = icmp slt i64 %33, 0
  %47 = select i1 %46, i32 %45, i32 %44
  %48 = and i32 %47, 524287
  br label %49

49:                                               ; preds = %42, %38
  %50 = phi i32 [ %41, %38 ], [ %48, %42 ]
  store i32 %50, ptr %30, align 4
  %51 = or i32 %7, 2
  %52 = getelementptr [12 x i32], ptr %4, i32 0, i32 %51
  %53 = add nuw nsw i32 %8, 2
  %54 = getelementptr [9 x i64], ptr %2, i32 0, i32 %53
  %55 = load i64, ptr %54, align 8
  %56 = lshr i64 %55, 32
  %57 = trunc i64 %56 to i32
  %58 = and i32 %57, 2147483644
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %49
  %61 = lshr i64 %55, 63
  %62 = trunc i64 %61 to i32
  %63 = add nuw nsw i32 %62, 262143
  br label %71

64:                                               ; preds = %49
  %65 = trunc i64 %55 to i32
  %66 = tail call i32 @llvm.fshl.i32(i32 %57, i32 %65, i32 16) #6
  %67 = sub i32 0, %66
  %68 = icmp slt i64 %55, 0
  %69 = select i1 %68, i32 %67, i32 %66
  %70 = and i32 %69, 524287
  br label %71

71:                                               ; preds = %64, %60
  %72 = phi i32 [ %63, %60 ], [ %70, %64 ]
  store i32 %72, ptr %52, align 4
  %73 = or i32 %7, 3
  %74 = getelementptr [12 x i32], ptr %4, i32 0, i32 %73
  store i32 0, ptr %74, align 4
  %75 = add nuw nsw i32 %6, 1
  %76 = icmp eq i32 %75, 3
  br i1 %76, label %77, label %5

77:                                               ; preds = %71
  ret void
}

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

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @base907c_ilut(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  %4 = icmp eq i32 %2, 1024
  %5 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2
  %6 = load i48, ptr %5, align 8
  %7 = and i48 %6, -138538465099777
  %8 = select i1 %4, i48 35184372088832, i48 61572651155456
  %9 = or i48 %7, %8
  %10 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2
  %11 = or i48 %9, 4398046511104
  store i48 %11, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2, i32 2
  store ptr @head907d_olut_load, ptr %12, align 8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @base907c_csc_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
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
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 13) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 3146048, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 7
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 524287
  %23 = or i32 %22, -2147483648
  %24 = load ptr, ptr %5, align 4
  %25 = getelementptr i32, ptr %24, i32 1
  store ptr %25, ptr %5, align 4
  store i32 %23, ptr %24, align 4
  %26 = load ptr, ptr %5, align 4
  %27 = getelementptr %struct.nv50_wndw_atom, ptr %1, i32 0, i32 7, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(44) %26, ptr noundef align 4 dereferenceable(44) %27, i32 44, i1 false)
  %28 = load ptr, ptr %5, align 4
  %29 = getelementptr i32, ptr %28, i32 11
  store ptr %29, ptr %5, align 4
  br label %30

30:                                               ; preds = %17, %11
  %31 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %31
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @base907c_csc_clr(ptr nocapture noundef readonly %0) #3 {
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
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 2) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262464, ptr %17, align 4
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
define internal i32 @base907c_xlut_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 6
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 6) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = phi ptr [ %16, %15 ], [ %6, %2 ]
  %19 = getelementptr i32, ptr %18, i32 1
  store ptr %19, ptr %5, align 4
  store i32 786656, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6
  %21 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 6, i32 2
  %22 = load i48, ptr %21, align 8
  %23 = lshr i48 %22, 11
  %24 = trunc i48 %23 to i32
  %25 = and i32 %24, -1073741824
  %26 = lshr i48 %22, 19
  %27 = trunc i48 %26 to i32
  %28 = and i32 %27, 251658240
  %29 = or i32 %25, %28
  %30 = load ptr, ptr %5, align 4
  %31 = getelementptr i32, ptr %30, i32 1
  store ptr %31, ptr %5, align 4
  store i32 %29, ptr %30, align 4
  %32 = load i48, ptr %21, align 8
  %33 = lshr i48 %32, 8
  %34 = trunc i48 %33 to i32
  %35 = load ptr, ptr %5, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %5, align 4
  store i32 %34, ptr %35, align 4
  %37 = load ptr, ptr %5, align 4
  %38 = getelementptr i32, ptr %37, i32 1
  store ptr %38, ptr %5, align 4
  store i32 1073741824, ptr %37, align 4
  %39 = load ptr, ptr %5, align 4
  %40 = getelementptr i32, ptr %39, i32 1
  store ptr %40, ptr %5, align 4
  store i32 262396, ptr %39, align 4
  %41 = load i32, ptr %20, align 8
  %42 = load ptr, ptr %5, align 4
  %43 = getelementptr i32, ptr %42, i32 1
  store ptr %43, ptr %5, align 4
  store i32 %41, ptr %42, align 4
  br label %44

44:                                               ; preds = %17, %11
  %45 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @base907c_xlut_clr(ptr nocapture noundef readonly %0) #3 {
  %2 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i32, ptr %5, i32 6
  %7 = getelementptr inbounds %struct.nvif_push, ptr %3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  %9 = icmp ult ptr %6, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = tail call i32 %11(ptr noundef %3, i32 noundef 6) #6
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %10
  %15 = load ptr, ptr %4, align 4
  br label %16

16:                                               ; preds = %14, %1
  %17 = phi ptr [ %15, %14 ], [ %5, %1 ]
  %18 = getelementptr i32, ptr %17, i32 1
  store ptr %18, ptr %4, align 4
  store i32 262368, ptr %17, align 4
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i32, ptr %19, i32 1
  store ptr %20, ptr %4, align 4
  store i32 0, ptr %19, align 4
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i32, ptr %21, i32 1
  store ptr %22, ptr %4, align 4
  store i32 262376, ptr %21, align 4
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr i32, ptr %23, i32 1
  store ptr %24, ptr %4, align 4
  store i32 0, ptr %23, align 4
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i32, ptr %25, i32 1
  store ptr %26, ptr %4, align 4
  store i32 262396, ptr %25, align 4
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i32, ptr %27, i32 1
  store ptr %28, ptr %4, align 4
  store i32 0, ptr %27, align 4
  br label %29

29:                                               ; preds = %16, %10
  %30 = phi i32 [ 0, %16 ], [ %12, %10 ]
  ret i32 %30
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @base907c_image_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #3 {
  %3 = getelementptr inbounds %struct.nv50_wndw, ptr %0, i32 0, i32 7, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i32, ptr %6, i32 10
  %8 = getelementptr inbounds %struct.nvif_push, ptr %4, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ult ptr %7, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = tail call i32 %12(ptr noundef %4, i32 noundef 10) #6
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %85

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
  %38 = getelementptr i32, ptr %36, i32 2
  store ptr %38, ptr %5, align 4
  store i32 1311744, ptr %37, align 4
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
  store i32 0, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 5
  %48 = load i16, ptr %47, align 8
  %49 = zext i16 %48 to i32
  %50 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 6
  %51 = load i16, ptr %50, align 2
  %52 = zext i16 %51 to i32
  %53 = shl nuw i32 %52, 16
  %54 = or i32 %53, %49
  %55 = load ptr, ptr %5, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %5, align 4
  store i32 %54, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 2
  %58 = load i16, ptr %57, align 2
  %59 = lshr i16 %58, 8
  %60 = and i16 %59, 15
  %61 = zext i16 %60 to i32
  %62 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 4
  %63 = load i32, ptr %62, align 4
  %64 = and i32 %63, 2096896
  %65 = or i32 %64, %61
  %66 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 3
  %67 = load i16, ptr %66, align 4
  %68 = and i16 %67, 8191
  %69 = zext i16 %68 to i32
  %70 = shl nuw nsw i32 %69, 8
  %71 = or i32 %65, %70
  %72 = lshr i16 %58, 7
  %73 = and i16 %72, 1
  %74 = zext i16 %73 to i32
  %75 = shl nuw nsw i32 %74, 24
  %76 = or i32 %71, %75
  %77 = load ptr, ptr %5, align 4
  %78 = getelementptr i32, ptr %77, i32 1
  store ptr %78, ptr %5, align 4
  store i32 %76, ptr %77, align 4
  %79 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %1, i32 0, i32 8, i32 1
  %80 = load i8, ptr %79, align 1
  %81 = zext i8 %80 to i32
  %82 = shl nuw nsw i32 %81, 8
  %83 = load ptr, ptr %5, align 4
  %84 = getelementptr i32, ptr %83, i32 1
  store ptr %84, ptr %5, align 4
  store i32 %82, ptr %83, align 4
  br label %85

85:                                               ; preds = %17, %11
  %86 = phi i32 [ 0, %17 ], [ %13, %11 ]
  ret i32 %86
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_image_clr(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_update(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @base907c_new(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #3 {
  %5 = shl i32 %1, 2
  %6 = shl i32 2, %5
  %7 = tail call i32 @base507c_new_(ptr noundef nonnull @base907c, ptr noundef nonnull @base507c_format, ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %6, ptr noundef %3) #6
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @base507c_new_(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @head907d_olut_load(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

attributes #0 = { argmemonly nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }

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
