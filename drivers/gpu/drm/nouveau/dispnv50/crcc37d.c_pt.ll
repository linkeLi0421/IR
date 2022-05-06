; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/crcc37d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/crcc37d.c"
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
%struct.crcc37d_notifier = type { i32, [28 x i8], [2047 x %struct.crcc37d_entry] }
%struct.crcc37d_entry = type { [2 x i32], i32, i32, i32, [2 x i32], i32 }

@.str = private unnamed_addr constant [10 x i8] c"Front End\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Compositor\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"RG\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"CRC output 1\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"CRC output 2\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"%s: CRC notifier context for head %d overflowed on %s: %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"%s: CRC notifier context for head %d overflowed: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"%s: Head %d CRC context status: %x\0A\00", align 1
@crcc37d = dso_local local_unnamed_addr constant %struct.nv50_crc_func { ptr @crcc37d_set_src, ptr @crcc37d_set_ctx, ptr @crcc37d_get_entry, ptr @crcc37d_ctx_finished, i16 2017, i16 2047, i32 65536 }, align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @crcc37d_set_ctx(ptr nocapture noundef readonly %0, ptr noundef readonly %1) #0 {
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
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 2) #2
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = shl i32 %15, 10
  %31 = add i32 %30, 8576
  %32 = and i32 %31, 15744
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
define dso_local i32 @crcc37d_get_entry(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 6
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq i32 %2, 2
  %8 = getelementptr %struct.crcc37d_notifier, ptr %6, i32 0, i32 2, i32 %3, i32 3
  %9 = getelementptr %struct.crcc37d_notifier, ptr %6, i32 0, i32 2, i32 %3, i32 4
  %10 = select i1 %7, ptr %8, ptr %9
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  ret i32 %11
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @crcc37d_ctx_finished(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #2, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #2, !srcloc !9
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %53, label %12

12:                                               ; preds = %2
  %13 = and i32 %9, 126
  switch i32 %13, label %29 [
    i32 0, label %39
    i32 4, label %18
    i32 8, label %14
    i32 16, label %15
    i32 32, label %16
    i32 64, label %17
  ]

14:                                               ; preds = %12
  br label %18

15:                                               ; preds = %12
  br label %18

16:                                               ; preds = %12
  br label %18

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %17, %16, %15, %14, %12
  %19 = phi ptr [ @.str.1, %14 ], [ @.str.2, %15 ], [ @.str.3, %16 ], [ @.str.4, %17 ], [ @.str, %12 ]
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %21, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.drm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %27 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %28 = load i32, ptr %27, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.5, ptr noundef %26, i32 noundef %28, ptr noundef nonnull %19, i32 noundef %9) #3
  br label %39

29:                                               ; preds = %12
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %37 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %38 = load i32, ptr %37, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.6, ptr noundef %36, i32 noundef %38, i32 noundef %9) #3
  br label %39

39:                                               ; preds = %29, %18, %12
  %40 = load i32, ptr @__drm_debug, align 4
  %41 = and i32 %40, 2
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %45, i32 0, i32 3
  %47 = load ptr, ptr %46, align 8
  %48 = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %51 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %52 = load i32, ptr %51, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %49, ptr noundef nonnull @.str.7, ptr noundef %50, i32 noundef %52, i32 noundef %9) #3
  br label %53

53:                                               ; preds = %43, %39, %2
  %54 = xor i1 %11, true
  ret i1 %54
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @crcc37d_set_src(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
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
  %18 = shl i32 %17, 2
  %19 = and i32 %18, 28
  switch i32 %2, label %32 [
    i32 1, label %20
    i32 2, label %25
    i32 5, label %30
  ]

20:                                               ; preds = %4
  %21 = shl i32 %1, 12
  %22 = add i32 %21, 327680
  %23 = and i32 %22, 1044480
  %24 = or i32 %19, %23
  br label %32

25:                                               ; preds = %4
  %26 = shl i32 %1, 12
  %27 = add i32 %26, 393216
  %28 = and i32 %27, 1044480
  %29 = or i32 %19, %28
  br label %32

30:                                               ; preds = %4
  %31 = or i32 %19, 196608
  br label %32

32:                                               ; preds = %30, %25, %20, %4
  %33 = phi i32 [ %19, %4 ], [ %31, %30 ], [ %29, %25 ], [ %24, %20 ]
  %34 = getelementptr inbounds %struct.nvif_push, ptr %15, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i32, ptr %35, i32 4
  %37 = getelementptr inbounds %struct.nvif_push, ptr %15, i32 0, i32 6
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ult ptr %36, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %32
  %41 = load ptr, ptr %15, align 8
  %42 = tail call i32 %41(ptr noundef %15, i32 noundef 4) #2
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %79

44:                                               ; preds = %40, %32
  %45 = icmp eq i32 %2, 0
  %46 = shl i32 %17, 10
  br i1 %45, label %64, label %47

47:                                               ; preds = %44
  %48 = add i32 %46, 8576
  %49 = and i32 %48, 15744
  %50 = or i32 %49, 262144
  %51 = load ptr, ptr %34, align 4
  %52 = getelementptr i32, ptr %51, i32 1
  store ptr %52, ptr %34, align 4
  store i32 %50, ptr %51, align 4
  %53 = getelementptr inbounds %struct.nv50_crc_notifier_ctx, ptr %3, i32 0, i32 1, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %34, align 4
  %56 = getelementptr i32, ptr %55, i32 1
  store ptr %56, ptr %34, align 4
  store i32 %54, ptr %55, align 4
  %57 = add i32 %46, 8580
  %58 = and i32 %57, 15748
  %59 = or i32 %58, 262144
  %60 = load ptr, ptr %34, align 4
  %61 = getelementptr i32, ptr %60, i32 1
  store ptr %61, ptr %34, align 4
  store i32 %59, ptr %60, align 4
  %62 = load ptr, ptr %34, align 4
  %63 = getelementptr i32, ptr %62, i32 1
  store ptr %63, ptr %34, align 4
  store i32 %33, ptr %62, align 4
  br label %79

64:                                               ; preds = %44
  %65 = add i32 %46, 8580
  %66 = and i32 %65, 15748
  %67 = or i32 %66, 262144
  %68 = load ptr, ptr %34, align 4
  %69 = getelementptr i32, ptr %68, i32 1
  store ptr %69, ptr %34, align 4
  store i32 %67, ptr %68, align 4
  %70 = load ptr, ptr %34, align 4
  %71 = getelementptr i32, ptr %70, i32 1
  store ptr %71, ptr %34, align 4
  store i32 0, ptr %70, align 4
  %72 = add i32 %46, 8576
  %73 = and i32 %72, 15744
  %74 = or i32 %73, 262144
  %75 = load ptr, ptr %34, align 4
  %76 = getelementptr i32, ptr %75, i32 1
  store ptr %76, ptr %34, align 4
  store i32 %74, ptr %75, align 4
  %77 = load ptr, ptr %34, align 4
  %78 = getelementptr i32, ptr %77, i32 1
  store ptr %78, ptr %34, align 4
  store i32 0, ptr %77, align 4
  br label %79

79:                                               ; preds = %64, %47, %40
  %80 = phi i32 [ 0, %64 ], [ 0, %47 ], [ %42, %40 ]
  ret i32 %80
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { cold nounwind }

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
!8 = !{i64 5393700}
!9 = !{i64 2152925663}
