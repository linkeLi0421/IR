; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/crc907d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/crc907d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_crc_func = type { ptr, ptr, ptr, ptr, i16, i16, i32 }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.104, %struct.anon.105, %struct.anon.106, ptr, ptr }
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
%struct.anon.104 = type { i32, i8, i32, i32 }
%struct.anon.105 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.103 }
%struct.anon.103 = type { ptr, i64 }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
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
%struct.anon.77 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.112, %struct.anon.113, %struct.anon.115, ptr, %struct.anon.116, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.117, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.129 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.112 = type { ptr, i32, i32, i8 }
%struct.anon.113 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.114] }
%struct.anon.114 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.115 = type { i64, i64 }
%struct.anon.116 = type { i32, i64 }
%struct.anon.117 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.127 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.118, i8 }
%union.anon.118 = type { %struct.anon.122 }
%struct.anon.122 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.124 = type { i32 }
%struct.anon.125 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.126 = type { i16, i16 }
%struct.anon.127 = type { i16, i16, i16, %struct.anon.128, i16 }
%struct.anon.128 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.129 = type { ptr, %struct.mutex, i8 }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.crc907d_notifier = type { i32, i32, [255 x %struct.crc907d_entry] }
%struct.crc907d_entry = type { i32, i32, [2 x i32] }

