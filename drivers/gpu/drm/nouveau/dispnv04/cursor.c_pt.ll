; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/cursor.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/cursor.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.79, %struct.anon.80, %struct.anon.81, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
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
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.list_head = type { ptr, ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.79 = type { i32, i8, i32, i32 }
%struct.anon.80 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.81 = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.76 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.87, %struct.anon.88, %struct.anon.90, ptr, %struct.anon.91, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.92, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.104 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.87 = type { ptr, i32, i32, i8 }
%struct.anon.88 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.89] }
%struct.anon.89 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.90 = type { i64, i64 }
%struct.anon.91 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.78 }
%struct.anon.78 = type { ptr, i64 }
%struct.anon.92 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.99, %struct.anon.100, %struct.anon.101, %struct.anon.102 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.93, i8 }
%union.anon.93 = type { %struct.anon.97 }
%struct.anon.97 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.99 = type { i32 }
%struct.anon.100 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.101 = type { i16, i16 }
%struct.anon.102 = type { i16, i16, i16, %struct.anon.103, i16 }
%struct.anon.103 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.104 = type { ptr, %struct.mutex, i8 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.105, i32, i32 }
%union.anon.105 = type { %struct.anon.107 }
%struct.anon.107 = type { i16, i16 }

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local i32 @nv04_cursor_init(ptr nocapture noundef writeonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 2
  store ptr @nv04_cursor_set_offset, ptr %2, align 4
  %3 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 3
  store ptr @nv04_cursor_set_pos, ptr %3, align 4
  %4 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 4
  store ptr @nv04_cursor_hide, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 11, i32 5
  store ptr @nv04_cursor_show, ptr %5, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_cursor_set_offset(ptr nocapture noundef readonly %0, i32 noundef %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %8, i32 0, i32 %10
  %12 = lshr i32 %1, 17
  %13 = trunc i32 %12 to i8
  %14 = or i8 %13, -128
  %15 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %8, i32 0, i32 %10, i32 1, i32 48
  store i8 %14, ptr %15, align 1
  %16 = lshr i32 %1, 9
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, -4
  %19 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %8, i32 0, i32 %10, i32 1, i32 49
  store i8 %18, ptr %19, align 1
  %20 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 12, i32 11
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, 32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = or i8 %18, 2
  store i8 %25, ptr %19, align 1
  br label %26

26:                                               ; preds = %24, %2
  %27 = lshr i32 %1, 24
  %28 = trunc i32 %27 to i8
  %29 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %8, i32 0, i32 %10, i32 1, i32 47
  store i8 %28, ptr %29, align 1
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %11, i32 noundef 48)
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %11, i32 noundef 49)
  tail call fastcc void @crtc_wr_cio_state(ptr noundef %0, ptr noundef %11, i32 noundef 47)
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %31 = load i8, ptr %30, align 1
  %32 = icmp eq i8 %31, 5
  br i1 %32, label %33, label %59

33:                                               ; preds = %26
  %34 = load i32, ptr %9, align 8
  %35 = load ptr, ptr %4, align 4
  %36 = icmp eq i32 %34, 0
  %37 = select i1 %36, i32 6816512, i32 6824704
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 3, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %44, label %41, !prof !8

41:                                               ; preds = %33
  %42 = getelementptr i8, ptr %39, i32 %37
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %48

44:                                               ; preds = %33
  %45 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 2, i32 3
  %46 = zext i32 %37 to i64
  %47 = tail call i32 @nvif_object_rd(ptr noundef %45, i32 noundef 4, i64 noundef %46) #4
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i32 [ %43, %41 ], [ %47, %44 ]
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3, i32 0, i32 6
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !8

54:                                               ; preds = %48
  %55 = getelementptr i8, ptr %52, i32 %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %49) #4, !srcloc !12
  br label %59

56:                                               ; preds = %48
  %57 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3
  %58 = zext i32 %37 to i64
  tail call void @nvif_object_wr(ptr noundef %57, i32 noundef 4, i64 noundef %58, i32 noundef %49) #4
  br label %59

59:                                               ; preds = %56, %54, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_cursor_set_pos(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #1 {
  %4 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 8
  store i32 %1, ptr %4, align 4
  %5 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 9
  store i32 %2, ptr %5, align 8
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = shl i32 %2, 16
  %10 = and i32 %1, 65535
  %11 = or i32 %9, %10
  %12 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq i32 %8, 0
  %15 = select i1 %14, i32 6816512, i32 6824704
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !8

19:                                               ; preds = %3
  %20 = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %11) #4, !srcloc !12
  br label %24

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 2, i32 3
  %23 = zext i32 %15 to i64
  tail call void @nvif_object_wr(ptr noundef %22, i32 noundef 4, i64 noundef %23, i32 noundef %11) #4
  br label %24