@crc907d = dso_local local_unnamed_addr constant %struct.nv50_crc_func { ptr @crc907d_set_src, ptr @crc907d_set_ctx, ptr @crc907d_get_entry, ptr @crc907d_ctx_finished, i16 245, i16 255, i32 4088 }, align 4
@.str = private unnamed_addr constant [4 x i8] c"DSI\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Compositor\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"CRC output 1\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"CRC output 2\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"%s: CRC notifier context for head %d overflowed on %s: %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"%s: CRC notifier context for head %d overflowed: %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"%s: Head %d CRC context status: %x\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@switch.table.crc907d_ctx_finished = private unnamed_addr constant [8 x ptr] [ptr @.str, ptr @.str.1, ptr @.str, ptr @.str.2, ptr @.str, ptr @.str, ptr @.str, ptr @.str.3], align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crc907d_set_src(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nv50_disp, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nv50_core, ptr %13, i32 0, i32 1, i32 2
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %17 = load i32, ptr %16, align 8
  switch i32 %2, label %38 [
    i32 1, label %18
    i32 2, label %22
    i32 3, label %25
    i32 4, label %29
    i32 5, label %33
    i32 0, label %37
  ]

18:                                               ; preds = %4
  %19 = shl i32 %1, 12
  %20 = add i32 %19, 986880
  %21 = or i32 %20, -1048512
  br label %38

22:                                               ; preds = %4
  %23 = shl i32 %1, 16
  %24 = or i32 %23, -983232
  br label %38

25:                                               ; preds = %4
  %26 = shl i32 %1, 8
  %27 = add i32 %26, 1044480
  %28 = or i32 %27, -1048512
  br label %38

29:                                               ; preds = %4
  %30 = shl i32 %17, 8
  %31 = add i32 %30, 1046528
  %32 = or i32 %31, -1048512
  br label %38

33:                                               ; preds = %4
  %34 = shl i32 %17, 12
  %35 = add i32 %34, 1019648
  %36 = or i32 %35, -1048512
  br label %38

37:                                               ; preds = %4
  br label %38

38:                                               ; preds = %37, %33, %29, %25, %22, %18, %4
  %39 = phi i32 [ -1048512, %4 ], [ -192, %37 ], [ %36, %33 ], [ %32, %29 ], [ %28, %25 ], [ %24, %22 ], [ %21, %18 ]
  %40 = getelementptr inbounds %struct.nvif_push, ptr %15, i32 0, i32 4
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i32, ptr %41, i32 4
  %43 = getelementptr inbounds %struct.nvif_push, ptr %15, i32 0, i32 6
  %44 = load ptr, ptr %43, align 4
  %45 = icmp ult ptr %42, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %38
  %47 = load ptr, ptr %15, align 8
  %48 = tail call i32 %47(ptr noundef %15, i32 noundef 4) #3
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %85

50:                                               ; preds = %46, %38
  %51 = icmp eq i32 %2, 0
  %52 = mul i32 %17, 768
  br i1 %51, label %70, label %53

53:                                               ; preds = %50
  %54 = add i32 %52, 1080
  %55 = and i32 %54, 3896
  %56 = or i32 %55, 262144
  %57 = load ptr, ptr %40, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %40, align 4
  store i32 %56, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nv50_crc_notifier_ctx, ptr %3, i32 0, i32 1, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %40, align 4
  %62 = getelementptr i32, ptr %61, i32 1
  store ptr %62, ptr %40, align 4
  store i32 %60, ptr %61, align 4
  %63 = add i32 %52, 1072
  %64 = and i32 %63, 3888
  %65 = or i32 %64, 262144
  %66 = load ptr, ptr %40, align 4
  %67 = getelementptr i32, ptr %66, i32 1
  store ptr %67, ptr %40, align 4
  store i32 %65, ptr %66, align 4
  %68 = load ptr, ptr %40, align 4
  %69 = getelementptr i32, ptr %68, i32 1
  store ptr %69, ptr %40, align 4
  store i32 %39, ptr %68, align 4
  br label %85

70:                                               ; preds = %50
  %71 = add i32 %52, 1072
  %72 = and i32 %71, 3888
  %73 = or i32 %72, 262144
  %74 = load ptr, ptr %40, align 4
  %75 = getelementptr i32, ptr %74, i32 1
  store ptr %75, ptr %40, align 4
  store i32 %73, ptr %74, align 4
  %76 = load ptr, ptr %40, align 4
  %77 = getelementptr i32, ptr %76, i32 1
  store ptr %77, ptr %40, align 4
  store i32 %39, ptr %76, align 4
  %78 = add i32 %52, 1080
  %79 = and i32 %78, 3896
  %80 = or i32 %79, 262144
  %81 = load ptr, ptr %40, align 4
  %82 = getelementptr i32, ptr %81, i32 1
  store ptr %82, ptr %40, align 4
  store i32 %80, ptr %81, align 4
  %83 = load ptr, ptr %40, align 4
  %84 = getelementptr i32, ptr %83, i32 1
  store ptr %84, ptr %40, align 4
  store i32 0, ptr %83, align 4
  br label %85

85:                                               ; preds = %70, %53, %46
  %86 = phi i32 [ 0, %70 ], [ 0, %53 ], [ %48, %46 ]
  ret i32 %86
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crc907d_set_ctx(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 1, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr i32, ptr %17, i32 2
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 2) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = mul i32 %15, 768
  %31 = add i32 %30, 1080
  %32 = and i32 %31, 3896
  %33 = or i32 %32, 262144
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = icmp eq ptr %1, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.nv50_crc_notifier_ctx, ptr %1, i32 0, i32 1, i32 3
  %38 = load i32, ptr %37, align 4
  br label %39

39:                                               ; preds = %36, %28
  %40 = phi i32 [ %38, %36 ], [ 0, %28 ]
  %41 = load ptr, ptr %16, align 4
  %42 = getelementptr i32, ptr %41, i32 1
  store ptr %42, ptr %16, align 4
  store i32 %40, ptr %41, align 4
  br label %43

43:                                               ; preds = %39, %22
  %44 = phi i32 [ 0, %39 ], [ %24, %22 ]
  ret i32 %44
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crc907d_get_entry(ptr nocapture noundef readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr %struct.crc907d_notifier, ptr %6, i32 0, i32 2, i32 %3, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @crc907d_ctx_finished(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #3, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !9
  %10 = and i32 %9, 62
  %11 = and i32 %9, 1
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %60, label %13

13:                                               ; preds = %2
  %14 = icmp eq i32 %10, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %13
  %16 = add nsw i32 %10, -4
  %17 = tail call i32 @llvm.fshl.i32(i32 %16, i32 %16, i32 30)
  %18 = icmp ult i32 %17, 8
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = trunc i32 %17 to i8
  %21 = lshr i8 -117, %20
  %22 = and i8 %21, 1
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %36, label %24

24:                                               ; preds = %19
  %25 = getelementptr inbounds [8 x ptr], ptr @switch.table.crc907d_ctx_finished, i32 0, i32 %17
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %28, i32 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.drm_device, ptr %30, i32 0, i32 2
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %34 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %35 = load i32, ptr %34, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.4, ptr noundef %33, i32 noundef %35, ptr noundef nonnull %26, i32 noundef %9) #4
  br label %46

36:                                               ; preds = %19, %15
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nouveau_drm, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %44 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %45 = load i32, ptr %44, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.5, ptr noundef %43, i32 noundef %45, i32 noundef %9) #4
  br label %46

46:                                               ; preds = %36, %24, %13
  %47 = load i32, ptr @__drm_debug, align 4
  %48 = and i32 %47, 2
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.drm_device, ptr %54, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %58 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %59 = load i32, ptr %58, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %56, ptr noundef nonnull @.str.6, ptr noundef %57, i32 noundef %59, i32 noundef %9) #4
  br label %60

60:                                               ; preds = %50, %46, %2
  %61 = xor i1 %12, true
  ret i1 %61
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { cold nounwind }

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
!8 = !{i64 5394209}
!9 = !{i64 2152926172}