24:                                               ; preds = %21, %19
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_cursor_hide(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  tail call fastcc void @nv_show_cursor(ptr noundef %3, i32 noundef %5, i1 noundef zeroext false)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_cursor_show(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #1 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 8
  tail call fastcc void @nv_show_cursor(ptr noundef %3, i32 noundef %5, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @crtc_wr_cio_state(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 {
  %4 = load ptr, ptr %0, align 8
  %5 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr %struct.nv04_crtc_reg, ptr %1, i32 0, i32 1, i32 %2
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 2, i32 3, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = shl i32 %6, 13
  %16 = add i32 %15, 6296532
  br i1 %14, label %20, label %17, !prof !8

17:                                               ; preds = %3
  %18 = trunc i32 %2 to i8
  %19 = getelementptr i8, ptr %13, i32 %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %18) #4, !srcloc !14
  br label %23

20:                                               ; preds = %3
  %21 = sext i32 %16 to i64
  %22 = and i32 %2, 255
  tail call void @nvif_object_wr(ptr noundef %11, i32 noundef 1, i64 noundef %21, i32 noundef %22) #4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr %12, align 8
  %25 = icmp eq ptr %24, null
  %26 = add i32 %15, 6296533
  br i1 %25, label %29, label %27, !prof !8

27:                                               ; preds = %23
  %28 = getelementptr i8, ptr %24, i32 %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %28, i8 %8) #4, !srcloc !14
  br label %32

29:                                               ; preds = %23
  %30 = sext i32 %26 to i64
  %31 = zext i8 %8 to i32
  tail call void @nvif_object_wr(ptr noundef %11, i32 noundef 1, i64 noundef %30, i32 noundef %31) #4
  br label %32

32:                                               ; preds = %29, %27
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv_show_cursor(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #3 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %8, i32 0, i32 %1, i32 1, i32 49
  %10 = load i8, ptr %9, align 1
  %11 = and i8 %10, -2
  %12 = zext i1 %2 to i8
  %13 = or i8 %11, %12
  store i8 %13, ptr %9, align 1
  %14 = load ptr, ptr %4, align 4
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 2, i32 3
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = shl i32 %1, 13
  %20 = add i32 %19, 6296532
  br i1 %18, label %23, label %21, !prof !8

21:                                               ; preds = %3
  %22 = getelementptr i8, ptr %17, i32 %20
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %22, i8 49) #4, !srcloc !14
  br label %25

23:                                               ; preds = %3
  %24 = sext i32 %20 to i64
  tail call void @nvif_object_wr(ptr noundef %15, i32 noundef 1, i64 noundef %24, i32 noundef 49) #4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load ptr, ptr %16, align 8
  %27 = icmp eq ptr %26, null
  %28 = add i32 %19, 6296533
  br i1 %27, label %31, label %29, !prof !8

29:                                               ; preds = %25
  %30 = getelementptr i8, ptr %26, i32 %28
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !13
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %30, i8 %13) #4, !srcloc !14
  br label %34

31:                                               ; preds = %25
  %32 = sext i32 %28 to i64
  %33 = zext i8 %13 to i32
  tail call void @nvif_object_wr(ptr noundef %15, i32 noundef 1, i64 noundef %32, i32 noundef %33) #4
  br label %34

34:                                               ; preds = %31, %29
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %36 = load i8, ptr %35, align 1
  %37 = icmp eq i8 %36, 5
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = load ptr, ptr %4, align 4
  %40 = icmp eq i32 %1, 0
  %41 = select i1 %40, i32 6816512, i32 6824704
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 3, i32 0, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %48, label %45, !prof !8

45:                                               ; preds = %38
  %46 = getelementptr i8, ptr %43, i32 %41
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #4, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #4, !srcloc !10
  br label %52

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 3
  %50 = zext i32 %41 to i64
  %51 = tail call i32 @nvif_object_rd(ptr noundef %49, i32 noundef 4, i64 noundef %50) #4
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i32 [ %47, %45 ], [ %51, %48 ]
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 2, i32 3, i32 0, i32 6
  %56 = load ptr, ptr %55, align 8
  %57 = icmp eq ptr %56, null
  br i1 %57, label %60, label %58, !prof !8

58:                                               ; preds = %52
  %59 = getelementptr i8, ptr %56, i32 %41
  tail call void asm sideeffect "dsb st", "~{memory}"() #4, !srcloc !11
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %53) #4, !srcloc !12
  br label %63

60:                                               ; preds = %52
  %61 = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 2, i32 3
  %62 = zext i32 %41 to i64
  tail call void @nvif_object_wr(ptr noundef %61, i32 noundef 4, i64 noundef %62, i32 noundef %53) #4
  br label %63

63:                                               ; preds = %60, %58, %34
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }

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
!9 = !{i64 4058987}
!10 = !{i64 2151598440}
!11 = !{i64 2151599662}
!12 = !{i64 4058569}
!13 = !{i64 2151598792}
!14 = !{i64 4058372}
