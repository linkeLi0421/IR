; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/hw.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/hw.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.atomic_t = type { i32 }
%struct.anon.76 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.83, %struct.anon.84, %struct.anon.86, ptr, %struct.anon.87, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.88, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.100 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.83 = type { ptr, i32, i32, i8 }
%struct.anon.84 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.85] }
%struct.anon.85 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.86 = type { i64, i64 }
%struct.anon.87 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.79 }
%struct.anon.79 = type { ptr, i64 }
%struct.anon.88 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.95, %struct.anon.96, %struct.anon.97, %struct.anon.98 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.89, i8 }
%union.anon.89 = type { %struct.anon.93 }
%struct.anon.93 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.95 = type { i32 }
%struct.anon.96 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.97 = type { i16, i16 }
%struct.anon.98 = type { i16, i16, i16, %struct.anon.99, i16 }
%struct.anon.99 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.100 = type { ptr, %struct.mutex, i8 }
%struct.nvbios_pll = type { i32, i32, i32, i8, i8, i8, i8, %struct.anon.160, %struct.anon.160 }
%struct.anon.160 = type { i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.anon.179 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.155, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.155 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.nvkm_pll_vals = type { %union.anon.101, i32, i32 }
%union.anon.101 = type { %struct.anon.103 }
%struct.anon.103 = type { i16, i16 }
%struct.anon.102 = type { i8, i8, i8, i8 }
%struct.pci_bus = type { %struct.list_head, ptr, %struct.list_head, %struct.list_head, ptr, %struct.list_head, [4 x ptr], %struct.list_head, %struct.resource, ptr, ptr, ptr, i8, i8, i8, i8, i32, [48 x i8], i16, i16, ptr, %struct.device, ptr, ptr, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.nv04_display = type { %struct.nv04_mode_state, %struct.nv04_mode_state, [4 x [16384 x i32]], [4 x i32], [2 x ptr], %struct.nvif_notify }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.180 = type { %struct.nvkm_object, ptr }
%struct.nvkm_clk = type { ptr, %struct.nvkm_subdev, ptr, %struct.nvkm_pstate, %struct.list_head, i32, %struct.work_struct, %struct.wait_queue_head, %struct.atomic_t, %struct.nvkm_notify, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, ptr, ptr }
%struct.nvkm_subdev = type { ptr, ptr, i32, i32, [16 x i8], i32, %struct.list_head, ptr, i8 }
%struct.nvkm_pstate = type { %struct.list_head, %struct.list_head, %struct.nvkm_cstate, i8, i8, i32, i8 }
%struct.nvkm_cstate = type { %struct.list_head, i8, [29 x i32], i8 }
%struct.nvkm_notify = type { ptr, %struct.list_head, i32, i32, ptr, i32, i32, i32, %struct.work_struct, ptr }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.anon.182 = type { %struct.nvkm_object, ptr }

@.str = private unnamed_addr constant [21 x i8] c"%s: %sing VGA fonts\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Sav\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"Restor\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"%s: Failed to map VRAM, cannot save/restore VGA fonts.\0A\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"%s: VPLL %d outwith limits, attempting to fix\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @NVWriteVgaSeq(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 5
  %13 = select i1 %12, i32 795588, i32 787396
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i32 [ 787396, %4 ], [ %13, %9 ]
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !8

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %2) #7, !srcloc !10
  br label %24

21:                                               ; preds = %14
  %22 = zext i32 %15 to i64
  %23 = zext i8 %2 to i32
  tail call void @nvif_object_wr(ptr noundef %7, i32 noundef 1, i64 noundef %22, i32 noundef %23) #7
  br label %24

24:                                               ; preds = %21, %19
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3
  br i1 %8, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 1, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 5
  %31 = select i1 %30, i32 795589, i32 787397
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i32 [ 787397, %24 ], [ %31, %27 ]
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !8

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %3) #7, !srcloc !10
  br label %42

39:                                               ; preds = %32
  %40 = zext i32 %33 to i64
  %41 = zext i8 %3 to i32
  tail call void @nvif_object_wr(ptr noundef %26, i32 noundef 1, i64 noundef %40, i32 noundef %41) #7
  br label %42

42:                                               ; preds = %39, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @NVReadVgaSeq(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 5
  %12 = select i1 %11, i32 795588, i32 787396
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 787396, %3 ], [ %12, %8 ]
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !8

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %16, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %2) #7, !srcloc !10
  br label %23

20:                                               ; preds = %13
  %21 = zext i32 %14 to i64
  %22 = zext i8 %2 to i32
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 1, i64 noundef %21, i32 noundef %22) #7
  br label %23

23:                                               ; preds = %20, %18
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3
  br i1 %7, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3, i32 1, i32 4
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 5
  %30 = select i1 %29, i32 795589, i32 787397
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i32 [ 787397, %23 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !8

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %34, i32 %32
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %37) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %39 = zext i8 %38 to i32
  br label %43

40:                                               ; preds = %31
  %41 = zext i32 %32 to i64
  %42 = tail call i32 @nvif_object_rd(ptr noundef %25, i32 noundef 1, i64 noundef %41) #7
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %39, %36 ], [ %42, %40 ]
  %45 = trunc i32 %44 to i8
  ret i8 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @NVWriteVgaGr(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %8 = icmp eq i32 %1, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 5
  %13 = select i1 %12, i32 795598, i32 787406
  br label %14

14:                                               ; preds = %9, %4
  %15 = phi i32 [ 787406, %4 ], [ %13, %9 ]
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %21, label %19, !prof !8

19:                                               ; preds = %14
  %20 = getelementptr i8, ptr %17, i32 %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %20, i8 %2) #7, !srcloc !10
  br label %24

21:                                               ; preds = %14
  %22 = zext i32 %15 to i64
  %23 = zext i8 %2 to i32
  tail call void @nvif_object_wr(ptr noundef %7, i32 noundef 1, i64 noundef %22, i32 noundef %23) #7
  br label %24

24:                                               ; preds = %21, %19
  %25 = load ptr, ptr %5, align 4
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3
  br i1 %8, label %32, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 1, i32 4
  %29 = load i8, ptr %28, align 1
  %30 = icmp eq i8 %29, 5
  %31 = select i1 %30, i32 795599, i32 787407
  br label %32

32:                                               ; preds = %27, %24
  %33 = phi i32 [ 787407, %24 ], [ %31, %27 ]
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !8

37:                                               ; preds = %32
  %38 = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 %3) #7, !srcloc !10
  br label %42

39:                                               ; preds = %32
  %40 = zext i32 %33 to i64
  %41 = zext i8 %3 to i32
  tail call void @nvif_object_wr(ptr noundef %26, i32 noundef 1, i64 noundef %40, i32 noundef %41) #7
  br label %42

42:                                               ; preds = %39, %37
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i8 @NVReadVgaGr(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 5
  %12 = select i1 %11, i32 795598, i32 787406
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 787406, %3 ], [ %12, %8 ]
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !8

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %16, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 %2) #7, !srcloc !10
  br label %23

20:                                               ; preds = %13
  %21 = zext i32 %14 to i64
  %22 = zext i8 %2 to i32
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 1, i64 noundef %21, i32 noundef %22) #7
  br label %23

23:                                               ; preds = %20, %18
  %24 = load ptr, ptr %4, align 4
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3
  br i1 %7, label %31, label %26

26:                                               ; preds = %23
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3, i32 1, i32 4
  %28 = load i8, ptr %27, align 1
  %29 = icmp eq i8 %28, 5
  %30 = select i1 %29, i32 795599, i32 787407
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i32 [ 787407, %23 ], [ %30, %26 ]
  %33 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3, i32 0, i32 6
  %34 = load ptr, ptr %33, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36, !prof !8

36:                                               ; preds = %31
  %37 = getelementptr i8, ptr %34, i32 %32
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %37) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %39 = zext i8 %38 to i32
  br label %43

40:                                               ; preds = %31
  %41 = zext i32 %32 to i64
  %42 = tail call i32 @nvif_object_rd(ptr noundef %25, i32 noundef 1, i64 noundef %41) #7
  br label %43

43:                                               ; preds = %40, %36
  %44 = phi i32 [ %39, %36 ], [ %42, %40 ]
  %45 = trunc i32 %44 to i8
  ret i8 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @NVSetOwner(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq i32 %1, 1
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 2
  %7 = load i16, ptr %6, align 2
  %8 = icmp eq i16 %7, 17
  br i1 %8, label %9, label %42

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !8

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %12, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 31) #7, !srcloc !10
  br label %17

16:                                               ; preds = %9
  tail call void @nvif_object_wr(ptr noundef %10, i32 noundef 1, i64 noundef 6296532, i32 noundef 31) #7
  br label %17

17:                                               ; preds = %16, %14
  %18 = load ptr, ptr %11, align 8
  %19 = icmp eq ptr %18, null
  br i1 %19, label %23, label %20, !prof !8

20:                                               ; preds = %17
  %21 = getelementptr i8, ptr %18, i32 6296533
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %25

23:                                               ; preds = %17
  %24 = tail call i32 @nvif_object_rd(ptr noundef %10, i32 noundef 1, i64 noundef 6296533) #7
  br label %25

25:                                               ; preds = %23, %20
  %26 = load ptr, ptr %3, align 4
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 2, i32 3
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 2, i32 3, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %33, label %31, !prof !8

31:                                               ; preds = %25
  %32 = getelementptr i8, ptr %29, i32 6304724
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %32, i8 31) #7, !srcloc !10
  br label %34

33:                                               ; preds = %25
  tail call void @nvif_object_wr(ptr noundef %27, i32 noundef 1, i64 noundef 6304724, i32 noundef 31) #7
  br label %34

34:                                               ; preds = %33, %31
  %35 = load ptr, ptr %28, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37, !prof !8

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %35, i32 6304725
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %38) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %42

40:                                               ; preds = %34
  %41 = tail call i32 @nvif_object_rd(ptr noundef %27, i32 noundef 1, i64 noundef 6304725) #7
  br label %42

42:                                               ; preds = %40, %37, %2
  %43 = trunc i32 %1 to i8
  %44 = select i1 %5, i8 3, i8 %43
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %45, i32 0, i32 2, i32 3
  %47 = getelementptr inbounds %struct.nouveau_drm, ptr %45, i32 0, i32 2, i32 3, i32 0, i32 6
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %52, label %50, !prof !8

50:                                               ; preds = %42
  %51 = getelementptr i8, ptr %48, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %51, i8 68) #7, !srcloc !10
  br label %53

52:                                               ; preds = %42
  tail call void @nvif_object_wr(ptr noundef %46, i32 noundef 1, i64 noundef 6296532, i32 noundef 68) #7
  br label %53

53:                                               ; preds = %52, %50
  %54 = load ptr, ptr %47, align 8
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56, !prof !8

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %54, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %57, i8 %44) #7, !srcloc !10
  br label %60

58:                                               ; preds = %53
  %59 = zext i8 %44 to i32
  tail call void @nvif_object_wr(ptr noundef %46, i32 noundef 1, i64 noundef 6296533, i32 noundef %59) #7
  br label %60

60:                                               ; preds = %58, %56
  %61 = load i16, ptr %6, align 2
  %62 = icmp eq i16 %61, 17
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load ptr, ptr %3, align 4
  %65 = getelementptr inbounds %struct.nouveau_drm, ptr %64, i32 0, i32 2, i32 3
  %66 = getelementptr inbounds %struct.nouveau_drm, ptr %64, i32 0, i32 2, i32 3, i32 0, i32 6
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69, !prof !8

69:                                               ; preds = %63
  %70 = getelementptr i8, ptr %67, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %70, i8 46) #7, !srcloc !10
  br label %72

71:                                               ; preds = %63
  tail call void @nvif_object_wr(ptr noundef %65, i32 noundef 1, i64 noundef 6296532, i32 noundef 46) #7
  br label %72

72:                                               ; preds = %71, %69
  %73 = load ptr, ptr %66, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !8

75:                                               ; preds = %72
  %76 = getelementptr i8, ptr %73, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %76, i8 %44) #7, !srcloc !10
  br label %79

77:                                               ; preds = %72
  %78 = zext i8 %44 to i32
  tail call void @nvif_object_wr(ptr noundef %65, i32 noundef 1, i64 noundef 6296533, i32 noundef %78) #7
  br label %79

79:                                               ; preds = %77, %75
  %80 = load ptr, ptr %3, align 4
  %81 = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 2, i32 3
  %82 = getelementptr inbounds %struct.nouveau_drm, ptr %80, i32 0, i32 2, i32 3, i32 0, i32 6
  %83 = load ptr, ptr %82, align 8
  %84 = icmp eq ptr %83, null
  br i1 %84, label %87, label %85, !prof !8

85:                                               ; preds = %79
  %86 = getelementptr i8, ptr %83, i32 6296532
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %86, i8 46) #7, !srcloc !10
  br label %88

87:                                               ; preds = %79
  tail call void @nvif_object_wr(ptr noundef %81, i32 noundef 1, i64 noundef 6296532, i32 noundef 46) #7
  br label %88

88:                                               ; preds = %87, %85
  %89 = load ptr, ptr %82, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %93, label %91, !prof !8

91:                                               ; preds = %88
  %92 = getelementptr i8, ptr %89, i32 6296533
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %92, i8 %44) #7, !srcloc !10
  br label %95

93:                                               ; preds = %88
  %94 = zext i8 %44 to i32
  tail call void @nvif_object_wr(ptr noundef %81, i32 noundef 1, i64 noundef 6296533, i32 noundef %94) #7
  br label %95

95:                                               ; preds = %93, %91, %60
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @NVBlankScreen(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 -102
  %9 = load i16, ptr %8, align 2
  %10 = and i16 %9, 4080
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %12 = load i8, ptr %11, align 1
  %13 = icmp ugt i8 %12, 1
  %14 = icmp ne i16 %10, 256
  %15 = select i1 %13, i1 %14, i1 false
  %16 = icmp ne i16 %10, 336
  %17 = select i1 %15, i1 %16, i1 false
  %18 = icmp ne i16 %10, 416
  %19 = select i1 %17, i1 %18, i1 false
  %20 = icmp ne i16 %10, 512
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  tail call void @NVSetOwner(ptr noundef %0, i32 noundef %1)
  %23 = load ptr, ptr %4, align 4
  br label %24

24:                                               ; preds = %22, %3
  %25 = phi ptr [ %23, %22 ], [ %5, %3 ]
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3
  %27 = icmp eq i32 %1, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 1, i32 4
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 5
  %32 = select i1 %31, i32 795588, i32 787396
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ 787396, %24 ], [ %32, %28 ]
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !8

38:                                               ; preds = %33
  %39 = getelementptr i8, ptr %36, i32 %34
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 1) #7, !srcloc !10
  br label %42

40:                                               ; preds = %33
  %41 = zext i32 %34 to i64
  tail call void @nvif_object_wr(ptr noundef %26, i32 noundef 1, i64 noundef %41, i32 noundef 1) #7
  br label %42

42:                                               ; preds = %40, %38
  %43 = load ptr, ptr %4, align 4
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 2, i32 3
  br i1 %27, label %50, label %45

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 2, i32 3, i32 1, i32 4
  %47 = load i8, ptr %46, align 1
  %48 = icmp eq i8 %47, 5
  %49 = select i1 %48, i32 795589, i32 787397
  br label %50

50:                                               ; preds = %45, %42
  %51 = phi i32 [ 787397, %42 ], [ %49, %45 ]
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 2, i32 3, i32 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %59, label %55, !prof !8

55:                                               ; preds = %50
  %56 = getelementptr i8, ptr %53, i32 %51
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %56) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %58 = zext i8 %57 to i32
  br label %62

59:                                               ; preds = %50
  %60 = zext i32 %51 to i64
  %61 = tail call i32 @nvif_object_rd(ptr noundef %44, i32 noundef 1, i64 noundef %60) #7
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i32 [ %58, %55 ], [ %61, %59 ]
  %64 = trunc i32 %63 to i8
  tail call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %65 = and i8 %64, -33
  %66 = select i1 %2, i8 32, i8 0
  %67 = or i8 %65, %66
  tail call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %67)
  tail call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_hw_get_pllvals(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nvbios_pll, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.anon.179, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 21
  %13 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false), !annotation !13
  %14 = call i32 @nvbios_pll_parse(ptr noundef %13, i32 noundef %1, ptr noundef nonnull %4) #7
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %155

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %155, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24, !prof !8

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %22, i32 %18
  %26 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %30

27:                                               ; preds = %20
  %28 = zext i32 %18 to i64
  %29 = call i32 @nvif_object_rd(ptr noundef %7, i32 noundef 4, i64 noundef %28) #7
  br label %30

30:                                               ; preds = %27, %24
  %31 = phi i32 [ %26, %24 ], [ %29, %27 ]
  %32 = icmp ult i32 %18, 16477
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load ptr, ptr %21, align 8
  %35 = icmp eq ptr %34, null
  %36 = add nuw nsw i32 %18, 4
  br i1 %35, label %40, label %37, !prof !8

37:                                               ; preds = %33
  %38 = getelementptr i8, ptr %34, i32 %36
  %39 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %96

40:                                               ; preds = %33
  %41 = zext i32 %36 to i64
  %42 = call i32 @nvif_object_rd(ptr noundef %7, i32 noundef 4, i64 noundef %41) #7
  br label %96

43:                                               ; preds = %30
  %44 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr i8, ptr %45, i32 -102
  %47 = load i16, ptr %46, align 2
  %48 = trunc i16 %47 to i12
  %49 = and i12 %48, -16
  switch i12 %49, label %50 [
    i12 832, label %55
    i12 784, label %55
  ]

50:                                               ; preds = %43
  %51 = load ptr, ptr %5, align 4
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 3, i32 1, i32 4
  %53 = load i8, ptr %52, align 1
  %54 = icmp ugt i8 %53, 4
  br i1 %54, label %55, label %67

55:                                               ; preds = %50, %43, %43
  %56 = icmp eq i32 %18, 6817056
  %57 = select i1 %56, i32 92, i32 112
  %58 = add i32 %57, %18
  %59 = load ptr, ptr %21, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %64, label %61, !prof !8

61:                                               ; preds = %55
  %62 = getelementptr i8, ptr %59, i32 %58
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %67

64:                                               ; preds = %55
  %65 = zext i32 %58 to i64
  %66 = call i32 @nvif_object_rd(ptr noundef %7, i32 noundef 4, i64 noundef %65) #7
  br label %67

67:                                               ; preds = %64, %61, %50
  %68 = phi i32 [ 0, %50 ], [ %63, %61 ], [ %66, %64 ]
  %69 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 4
  %70 = load i8, ptr %69, align 1
  %71 = icmp eq i8 %70, 2
  %72 = icmp ugt i32 %18, 6817031
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %74, label %109

74:                                               ; preds = %67
  %75 = load ptr, ptr %5, align 4
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 3, i32 0, i32 6
  %77 = load ptr, ptr %76, align 8
  %78 = icmp eq ptr %77, null
  br i1 %78, label %82, label %79, !prof !8

79:                                               ; preds = %74
  %80 = getelementptr i8, ptr %77, i32 6817152
  %81 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %80) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %85

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 2, i32 3
  %84 = call i32 @nvif_object_rd(ptr noundef %83, i32 noundef 4, i64 noundef 6817152) #7
  br label %85

85:                                               ; preds = %82, %79
  %86 = phi i32 [ %81, %79 ], [ %84, %82 ]
  %87 = icmp eq i32 %18, 6817032
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = and i32 %86, 256
  %90 = icmp eq i32 %89, 0
  %91 = select i1 %90, i32 %68, i32 0
  br label %109

92:                                               ; preds = %85
  %93 = and i32 %86, 268435456
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i32 %68, i32 0
  br label %109

96:                                               ; preds = %40, %37
  %97 = phi i32 [ %42, %40 ], [ %39, %37 ]
  %98 = lshr i32 %31, 16
  %99 = and i32 %98, 7
  %100 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %2, i32 0, i32 1
  store i32 %99, ptr %100, align 4
  %101 = getelementptr inbounds %struct.anon.102, ptr %2, i32 0, i32 2
  store i8 1, ptr %101, align 2
  %102 = getelementptr inbounds %struct.anon.102, ptr %2, i32 0, i32 3
  store i8 1, ptr %102, align 1
  %103 = trunc i32 %97 to i16
  store i16 %103, ptr %2, align 4
  %104 = and i32 %31, 4352
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %151

106:                                              ; preds = %96
  %107 = lshr i32 %97, 16
  %108 = trunc i32 %107 to i16
  store i16 %108, ptr %101, align 2
  br label %151

109:                                              ; preds = %92, %88, %67
  %110 = phi i32 [ %95, %92 ], [ %91, %88 ], [ %68, %67 ]
  %111 = load ptr, ptr %5, align 4
  %112 = lshr i32 %31, 16
  %113 = and i32 %112, 7
  %114 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %2, i32 0, i32 1
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.anon.102, ptr %2, i32 0, i32 2
  store i8 1, ptr %115, align 2
  %116 = getelementptr inbounds %struct.anon.102, ptr %2, i32 0, i32 3
  store i8 1, ptr %116, align 1
  %117 = trunc i32 %31 to i16
  store i16 %117, ptr %2, align 4
  %118 = load ptr, ptr %44, align 4
  %119 = getelementptr i8, ptr %118, i32 -102
  %120 = load i16, ptr %119, align 2
  %121 = trunc i16 %120 to i12
  %122 = and i12 %121, -16
  %123 = trunc i32 %31 to i8
  switch i12 %122, label %124 [
    i12 832, label %129
    i12 784, label %129
  ]

124:                                              ; preds = %109
  %125 = load ptr, ptr %5, align 4
  %126 = getelementptr inbounds %struct.nouveau_drm, ptr %125, i32 0, i32 2, i32 3, i32 1, i32 4
  %127 = load i8, ptr %126, align 1
  %128 = icmp ult i8 %127, 5
  br label %129

129:                                              ; preds = %124, %109, %109
  %130 = phi i1 [ false, %109 ], [ false, %109 ], [ %128, %124 ]
  %131 = icmp sgt i32 %110, -1
  %132 = or i1 %131, %130
  br i1 %132, label %135, label %133

133:                                              ; preds = %129
  %134 = trunc i32 %110 to i16
  store i16 %134, ptr %115, align 2
  br label %151

135:                                              ; preds = %129
  %136 = getelementptr inbounds %struct.nouveau_drm, ptr %111, i32 0, i32 2, i32 3, i32 1, i32 2
  %137 = load i16, ptr %136, align 2
  switch i16 %137, label %151 [
    i16 48, label %138
    i16 53, label %138
  ]

138:                                              ; preds = %135, %135
  %139 = and i8 %123, 15
  store i8 %139, ptr %2, align 4
  %140 = and i32 %31, 128
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %151, label %142

142:                                              ; preds = %138
  %143 = lshr i8 %123, 4
  %144 = and i8 %143, 7
  store i8 %144, ptr %115, align 2
  %145 = lshr i32 %31, 21
  %146 = and i32 %145, 24
  %147 = lshr i32 %31, 19
  %148 = and i32 %147, 7
  %149 = or i32 %146, %148
  %150 = trunc i32 %149 to i8
  store i8 %150, ptr %116, align 1
  br label %151

151:                                              ; preds = %142, %138, %135, %133, %106, %96
  %152 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 2
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %2, i32 0, i32 2
  store i32 %153, ptr %154, align 4
  br label %155

155:                                              ; preds = %151, %16, %3
  %156 = phi i32 [ 0, %151 ], [ -2, %16 ], [ -2, %3 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #7
  ret i32 %156
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvbios_pll_parse(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local i32 @nouveau_hw_pllvals_to_clk(ptr nocapture noundef readonly %0) local_unnamed_addr #4 {
  %2 = load i8, ptr %0, align 4
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %26, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.anon.102, ptr %0, i32 0, i32 2
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.anon.102, ptr %0, i32 0, i32 1
  %10 = load i8, ptr %9, align 1
  %11 = zext i8 %10 to i32
  %12 = getelementptr inbounds %struct.anon.102, ptr %0, i32 0, i32 3
  %13 = load i8, ptr %12, align 1
  %14 = zext i8 %13 to i32
  %15 = mul nuw nsw i32 %14, %11
  %16 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = mul i32 %15, %17
  %19 = zext i8 %2 to i32
  %20 = zext i8 %6 to i32
  %21 = mul nuw nsw i32 %20, %19
  %22 = sdiv i32 %18, %21
  %23 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %0, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = ashr i32 %22, %24
  br label %26

26:                                               ; preds = %8, %4, %1
  %27 = phi i32 [ %25, %8 ], [ 0, %4 ], [ 0, %1 ]
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_hw_get_clock(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.nvkm_pll_vals, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %3) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %3, i8 0, i32 12, i1 false), !annotation !13
  %8 = getelementptr i8, ptr %7, i32 -128
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.pci_bus, ptr %9, i32 0, i32 16
  %11 = load i32, ptr %10, align 8
  %12 = icmp eq i32 %1, 4
  br i1 %12, label %13, label %32

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %7, i32 -102
  %15 = load i16, ptr %14, align 2
  %16 = trunc i16 %15 to i12
  %17 = and i12 %16, -16
  switch i12 %17, label %32 [
    i12 416, label %18
    i12 496, label %27
  ]

18:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  store i32 0, ptr %4, align 4, !annotation !13
  %19 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %11, i32 noundef 0, i32 noundef 3) #7
  %20 = call i32 @pci_read_config_dword(ptr noundef %19, i32 noundef 108, ptr noundef nonnull %4) #7
  %21 = load i32, ptr %4, align 4
  %22 = lshr i32 %21, 8
  %23 = and i32 %22, 15
  %24 = icmp eq i32 %23, 0
  %25 = select i1 %24, i32 4, i32 %23
  %26 = udiv i32 400000, %25
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  br label %60

27:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #7
  store i32 0, ptr %5, align 4, !annotation !13
  %28 = tail call ptr @pci_get_domain_bus_and_slot(i32 noundef %11, i32 noundef 0, i32 noundef 5) #7
  %29 = call i32 @pci_read_config_dword(ptr noundef %28, i32 noundef 76, ptr noundef nonnull %5) #7
  %30 = load i32, ptr %5, align 4
  %31 = udiv i32 %30, 1000
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #7
  br label %60

32:                                               ; preds = %13, %2
  %33 = call i32 @nouveau_hw_get_pllvals(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %3)
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %60

35:                                               ; preds = %32
  %36 = load i8, ptr %3, align 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds %struct.anon.102, ptr %3, i32 0, i32 2
  %40 = load i8, ptr %39, align 2
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %60, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.anon.102, ptr %3, i32 0, i32 1
  %44 = load i8, ptr %43, align 1
  %45 = zext i8 %44 to i32
  %46 = getelementptr inbounds %struct.anon.102, ptr %3, i32 0, i32 3
  %47 = load i8, ptr %46, align 1
  %48 = zext i8 %47 to i32
  %49 = mul nuw nsw i32 %48, %45
  %50 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %3, i32 0, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = mul i32 %49, %51
  %53 = zext i8 %36 to i32
  %54 = zext i8 %40 to i32
  %55 = mul nuw nsw i32 %54, %53
  %56 = sdiv i32 %52, %55
  %57 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %3, i32 0, i32 1
  %58 = load i32, ptr %57, align 4
  %59 = ashr i32 %56, %58
  br label %60

60:                                               ; preds = %42, %38, %35, %32, %27, %18
  %61 = phi i32 [ %26, %18 ], [ %31, %27 ], [ %33, %32 ], [ %59, %42 ], [ 0, %38 ], [ 0, %35 ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %3) #7
  ret i32 %61
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pci_read_config_dword(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_get_domain_bus_and_slot(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_hw_save_vga_fonts(ptr noundef readonly %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -102
  %8 = load i16, ptr %7, align 2
  %9 = and i16 %8, 4080
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 4
  %11 = load i8, ptr %10, align 1
  %12 = icmp ugt i8 %11, 1
  %13 = icmp ne i16 %9, 256
  %14 = select i1 %12, i1 %13, i1 false
  %15 = icmp ne i16 %9, 336
  %16 = select i1 %14, i1 %15, i1 false
  %17 = icmp ne i16 %9, 416
  %18 = select i1 %16, i1 %17, i1 false
  %19 = icmp ne i16 %9, 512
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  tail call void @NVSetOwner(ptr noundef %0, i32 noundef 0)
  %22 = load ptr, ptr %3, align 4
  br label %23

23:                                               ; preds = %21, %2
  %24 = phi ptr [ %22, %21 ], [ %4, %2 ]
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %32, label %29, !prof !8

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %27, i32 6296538
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %30) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %34

32:                                               ; preds = %23
  %33 = tail call i32 @nvif_object_rd(ptr noundef %25, i32 noundef 1, i64 noundef 6296538) #7
  br label %34

34:                                               ; preds = %32, %29
  %35 = load ptr, ptr %26, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !8

37:                                               ; preds = %34
  %38 = getelementptr i8, ptr %35, i32 6296512
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %38, i8 0) #7, !srcloc !10
  br label %40

39:                                               ; preds = %34
  tail call void @nvif_object_wr(ptr noundef %25, i32 noundef 1, i64 noundef 6296512, i32 noundef 0) #7
  br label %40

40:                                               ; preds = %39, %37
  %41 = tail call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef 0, i8 noundef zeroext 16)
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  %44 = load ptr, ptr %3, align 4
  %45 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 2, i32 3
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 2, i32 3, i32 0, i32 6
  %47 = load ptr, ptr %46, align 8
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49, !prof !8

49:                                               ; preds = %40
  %50 = getelementptr i8, ptr %47, i32 6296538
  %51 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %50) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %54

52:                                               ; preds = %40
  %53 = tail call i32 @nvif_object_rd(ptr noundef %45, i32 noundef 1, i64 noundef 6296538) #7
  br label %54

54:                                               ; preds = %52, %49
  %55 = load ptr, ptr %46, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57, !prof !8

57:                                               ; preds = %54
  %58 = getelementptr i8, ptr %55, i32 6296512
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 32) #7, !srcloc !10
  br label %60

59:                                               ; preds = %54
  tail call void @nvif_object_wr(ptr noundef %45, i32 noundef 1, i64 noundef 6296512, i32 noundef 32) #7
  br label %60

60:                                               ; preds = %59, %57
  br i1 %43, label %61, label %482

61:                                               ; preds = %60
  %62 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.nouveau_drm, ptr %63, i32 0, i32 3
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.drm_device, ptr %65, i32 0, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  %69 = select i1 %1, ptr @.str.1, ptr @.str.2
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %67, ptr noundef nonnull @.str, ptr noundef %68, ptr noundef nonnull %69) #8
  %70 = getelementptr i8, ptr %6, i32 512
  %71 = load i32, ptr %70, align 8
  %72 = tail call ptr @ioremap(i32 noundef %71, i32 noundef 65536) #7
  %73 = icmp eq ptr %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %61
  %75 = load ptr, ptr %62, align 8
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.drm_device, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.3, ptr noundef %68) #8
  br label %482

80:                                               ; preds = %61
  %81 = load ptr, ptr %3, align 4
  %82 = load ptr, ptr %5, align 4
  %83 = getelementptr i8, ptr %82, i32 -102
  %84 = load i16, ptr %83, align 2
  %85 = and i16 %84, 4080
  %86 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 2, i32 3, i32 1, i32 4
  %87 = load i8, ptr %86, align 1
  %88 = icmp ugt i8 %87, 1
  %89 = icmp ne i16 %85, 256
  %90 = select i1 %88, i1 %89, i1 false
  %91 = icmp ne i16 %85, 336
  %92 = select i1 %90, i1 %91, i1 false
  %93 = icmp ne i16 %85, 416
  %94 = select i1 %92, i1 %93, i1 false
  %95 = icmp ne i16 %85, 512
  %96 = select i1 %94, i1 %95, i1 false
  br i1 %96, label %97, label %98

97:                                               ; preds = %80
  tail call void @NVBlankScreen(ptr noundef %0, i32 noundef 1, i1 noundef zeroext true)
  br label %98

98:                                               ; preds = %97, %80
  tail call void @NVBlankScreen(ptr noundef %0, i32 noundef 0, i1 noundef zeroext true)
  %99 = load ptr, ptr %3, align 4
  %100 = getelementptr inbounds %struct.nouveau_drm, ptr %99, i32 0, i32 2, i32 3, i32 0, i32 6
  %101 = load ptr, ptr %100, align 8
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103, !prof !8

103:                                              ; preds = %98
  %104 = getelementptr i8, ptr %101, i32 787404
  %105 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %104) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %106 = zext i8 %105 to i32
  br label %110

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct.nouveau_drm, ptr %99, i32 0, i32 2, i32 3
  %109 = tail call i32 @nvif_object_rd(ptr noundef %108, i32 noundef 1, i64 noundef 787404) #7
  br label %110

110:                                              ; preds = %107, %103
  %111 = phi i32 [ %106, %103 ], [ %109, %107 ]
  %112 = trunc i32 %111 to i8
  %113 = load ptr, ptr %3, align 4
  %114 = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3, i32 0, i32 6
  %115 = load ptr, ptr %114, align 8
  %116 = icmp eq ptr %115, null
  br i1 %116, label %119, label %117, !prof !8

117:                                              ; preds = %110
  %118 = getelementptr i8, ptr %115, i32 787396
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %118, i8 2) #7, !srcloc !10
  br label %121

119:                                              ; preds = %110
  %120 = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %120, i32 noundef 1, i64 noundef 787396, i32 noundef 2) #7
  br label %121

121:                                              ; preds = %119, %117
  %122 = load ptr, ptr %3, align 4
  %123 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 2, i32 3, i32 0, i32 6
  %124 = load ptr, ptr %123, align 8
  %125 = icmp eq ptr %124, null
  br i1 %125, label %130, label %126, !prof !8

126:                                              ; preds = %121
  %127 = getelementptr i8, ptr %124, i32 787397
  %128 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %127) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %129 = zext i8 %128 to i32
  br label %133

130:                                              ; preds = %121
  %131 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 2, i32 3
  %132 = tail call i32 @nvif_object_rd(ptr noundef %131, i32 noundef 1, i64 noundef 787397) #7
  br label %133

133:                                              ; preds = %130, %126
  %134 = phi i32 [ %129, %126 ], [ %132, %130 ]
  %135 = trunc i32 %134 to i8
  %136 = load ptr, ptr %3, align 4
  %137 = getelementptr inbounds %struct.nouveau_drm, ptr %136, i32 0, i32 2, i32 3, i32 0, i32 6
  %138 = load ptr, ptr %137, align 8
  %139 = icmp eq ptr %138, null
  br i1 %139, label %142, label %140, !prof !8

140:                                              ; preds = %133
  %141 = getelementptr i8, ptr %138, i32 787396
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %141, i8 4) #7, !srcloc !10
  br label %144

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.nouveau_drm, ptr %136, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %143, i32 noundef 1, i64 noundef 787396, i32 noundef 4) #7
  br label %144

144:                                              ; preds = %142, %140
  %145 = load ptr, ptr %3, align 4
  %146 = getelementptr inbounds %struct.nouveau_drm, ptr %145, i32 0, i32 2, i32 3, i32 0, i32 6
  %147 = load ptr, ptr %146, align 8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %153, label %149, !prof !8

149:                                              ; preds = %144
  %150 = getelementptr i8, ptr %147, i32 787397
  %151 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %150) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %152 = zext i8 %151 to i32
  br label %156

153:                                              ; preds = %144
  %154 = getelementptr inbounds %struct.nouveau_drm, ptr %145, i32 0, i32 2, i32 3
  %155 = tail call i32 @nvif_object_rd(ptr noundef %154, i32 noundef 1, i64 noundef 787397) #7
  br label %156

156:                                              ; preds = %153, %149
  %157 = phi i32 [ %152, %149 ], [ %155, %153 ]
  %158 = trunc i32 %157 to i8
  %159 = load ptr, ptr %3, align 4
  %160 = getelementptr inbounds %struct.nouveau_drm, ptr %159, i32 0, i32 2, i32 3, i32 0, i32 6
  %161 = load ptr, ptr %160, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %165, label %163, !prof !8

163:                                              ; preds = %156
  %164 = getelementptr i8, ptr %161, i32 787406
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %164, i8 4) #7, !srcloc !10
  br label %167

165:                                              ; preds = %156
  %166 = getelementptr inbounds %struct.nouveau_drm, ptr %159, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %166, i32 noundef 1, i64 noundef 787406, i32 noundef 4) #7
  br label %167

167:                                              ; preds = %165, %163
  %168 = load ptr, ptr %3, align 4
  %169 = getelementptr inbounds %struct.nouveau_drm, ptr %168, i32 0, i32 2, i32 3, i32 0, i32 6
  %170 = load ptr, ptr %169, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %176, label %172, !prof !8

172:                                              ; preds = %167
  %173 = getelementptr i8, ptr %170, i32 787407
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %173) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %175 = zext i8 %174 to i32
  br label %179

176:                                              ; preds = %167
  %177 = getelementptr inbounds %struct.nouveau_drm, ptr %168, i32 0, i32 2, i32 3
  %178 = tail call i32 @nvif_object_rd(ptr noundef %177, i32 noundef 1, i64 noundef 787407) #7
  br label %179

179:                                              ; preds = %176, %172
  %180 = phi i32 [ %175, %172 ], [ %178, %176 ]
  %181 = trunc i32 %180 to i8
  %182 = load ptr, ptr %3, align 4
  %183 = getelementptr inbounds %struct.nouveau_drm, ptr %182, i32 0, i32 2, i32 3, i32 0, i32 6
  %184 = load ptr, ptr %183, align 8
  %185 = icmp eq ptr %184, null
  br i1 %185, label %188, label %186, !prof !8

186:                                              ; preds = %179
  %187 = getelementptr i8, ptr %184, i32 787406
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %187, i8 5) #7, !srcloc !10
  br label %190

188:                                              ; preds = %179
  %189 = getelementptr inbounds %struct.nouveau_drm, ptr %182, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %189, i32 noundef 1, i64 noundef 787406, i32 noundef 5) #7
  br label %190

190:                                              ; preds = %188, %186
  %191 = load ptr, ptr %3, align 4
  %192 = getelementptr inbounds %struct.nouveau_drm, ptr %191, i32 0, i32 2, i32 3, i32 0, i32 6
  %193 = load ptr, ptr %192, align 8
  %194 = icmp eq ptr %193, null
  br i1 %194, label %199, label %195, !prof !8

195:                                              ; preds = %190
  %196 = getelementptr i8, ptr %193, i32 787407
  %197 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %196) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %198 = zext i8 %197 to i32
  br label %202

199:                                              ; preds = %190
  %200 = getelementptr inbounds %struct.nouveau_drm, ptr %191, i32 0, i32 2, i32 3
  %201 = tail call i32 @nvif_object_rd(ptr noundef %200, i32 noundef 1, i64 noundef 787407) #7
  br label %202

202:                                              ; preds = %199, %195
  %203 = phi i32 [ %198, %195 ], [ %201, %199 ]
  %204 = trunc i32 %203 to i8
  %205 = load ptr, ptr %3, align 4
  %206 = getelementptr inbounds %struct.nouveau_drm, ptr %205, i32 0, i32 2, i32 3, i32 0, i32 6
  %207 = load ptr, ptr %206, align 8
  %208 = icmp eq ptr %207, null
  br i1 %208, label %211, label %209, !prof !8

209:                                              ; preds = %202
  %210 = getelementptr i8, ptr %207, i32 787406
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %210, i8 6) #7, !srcloc !10
  br label %213

211:                                              ; preds = %202
  %212 = getelementptr inbounds %struct.nouveau_drm, ptr %205, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %212, i32 noundef 1, i64 noundef 787406, i32 noundef 6) #7
  br label %213

213:                                              ; preds = %211, %209
  %214 = load ptr, ptr %3, align 4
  %215 = getelementptr inbounds %struct.nouveau_drm, ptr %214, i32 0, i32 2, i32 3, i32 0, i32 6
  %216 = load ptr, ptr %215, align 8
  %217 = icmp eq ptr %216, null
  br i1 %217, label %222, label %218, !prof !8

218:                                              ; preds = %213
  %219 = getelementptr i8, ptr %216, i32 787407
  %220 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %219) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %221 = zext i8 %220 to i32
  br label %225

222:                                              ; preds = %213
  %223 = getelementptr inbounds %struct.nouveau_drm, ptr %214, i32 0, i32 2, i32 3
  %224 = tail call i32 @nvif_object_rd(ptr noundef %223, i32 noundef 1, i64 noundef 787407) #7
  br label %225

225:                                              ; preds = %222, %218
  %226 = phi i32 [ %221, %218 ], [ %224, %222 ]
  %227 = trunc i32 %226 to i8
  %228 = load ptr, ptr %3, align 4
  %229 = getelementptr inbounds %struct.nouveau_drm, ptr %228, i32 0, i32 2, i32 3, i32 0, i32 6
  %230 = load ptr, ptr %229, align 8
  %231 = icmp eq ptr %230, null
  br i1 %231, label %234, label %232, !prof !8

232:                                              ; preds = %225
  %233 = getelementptr i8, ptr %230, i32 787394
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %233, i8 103) #7, !srcloc !10
  br label %236

234:                                              ; preds = %225
  %235 = getelementptr inbounds %struct.nouveau_drm, ptr %228, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %235, i32 noundef 1, i64 noundef 787394, i32 noundef 103) #7
  br label %236

236:                                              ; preds = %234, %232
  %237 = load ptr, ptr %3, align 4
  %238 = getelementptr inbounds %struct.nouveau_drm, ptr %237, i32 0, i32 2, i32 3, i32 0, i32 6
  %239 = load ptr, ptr %238, align 8
  %240 = icmp eq ptr %239, null
  br i1 %240, label %243, label %241, !prof !8

241:                                              ; preds = %236
  %242 = getelementptr i8, ptr %239, i32 787396
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %242, i8 4) #7, !srcloc !10
  br label %245

243:                                              ; preds = %236
  %244 = getelementptr inbounds %struct.nouveau_drm, ptr %237, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %244, i32 noundef 1, i64 noundef 787396, i32 noundef 4) #7
  br label %245

245:                                              ; preds = %243, %241
  %246 = load ptr, ptr %3, align 4
  %247 = getelementptr inbounds %struct.nouveau_drm, ptr %246, i32 0, i32 2, i32 3, i32 0, i32 6
  %248 = load ptr, ptr %247, align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250, !prof !8

250:                                              ; preds = %245
  %251 = getelementptr i8, ptr %248, i32 787397
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %251, i8 6) #7, !srcloc !10
  br label %254

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.nouveau_drm, ptr %246, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %253, i32 noundef 1, i64 noundef 787397, i32 noundef 6) #7
  br label %254

254:                                              ; preds = %252, %250
  %255 = load ptr, ptr %3, align 4
  %256 = getelementptr inbounds %struct.nouveau_drm, ptr %255, i32 0, i32 2, i32 3, i32 0, i32 6
  %257 = load ptr, ptr %256, align 8
  %258 = icmp eq ptr %257, null
  br i1 %258, label %261, label %259, !prof !8

259:                                              ; preds = %254
  %260 = getelementptr i8, ptr %257, i32 787406
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %260, i8 5) #7, !srcloc !10
  br label %263

261:                                              ; preds = %254
  %262 = getelementptr inbounds %struct.nouveau_drm, ptr %255, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %262, i32 noundef 1, i64 noundef 787406, i32 noundef 5) #7
  br label %263

263:                                              ; preds = %261, %259
  %264 = load ptr, ptr %3, align 4
  %265 = getelementptr inbounds %struct.nouveau_drm, ptr %264, i32 0, i32 2, i32 3, i32 0, i32 6
  %266 = load ptr, ptr %265, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268, !prof !8

268:                                              ; preds = %263
  %269 = getelementptr i8, ptr %266, i32 787407
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %269, i8 0) #7, !srcloc !10
  br label %272

270:                                              ; preds = %263
  %271 = getelementptr inbounds %struct.nouveau_drm, ptr %264, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %271, i32 noundef 1, i64 noundef 787407, i32 noundef 0) #7
  br label %272

272:                                              ; preds = %270, %268
  %273 = load ptr, ptr %3, align 4
  %274 = getelementptr inbounds %struct.nouveau_drm, ptr %273, i32 0, i32 2, i32 3, i32 0, i32 6
  %275 = load ptr, ptr %274, align 8
  %276 = icmp eq ptr %275, null
  br i1 %276, label %279, label %277, !prof !8

277:                                              ; preds = %272
  %278 = getelementptr i8, ptr %275, i32 787406
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %278, i8 6) #7, !srcloc !10
  br label %281

279:                                              ; preds = %272
  %280 = getelementptr inbounds %struct.nouveau_drm, ptr %273, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %280, i32 noundef 1, i64 noundef 787406, i32 noundef 6) #7
  br label %281

281:                                              ; preds = %279, %277
  %282 = load ptr, ptr %3, align 4
  %283 = getelementptr inbounds %struct.nouveau_drm, ptr %282, i32 0, i32 2, i32 3, i32 0, i32 6
  %284 = load ptr, ptr %283, align 8
  %285 = icmp eq ptr %284, null
  br i1 %285, label %288, label %286, !prof !8

286:                                              ; preds = %281
  %287 = getelementptr i8, ptr %284, i32 787407
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %287, i8 5) #7, !srcloc !10
  br label %290

288:                                              ; preds = %281
  %289 = getelementptr inbounds %struct.nouveau_drm, ptr %282, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %289, i32 noundef 1, i64 noundef 787407, i32 noundef 5) #7
  br label %290

290:                                              ; preds = %288, %286
  br label %291

291:                                              ; preds = %355, %290
  %292 = phi i32 [ %356, %355 ], [ 0, %290 ]
  %293 = shl nuw nsw i32 1, %292
  %294 = trunc i32 %293 to i8
  %295 = load ptr, ptr %3, align 4
  %296 = getelementptr inbounds %struct.nouveau_drm, ptr %295, i32 0, i32 2, i32 3, i32 0, i32 6
  %297 = load ptr, ptr %296, align 8
  %298 = icmp eq ptr %297, null
  br i1 %298, label %301, label %299, !prof !8

299:                                              ; preds = %291
  %300 = getelementptr i8, ptr %297, i32 787396
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %300, i8 2) #7, !srcloc !10
  br label %303

301:                                              ; preds = %291
  %302 = getelementptr inbounds %struct.nouveau_drm, ptr %295, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %302, i32 noundef 1, i64 noundef 787396, i32 noundef 2) #7
  br label %303

303:                                              ; preds = %301, %299
  %304 = load ptr, ptr %3, align 4
  %305 = getelementptr inbounds %struct.nouveau_drm, ptr %304, i32 0, i32 2, i32 3, i32 0, i32 6
  %306 = load ptr, ptr %305, align 8
  %307 = icmp eq ptr %306, null
  br i1 %307, label %310, label %308, !prof !8

308:                                              ; preds = %303
  %309 = getelementptr i8, ptr %306, i32 787397
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %309, i8 %294) #7, !srcloc !10
  br label %312

310:                                              ; preds = %303
  %311 = getelementptr inbounds %struct.nouveau_drm, ptr %304, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %311, i32 noundef 1, i64 noundef 787397, i32 noundef %293) #7
  br label %312

312:                                              ; preds = %310, %308
  %313 = trunc i32 %292 to i8
  %314 = load ptr, ptr %3, align 4
  %315 = getelementptr inbounds %struct.nouveau_drm, ptr %314, i32 0, i32 2, i32 3, i32 0, i32 6
  %316 = load ptr, ptr %315, align 8
  %317 = icmp eq ptr %316, null
  br i1 %317, label %320, label %318, !prof !8

318:                                              ; preds = %312
  %319 = getelementptr i8, ptr %316, i32 787406
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %319, i8 4) #7, !srcloc !10
  br label %322

320:                                              ; preds = %312
  %321 = getelementptr inbounds %struct.nouveau_drm, ptr %314, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %321, i32 noundef 1, i64 noundef 787406, i32 noundef 4) #7
  br label %322

322:                                              ; preds = %320, %318
  %323 = load ptr, ptr %3, align 4
  %324 = getelementptr inbounds %struct.nouveau_drm, ptr %323, i32 0, i32 2, i32 3, i32 0, i32 6
  %325 = load ptr, ptr %324, align 8
  %326 = icmp eq ptr %325, null
  br i1 %326, label %329, label %327, !prof !8

327:                                              ; preds = %322
  %328 = getelementptr i8, ptr %325, i32 787407
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %328, i8 %313) #7, !srcloc !10
  br label %331

329:                                              ; preds = %322
  %330 = getelementptr inbounds %struct.nouveau_drm, ptr %323, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %330, i32 noundef 1, i64 noundef 787407, i32 noundef %292) #7
  br label %331

331:                                              ; preds = %329, %327
  br label %332

332:                                              ; preds = %352, %331
  %333 = phi i32 [ %353, %352 ], [ 0, %331 ]
  br i1 %1, label %334, label %343

334:                                              ; preds = %332
  %335 = shl nuw nsw i32 %333, 2
  %336 = getelementptr i8, ptr %72, i32 %335
  %337 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %336) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  %338 = load ptr, ptr %3, align 4
  %339 = getelementptr inbounds %struct.nouveau_drm, ptr %338, i32 0, i32 19
  %340 = load ptr, ptr %339, align 4
  %341 = load ptr, ptr %340, align 8
  %342 = getelementptr %struct.nv04_display, ptr %341, i32 0, i32 2, i32 %292, i32 %333
  store i32 %337, ptr %342, align 4
  br label %352

343:                                              ; preds = %332
  %344 = load ptr, ptr %3, align 4
  %345 = getelementptr inbounds %struct.nouveau_drm, ptr %344, i32 0, i32 19
  %346 = load ptr, ptr %345, align 4
  %347 = load ptr, ptr %346, align 8
  %348 = getelementptr %struct.nv04_display, ptr %347, i32 0, i32 2, i32 %292, i32 %333
  %349 = load i32, ptr %348, align 4
  %350 = shl nuw nsw i32 %333, 2
  %351 = getelementptr i8, ptr %72, i32 %350
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %351, i32 %349) #7, !srcloc !17
  br label %352

352:                                              ; preds = %343, %334
  %353 = add nuw nsw i32 %333, 1
  %354 = icmp eq i32 %353, 16384
  br i1 %354, label %355, label %332

355:                                              ; preds = %352
  %356 = add nuw nsw i32 %292, 1
  %357 = icmp eq i32 %356, 4
  br i1 %357, label %358, label %291

358:                                              ; preds = %355
  %359 = load ptr, ptr %3, align 4
  %360 = getelementptr inbounds %struct.nouveau_drm, ptr %359, i32 0, i32 2, i32 3, i32 0, i32 6
  %361 = load ptr, ptr %360, align 8
  %362 = icmp eq ptr %361, null
  br i1 %362, label %365, label %363, !prof !8

363:                                              ; preds = %358
  %364 = getelementptr i8, ptr %361, i32 787394
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %364, i8 %112) #7, !srcloc !10
  br label %368

365:                                              ; preds = %358
  %366 = getelementptr inbounds %struct.nouveau_drm, ptr %359, i32 0, i32 2, i32 3
  %367 = and i32 %111, 255
  tail call void @nvif_object_wr(ptr noundef %366, i32 noundef 1, i64 noundef 787394, i32 noundef %367) #7
  br label %368

368:                                              ; preds = %365, %363
  %369 = load ptr, ptr %3, align 4
  %370 = getelementptr inbounds %struct.nouveau_drm, ptr %369, i32 0, i32 2, i32 3, i32 0, i32 6
  %371 = load ptr, ptr %370, align 8
  %372 = icmp eq ptr %371, null
  br i1 %372, label %375, label %373, !prof !8

373:                                              ; preds = %368
  %374 = getelementptr i8, ptr %371, i32 787406
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %374, i8 4) #7, !srcloc !10
  br label %377

375:                                              ; preds = %368
  %376 = getelementptr inbounds %struct.nouveau_drm, ptr %369, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %376, i32 noundef 1, i64 noundef 787406, i32 noundef 4) #7
  br label %377

377:                                              ; preds = %375, %373
  %378 = load ptr, ptr %3, align 4
  %379 = getelementptr inbounds %struct.nouveau_drm, ptr %378, i32 0, i32 2, i32 3, i32 0, i32 6
  %380 = load ptr, ptr %379, align 8
  %381 = icmp eq ptr %380, null
  br i1 %381, label %384, label %382, !prof !8

382:                                              ; preds = %377
  %383 = getelementptr i8, ptr %380, i32 787407
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %383, i8 %181) #7, !srcloc !10
  br label %387

384:                                              ; preds = %377
  %385 = getelementptr inbounds %struct.nouveau_drm, ptr %378, i32 0, i32 2, i32 3
  %386 = and i32 %180, 255
  tail call void @nvif_object_wr(ptr noundef %385, i32 noundef 1, i64 noundef 787407, i32 noundef %386) #7
  br label %387

387:                                              ; preds = %384, %382
  %388 = load ptr, ptr %3, align 4
  %389 = getelementptr inbounds %struct.nouveau_drm, ptr %388, i32 0, i32 2, i32 3, i32 0, i32 6
  %390 = load ptr, ptr %389, align 8
  %391 = icmp eq ptr %390, null
  br i1 %391, label %394, label %392, !prof !8

392:                                              ; preds = %387
  %393 = getelementptr i8, ptr %390, i32 787406
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %393, i8 5) #7, !srcloc !10
  br label %396

394:                                              ; preds = %387
  %395 = getelementptr inbounds %struct.nouveau_drm, ptr %388, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %395, i32 noundef 1, i64 noundef 787406, i32 noundef 5) #7
  br label %396

396:                                              ; preds = %394, %392
  %397 = load ptr, ptr %3, align 4
  %398 = getelementptr inbounds %struct.nouveau_drm, ptr %397, i32 0, i32 2, i32 3, i32 0, i32 6
  %399 = load ptr, ptr %398, align 8
  %400 = icmp eq ptr %399, null
  br i1 %400, label %403, label %401, !prof !8

401:                                              ; preds = %396
  %402 = getelementptr i8, ptr %399, i32 787407
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %402, i8 %204) #7, !srcloc !10
  br label %406

403:                                              ; preds = %396
  %404 = getelementptr inbounds %struct.nouveau_drm, ptr %397, i32 0, i32 2, i32 3
  %405 = and i32 %203, 255
  tail call void @nvif_object_wr(ptr noundef %404, i32 noundef 1, i64 noundef 787407, i32 noundef %405) #7
  br label %406

406:                                              ; preds = %403, %401
  %407 = load ptr, ptr %3, align 4
  %408 = getelementptr inbounds %struct.nouveau_drm, ptr %407, i32 0, i32 2, i32 3, i32 0, i32 6
  %409 = load ptr, ptr %408, align 8
  %410 = icmp eq ptr %409, null
  br i1 %410, label %413, label %411, !prof !8

411:                                              ; preds = %406
  %412 = getelementptr i8, ptr %409, i32 787406
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %412, i8 6) #7, !srcloc !10
  br label %415

413:                                              ; preds = %406
  %414 = getelementptr inbounds %struct.nouveau_drm, ptr %407, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %414, i32 noundef 1, i64 noundef 787406, i32 noundef 6) #7
  br label %415

415:                                              ; preds = %413, %411
  %416 = load ptr, ptr %3, align 4
  %417 = getelementptr inbounds %struct.nouveau_drm, ptr %416, i32 0, i32 2, i32 3, i32 0, i32 6
  %418 = load ptr, ptr %417, align 8
  %419 = icmp eq ptr %418, null
  br i1 %419, label %422, label %420, !prof !8

420:                                              ; preds = %415
  %421 = getelementptr i8, ptr %418, i32 787407
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %421, i8 %227) #7, !srcloc !10
  br label %425

422:                                              ; preds = %415
  %423 = getelementptr inbounds %struct.nouveau_drm, ptr %416, i32 0, i32 2, i32 3
  %424 = and i32 %226, 255
  tail call void @nvif_object_wr(ptr noundef %423, i32 noundef 1, i64 noundef 787407, i32 noundef %424) #7
  br label %425

425:                                              ; preds = %422, %420
  %426 = load ptr, ptr %3, align 4
  %427 = getelementptr inbounds %struct.nouveau_drm, ptr %426, i32 0, i32 2, i32 3, i32 0, i32 6
  %428 = load ptr, ptr %427, align 8
  %429 = icmp eq ptr %428, null
  br i1 %429, label %432, label %430, !prof !8

430:                                              ; preds = %425
  %431 = getelementptr i8, ptr %428, i32 787396
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %431, i8 2) #7, !srcloc !10
  br label %434

432:                                              ; preds = %425
  %433 = getelementptr inbounds %struct.nouveau_drm, ptr %426, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %433, i32 noundef 1, i64 noundef 787396, i32 noundef 2) #7
  br label %434

434:                                              ; preds = %432, %430
  %435 = load ptr, ptr %3, align 4
  %436 = getelementptr inbounds %struct.nouveau_drm, ptr %435, i32 0, i32 2, i32 3, i32 0, i32 6
  %437 = load ptr, ptr %436, align 8
  %438 = icmp eq ptr %437, null
  br i1 %438, label %441, label %439, !prof !8

439:                                              ; preds = %434
  %440 = getelementptr i8, ptr %437, i32 787397
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %440, i8 %135) #7, !srcloc !10
  br label %444

441:                                              ; preds = %434
  %442 = getelementptr inbounds %struct.nouveau_drm, ptr %435, i32 0, i32 2, i32 3
  %443 = and i32 %134, 255
  tail call void @nvif_object_wr(ptr noundef %442, i32 noundef 1, i64 noundef 787397, i32 noundef %443) #7
  br label %444

444:                                              ; preds = %441, %439
  %445 = load ptr, ptr %3, align 4
  %446 = getelementptr inbounds %struct.nouveau_drm, ptr %445, i32 0, i32 2, i32 3, i32 0, i32 6
  %447 = load ptr, ptr %446, align 8
  %448 = icmp eq ptr %447, null
  br i1 %448, label %451, label %449, !prof !8

449:                                              ; preds = %444
  %450 = getelementptr i8, ptr %447, i32 787396
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %450, i8 4) #7, !srcloc !10
  br label %453

451:                                              ; preds = %444
  %452 = getelementptr inbounds %struct.nouveau_drm, ptr %445, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %452, i32 noundef 1, i64 noundef 787396, i32 noundef 4) #7
  br label %453

453:                                              ; preds = %451, %449
  %454 = load ptr, ptr %3, align 4
  %455 = getelementptr inbounds %struct.nouveau_drm, ptr %454, i32 0, i32 2, i32 3, i32 0, i32 6
  %456 = load ptr, ptr %455, align 8
  %457 = icmp eq ptr %456, null
  br i1 %457, label %460, label %458, !prof !8

458:                                              ; preds = %453
  %459 = getelementptr i8, ptr %456, i32 787397
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %459, i8 %158) #7, !srcloc !10
  br label %463

460:                                              ; preds = %453
  %461 = getelementptr inbounds %struct.nouveau_drm, ptr %454, i32 0, i32 2, i32 3
  %462 = and i32 %157, 255
  tail call void @nvif_object_wr(ptr noundef %461, i32 noundef 1, i64 noundef 787397, i32 noundef %462) #7
  br label %463

463:                                              ; preds = %460, %458
  %464 = load ptr, ptr %3, align 4
  %465 = load ptr, ptr %5, align 4
  %466 = getelementptr i8, ptr %465, i32 -102
  %467 = load i16, ptr %466, align 2
  %468 = and i16 %467, 4080
  %469 = getelementptr inbounds %struct.nouveau_drm, ptr %464, i32 0, i32 2, i32 3, i32 1, i32 4
  %470 = load i8, ptr %469, align 1
  %471 = icmp ugt i8 %470, 1
  %472 = icmp ne i16 %468, 256
  %473 = select i1 %471, i1 %472, i1 false
  %474 = icmp ne i16 %468, 336
  %475 = select i1 %473, i1 %474, i1 false
  %476 = icmp ne i16 %468, 416
  %477 = select i1 %475, i1 %476, i1 false
  %478 = icmp ne i16 %468, 512
  %479 = select i1 %477, i1 %478, i1 false
  br i1 %479, label %480, label %481

480:                                              ; preds = %463
  tail call void @NVBlankScreen(ptr noundef %0, i32 noundef 1, i1 noundef zeroext false)
  br label %481

481:                                              ; preds = %480, %463
  tail call void @NVBlankScreen(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false)
  tail call void @iounmap(ptr noundef nonnull %72) #7
  br label %482

482:                                              ; preds = %481, %74, %60
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i8 @NVReadVgaAttr(ptr nocapture noundef readonly %0, i32 noundef %1, i8 noundef zeroext %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = shl i32 %1, 13
  %11 = add i32 %10, 6296538
  br i1 %9, label %15, label %12, !prof !8

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %8, i32 %11
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %13) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %18

15:                                               ; preds = %3
  %16 = sext i32 %11 to i64
  %17 = tail call i32 @nvif_object_rd(ptr noundef %6, i32 noundef 1, i64 noundef %16) #7
  br label %18

18:                                               ; preds = %15, %12
  %19 = load ptr, ptr %7, align 8
  %20 = icmp eq ptr %19, null
  %21 = add i32 %10, 6296512
  br i1 %20, label %26, label %22, !prof !8

22:                                               ; preds = %18
  %23 = getelementptr i8, ptr %19, i32 %21
  %24 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %23) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %25 = zext i8 %24 to i32
  br label %29

26:                                               ; preds = %18
  %27 = sext i32 %21 to i64
  %28 = tail call i32 @nvif_object_rd(ptr noundef %6, i32 noundef 1, i64 noundef %27) #7
  br label %29

29:                                               ; preds = %26, %22
  %30 = phi i32 [ %25, %22 ], [ %28, %26 ]
  %31 = and i8 %2, -33
  %32 = trunc i32 %30 to i8
  %33 = and i8 %32, 32
  %34 = or i8 %33, %31
  %35 = load ptr, ptr %7, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %40, label %37, !prof !8

37:                                               ; preds = %29
  %38 = getelementptr i8, ptr %35, i32 %11
  %39 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %38) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %43

40:                                               ; preds = %29
  %41 = sext i32 %11 to i64
  %42 = tail call i32 @nvif_object_rd(ptr noundef %6, i32 noundef 1, i64 noundef %41) #7
  br label %43

43:                                               ; preds = %40, %37
  %44 = load ptr, ptr %7, align 8
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46, !prof !8

46:                                               ; preds = %43
  %47 = getelementptr i8, ptr %44, i32 %21
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %47, i8 %34) #7, !srcloc !10
  br label %51

48:                                               ; preds = %43
  %49 = sext i32 %21 to i64
  %50 = zext i8 %34 to i32
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 1, i64 noundef %49, i32 noundef %50) #7
  br label %51

51:                                               ; preds = %48, %46
  %52 = load ptr, ptr %7, align 8
  %53 = icmp eq ptr %52, null
  %54 = add i32 %10, 6296513
  br i1 %53, label %59, label %55, !prof !8

55:                                               ; preds = %51
  %56 = getelementptr i8, ptr %52, i32 %54
  %57 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %56) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %58 = zext i8 %57 to i32
  br label %62

59:                                               ; preds = %51
  %60 = sext i32 %54 to i64
  %61 = tail call i32 @nvif_object_rd(ptr noundef %6, i32 noundef 1, i64 noundef %60) #7
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i32 [ %58, %55 ], [ %61, %59 ]
  %64 = trunc i32 %63 to i8
  ret i8 %64
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_hw_load_state_palette(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %7 = shl i32 %1, 13
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  %11 = add i32 %7, 6820806
  br i1 %10, label %14, label %12, !prof !8

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %9, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 -1) #7, !srcloc !10
  br label %16

14:                                               ; preds = %3
  %15 = sext i32 %11 to i64
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 1, i64 noundef %15, i32 noundef 255) #7
  br label %16

16:                                               ; preds = %14, %12
  %17 = load ptr, ptr %8, align 8
  %18 = icmp eq ptr %17, null
  %19 = add i32 %7, 6820808
  br i1 %18, label %22, label %20, !prof !8

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %17, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %21, i8 0) #7, !srcloc !10
  br label %24

22:                                               ; preds = %16
  %23 = sext i32 %19 to i64
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 1, i64 noundef %23, i32 noundef 0) #7
  br label %24

24:                                               ; preds = %22, %20
  %25 = add i32 %7, 6820809
  %26 = sext i32 %25 to i64
  br label %27

27:                                               ; preds = %37, %24
  %28 = phi i32 [ 0, %24 ], [ %38, %37 ]
  %29 = load ptr, ptr %8, align 8
  %30 = icmp eq ptr %29, null
  %31 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 6, i32 %28
  %32 = load i8, ptr %31, align 1
  br i1 %30, label %35, label %33, !prof !8

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %29, i32 %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %34, i8 %32) #7, !srcloc !10
  br label %37

35:                                               ; preds = %27
  %36 = zext i8 %32 to i32
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 1, i64 noundef %26, i32 noundef %36) #7
  br label %37

37:                                               ; preds = %35, %33
  %38 = add nuw nsw i32 %28, 1
  %39 = icmp eq i32 %38, 768
  br i1 %39, label %40, label %27

40:                                               ; preds = %37
  %41 = load ptr, ptr %4, align 4
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 2, i32 3
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %41, i32 0, i32 2, i32 3, i32 0, i32 6
  %44 = load ptr, ptr %43, align 8
  %45 = icmp eq ptr %44, null
  %46 = add i32 %7, 6296538
  br i1 %45, label %50, label %47, !prof !8

47:                                               ; preds = %40
  %48 = getelementptr i8, ptr %44, i32 %46
  %49 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %48) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %53

50:                                               ; preds = %40
  %51 = sext i32 %46 to i64
  %52 = tail call i32 @nvif_object_rd(ptr noundef %42, i32 noundef 1, i64 noundef %51) #7
  br label %53

53:                                               ; preds = %50, %47
  %54 = load ptr, ptr %43, align 8
  %55 = icmp eq ptr %54, null
  %56 = add i32 %7, 6296512
  br i1 %55, label %59, label %57, !prof !8

57:                                               ; preds = %53
  %58 = getelementptr i8, ptr %54, i32 %56
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %58, i8 32) #7, !srcloc !10
  br label %61

59:                                               ; preds = %53
  %60 = sext i32 %56 to i64
  tail call void @nvif_object_wr(ptr noundef %42, i32 noundef 1, i64 noundef %60, i32 noundef 32) #7
  br label %61

61:                                               ; preds = %59, %57
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_hw_save_state(ptr noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nvbios_pll, align 4
  %5 = alloca %struct.nvkm_pll_vals, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 2
  %9 = load i16, ptr %8, align 2
  %10 = icmp eq i16 %9, 17
  br i1 %10, label %11, label %75

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.anon.180, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 43
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nvkm_device, ptr %15, i32 0, i32 21
  %19 = load ptr, ptr %18, align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(56) %4, i8 0, i32 56, i1 false) #7, !annotation !13
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %5, i8 0, i32 12, i1 false) #7, !annotation !13
  %20 = icmp eq i32 %1, 0
  %21 = select i1 %20, i32 128, i32 129
  %22 = call i32 @nvbios_pll_parse(ptr noundef %19, i32 noundef %21, ptr noundef nonnull %4) #7
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %73

24:                                               ; preds = %11
  %25 = call i32 @nouveau_hw_get_pllvals(ptr noundef %0, i32 noundef %21, ptr noundef nonnull %5) #7
  %26 = load i8, ptr %5, align 4
  %27 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 7, i32 4
  %28 = load i8, ptr %27, align 4
  %29 = icmp ult i8 %26, %28
  %30 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 7, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = icmp ugt i8 %26, %31
  %33 = select i1 %29, i1 true, i1 %32
  br i1 %33, label %51, label %34

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.anon.102, ptr %5, i32 0, i32 1
  %36 = load i8, ptr %35, align 1
  %37 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 7, i32 6
  %38 = load i8, ptr %37, align 2
  %39 = icmp ult i8 %36, %38
  %40 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 7, i32 7
  %41 = load i8, ptr %40, align 1
  %42 = icmp ugt i8 %36, %41
  %43 = select i1 %39, i1 true, i1 %42
  br i1 %43, label %51, label %44

44:                                               ; preds = %34
  %45 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %5, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 4
  %48 = load i8, ptr %47, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp sgt i32 %46, %49
  br i1 %50, label %51, label %73

51:                                               ; preds = %44, %34, %24
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nouveau_drm, ptr %53, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.drm_device, ptr %55, i32 0, i32 2
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  %59 = add i32 %1, 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %57, ptr noundef nonnull @.str.4, ptr noundef %58, i32 noundef %59) #8
  %60 = load i8, ptr %30, align 1
  store i8 %60, ptr %5, align 4
  %61 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 7, i32 6
  %62 = load i8, ptr %61, align 2
  %63 = getelementptr inbounds %struct.anon.102, ptr %5, i32 0, i32 1
  store i8 %62, ptr %63, align 1
  %64 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 6
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.nvkm_pll_vals, ptr %5, i32 0, i32 1
  store i32 %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.nvkm_clk, ptr %17, i32 0, i32 22
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.nvbios_pll, ptr %4, i32 0, i32 1
  %71 = load i32, ptr %70, align 4
  %72 = call i32 %69(ptr noundef %17, i32 noundef %71, ptr noundef nonnull %5) #7
  br label %73

73:                                               ; preds = %51, %44, %11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %5) #7
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %4) #7
  %74 = load ptr, ptr %6, align 4
  br label %75

75:                                               ; preds = %73, %3
  %76 = phi ptr [ %74, %73 ], [ %7, %3 ]
  %77 = getelementptr inbounds %struct.nouveau_drm, ptr %76, i32 0, i32 2, i32 3, i32 1, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = icmp ugt i8 %78, 1
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = icmp eq i32 %1, 0
  %82 = select i1 %81, i32 6816772, i32 6824964
  %83 = getelementptr inbounds %struct.nouveau_drm, ptr %76, i32 0, i32 2, i32 3, i32 0, i32 6
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %89, label %86, !prof !8

86:                                               ; preds = %80
  %87 = getelementptr i8, ptr %84, i32 %82
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %87) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %93

89:                                               ; preds = %80
  %90 = getelementptr inbounds %struct.nouveau_drm, ptr %76, i32 0, i32 2, i32 3
  %91 = zext i32 %82 to i64
  %92 = call i32 @nvif_object_rd(ptr noundef %90, i32 noundef 4, i64 noundef %91) #7
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i32 [ %88, %86 ], [ %92, %89 ]
  %95 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 15
  store i32 %94, ptr %95, align 4
  br label %96

96:                                               ; preds = %93, %75
  %97 = icmp eq i32 %1, 0
  %98 = select i1 %97, i32 128, i32 129
  %99 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 16
  %100 = call i32 @nouveau_hw_get_pllvals(ptr noundef %0, i32 noundef %98, ptr noundef %99) #7
  %101 = load ptr, ptr %6, align 4
  %102 = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 2, i32 3, i32 0, i32 6
  %103 = load ptr, ptr %102, align 8
  %104 = icmp eq ptr %103, null
  br i1 %104, label %108, label %105, !prof !8

105:                                              ; preds = %96
  %106 = getelementptr i8, ptr %103, i32 6817036
  %107 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %111

108:                                              ; preds = %96
  %109 = getelementptr inbounds %struct.nouveau_drm, ptr %101, i32 0, i32 2, i32 3
  %110 = call i32 @nvif_object_rd(ptr noundef %109, i32 noundef 4, i64 noundef 6817036) #7
  br label %111

111:                                              ; preds = %108, %105
  %112 = phi i32 [ %107, %105 ], [ %110, %108 ]
  %113 = getelementptr inbounds %struct.nv04_mode_state, ptr %2, i32 0, i32 1
  store i32 %112, ptr %113, align 4
  %114 = load ptr, ptr %6, align 4
  %115 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr i8, ptr %116, i32 -102
  %118 = load i16, ptr %117, align 2
  %119 = and i16 %118, 4080
  %120 = getelementptr inbounds %struct.nouveau_drm, ptr %114, i32 0, i32 2, i32 3, i32 1, i32 4
  %121 = load i8, ptr %120, align 1
  %122 = icmp ugt i8 %121, 1
  %123 = icmp ne i16 %119, 256
  %124 = select i1 %122, i1 %123, i1 false
  %125 = icmp ne i16 %119, 336
  %126 = select i1 %124, i1 %125, i1 false
  %127 = icmp ne i16 %119, 416
  %128 = select i1 %126, i1 %127, i1 false
  %129 = icmp ne i16 %119, 512
  %130 = select i1 %128, i1 %129, i1 false
  br i1 %130, label %131, label %144

131:                                              ; preds = %111
  %132 = getelementptr inbounds %struct.nouveau_drm, ptr %114, i32 0, i32 2, i32 3, i32 0, i32 6
  %133 = load ptr, ptr %132, align 8
  %134 = icmp eq ptr %133, null
  br i1 %134, label %138, label %135, !prof !8

135:                                              ; preds = %131
  %136 = getelementptr i8, ptr %133, i32 6817060
  %137 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %141

138:                                              ; preds = %131
  %139 = getelementptr inbounds %struct.nouveau_drm, ptr %114, i32 0, i32 2, i32 3
  %140 = call i32 @nvif_object_rd(ptr noundef %139, i32 noundef 4, i64 noundef 6817060) #7
  br label %141

141:                                              ; preds = %138, %135
  %142 = phi i32 [ %137, %135 ], [ %140, %138 ]
  %143 = getelementptr inbounds %struct.nv04_mode_state, ptr %2, i32 0, i32 2
  store i32 %142, ptr %143, align 4
  br label %144

144:                                              ; preds = %141, %111
  %145 = getelementptr inbounds %struct.nouveau_drm, ptr %76, i32 0, i32 2, i32 3, i32 1, i32 2
  %146 = load i16, ptr %145, align 2
  %147 = icmp eq i16 %146, 17
  br i1 %147, label %148, label %164

148:                                              ; preds = %144
  %149 = load ptr, ptr %6, align 4
  %150 = select i1 %97, i32 6817064, i32 6825256
  %151 = getelementptr inbounds %struct.nouveau_drm, ptr %149, i32 0, i32 2, i32 3, i32 0, i32 6
  %152 = load ptr, ptr %151, align 8
  %153 = icmp eq ptr %152, null
  br i1 %153, label %157, label %154, !prof !8

154:                                              ; preds = %148
  %155 = getelementptr i8, ptr %152, i32 %150
  %156 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %161

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.nouveau_drm, ptr %149, i32 0, i32 2, i32 3
  %159 = zext i32 %150 to i64
  %160 = call i32 @nvif_object_rd(ptr noundef %158, i32 noundef 4, i64 noundef %159) #7
  br label %161

161:                                              ; preds = %157, %154
  %162 = phi i32 [ %156, %154 ], [ %160, %157 ]
  %163 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 30
  store i32 %162, ptr %163, align 4
  br label %164

164:                                              ; preds = %161, %144
  %165 = load ptr, ptr %6, align 4
  %166 = select i1 %97, i32 6817280, i32 6825472
  %167 = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 3, i32 0, i32 6
  %168 = load ptr, ptr %167, align 8
  %169 = icmp eq ptr %168, null
  br i1 %169, label %173, label %170, !prof !8

170:                                              ; preds = %164
  %171 = getelementptr i8, ptr %168, i32 %166
  %172 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %171) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %177

173:                                              ; preds = %164
  %174 = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 3
  %175 = zext i32 %166 to i64
  %176 = call i32 @nvif_object_rd(ptr noundef %174, i32 noundef 4, i64 noundef %175) #7
  br label %177

177:                                              ; preds = %173, %170
  %178 = phi i32 [ %172, %170 ], [ %176, %173 ]
  %179 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 17
  store i32 %178, ptr %179, align 4
  %180 = load ptr, ptr %6, align 4
  %181 = load ptr, ptr %115, align 4
  %182 = getelementptr i8, ptr %181, i32 -102
  %183 = load i16, ptr %182, align 2
  %184 = and i16 %183, 4080
  %185 = getelementptr inbounds %struct.nouveau_drm, ptr %180, i32 0, i32 2, i32 3, i32 1, i32 4
  %186 = load i8, ptr %185, align 1
  %187 = icmp ugt i8 %186, 1
  %188 = icmp ne i16 %184, 256
  %189 = select i1 %187, i1 %188, i1 false
  %190 = icmp ne i16 %184, 336
  %191 = select i1 %189, i1 %190, i1 false
  %192 = icmp ne i16 %184, 416
  %193 = select i1 %191, i1 %192, i1 false
  %194 = icmp ne i16 %184, 512
  %195 = select i1 %193, i1 %194, i1 false
  %196 = icmp ne i16 %184, 272
  %197 = select i1 %195, i1 %196, i1 false
  br i1 %197, label %198, label %213

198:                                              ; preds = %177
  %199 = select i1 %97, i32 6817328, i32 6825520
  %200 = getelementptr inbounds %struct.nouveau_drm, ptr %180, i32 0, i32 2, i32 3, i32 0, i32 6
  %201 = load ptr, ptr %200, align 8
  %202 = icmp eq ptr %201, null
  br i1 %202, label %206, label %203, !prof !8

203:                                              ; preds = %198
  %204 = getelementptr i8, ptr %201, i32 %199
  %205 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %204) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %210

206:                                              ; preds = %198
  %207 = getelementptr inbounds %struct.nouveau_drm, ptr %180, i32 0, i32 2, i32 3
  %208 = zext i32 %199 to i64
  %209 = call i32 @nvif_object_rd(ptr noundef %207, i32 noundef 4, i64 noundef %208) #7
  br label %210

210:                                              ; preds = %206, %203
  %211 = phi i32 [ %205, %203 ], [ %209, %206 ]
  %212 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 18
  store i32 %211, ptr %212, align 4
  br label %213

213:                                              ; preds = %210, %177
  %214 = load i16, ptr %145, align 2
  %215 = icmp ugt i16 %214, 47
  br i1 %215, label %216, label %232

216:                                              ; preds = %213
  %217 = load ptr, ptr %6, align 4
  %218 = select i1 %97, i32 6817332, i32 6825524
  %219 = getelementptr inbounds %struct.nouveau_drm, ptr %217, i32 0, i32 2, i32 3, i32 0, i32 6
  %220 = load ptr, ptr %219, align 8
  %221 = icmp eq ptr %220, null
  br i1 %221, label %225, label %222, !prof !8

222:                                              ; preds = %216
  %223 = getelementptr i8, ptr %220, i32 %218
  %224 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %223) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %229

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.nouveau_drm, ptr %217, i32 0, i32 2, i32 3
  %227 = zext i32 %218 to i64
  %228 = call i32 @nvif_object_rd(ptr noundef %226, i32 noundef 4, i64 noundef %227) #7
  br label %229

229:                                              ; preds = %225, %222
  %230 = phi i32 [ %224, %222 ], [ %228, %225 ]
  %231 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 19
  store i32 %230, ptr %231, align 4
  br label %232

232:                                              ; preds = %229, %213
  %233 = load ptr, ptr %6, align 4
  %234 = select i1 %97, i32 6817536, i32 6825728
  %235 = getelementptr inbounds %struct.nouveau_drm, ptr %233, i32 0, i32 2, i32 3, i32 0, i32 6
  %236 = load ptr, ptr %235, align 8
  %237 = icmp eq ptr %236, null
  br i1 %237, label %241, label %238, !prof !8

238:                                              ; preds = %232
  %239 = getelementptr i8, ptr %236, i32 %234
  %240 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %239) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %245

241:                                              ; preds = %232
  %242 = getelementptr inbounds %struct.nouveau_drm, ptr %233, i32 0, i32 2, i32 3
  %243 = zext i32 %234 to i64
  %244 = call i32 @nvif_object_rd(ptr noundef %242, i32 noundef 4, i64 noundef %243) #7
  br label %245

245:                                              ; preds = %241, %238
  %246 = phi i32 [ %240, %238 ], [ %244, %241 ]
  %247 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 20
  store i32 %246, ptr %247, align 4
  %248 = load ptr, ptr %6, align 4
  %249 = select i1 %97, i32 6817568, i32 6825760
  %250 = getelementptr inbounds %struct.nouveau_drm, ptr %248, i32 0, i32 2, i32 3, i32 0, i32 6
  %251 = load ptr, ptr %250, align 8
  %252 = icmp eq ptr %251, null
  br i1 %252, label %256, label %253, !prof !8

253:                                              ; preds = %245
  %254 = getelementptr i8, ptr %251, i32 %249
  %255 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %254) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %260

256:                                              ; preds = %245
  %257 = getelementptr inbounds %struct.nouveau_drm, ptr %248, i32 0, i32 2, i32 3
  %258 = zext i32 %249 to i64
  %259 = call i32 @nvif_object_rd(ptr noundef %257, i32 noundef 4, i64 noundef %258) #7
  br label %260

260:                                              ; preds = %256, %253
  %261 = phi i32 [ %255, %253 ], [ %259, %256 ]
  %262 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 21
  store i32 %261, ptr %262, align 4
  %263 = load ptr, ptr %6, align 4
  %264 = select i1 %97, i32 6817572, i32 6825764
  %265 = getelementptr inbounds %struct.nouveau_drm, ptr %263, i32 0, i32 2, i32 3, i32 0, i32 6
  %266 = load ptr, ptr %265, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %271, label %268, !prof !8

268:                                              ; preds = %260
  %269 = getelementptr i8, ptr %266, i32 %264
  %270 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %269) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %275

271:                                              ; preds = %260
  %272 = getelementptr inbounds %struct.nouveau_drm, ptr %263, i32 0, i32 2, i32 3
  %273 = zext i32 %264 to i64
  %274 = call i32 @nvif_object_rd(ptr noundef %272, i32 noundef 4, i64 noundef %273) #7
  br label %275

275:                                              ; preds = %271, %268
  %276 = phi i32 [ %270, %268 ], [ %274, %271 ]
  %277 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 22
  store i32 %276, ptr %277, align 4
  %278 = load ptr, ptr %6, align 4
  %279 = select i1 %97, i32 6817576, i32 6825768
  %280 = getelementptr inbounds %struct.nouveau_drm, ptr %278, i32 0, i32 2, i32 3, i32 0, i32 6
  %281 = load ptr, ptr %280, align 8
  %282 = icmp eq ptr %281, null
  br i1 %282, label %286, label %283, !prof !8

283:                                              ; preds = %275
  %284 = getelementptr i8, ptr %281, i32 %279
  %285 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %284) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %290

286:                                              ; preds = %275
  %287 = getelementptr inbounds %struct.nouveau_drm, ptr %278, i32 0, i32 2, i32 3
  %288 = zext i32 %279 to i64
  %289 = call i32 @nvif_object_rd(ptr noundef %287, i32 noundef 4, i64 noundef %288) #7
  br label %290

290:                                              ; preds = %286, %283
  %291 = phi i32 [ %285, %283 ], [ %289, %286 ]
  %292 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 23
  store i32 %291, ptr %292, align 4
  %293 = load ptr, ptr %6, align 4
  %294 = select i1 %97, i32 6817580, i32 6825772
  %295 = getelementptr inbounds %struct.nouveau_drm, ptr %293, i32 0, i32 2, i32 3, i32 0, i32 6
  %296 = load ptr, ptr %295, align 8
  %297 = icmp eq ptr %296, null
  br i1 %297, label %301, label %298, !prof !8

298:                                              ; preds = %290
  %299 = getelementptr i8, ptr %296, i32 %294
  %300 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %299) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %305

301:                                              ; preds = %290
  %302 = getelementptr inbounds %struct.nouveau_drm, ptr %293, i32 0, i32 2, i32 3
  %303 = zext i32 %294 to i64
  %304 = call i32 @nvif_object_rd(ptr noundef %302, i32 noundef 4, i64 noundef %303) #7
  br label %305

305:                                              ; preds = %301, %298
  %306 = phi i32 [ %300, %298 ], [ %304, %301 ]
  %307 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 24
  store i32 %306, ptr %307, align 4
  %308 = load ptr, ptr %6, align 4
  %309 = select i1 %97, i32 6817584, i32 6825776
  %310 = getelementptr inbounds %struct.nouveau_drm, ptr %308, i32 0, i32 2, i32 3, i32 0, i32 6
  %311 = load ptr, ptr %310, align 8
  %312 = icmp eq ptr %311, null
  br i1 %312, label %316, label %313, !prof !8

313:                                              ; preds = %305
  %314 = getelementptr i8, ptr %311, i32 %309
  %315 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %314) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %320

316:                                              ; preds = %305
  %317 = getelementptr inbounds %struct.nouveau_drm, ptr %308, i32 0, i32 2, i32 3
  %318 = zext i32 %309 to i64
  %319 = call i32 @nvif_object_rd(ptr noundef %317, i32 noundef 4, i64 noundef %318) #7
  br label %320

320:                                              ; preds = %316, %313
  %321 = phi i32 [ %315, %313 ], [ %319, %316 ]
  %322 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 25
  store i32 %321, ptr %322, align 4
  %323 = load ptr, ptr %6, align 4
  %324 = select i1 %97, i32 6817588, i32 6825780
  %325 = getelementptr inbounds %struct.nouveau_drm, ptr %323, i32 0, i32 2, i32 3, i32 0, i32 6
  %326 = load ptr, ptr %325, align 8
  %327 = icmp eq ptr %326, null
  br i1 %327, label %331, label %328, !prof !8

328:                                              ; preds = %320
  %329 = getelementptr i8, ptr %326, i32 %324
  %330 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %329) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %335

331:                                              ; preds = %320
  %332 = getelementptr inbounds %struct.nouveau_drm, ptr %323, i32 0, i32 2, i32 3
  %333 = zext i32 %324 to i64
  %334 = call i32 @nvif_object_rd(ptr noundef %332, i32 noundef 4, i64 noundef %333) #7
  br label %335

335:                                              ; preds = %331, %328
  %336 = phi i32 [ %330, %328 ], [ %334, %331 ]
  %337 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 26
  store i32 %336, ptr %337, align 4
  %338 = load ptr, ptr %6, align 4
  %339 = select i1 %97, i32 6817592, i32 6825784
  %340 = getelementptr inbounds %struct.nouveau_drm, ptr %338, i32 0, i32 2, i32 3, i32 0, i32 6
  %341 = load ptr, ptr %340, align 8
  %342 = icmp eq ptr %341, null
  br i1 %342, label %346, label %343, !prof !8

343:                                              ; preds = %335
  %344 = getelementptr i8, ptr %341, i32 %339
  %345 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %344) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %350

346:                                              ; preds = %335
  %347 = getelementptr inbounds %struct.nouveau_drm, ptr %338, i32 0, i32 2, i32 3
  %348 = zext i32 %339 to i64
  %349 = call i32 @nvif_object_rd(ptr noundef %347, i32 noundef 4, i64 noundef %348) #7
  br label %350

350:                                              ; preds = %346, %343
  %351 = phi i32 [ %345, %343 ], [ %349, %346 ]
  %352 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 27
  store i32 %351, ptr %352, align 4
  %353 = select i1 %97, i32 6817792, i32 6825984
  %354 = select i1 %97, i32 6817824, i32 6826016
  br label %355

355:                                              ; preds = %385, %350
  %356 = phi i32 [ 0, %350 ], [ %388, %385 ]
  %357 = shl i32 %356, 2
  %358 = load ptr, ptr %6, align 4
  %359 = add nuw nsw i32 %357, %353
  %360 = getelementptr inbounds %struct.nouveau_drm, ptr %358, i32 0, i32 2, i32 3, i32 0, i32 6
  %361 = load ptr, ptr %360, align 8
  %362 = icmp eq ptr %361, null
  br i1 %362, label %366, label %363, !prof !8

363:                                              ; preds = %355
  %364 = getelementptr i8, ptr %361, i32 %359
  %365 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %364) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %370

366:                                              ; preds = %355
  %367 = getelementptr inbounds %struct.nouveau_drm, ptr %358, i32 0, i32 2, i32 3
  %368 = zext i32 %359 to i64
  %369 = call i32 @nvif_object_rd(ptr noundef %367, i32 noundef 4, i64 noundef %368) #7
  br label %370

370:                                              ; preds = %366, %363
  %371 = phi i32 [ %365, %363 ], [ %369, %366 ]
  %372 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 29, i32 %356
  store i32 %371, ptr %372, align 4
  %373 = load ptr, ptr %6, align 4
  %374 = add nuw nsw i32 %357, %354
  %375 = getelementptr inbounds %struct.nouveau_drm, ptr %373, i32 0, i32 2, i32 3, i32 0, i32 6
  %376 = load ptr, ptr %375, align 8
  %377 = icmp eq ptr %376, null
  br i1 %377, label %381, label %378, !prof !8

378:                                              ; preds = %370
  %379 = getelementptr i8, ptr %376, i32 %374
  %380 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %379) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %385

381:                                              ; preds = %370
  %382 = getelementptr inbounds %struct.nouveau_drm, ptr %373, i32 0, i32 2, i32 3
  %383 = zext i32 %374 to i64
  %384 = call i32 @nvif_object_rd(ptr noundef %382, i32 noundef 4, i64 noundef %383) #7
  br label %385

385:                                              ; preds = %381, %378
  %386 = phi i32 [ %380, %378 ], [ %384, %381 ]
  %387 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 28, i32 %356
  store i32 %386, ptr %387, align 4
  %388 = add nuw nsw i32 %356, 1
  %389 = icmp eq i32 %388, 7
  br i1 %389, label %390, label %355

390:                                              ; preds = %385
  %391 = load ptr, ptr %6, align 4
  %392 = load ptr, ptr %115, align 4
  %393 = getelementptr i8, ptr %392, i32 -102
  %394 = load i16, ptr %393, align 2
  %395 = and i16 %394, 4080
  %396 = getelementptr inbounds %struct.nouveau_drm, ptr %391, i32 0, i32 2, i32 3, i32 1, i32 4
  %397 = load i8, ptr %396, align 1
  %398 = icmp ugt i8 %397, 1
  %399 = icmp ne i16 %395, 256
  %400 = select i1 %398, i1 %399, i1 false
  %401 = icmp ne i16 %395, 336
  %402 = select i1 %400, i1 %401, i1 false
  %403 = icmp ne i16 %395, 416
  %404 = select i1 %402, i1 %403, i1 false
  %405 = icmp ne i16 %395, 512
  %406 = select i1 %404, i1 %405, i1 false
  %407 = icmp ne i16 %395, 272
  %408 = select i1 %406, i1 %407, i1 false
  br i1 %408, label %409, label %515

409:                                              ; preds = %390
  %410 = select i1 %97, i32 6817852, i32 6826044
  %411 = getelementptr inbounds %struct.nouveau_drm, ptr %391, i32 0, i32 2, i32 3, i32 0, i32 6
  %412 = load ptr, ptr %411, align 8
  %413 = icmp eq ptr %412, null
  br i1 %413, label %417, label %414, !prof !8

414:                                              ; preds = %409
  %415 = getelementptr i8, ptr %412, i32 %410
  %416 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %415) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %421

417:                                              ; preds = %409
  %418 = getelementptr inbounds %struct.nouveau_drm, ptr %391, i32 0, i32 2, i32 3
  %419 = zext i32 %410 to i64
  %420 = call i32 @nvif_object_rd(ptr noundef %418, i32 noundef 4, i64 noundef %419) #7
  br label %421

421:                                              ; preds = %417, %414
  %422 = phi i32 [ %416, %414 ], [ %420, %417 ]
  %423 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 30
  store i32 %422, ptr %423, align 4
  %424 = select i1 %97, i32 6817872, i32 6826064
  %425 = select i1 %97, i32 6817884, i32 6826076
  %426 = load ptr, ptr %6, align 4
  %427 = getelementptr inbounds %struct.nouveau_drm, ptr %426, i32 0, i32 2, i32 3, i32 0, i32 6
  %428 = load ptr, ptr %427, align 8
  %429 = icmp eq ptr %428, null
  br i1 %429, label %433, label %430, !prof !8

430:                                              ; preds = %421
  %431 = getelementptr i8, ptr %428, i32 %424
  %432 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %431) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %437

433:                                              ; preds = %421
  %434 = getelementptr inbounds %struct.nouveau_drm, ptr %426, i32 0, i32 2, i32 3
  %435 = zext i32 %424 to i64
  %436 = call i32 @nvif_object_rd(ptr noundef %434, i32 noundef 4, i64 noundef %435) #7
  br label %437

437:                                              ; preds = %433, %430
  %438 = phi i32 [ %432, %430 ], [ %436, %433 ]
  %439 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 0
  store i32 %438, ptr %439, align 4
  %440 = load ptr, ptr %6, align 4
  %441 = getelementptr inbounds %struct.nouveau_drm, ptr %440, i32 0, i32 2, i32 3, i32 0, i32 6
  %442 = load ptr, ptr %441, align 8
  %443 = icmp eq ptr %442, null
  br i1 %443, label %447, label %444, !prof !8

444:                                              ; preds = %437
  %445 = getelementptr i8, ptr %442, i32 %425
  %446 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %445) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %451

447:                                              ; preds = %437
  %448 = getelementptr inbounds %struct.nouveau_drm, ptr %440, i32 0, i32 2, i32 3
  %449 = zext i32 %425 to i64
  %450 = call i32 @nvif_object_rd(ptr noundef %448, i32 noundef 4, i64 noundef %449) #7
  br label %451

451:                                              ; preds = %447, %444
  %452 = phi i32 [ %446, %444 ], [ %450, %447 ]
  %453 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 3
  store i32 %452, ptr %453, align 4
  %454 = load ptr, ptr %6, align 4
  %455 = or i32 %424, 4
  %456 = getelementptr inbounds %struct.nouveau_drm, ptr %454, i32 0, i32 2, i32 3, i32 0, i32 6
  %457 = load ptr, ptr %456, align 8
  %458 = icmp eq ptr %457, null
  br i1 %458, label %462, label %459, !prof !8

459:                                              ; preds = %451
  %460 = getelementptr i8, ptr %457, i32 %455
  %461 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %460) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %466

462:                                              ; preds = %451
  %463 = getelementptr inbounds %struct.nouveau_drm, ptr %454, i32 0, i32 2, i32 3
  %464 = zext i32 %455 to i64
  %465 = call i32 @nvif_object_rd(ptr noundef %463, i32 noundef 4, i64 noundef %464) #7
  br label %466

466:                                              ; preds = %462, %459
  %467 = phi i32 [ %461, %459 ], [ %465, %462 ]
  %468 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 1
  store i32 %467, ptr %468, align 4
  %469 = load ptr, ptr %6, align 4
  %470 = add nuw nsw i32 %425, 4
  %471 = getelementptr inbounds %struct.nouveau_drm, ptr %469, i32 0, i32 2, i32 3, i32 0, i32 6
  %472 = load ptr, ptr %471, align 8
  %473 = icmp eq ptr %472, null
  br i1 %473, label %477, label %474, !prof !8

474:                                              ; preds = %466
  %475 = getelementptr i8, ptr %472, i32 %470
  %476 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %475) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %481

477:                                              ; preds = %466
  %478 = getelementptr inbounds %struct.nouveau_drm, ptr %469, i32 0, i32 2, i32 3
  %479 = zext i32 %470 to i64
  %480 = call i32 @nvif_object_rd(ptr noundef %478, i32 noundef 4, i64 noundef %479) #7
  br label %481

481:                                              ; preds = %477, %474
  %482 = phi i32 [ %476, %474 ], [ %480, %477 ]
  %483 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 4
  store i32 %482, ptr %483, align 4
  %484 = load ptr, ptr %6, align 4
  %485 = or i32 %424, 8
  %486 = getelementptr inbounds %struct.nouveau_drm, ptr %484, i32 0, i32 2, i32 3, i32 0, i32 6
  %487 = load ptr, ptr %486, align 8
  %488 = icmp eq ptr %487, null
  br i1 %488, label %492, label %489, !prof !8

489:                                              ; preds = %481
  %490 = getelementptr i8, ptr %487, i32 %485
  %491 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %490) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %496

492:                                              ; preds = %481
  %493 = getelementptr inbounds %struct.nouveau_drm, ptr %484, i32 0, i32 2, i32 3
  %494 = zext i32 %485 to i64
  %495 = call i32 @nvif_object_rd(ptr noundef %493, i32 noundef 4, i64 noundef %494) #7
  br label %496

496:                                              ; preds = %492, %489
  %497 = phi i32 [ %491, %489 ], [ %495, %492 ]
  %498 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 2
  store i32 %497, ptr %498, align 4
  %499 = load ptr, ptr %6, align 4
  %500 = add nuw nsw i32 %425, 8
  %501 = getelementptr inbounds %struct.nouveau_drm, ptr %499, i32 0, i32 2, i32 3, i32 0, i32 6
  %502 = load ptr, ptr %501, align 8
  %503 = icmp eq ptr %502, null
  br i1 %503, label %507, label %504, !prof !8

504:                                              ; preds = %496
  %505 = getelementptr i8, ptr %502, i32 %500
  %506 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %505) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %511

507:                                              ; preds = %496
  %508 = getelementptr inbounds %struct.nouveau_drm, ptr %499, i32 0, i32 2, i32 3
  %509 = zext i32 %500 to i64
  %510 = call i32 @nvif_object_rd(ptr noundef %508, i32 noundef 4, i64 noundef %509) #7
  br label %511

511:                                              ; preds = %507, %504
  %512 = phi i32 [ %506, %504 ], [ %510, %507 ]
  %513 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 5
  store i32 %512, ptr %513, align 4
  %514 = load ptr, ptr %6, align 4
  br label %515

515:                                              ; preds = %511, %390
  %516 = phi ptr [ %514, %511 ], [ %391, %390 ]
  %517 = select i1 %97, i32 6817864, i32 6826056
  %518 = getelementptr inbounds %struct.nouveau_drm, ptr %516, i32 0, i32 2, i32 3, i32 0, i32 6
  %519 = load ptr, ptr %518, align 8
  %520 = icmp eq ptr %519, null
  br i1 %520, label %524, label %521, !prof !8

521:                                              ; preds = %515
  %522 = getelementptr i8, ptr %519, i32 %517
  %523 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %522) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %528

524:                                              ; preds = %515
  %525 = getelementptr inbounds %struct.nouveau_drm, ptr %516, i32 0, i32 2, i32 3
  %526 = zext i32 %517 to i64
  %527 = call i32 @nvif_object_rd(ptr noundef %525, i32 noundef 4, i64 noundef %526) #7
  br label %528

528:                                              ; preds = %524, %521
  %529 = phi i32 [ %523, %521 ], [ %527, %524 ]
  %530 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 31
  store i32 %529, ptr %530, align 4
  %531 = load ptr, ptr %6, align 4
  %532 = select i1 %97, i32 6817920, i32 6826112
  %533 = getelementptr inbounds %struct.nouveau_drm, ptr %531, i32 0, i32 2, i32 3, i32 0, i32 6
  %534 = load ptr, ptr %533, align 8
  %535 = icmp eq ptr %534, null
  br i1 %535, label %539, label %536, !prof !8

536:                                              ; preds = %528
  %537 = getelementptr i8, ptr %534, i32 %532
  %538 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %537) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %543

539:                                              ; preds = %528
  %540 = getelementptr inbounds %struct.nouveau_drm, ptr %531, i32 0, i32 2, i32 3
  %541 = zext i32 %532 to i64
  %542 = call i32 @nvif_object_rd(ptr noundef %540, i32 noundef 4, i64 noundef %541) #7
  br label %543

543:                                              ; preds = %539, %536
  %544 = phi i32 [ %538, %536 ], [ %542, %539 ]
  %545 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 33
  store i32 %544, ptr %545, align 4
  %546 = load ptr, ptr %6, align 4
  %547 = load ptr, ptr %115, align 4
  %548 = getelementptr i8, ptr %547, i32 -102
  %549 = load i16, ptr %548, align 2
  %550 = and i16 %549, 4080
  %551 = getelementptr inbounds %struct.nouveau_drm, ptr %546, i32 0, i32 2, i32 3, i32 1, i32 4
  %552 = load i8, ptr %551, align 1
  %553 = icmp ugt i8 %552, 1
  %554 = icmp ne i16 %550, 256
  %555 = select i1 %553, i1 %554, i1 false
  %556 = icmp ne i16 %550, 336
  %557 = select i1 %555, i1 %556, i1 false
  %558 = icmp ne i16 %550, 416
  %559 = select i1 %557, i1 %558, i1 false
  %560 = icmp ne i16 %550, 512
  %561 = select i1 %559, i1 %560, i1 false
  %562 = icmp ne i16 %550, 272
  %563 = select i1 %561, i1 %562, i1 false
  %564 = icmp ne i32 %1, 0
  %565 = or i1 %564, %563
  br i1 %565, label %575, label %566

566:                                              ; preds = %543
  %567 = and i32 %544, -268435457
  %568 = getelementptr inbounds %struct.nouveau_drm, ptr %546, i32 0, i32 2, i32 3, i32 0, i32 6
  %569 = load ptr, ptr %568, align 8
  %570 = icmp eq ptr %569, null
  br i1 %570, label %573, label %571, !prof !8

571:                                              ; preds = %566
  %572 = getelementptr i8, ptr %569, i32 6817920
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %572, i32 %567) #7, !srcloc !17
  br label %575

573:                                              ; preds = %566
  %574 = getelementptr inbounds %struct.nouveau_drm, ptr %546, i32 0, i32 2, i32 3
  call void @nvif_object_wr(ptr noundef %574, i32 noundef 4, i64 noundef 6817920, i32 noundef %567) #7
  br label %575

575:                                              ; preds = %573, %571, %543
  %576 = load ptr, ptr %6, align 4
  %577 = select i1 %97, i32 6817924, i32 6826116
  %578 = getelementptr inbounds %struct.nouveau_drm, ptr %576, i32 0, i32 2, i32 3, i32 0, i32 6
  %579 = load ptr, ptr %578, align 8
  %580 = icmp eq ptr %579, null
  br i1 %580, label %584, label %581, !prof !8

581:                                              ; preds = %575
  %582 = getelementptr i8, ptr %579, i32 %577
  %583 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %582) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %588

584:                                              ; preds = %575
  %585 = getelementptr inbounds %struct.nouveau_drm, ptr %576, i32 0, i32 2, i32 3
  %586 = zext i32 %577 to i64
  %587 = call i32 @nvif_object_rd(ptr noundef %585, i32 noundef 4, i64 noundef %586) #7
  br label %588

588:                                              ; preds = %584, %581
  %589 = phi i32 [ %583, %581 ], [ %587, %584 ]
  %590 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 34
  store i32 %589, ptr %590, align 4
  %591 = load ptr, ptr %6, align 4
  %592 = select i1 %97, i32 6817928, i32 6826120
  %593 = getelementptr inbounds %struct.nouveau_drm, ptr %591, i32 0, i32 2, i32 3, i32 0, i32 6
  %594 = load ptr, ptr %593, align 8
  %595 = icmp eq ptr %594, null
  br i1 %595, label %599, label %596, !prof !8

596:                                              ; preds = %588
  %597 = getelementptr i8, ptr %594, i32 %592
  %598 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %597) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %603

599:                                              ; preds = %588
  %600 = getelementptr inbounds %struct.nouveau_drm, ptr %591, i32 0, i32 2, i32 3
  %601 = zext i32 %592 to i64
  %602 = call i32 @nvif_object_rd(ptr noundef %600, i32 noundef 4, i64 noundef %601) #7
  br label %603

603:                                              ; preds = %599, %596
  %604 = phi i32 [ %598, %596 ], [ %602, %599 ]
  %605 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 35
  store i32 %604, ptr %605, align 4
  %606 = load ptr, ptr %6, align 4
  %607 = select i1 %97, i32 6817868, i32 6826060
  %608 = getelementptr inbounds %struct.nouveau_drm, ptr %606, i32 0, i32 2, i32 3, i32 0, i32 6
  %609 = load ptr, ptr %608, align 8
  %610 = icmp eq ptr %609, null
  br i1 %610, label %614, label %611, !prof !8

611:                                              ; preds = %603
  %612 = getelementptr i8, ptr %609, i32 %607
  %613 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %612) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %618

614:                                              ; preds = %603
  %615 = getelementptr inbounds %struct.nouveau_drm, ptr %606, i32 0, i32 2, i32 3
  %616 = zext i32 %607 to i64
  %617 = call i32 @nvif_object_rd(ptr noundef %615, i32 noundef 4, i64 noundef %616) #7
  br label %618

618:                                              ; preds = %614, %611
  %619 = phi i32 [ %613, %611 ], [ %617, %614 ]
  %620 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 36
  store i32 %619, ptr %620, align 4
  %621 = load ptr, ptr %6, align 4
  %622 = load ptr, ptr %115, align 4
  %623 = getelementptr i8, ptr %622, i32 -102
  %624 = load i16, ptr %623, align 2
  %625 = and i16 %624, 4080
  %626 = getelementptr inbounds %struct.nouveau_drm, ptr %621, i32 0, i32 2, i32 3, i32 1, i32 4
  %627 = load i8, ptr %626, align 1
  %628 = icmp ugt i8 %627, 1
  %629 = icmp ne i16 %625, 256
  %630 = select i1 %628, i1 %629, i1 false
  %631 = icmp ne i16 %625, 336
  %632 = select i1 %630, i1 %631, i1 false
  %633 = icmp ne i16 %625, 416
  %634 = select i1 %632, i1 %633, i1 false
  %635 = icmp ne i16 %625, 512
  %636 = select i1 %634, i1 %635, i1 false
  %637 = icmp ne i16 %625, 272
  %638 = select i1 %636, i1 %637, i1 false
  br i1 %638, label %639, label %654

639:                                              ; preds = %618
  %640 = select i1 %97, i32 6817984, i32 6826176
  %641 = getelementptr inbounds %struct.nouveau_drm, ptr %621, i32 0, i32 2, i32 3, i32 0, i32 6
  %642 = load ptr, ptr %641, align 8
  %643 = icmp eq ptr %642, null
  br i1 %643, label %647, label %644, !prof !8

644:                                              ; preds = %639
  %645 = getelementptr i8, ptr %642, i32 %640
  %646 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %645) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %651

647:                                              ; preds = %639
  %648 = getelementptr inbounds %struct.nouveau_drm, ptr %621, i32 0, i32 2, i32 3
  %649 = zext i32 %640 to i64
  %650 = call i32 @nvif_object_rd(ptr noundef %648, i32 noundef 4, i64 noundef %649) #7
  br label %651

651:                                              ; preds = %647, %644
  %652 = phi i32 [ %646, %644 ], [ %650, %647 ]
  %653 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 37
  store i32 %652, ptr %653, align 4
  br label %654

654:                                              ; preds = %651, %618
  %655 = load i8, ptr %77, align 1
  %656 = icmp eq i8 %655, 5
  br i1 %656, label %657, label %724

657:                                              ; preds = %654
  %658 = load ptr, ptr %6, align 4
  %659 = select i1 %97, i32 6818336, i32 6826528
  %660 = getelementptr inbounds %struct.nouveau_drm, ptr %658, i32 0, i32 2, i32 3, i32 0, i32 6
  %661 = load ptr, ptr %660, align 8
  %662 = icmp eq ptr %661, null
  br i1 %662, label %666, label %663, !prof !8

663:                                              ; preds = %657
  %664 = getelementptr i8, ptr %661, i32 %659
  %665 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %664) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %670

666:                                              ; preds = %657
  %667 = getelementptr inbounds %struct.nouveau_drm, ptr %658, i32 0, i32 2, i32 3
  %668 = zext i32 %659 to i64
  %669 = call i32 @nvif_object_rd(ptr noundef %667, i32 noundef 4, i64 noundef %668) #7
  br label %670

670:                                              ; preds = %666, %663
  %671 = phi i32 [ %665, %663 ], [ %669, %666 ]
  %672 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 38
  store i32 %671, ptr %672, align 4
  %673 = load ptr, ptr %6, align 4
  %674 = select i1 %97, i32 6818340, i32 6826532
  %675 = getelementptr inbounds %struct.nouveau_drm, ptr %673, i32 0, i32 2, i32 3, i32 0, i32 6
  %676 = load ptr, ptr %675, align 8
  %677 = icmp eq ptr %676, null
  br i1 %677, label %681, label %678, !prof !8

678:                                              ; preds = %670
  %679 = getelementptr i8, ptr %676, i32 %674
  %680 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %679) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %685

681:                                              ; preds = %670
  %682 = getelementptr inbounds %struct.nouveau_drm, ptr %673, i32 0, i32 2, i32 3
  %683 = zext i32 %674 to i64
  %684 = call i32 @nvif_object_rd(ptr noundef %682, i32 noundef 4, i64 noundef %683) #7
  br label %685

685:                                              ; preds = %681, %678
  %686 = phi i32 [ %680, %678 ], [ %684, %681 ]
  %687 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 39
  store i32 %686, ptr %687, align 4
  %688 = load ptr, ptr %6, align 4
  %689 = select i1 %97, i32 6818356, i32 6826548
  %690 = getelementptr inbounds %struct.nouveau_drm, ptr %688, i32 0, i32 2, i32 3, i32 0, i32 6
  %691 = load ptr, ptr %690, align 8
  %692 = icmp eq ptr %691, null
  br i1 %692, label %696, label %693, !prof !8

693:                                              ; preds = %685
  %694 = getelementptr i8, ptr %691, i32 %689
  %695 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %694) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %700

696:                                              ; preds = %685
  %697 = getelementptr inbounds %struct.nouveau_drm, ptr %688, i32 0, i32 2, i32 3
  %698 = zext i32 %689 to i64
  %699 = call i32 @nvif_object_rd(ptr noundef %697, i32 noundef 4, i64 noundef %698) #7
  br label %700

700:                                              ; preds = %696, %693
  %701 = phi i32 [ %695, %693 ], [ %699, %696 ]
  %702 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 40
  store i32 %701, ptr %702, align 4
  %703 = select i1 %97, i32 6818816, i32 6827008
  br label %704

704:                                              ; preds = %719, %700
  %705 = phi i32 [ 0, %700 ], [ %722, %719 ]
  %706 = shl i32 %705, 2
  %707 = load ptr, ptr %6, align 4
  %708 = add nuw nsw i32 %706, %703
  %709 = getelementptr inbounds %struct.nouveau_drm, ptr %707, i32 0, i32 2, i32 3, i32 0, i32 6
  %710 = load ptr, ptr %709, align 8
  %711 = icmp eq ptr %710, null
  br i1 %711, label %715, label %712, !prof !8

712:                                              ; preds = %704
  %713 = getelementptr i8, ptr %710, i32 %708
  %714 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %713) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %719

715:                                              ; preds = %704
  %716 = getelementptr inbounds %struct.nouveau_drm, ptr %707, i32 0, i32 2, i32 3
  %717 = zext i32 %708 to i64
  %718 = call i32 @nvif_object_rd(ptr noundef %716, i32 noundef 4, i64 noundef %717) #7
  br label %719

719:                                              ; preds = %715, %712
  %720 = phi i32 [ %714, %712 ], [ %718, %715 ]
  %721 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 41, i32 %705
  store i32 %720, ptr %721, align 4
  %722 = add nuw nsw i32 %705, 1
  %723 = icmp eq i32 %722, 38
  br i1 %723, label %724, label %704

724:                                              ; preds = %719, %654
  %725 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1
  %726 = load ptr, ptr %6, align 4
  %727 = getelementptr inbounds %struct.nouveau_drm, ptr %726, i32 0, i32 2, i32 3
  br i1 %97, label %733, label %728

728:                                              ; preds = %724
  %729 = getelementptr inbounds %struct.nouveau_drm, ptr %726, i32 0, i32 2, i32 3, i32 1, i32 4
  %730 = load i8, ptr %729, align 1
  %731 = icmp eq i8 %730, 5
  %732 = select i1 %731, i32 795596, i32 787404
  br label %733

733:                                              ; preds = %728, %724
  %734 = phi i32 [ 787404, %724 ], [ %732, %728 ]
  %735 = getelementptr inbounds %struct.nouveau_drm, ptr %726, i32 0, i32 2, i32 3, i32 0, i32 6
  %736 = load ptr, ptr %735, align 8
  %737 = icmp eq ptr %736, null
  br i1 %737, label %742, label %738, !prof !8

738:                                              ; preds = %733
  %739 = getelementptr i8, ptr %736, i32 %734
  %740 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %739) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %741 = zext i8 %740 to i32
  br label %745

742:                                              ; preds = %733
  %743 = zext i32 %734 to i64
  %744 = call i32 @nvif_object_rd(ptr noundef %727, i32 noundef 1, i64 noundef %743) #7
  br label %745

745:                                              ; preds = %742, %738
  %746 = phi i32 [ %741, %738 ], [ %744, %742 ]
  %747 = trunc i32 %746 to i8
  store i8 %747, ptr %725, align 4
  %748 = shl i32 %1, 13
  %749 = add i32 %748, 6296532
  %750 = sext i32 %749 to i64
  %751 = add i32 %748, 6296533
  %752 = sext i32 %751 to i64
  br label %753

753:                                              ; preds = %773, %745
  %754 = phi i32 [ 0, %745 ], [ %777, %773 ]
  %755 = load ptr, ptr %6, align 4
  %756 = getelementptr inbounds %struct.nouveau_drm, ptr %755, i32 0, i32 2, i32 3
  %757 = getelementptr inbounds %struct.nouveau_drm, ptr %755, i32 0, i32 2, i32 3, i32 0, i32 6
  %758 = load ptr, ptr %757, align 8
  %759 = icmp eq ptr %758, null
  br i1 %759, label %763, label %760, !prof !8

760:                                              ; preds = %753
  %761 = trunc i32 %754 to i8
  %762 = getelementptr i8, ptr %758, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %762, i8 %761) #7, !srcloc !10
  br label %764

763:                                              ; preds = %753
  call void @nvif_object_wr(ptr noundef %756, i32 noundef 1, i64 noundef %750, i32 noundef %754) #7
  br label %764

764:                                              ; preds = %763, %760
  %765 = load ptr, ptr %757, align 8
  %766 = icmp eq ptr %765, null
  br i1 %766, label %771, label %767, !prof !8

767:                                              ; preds = %764
  %768 = getelementptr i8, ptr %765, i32 %751
  %769 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %768) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %770 = zext i8 %769 to i32
  br label %773

771:                                              ; preds = %764
  %772 = call i32 @nvif_object_rd(ptr noundef %756, i32 noundef 1, i64 noundef %752) #7
  br label %773

773:                                              ; preds = %771, %767
  %774 = phi i32 [ %770, %767 ], [ %772, %771 ]
  %775 = trunc i32 %774 to i8
  %776 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 %754
  store i8 %775, ptr %776, align 1
  %777 = add nuw nsw i32 %754, 1
  %778 = icmp eq i32 %777, 25
  br i1 %778, label %779, label %753

779:                                              ; preds = %773
  %780 = load ptr, ptr %6, align 4
  %781 = getelementptr inbounds %struct.nouveau_drm, ptr %780, i32 0, i32 2, i32 3
  %782 = getelementptr inbounds %struct.nouveau_drm, ptr %780, i32 0, i32 2, i32 3, i32 0, i32 6
  %783 = load ptr, ptr %782, align 8
  %784 = icmp eq ptr %783, null
  %785 = add i32 %748, 6296538
  br i1 %784, label %789, label %786, !prof !8

786:                                              ; preds = %779
  %787 = getelementptr i8, ptr %783, i32 %785
  %788 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %787) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %792

789:                                              ; preds = %779
  %790 = sext i32 %785 to i64
  %791 = call i32 @nvif_object_rd(ptr noundef %781, i32 noundef 1, i64 noundef %790) #7
  br label %792

792:                                              ; preds = %789, %786
  %793 = load ptr, ptr %782, align 8
  %794 = icmp eq ptr %793, null
  %795 = add i32 %748, 6296512
  br i1 %794, label %798, label %796, !prof !8

796:                                              ; preds = %792
  %797 = getelementptr i8, ptr %793, i32 %795
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %797, i8 0) #7, !srcloc !10
  br label %800

798:                                              ; preds = %792
  %799 = sext i32 %795 to i64
  call void @nvif_object_wr(ptr noundef %781, i32 noundef 1, i64 noundef %799, i32 noundef 0) #7
  br label %800

800:                                              ; preds = %798, %796
  %801 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0) #7
  %802 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 0
  store i8 %801, ptr %802, align 1
  %803 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1) #7
  %804 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 1
  store i8 %803, ptr %804, align 1
  %805 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 2) #7
  %806 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 2
  store i8 %805, ptr %806, align 1
  %807 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 3) #7
  %808 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 3
  store i8 %807, ptr %808, align 1
  %809 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 4) #7
  %810 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 4
  store i8 %809, ptr %810, align 1
  %811 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 5) #7
  %812 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 5
  store i8 %811, ptr %812, align 1
  %813 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 6) #7
  %814 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 6
  store i8 %813, ptr %814, align 1
  %815 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 7) #7
  %816 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 7
  store i8 %815, ptr %816, align 1
  %817 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 8) #7
  %818 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 8
  store i8 %817, ptr %818, align 1
  %819 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 9) #7
  %820 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 9
  store i8 %819, ptr %820, align 1
  %821 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 10) #7
  %822 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 10
  store i8 %821, ptr %822, align 1
  %823 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 11) #7
  %824 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 11
  store i8 %823, ptr %824, align 1
  %825 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 12) #7
  %826 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 12
  store i8 %825, ptr %826, align 1
  %827 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 13) #7
  %828 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 13
  store i8 %827, ptr %828, align 1
  %829 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 14) #7
  %830 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 14
  store i8 %829, ptr %830, align 1
  %831 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 15) #7
  %832 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 15
  store i8 %831, ptr %832, align 1
  %833 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 16) #7
  %834 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 16
  store i8 %833, ptr %834, align 1
  %835 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 17) #7
  %836 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 17
  store i8 %835, ptr %836, align 1
  %837 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 18) #7
  %838 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 18
  store i8 %837, ptr %838, align 1
  %839 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 19) #7
  %840 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 19
  store i8 %839, ptr %840, align 1
  %841 = call fastcc zeroext i8 @NVReadVgaAttr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 20) #7
  %842 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 20
  store i8 %841, ptr %842, align 1
  %843 = load ptr, ptr %6, align 4
  %844 = getelementptr inbounds %struct.nouveau_drm, ptr %843, i32 0, i32 2, i32 3
  %845 = getelementptr inbounds %struct.nouveau_drm, ptr %843, i32 0, i32 2, i32 3, i32 0, i32 6
  %846 = load ptr, ptr %845, align 8
  %847 = icmp eq ptr %846, null
  br i1 %847, label %851, label %848, !prof !8

848:                                              ; preds = %800
  %849 = getelementptr i8, ptr %846, i32 %785
  %850 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %849) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %854

851:                                              ; preds = %800
  %852 = sext i32 %785 to i64
  %853 = call i32 @nvif_object_rd(ptr noundef %844, i32 noundef 1, i64 noundef %852) #7
  br label %854

854:                                              ; preds = %851, %848
  %855 = load ptr, ptr %845, align 8
  %856 = icmp eq ptr %855, null
  br i1 %856, label %859, label %857, !prof !8

857:                                              ; preds = %854
  %858 = getelementptr i8, ptr %855, i32 %795
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %858, i8 32) #7, !srcloc !10
  br label %861

859:                                              ; preds = %854
  %860 = sext i32 %795 to i64
  call void @nvif_object_wr(ptr noundef %844, i32 noundef 1, i64 noundef %860, i32 noundef 32) #7
  br label %861

861:                                              ; preds = %859, %857
  br label %862

862:                                              ; preds = %901, %861
  %863 = phi i32 [ %905, %901 ], [ 0, %861 ]
  %864 = trunc i32 %863 to i8
  %865 = load ptr, ptr %6, align 4
  %866 = getelementptr inbounds %struct.nouveau_drm, ptr %865, i32 0, i32 2, i32 3
  br i1 %97, label %872, label %867

867:                                              ; preds = %862
  %868 = getelementptr inbounds %struct.nouveau_drm, ptr %865, i32 0, i32 2, i32 3, i32 1, i32 4
  %869 = load i8, ptr %868, align 1
  %870 = icmp eq i8 %869, 5
  %871 = select i1 %870, i32 795598, i32 787406
  br label %872

872:                                              ; preds = %867, %862
  %873 = phi i32 [ 787406, %862 ], [ %871, %867 ]
  %874 = getelementptr inbounds %struct.nouveau_drm, ptr %865, i32 0, i32 2, i32 3, i32 0, i32 6
  %875 = load ptr, ptr %874, align 8
  %876 = icmp eq ptr %875, null
  br i1 %876, label %879, label %877, !prof !8

877:                                              ; preds = %872
  %878 = getelementptr i8, ptr %875, i32 %873
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %878, i8 %864) #7, !srcloc !10
  br label %881

879:                                              ; preds = %872
  %880 = zext i32 %873 to i64
  call void @nvif_object_wr(ptr noundef %866, i32 noundef 1, i64 noundef %880, i32 noundef %863) #7
  br label %881

881:                                              ; preds = %879, %877
  %882 = load ptr, ptr %6, align 4
  %883 = getelementptr inbounds %struct.nouveau_drm, ptr %882, i32 0, i32 2, i32 3
  br i1 %97, label %889, label %884

884:                                              ; preds = %881
  %885 = getelementptr inbounds %struct.nouveau_drm, ptr %882, i32 0, i32 2, i32 3, i32 1, i32 4
  %886 = load i8, ptr %885, align 1
  %887 = icmp eq i8 %886, 5
  %888 = select i1 %887, i32 795599, i32 787407
  br label %889

889:                                              ; preds = %884, %881
  %890 = phi i32 [ 787407, %881 ], [ %888, %884 ]
  %891 = getelementptr inbounds %struct.nouveau_drm, ptr %882, i32 0, i32 2, i32 3, i32 0, i32 6
  %892 = load ptr, ptr %891, align 8
  %893 = icmp eq ptr %892, null
  br i1 %893, label %898, label %894, !prof !8

894:                                              ; preds = %889
  %895 = getelementptr i8, ptr %892, i32 %890
  %896 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %895) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %897 = zext i8 %896 to i32
  br label %901

898:                                              ; preds = %889
  %899 = zext i32 %890 to i64
  %900 = call i32 @nvif_object_rd(ptr noundef %883, i32 noundef 1, i64 noundef %899) #7
  br label %901

901:                                              ; preds = %898, %894
  %902 = phi i32 [ %897, %894 ], [ %900, %898 ]
  %903 = trunc i32 %902 to i8
  %904 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 4, i32 %863
  store i8 %903, ptr %904, align 1
  %905 = add nuw nsw i32 %863, 1
  %906 = icmp eq i32 %905, 9
  br i1 %906, label %907, label %862

907:                                              ; preds = %946, %901
  %908 = phi i32 [ %950, %946 ], [ 0, %901 ]
  %909 = trunc i32 %908 to i8
  %910 = load ptr, ptr %6, align 4
  %911 = getelementptr inbounds %struct.nouveau_drm, ptr %910, i32 0, i32 2, i32 3
  br i1 %97, label %917, label %912

912:                                              ; preds = %907
  %913 = getelementptr inbounds %struct.nouveau_drm, ptr %910, i32 0, i32 2, i32 3, i32 1, i32 4
  %914 = load i8, ptr %913, align 1
  %915 = icmp eq i8 %914, 5
  %916 = select i1 %915, i32 795588, i32 787396
  br label %917

917:                                              ; preds = %912, %907
  %918 = phi i32 [ 787396, %907 ], [ %916, %912 ]
  %919 = getelementptr inbounds %struct.nouveau_drm, ptr %910, i32 0, i32 2, i32 3, i32 0, i32 6
  %920 = load ptr, ptr %919, align 8
  %921 = icmp eq ptr %920, null
  br i1 %921, label %924, label %922, !prof !8

922:                                              ; preds = %917
  %923 = getelementptr i8, ptr %920, i32 %918
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %923, i8 %909) #7, !srcloc !10
  br label %926

924:                                              ; preds = %917
  %925 = zext i32 %918 to i64
  call void @nvif_object_wr(ptr noundef %911, i32 noundef 1, i64 noundef %925, i32 noundef %908) #7
  br label %926

926:                                              ; preds = %924, %922
  %927 = load ptr, ptr %6, align 4
  %928 = getelementptr inbounds %struct.nouveau_drm, ptr %927, i32 0, i32 2, i32 3
  br i1 %97, label %934, label %929

929:                                              ; preds = %926
  %930 = getelementptr inbounds %struct.nouveau_drm, ptr %927, i32 0, i32 2, i32 3, i32 1, i32 4
  %931 = load i8, ptr %930, align 1
  %932 = icmp eq i8 %931, 5
  %933 = select i1 %932, i32 795589, i32 787397
  br label %934

934:                                              ; preds = %929, %926
  %935 = phi i32 [ 787397, %926 ], [ %933, %929 ]
  %936 = getelementptr inbounds %struct.nouveau_drm, ptr %927, i32 0, i32 2, i32 3, i32 0, i32 6
  %937 = load ptr, ptr %936, align 8
  %938 = icmp eq ptr %937, null
  br i1 %938, label %943, label %939, !prof !8

939:                                              ; preds = %934
  %940 = getelementptr i8, ptr %937, i32 %935
  %941 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %940) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %942 = zext i8 %941 to i32
  br label %946

943:                                              ; preds = %934
  %944 = zext i32 %935 to i64
  %945 = call i32 @nvif_object_rd(ptr noundef %928, i32 noundef 1, i64 noundef %944) #7
  br label %946

946:                                              ; preds = %943, %939
  %947 = phi i32 [ %942, %939 ], [ %945, %943 ]
  %948 = trunc i32 %947 to i8
  %949 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 3, i32 %908
  store i8 %948, ptr %949, align 1
  %950 = add nuw nsw i32 %908, 1
  %951 = icmp eq i32 %950, 5
  br i1 %951, label %952, label %907

952:                                              ; preds = %946
  %953 = load ptr, ptr %6, align 4
  %954 = getelementptr inbounds %struct.nouveau_drm, ptr %953, i32 0, i32 2, i32 3
  %955 = getelementptr inbounds %struct.nouveau_drm, ptr %953, i32 0, i32 2, i32 3, i32 0, i32 6
  %956 = load ptr, ptr %955, align 8
  %957 = icmp eq ptr %956, null
  %958 = add i32 %748, 6820806
  br i1 %957, label %961, label %959, !prof !8

959:                                              ; preds = %952
  %960 = getelementptr i8, ptr %956, i32 %958
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %960, i8 -1) #7, !srcloc !10
  br label %963

961:                                              ; preds = %952
  %962 = sext i32 %958 to i64
  call void @nvif_object_wr(ptr noundef %954, i32 noundef 1, i64 noundef %962, i32 noundef 255) #7
  br label %963

963:                                              ; preds = %961, %959
  %964 = load ptr, ptr %955, align 8
  %965 = icmp eq ptr %964, null
  %966 = add i32 %748, 6820807
  br i1 %965, label %969, label %967, !prof !8

967:                                              ; preds = %963
  %968 = getelementptr i8, ptr %964, i32 %966
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %968, i8 0) #7, !srcloc !10
  br label %971

969:                                              ; preds = %963
  %970 = sext i32 %966 to i64
  call void @nvif_object_wr(ptr noundef %954, i32 noundef 1, i64 noundef %970, i32 noundef 0) #7
  br label %971

971:                                              ; preds = %969, %967
  %972 = add i32 %748, 6820809
  %973 = sext i32 %972 to i64
  br label %974

974:                                              ; preds = %984, %971
  %975 = phi i32 [ 0, %971 ], [ %988, %984 ]
  %976 = load ptr, ptr %955, align 8
  %977 = icmp eq ptr %976, null
  br i1 %977, label %982, label %978, !prof !8

978:                                              ; preds = %974
  %979 = getelementptr i8, ptr %976, i32 %972
  %980 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %979) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %981 = zext i8 %980 to i32
  br label %984

982:                                              ; preds = %974
  %983 = call i32 @nvif_object_rd(ptr noundef %954, i32 noundef 1, i64 noundef %973) #7
  br label %984

984:                                              ; preds = %982, %978
  %985 = phi i32 [ %981, %978 ], [ %983, %982 ]
  %986 = trunc i32 %985 to i8
  %987 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 6, i32 %975
  store i8 %986, ptr %987, align 1
  %988 = add nuw nsw i32 %975, 1
  %989 = icmp eq i32 %988, 768
  br i1 %989, label %990, label %974

990:                                              ; preds = %984
  %991 = load ptr, ptr %6, align 4
  %992 = getelementptr inbounds %struct.nouveau_drm, ptr %991, i32 0, i32 2, i32 3
  %993 = getelementptr inbounds %struct.nouveau_drm, ptr %991, i32 0, i32 2, i32 3, i32 0, i32 6
  %994 = load ptr, ptr %993, align 8
  %995 = icmp eq ptr %994, null
  br i1 %995, label %999, label %996, !prof !8

996:                                              ; preds = %990
  %997 = getelementptr i8, ptr %994, i32 %785
  %998 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %997) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %1002

999:                                              ; preds = %990
  %1000 = sext i32 %785 to i64
  %1001 = call i32 @nvif_object_rd(ptr noundef %992, i32 noundef 1, i64 noundef %1000) #7
  br label %1002

1002:                                             ; preds = %999, %996
  %1003 = load ptr, ptr %993, align 8
  %1004 = icmp eq ptr %1003, null
  br i1 %1004, label %1007, label %1005, !prof !8

1005:                                             ; preds = %1002
  %1006 = getelementptr i8, ptr %1003, i32 %795
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1006, i8 32) #7, !srcloc !10
  br label %1009

1007:                                             ; preds = %1002
  %1008 = sext i32 %795 to i64
  call void @nvif_object_wr(ptr noundef %992, i32 noundef 1, i64 noundef %1008, i32 noundef 32) #7
  br label %1009

1009:                                             ; preds = %1007, %1005
  %1010 = load ptr, ptr %6, align 4
  %1011 = getelementptr inbounds %struct.nouveau_drm, ptr %1010, i32 0, i32 2, i32 3
  %1012 = getelementptr inbounds %struct.nouveau_drm, ptr %1010, i32 0, i32 2, i32 3, i32 0, i32 6
  %1013 = load ptr, ptr %1012, align 8
  %1014 = icmp eq ptr %1013, null
  br i1 %1014, label %1017, label %1015, !prof !8

1015:                                             ; preds = %1009
  %1016 = getelementptr i8, ptr %1013, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1016, i8 51) #7, !srcloc !10
  br label %1018

1017:                                             ; preds = %1009
  call void @nvif_object_wr(ptr noundef %1011, i32 noundef 1, i64 noundef %750, i32 noundef 51) #7
  br label %1018

1018:                                             ; preds = %1017, %1015
  %1019 = load ptr, ptr %1012, align 8
  %1020 = icmp eq ptr %1019, null
  br i1 %1020, label %1025, label %1021, !prof !8

1021:                                             ; preds = %1018
  %1022 = getelementptr i8, ptr %1019, i32 %751
  %1023 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1022) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1024 = zext i8 %1023 to i32
  br label %1027

1025:                                             ; preds = %1018
  %1026 = call i32 @nvif_object_rd(ptr noundef %1011, i32 noundef 1, i64 noundef %752) #7
  br label %1027

1027:                                             ; preds = %1025, %1021
  %1028 = phi i32 [ %1024, %1021 ], [ %1026, %1025 ]
  %1029 = trunc i32 %1028 to i8
  %1030 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 51
  store i8 %1029, ptr %1030, align 1
  %1031 = load ptr, ptr %6, align 4
  %1032 = getelementptr inbounds %struct.nouveau_drm, ptr %1031, i32 0, i32 2, i32 3
  %1033 = getelementptr inbounds %struct.nouveau_drm, ptr %1031, i32 0, i32 2, i32 3, i32 0, i32 6
  %1034 = load ptr, ptr %1033, align 8
  %1035 = icmp eq ptr %1034, null
  br i1 %1035, label %1038, label %1036, !prof !8

1036:                                             ; preds = %1027
  %1037 = getelementptr i8, ptr %1034, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1037, i8 25) #7, !srcloc !10
  br label %1039

1038:                                             ; preds = %1027
  call void @nvif_object_wr(ptr noundef %1032, i32 noundef 1, i64 noundef %750, i32 noundef 25) #7
  br label %1039

1039:                                             ; preds = %1038, %1036
  %1040 = load ptr, ptr %1033, align 8
  %1041 = icmp eq ptr %1040, null
  br i1 %1041, label %1046, label %1042, !prof !8

1042:                                             ; preds = %1039
  %1043 = getelementptr i8, ptr %1040, i32 %751
  %1044 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1043) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1045 = zext i8 %1044 to i32
  br label %1048

1046:                                             ; preds = %1039
  %1047 = call i32 @nvif_object_rd(ptr noundef %1032, i32 noundef 1, i64 noundef %752) #7
  br label %1048

1048:                                             ; preds = %1046, %1042
  %1049 = phi i32 [ %1045, %1042 ], [ %1047, %1046 ]
  %1050 = trunc i32 %1049 to i8
  %1051 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 25
  store i8 %1050, ptr %1051, align 1
  %1052 = load ptr, ptr %6, align 4
  %1053 = getelementptr inbounds %struct.nouveau_drm, ptr %1052, i32 0, i32 2, i32 3
  %1054 = getelementptr inbounds %struct.nouveau_drm, ptr %1052, i32 0, i32 2, i32 3, i32 0, i32 6
  %1055 = load ptr, ptr %1054, align 8
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1059, label %1057, !prof !8

1057:                                             ; preds = %1048
  %1058 = getelementptr i8, ptr %1055, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1058, i8 26) #7, !srcloc !10
  br label %1060

1059:                                             ; preds = %1048
  call void @nvif_object_wr(ptr noundef %1053, i32 noundef 1, i64 noundef %750, i32 noundef 26) #7
  br label %1060

1060:                                             ; preds = %1059, %1057
  %1061 = load ptr, ptr %1054, align 8
  %1062 = icmp eq ptr %1061, null
  br i1 %1062, label %1067, label %1063, !prof !8

1063:                                             ; preds = %1060
  %1064 = getelementptr i8, ptr %1061, i32 %751
  %1065 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1064) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1066 = zext i8 %1065 to i32
  br label %1069

1067:                                             ; preds = %1060
  %1068 = call i32 @nvif_object_rd(ptr noundef %1053, i32 noundef 1, i64 noundef %752) #7
  br label %1069

1069:                                             ; preds = %1067, %1063
  %1070 = phi i32 [ %1066, %1063 ], [ %1068, %1067 ]
  %1071 = trunc i32 %1070 to i8
  %1072 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 26
  store i8 %1071, ptr %1072, align 1
  %1073 = load ptr, ptr %6, align 4
  %1074 = getelementptr inbounds %struct.nouveau_drm, ptr %1073, i32 0, i32 2, i32 3
  %1075 = getelementptr inbounds %struct.nouveau_drm, ptr %1073, i32 0, i32 2, i32 3, i32 0, i32 6
  %1076 = load ptr, ptr %1075, align 8
  %1077 = icmp eq ptr %1076, null
  br i1 %1077, label %1080, label %1078, !prof !8

1078:                                             ; preds = %1069
  %1079 = getelementptr i8, ptr %1076, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1079, i8 37) #7, !srcloc !10
  br label %1081

1080:                                             ; preds = %1069
  call void @nvif_object_wr(ptr noundef %1074, i32 noundef 1, i64 noundef %750, i32 noundef 37) #7
  br label %1081

1081:                                             ; preds = %1080, %1078
  %1082 = load ptr, ptr %1075, align 8
  %1083 = icmp eq ptr %1082, null
  br i1 %1083, label %1088, label %1084, !prof !8

1084:                                             ; preds = %1081
  %1085 = getelementptr i8, ptr %1082, i32 %751
  %1086 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1085) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1087 = zext i8 %1086 to i32
  br label %1090

1088:                                             ; preds = %1081
  %1089 = call i32 @nvif_object_rd(ptr noundef %1074, i32 noundef 1, i64 noundef %752) #7
  br label %1090

1090:                                             ; preds = %1088, %1084
  %1091 = phi i32 [ %1087, %1084 ], [ %1089, %1088 ]
  %1092 = trunc i32 %1091 to i8
  %1093 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 37
  store i8 %1092, ptr %1093, align 1
  %1094 = load ptr, ptr %6, align 4
  %1095 = getelementptr inbounds %struct.nouveau_drm, ptr %1094, i32 0, i32 2, i32 3
  %1096 = getelementptr inbounds %struct.nouveau_drm, ptr %1094, i32 0, i32 2, i32 3, i32 0, i32 6
  %1097 = load ptr, ptr %1096, align 8
  %1098 = icmp eq ptr %1097, null
  br i1 %1098, label %1101, label %1099, !prof !8

1099:                                             ; preds = %1090
  %1100 = getelementptr i8, ptr %1097, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1100, i8 40) #7, !srcloc !10
  br label %1102

1101:                                             ; preds = %1090
  call void @nvif_object_wr(ptr noundef %1095, i32 noundef 1, i64 noundef %750, i32 noundef 40) #7
  br label %1102

1102:                                             ; preds = %1101, %1099
  %1103 = load ptr, ptr %1096, align 8
  %1104 = icmp eq ptr %1103, null
  br i1 %1104, label %1109, label %1105, !prof !8

1105:                                             ; preds = %1102
  %1106 = getelementptr i8, ptr %1103, i32 %751
  %1107 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1106) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1108 = zext i8 %1107 to i32
  br label %1111

1109:                                             ; preds = %1102
  %1110 = call i32 @nvif_object_rd(ptr noundef %1095, i32 noundef 1, i64 noundef %752) #7
  br label %1111

1111:                                             ; preds = %1109, %1105
  %1112 = phi i32 [ %1108, %1105 ], [ %1110, %1109 ]
  %1113 = trunc i32 %1112 to i8
  %1114 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 40
  store i8 %1113, ptr %1114, align 1
  %1115 = load ptr, ptr %6, align 4
  %1116 = getelementptr inbounds %struct.nouveau_drm, ptr %1115, i32 0, i32 2, i32 3
  %1117 = getelementptr inbounds %struct.nouveau_drm, ptr %1115, i32 0, i32 2, i32 3, i32 0, i32 6
  %1118 = load ptr, ptr %1117, align 8
  %1119 = icmp eq ptr %1118, null
  br i1 %1119, label %1122, label %1120, !prof !8

1120:                                             ; preds = %1111
  %1121 = getelementptr i8, ptr %1118, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1121, i8 45) #7, !srcloc !10
  br label %1123

1122:                                             ; preds = %1111
  call void @nvif_object_wr(ptr noundef %1116, i32 noundef 1, i64 noundef %750, i32 noundef 45) #7
  br label %1123

1123:                                             ; preds = %1122, %1120
  %1124 = load ptr, ptr %1117, align 8
  %1125 = icmp eq ptr %1124, null
  br i1 %1125, label %1130, label %1126, !prof !8

1126:                                             ; preds = %1123
  %1127 = getelementptr i8, ptr %1124, i32 %751
  %1128 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1127) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1129 = zext i8 %1128 to i32
  br label %1132

1130:                                             ; preds = %1123
  %1131 = call i32 @nvif_object_rd(ptr noundef %1116, i32 noundef 1, i64 noundef %752) #7
  br label %1132

1132:                                             ; preds = %1130, %1126
  %1133 = phi i32 [ %1129, %1126 ], [ %1131, %1130 ]
  %1134 = trunc i32 %1133 to i8
  %1135 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 45
  store i8 %1134, ptr %1135, align 1
  %1136 = load ptr, ptr %6, align 4
  %1137 = getelementptr inbounds %struct.nouveau_drm, ptr %1136, i32 0, i32 2, i32 3
  %1138 = getelementptr inbounds %struct.nouveau_drm, ptr %1136, i32 0, i32 2, i32 3, i32 0, i32 6
  %1139 = load ptr, ptr %1138, align 8
  %1140 = icmp eq ptr %1139, null
  br i1 %1140, label %1143, label %1141, !prof !8

1141:                                             ; preds = %1132
  %1142 = getelementptr i8, ptr %1139, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1142, i8 28) #7, !srcloc !10
  br label %1144

1143:                                             ; preds = %1132
  call void @nvif_object_wr(ptr noundef %1137, i32 noundef 1, i64 noundef %750, i32 noundef 28) #7
  br label %1144

1144:                                             ; preds = %1143, %1141
  %1145 = load ptr, ptr %1138, align 8
  %1146 = icmp eq ptr %1145, null
  br i1 %1146, label %1151, label %1147, !prof !8

1147:                                             ; preds = %1144
  %1148 = getelementptr i8, ptr %1145, i32 %751
  %1149 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1148) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1150 = zext i8 %1149 to i32
  br label %1153

1151:                                             ; preds = %1144
  %1152 = call i32 @nvif_object_rd(ptr noundef %1137, i32 noundef 1, i64 noundef %752) #7
  br label %1153

1153:                                             ; preds = %1151, %1147
  %1154 = phi i32 [ %1150, %1147 ], [ %1152, %1151 ]
  %1155 = trunc i32 %1154 to i8
  %1156 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 28
  store i8 %1155, ptr %1156, align 1
  %1157 = load ptr, ptr %6, align 4
  %1158 = getelementptr inbounds %struct.nouveau_drm, ptr %1157, i32 0, i32 2, i32 3
  %1159 = getelementptr inbounds %struct.nouveau_drm, ptr %1157, i32 0, i32 2, i32 3, i32 0, i32 6
  %1160 = load ptr, ptr %1159, align 8
  %1161 = icmp eq ptr %1160, null
  br i1 %1161, label %1164, label %1162, !prof !8

1162:                                             ; preds = %1153
  %1163 = getelementptr i8, ptr %1160, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1163, i8 27) #7, !srcloc !10
  br label %1165

1164:                                             ; preds = %1153
  call void @nvif_object_wr(ptr noundef %1158, i32 noundef 1, i64 noundef %750, i32 noundef 27) #7
  br label %1165

1165:                                             ; preds = %1164, %1162
  %1166 = load ptr, ptr %1159, align 8
  %1167 = icmp eq ptr %1166, null
  br i1 %1167, label %1172, label %1168, !prof !8

1168:                                             ; preds = %1165
  %1169 = getelementptr i8, ptr %1166, i32 %751
  %1170 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1169) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1171 = zext i8 %1170 to i32
  br label %1174

1172:                                             ; preds = %1165
  %1173 = call i32 @nvif_object_rd(ptr noundef %1158, i32 noundef 1, i64 noundef %752) #7
  br label %1174

1174:                                             ; preds = %1172, %1168
  %1175 = phi i32 [ %1171, %1168 ], [ %1173, %1172 ]
  %1176 = trunc i32 %1175 to i8
  %1177 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 27
  store i8 %1176, ptr %1177, align 1
  %1178 = load ptr, ptr %6, align 4
  %1179 = getelementptr inbounds %struct.nouveau_drm, ptr %1178, i32 0, i32 2, i32 3
  %1180 = getelementptr inbounds %struct.nouveau_drm, ptr %1178, i32 0, i32 2, i32 3, i32 0, i32 6
  %1181 = load ptr, ptr %1180, align 8
  %1182 = icmp eq ptr %1181, null
  br i1 %1182, label %1185, label %1183, !prof !8

1183:                                             ; preds = %1174
  %1184 = getelementptr i8, ptr %1181, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1184, i8 32) #7, !srcloc !10
  br label %1186

1185:                                             ; preds = %1174
  call void @nvif_object_wr(ptr noundef %1179, i32 noundef 1, i64 noundef %750, i32 noundef 32) #7
  br label %1186

1186:                                             ; preds = %1185, %1183
  %1187 = load ptr, ptr %1180, align 8
  %1188 = icmp eq ptr %1187, null
  br i1 %1188, label %1193, label %1189, !prof !8

1189:                                             ; preds = %1186
  %1190 = getelementptr i8, ptr %1187, i32 %751
  %1191 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1190) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1192 = zext i8 %1191 to i32
  br label %1195

1193:                                             ; preds = %1186
  %1194 = call i32 @nvif_object_rd(ptr noundef %1179, i32 noundef 1, i64 noundef %752) #7
  br label %1195

1195:                                             ; preds = %1193, %1189
  %1196 = phi i32 [ %1192, %1189 ], [ %1194, %1193 ]
  %1197 = trunc i32 %1196 to i8
  %1198 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 32
  store i8 %1197, ptr %1198, align 1
  %1199 = load ptr, ptr %6, align 4
  %1200 = getelementptr inbounds %struct.nouveau_drm, ptr %1199, i32 0, i32 2, i32 3
  %1201 = getelementptr inbounds %struct.nouveau_drm, ptr %1199, i32 0, i32 2, i32 3, i32 0, i32 6
  %1202 = load ptr, ptr %1201, align 8
  %1203 = icmp eq ptr %1202, null
  br i1 %1203, label %1206, label %1204, !prof !8

1204:                                             ; preds = %1195
  %1205 = getelementptr i8, ptr %1202, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1205, i8 33) #7, !srcloc !10
  br label %1207

1206:                                             ; preds = %1195
  call void @nvif_object_wr(ptr noundef %1200, i32 noundef 1, i64 noundef %750, i32 noundef 33) #7
  br label %1207

1207:                                             ; preds = %1206, %1204
  %1208 = load ptr, ptr %1201, align 8
  %1209 = icmp eq ptr %1208, null
  br i1 %1209, label %1214, label %1210, !prof !8

1210:                                             ; preds = %1207
  %1211 = getelementptr i8, ptr %1208, i32 %751
  %1212 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1211) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1213 = zext i8 %1212 to i32
  br label %1216

1214:                                             ; preds = %1207
  %1215 = call i32 @nvif_object_rd(ptr noundef %1200, i32 noundef 1, i64 noundef %752) #7
  br label %1216

1216:                                             ; preds = %1214, %1210
  %1217 = phi i32 [ %1213, %1210 ], [ %1215, %1214 ]
  %1218 = trunc i32 %1217 to i8
  %1219 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 33
  store i8 %1218, ptr %1219, align 1
  %1220 = getelementptr inbounds %struct.nouveau_drm, ptr %1010, i32 0, i32 2, i32 3, i32 1, i32 4
  %1221 = load i8, ptr %1220, align 1
  %1222 = icmp ugt i8 %1221, 2
  br i1 %1222, label %1223, label %1269

1223:                                             ; preds = %1216
  %1224 = load ptr, ptr %6, align 4
  %1225 = getelementptr inbounds %struct.nouveau_drm, ptr %1224, i32 0, i32 2, i32 3
  %1226 = getelementptr inbounds %struct.nouveau_drm, ptr %1224, i32 0, i32 2, i32 3, i32 0, i32 6
  %1227 = load ptr, ptr %1226, align 8
  %1228 = icmp eq ptr %1227, null
  br i1 %1228, label %1231, label %1229, !prof !8

1229:                                             ; preds = %1223
  %1230 = getelementptr i8, ptr %1227, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1230, i8 71) #7, !srcloc !10
  br label %1232

1231:                                             ; preds = %1223
  call void @nvif_object_wr(ptr noundef %1225, i32 noundef 1, i64 noundef %750, i32 noundef 71) #7
  br label %1232

1232:                                             ; preds = %1231, %1229
  %1233 = load ptr, ptr %1226, align 8
  %1234 = icmp eq ptr %1233, null
  br i1 %1234, label %1239, label %1235, !prof !8

1235:                                             ; preds = %1232
  %1236 = getelementptr i8, ptr %1233, i32 %751
  %1237 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1236) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1238 = zext i8 %1237 to i32
  br label %1241

1239:                                             ; preds = %1232
  %1240 = call i32 @nvif_object_rd(ptr noundef %1225, i32 noundef 1, i64 noundef %752) #7
  br label %1241

1241:                                             ; preds = %1239, %1235
  %1242 = phi i32 [ %1238, %1235 ], [ %1240, %1239 ]
  %1243 = trunc i32 %1242 to i8
  %1244 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 71
  store i8 %1243, ptr %1244, align 1
  %1245 = load i8, ptr %1220, align 1
  %1246 = icmp ugt i8 %1245, 3
  br i1 %1246, label %1247, label %1269

1247:                                             ; preds = %1241
  %1248 = load ptr, ptr %6, align 4
  %1249 = getelementptr inbounds %struct.nouveau_drm, ptr %1248, i32 0, i32 2, i32 3
  %1250 = getelementptr inbounds %struct.nouveau_drm, ptr %1248, i32 0, i32 2, i32 3, i32 0, i32 6
  %1251 = load ptr, ptr %1250, align 8
  %1252 = icmp eq ptr %1251, null
  br i1 %1252, label %1255, label %1253, !prof !8

1253:                                             ; preds = %1247
  %1254 = getelementptr i8, ptr %1251, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1254, i8 -97) #7, !srcloc !10
  br label %1256

1255:                                             ; preds = %1247
  call void @nvif_object_wr(ptr noundef %1249, i32 noundef 1, i64 noundef %750, i32 noundef 159) #7
  br label %1256

1256:                                             ; preds = %1255, %1253
  %1257 = load ptr, ptr %1250, align 8
  %1258 = icmp eq ptr %1257, null
  br i1 %1258, label %1263, label %1259, !prof !8

1259:                                             ; preds = %1256
  %1260 = getelementptr i8, ptr %1257, i32 %751
  %1261 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1260) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1262 = zext i8 %1261 to i32
  br label %1265

1263:                                             ; preds = %1256
  %1264 = call i32 @nvif_object_rd(ptr noundef %1249, i32 noundef 1, i64 noundef %752) #7
  br label %1265

1265:                                             ; preds = %1263, %1259
  %1266 = phi i32 [ %1262, %1259 ], [ %1264, %1263 ]
  %1267 = trunc i32 %1266 to i8
  %1268 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 159
  store i8 %1267, ptr %1268, align 1
  br label %1269

1269:                                             ; preds = %1265, %1241, %1216
  %1270 = load ptr, ptr %6, align 4
  %1271 = getelementptr inbounds %struct.nouveau_drm, ptr %1270, i32 0, i32 2, i32 3
  %1272 = getelementptr inbounds %struct.nouveau_drm, ptr %1270, i32 0, i32 2, i32 3, i32 0, i32 6
  %1273 = load ptr, ptr %1272, align 8
  %1274 = icmp eq ptr %1273, null
  br i1 %1274, label %1277, label %1275, !prof !8

1275:                                             ; preds = %1269
  %1276 = getelementptr i8, ptr %1273, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1276, i8 73) #7, !srcloc !10
  br label %1278

1277:                                             ; preds = %1269
  call void @nvif_object_wr(ptr noundef %1271, i32 noundef 1, i64 noundef %750, i32 noundef 73) #7
  br label %1278

1278:                                             ; preds = %1277, %1275
  %1279 = load ptr, ptr %1272, align 8
  %1280 = icmp eq ptr %1279, null
  br i1 %1280, label %1285, label %1281, !prof !8

1281:                                             ; preds = %1278
  %1282 = getelementptr i8, ptr %1279, i32 %751
  %1283 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1282) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1284 = zext i8 %1283 to i32
  br label %1287

1285:                                             ; preds = %1278
  %1286 = call i32 @nvif_object_rd(ptr noundef %1271, i32 noundef 1, i64 noundef %752) #7
  br label %1287

1287:                                             ; preds = %1285, %1281
  %1288 = phi i32 [ %1284, %1281 ], [ %1286, %1285 ]
  %1289 = trunc i32 %1288 to i8
  %1290 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 73
  store i8 %1289, ptr %1290, align 1
  %1291 = load ptr, ptr %6, align 4
  %1292 = getelementptr inbounds %struct.nouveau_drm, ptr %1291, i32 0, i32 2, i32 3
  %1293 = getelementptr inbounds %struct.nouveau_drm, ptr %1291, i32 0, i32 2, i32 3, i32 0, i32 6
  %1294 = load ptr, ptr %1293, align 8
  %1295 = icmp eq ptr %1294, null
  br i1 %1295, label %1298, label %1296, !prof !8

1296:                                             ; preds = %1287
  %1297 = getelementptr i8, ptr %1294, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1297, i8 48) #7, !srcloc !10
  br label %1299

1298:                                             ; preds = %1287
  call void @nvif_object_wr(ptr noundef %1292, i32 noundef 1, i64 noundef %750, i32 noundef 48) #7
  br label %1299

1299:                                             ; preds = %1298, %1296
  %1300 = load ptr, ptr %1293, align 8
  %1301 = icmp eq ptr %1300, null
  br i1 %1301, label %1306, label %1302, !prof !8

1302:                                             ; preds = %1299
  %1303 = getelementptr i8, ptr %1300, i32 %751
  %1304 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1303) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1305 = zext i8 %1304 to i32
  br label %1308

1306:                                             ; preds = %1299
  %1307 = call i32 @nvif_object_rd(ptr noundef %1292, i32 noundef 1, i64 noundef %752) #7
  br label %1308

1308:                                             ; preds = %1306, %1302
  %1309 = phi i32 [ %1305, %1302 ], [ %1307, %1306 ]
  %1310 = trunc i32 %1309 to i8
  %1311 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 48
  store i8 %1310, ptr %1311, align 1
  %1312 = load ptr, ptr %6, align 4
  %1313 = getelementptr inbounds %struct.nouveau_drm, ptr %1312, i32 0, i32 2, i32 3
  %1314 = getelementptr inbounds %struct.nouveau_drm, ptr %1312, i32 0, i32 2, i32 3, i32 0, i32 6
  %1315 = load ptr, ptr %1314, align 8
  %1316 = icmp eq ptr %1315, null
  br i1 %1316, label %1319, label %1317, !prof !8

1317:                                             ; preds = %1308
  %1318 = getelementptr i8, ptr %1315, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1318, i8 49) #7, !srcloc !10
  br label %1320

1319:                                             ; preds = %1308
  call void @nvif_object_wr(ptr noundef %1313, i32 noundef 1, i64 noundef %750, i32 noundef 49) #7
  br label %1320

1320:                                             ; preds = %1319, %1317
  %1321 = load ptr, ptr %1314, align 8
  %1322 = icmp eq ptr %1321, null
  br i1 %1322, label %1327, label %1323, !prof !8

1323:                                             ; preds = %1320
  %1324 = getelementptr i8, ptr %1321, i32 %751
  %1325 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1324) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1326 = zext i8 %1325 to i32
  br label %1329

1327:                                             ; preds = %1320
  %1328 = call i32 @nvif_object_rd(ptr noundef %1313, i32 noundef 1, i64 noundef %752) #7
  br label %1329

1329:                                             ; preds = %1327, %1323
  %1330 = phi i32 [ %1326, %1323 ], [ %1328, %1327 ]
  %1331 = trunc i32 %1330 to i8
  %1332 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 49
  store i8 %1331, ptr %1332, align 1
  %1333 = load ptr, ptr %6, align 4
  %1334 = getelementptr inbounds %struct.nouveau_drm, ptr %1333, i32 0, i32 2, i32 3
  %1335 = getelementptr inbounds %struct.nouveau_drm, ptr %1333, i32 0, i32 2, i32 3, i32 0, i32 6
  %1336 = load ptr, ptr %1335, align 8
  %1337 = icmp eq ptr %1336, null
  br i1 %1337, label %1340, label %1338, !prof !8

1338:                                             ; preds = %1329
  %1339 = getelementptr i8, ptr %1336, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1339, i8 47) #7, !srcloc !10
  br label %1341

1340:                                             ; preds = %1329
  call void @nvif_object_wr(ptr noundef %1334, i32 noundef 1, i64 noundef %750, i32 noundef 47) #7
  br label %1341

1341:                                             ; preds = %1340, %1338
  %1342 = load ptr, ptr %1335, align 8
  %1343 = icmp eq ptr %1342, null
  br i1 %1343, label %1348, label %1344, !prof !8

1344:                                             ; preds = %1341
  %1345 = getelementptr i8, ptr %1342, i32 %751
  %1346 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1345) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1347 = zext i8 %1346 to i32
  br label %1350

1348:                                             ; preds = %1341
  %1349 = call i32 @nvif_object_rd(ptr noundef %1334, i32 noundef 1, i64 noundef %752) #7
  br label %1350

1350:                                             ; preds = %1348, %1344
  %1351 = phi i32 [ %1347, %1344 ], [ %1349, %1348 ]
  %1352 = trunc i32 %1351 to i8
  %1353 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 47
  store i8 %1352, ptr %1353, align 1
  %1354 = load ptr, ptr %6, align 4
  %1355 = getelementptr inbounds %struct.nouveau_drm, ptr %1354, i32 0, i32 2, i32 3
  %1356 = getelementptr inbounds %struct.nouveau_drm, ptr %1354, i32 0, i32 2, i32 3, i32 0, i32 6
  %1357 = load ptr, ptr %1356, align 8
  %1358 = icmp eq ptr %1357, null
  br i1 %1358, label %1361, label %1359, !prof !8

1359:                                             ; preds = %1350
  %1360 = getelementptr i8, ptr %1357, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1360, i8 57) #7, !srcloc !10
  br label %1362

1361:                                             ; preds = %1350
  call void @nvif_object_wr(ptr noundef %1355, i32 noundef 1, i64 noundef %750, i32 noundef 57) #7
  br label %1362

1362:                                             ; preds = %1361, %1359
  %1363 = load ptr, ptr %1356, align 8
  %1364 = icmp eq ptr %1363, null
  br i1 %1364, label %1369, label %1365, !prof !8

1365:                                             ; preds = %1362
  %1366 = getelementptr i8, ptr %1363, i32 %751
  %1367 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1366) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1368 = zext i8 %1367 to i32
  br label %1371

1369:                                             ; preds = %1362
  %1370 = call i32 @nvif_object_rd(ptr noundef %1355, i32 noundef 1, i64 noundef %752) #7
  br label %1371

1371:                                             ; preds = %1369, %1365
  %1372 = phi i32 [ %1368, %1365 ], [ %1370, %1369 ]
  %1373 = trunc i32 %1372 to i8
  %1374 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 57
  store i8 %1373, ptr %1374, align 1
  %1375 = load i8, ptr %1220, align 1
  %1376 = icmp ugt i8 %1375, 1
  br i1 %1376, label %1377, label %1493

1377:                                             ; preds = %1371
  %1378 = load ptr, ptr %6, align 4
  %1379 = select i1 %97, i32 6293552, i32 6301744
  %1380 = getelementptr inbounds %struct.nouveau_drm, ptr %1378, i32 0, i32 2, i32 3, i32 0, i32 6
  %1381 = load ptr, ptr %1380, align 8
  %1382 = icmp eq ptr %1381, null
  br i1 %1382, label %1386, label %1383, !prof !8

1383:                                             ; preds = %1377
  %1384 = getelementptr i8, ptr %1381, i32 %1379
  %1385 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1384) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1390

1386:                                             ; preds = %1377
  %1387 = getelementptr inbounds %struct.nouveau_drm, ptr %1378, i32 0, i32 2, i32 3
  %1388 = zext i32 %1379 to i64
  %1389 = call i32 @nvif_object_rd(ptr noundef %1387, i32 noundef 4, i64 noundef %1388) #7
  br label %1390

1390:                                             ; preds = %1386, %1383
  %1391 = phi i32 [ %1385, %1383 ], [ %1389, %1386 ]
  %1392 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 11
  store i32 %1391, ptr %1392, align 4
  %1393 = load ptr, ptr %6, align 4
  %1394 = select i1 %97, i32 6293556, i32 6301748
  %1395 = getelementptr inbounds %struct.nouveau_drm, ptr %1393, i32 0, i32 2, i32 3, i32 0, i32 6
  %1396 = load ptr, ptr %1395, align 8
  %1397 = icmp eq ptr %1396, null
  br i1 %1397, label %1401, label %1398, !prof !8

1398:                                             ; preds = %1390
  %1399 = getelementptr i8, ptr %1396, i32 %1394
  %1400 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1399) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1405

1401:                                             ; preds = %1390
  %1402 = getelementptr inbounds %struct.nouveau_drm, ptr %1393, i32 0, i32 2, i32 3
  %1403 = zext i32 %1394 to i64
  %1404 = call i32 @nvif_object_rd(ptr noundef %1402, i32 noundef 4, i64 noundef %1403) #7
  br label %1405

1405:                                             ; preds = %1401, %1398
  %1406 = phi i32 [ %1400, %1398 ], [ %1404, %1401 ]
  %1407 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 12
  store i32 %1406, ptr %1407, align 4
  %1408 = load i8, ptr %1220, align 1
  %1409 = icmp ugt i8 %1408, 3
  br i1 %1409, label %1410, label %1444

1410:                                             ; preds = %1405
  %1411 = load ptr, ptr %6, align 4
  %1412 = select i1 %97, i32 6293532, i32 6301724
  %1413 = getelementptr inbounds %struct.nouveau_drm, ptr %1411, i32 0, i32 2, i32 3, i32 0, i32 6
  %1414 = load ptr, ptr %1413, align 8
  %1415 = icmp eq ptr %1414, null
  br i1 %1415, label %1419, label %1416, !prof !8

1416:                                             ; preds = %1410
  %1417 = getelementptr i8, ptr %1414, i32 %1412
  %1418 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1417) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1423

1419:                                             ; preds = %1410
  %1420 = getelementptr inbounds %struct.nouveau_drm, ptr %1411, i32 0, i32 2, i32 3
  %1421 = zext i32 %1412 to i64
  %1422 = call i32 @nvif_object_rd(ptr noundef %1420, i32 noundef 4, i64 noundef %1421) #7
  br label %1423

1423:                                             ; preds = %1419, %1416
  %1424 = phi i32 [ %1418, %1416 ], [ %1422, %1419 ]
  %1425 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 10
  store i32 %1424, ptr %1425, align 4
  %1426 = load i8, ptr %1220, align 1
  %1427 = icmp eq i8 %1426, 5
  br i1 %1427, label %1428, label %1444

1428:                                             ; preds = %1423
  %1429 = load ptr, ptr %6, align 4
  %1430 = select i1 %97, i32 6293584, i32 6301776
  %1431 = getelementptr inbounds %struct.nouveau_drm, ptr %1429, i32 0, i32 2, i32 3, i32 0, i32 6
  %1432 = load ptr, ptr %1431, align 8
  %1433 = icmp eq ptr %1432, null
  br i1 %1433, label %1437, label %1434, !prof !8

1434:                                             ; preds = %1428
  %1435 = getelementptr i8, ptr %1432, i32 %1430
  %1436 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1435) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1441

1437:                                             ; preds = %1428
  %1438 = getelementptr inbounds %struct.nouveau_drm, ptr %1429, i32 0, i32 2, i32 3
  %1439 = zext i32 %1430 to i64
  %1440 = call i32 @nvif_object_rd(ptr noundef %1438, i32 noundef 4, i64 noundef %1439) #7
  br label %1441

1441:                                             ; preds = %1437, %1434
  %1442 = phi i32 [ %1436, %1434 ], [ %1440, %1437 ]
  %1443 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 13
  store i32 %1442, ptr %1443, align 4
  br label %1444

1444:                                             ; preds = %1441, %1423, %1405
  %1445 = load ptr, ptr %6, align 4
  %1446 = load ptr, ptr %115, align 4
  %1447 = getelementptr i8, ptr %1446, i32 -102
  %1448 = load i16, ptr %1447, align 2
  %1449 = and i16 %1448, 4080
  %1450 = getelementptr inbounds %struct.nouveau_drm, ptr %1445, i32 0, i32 2, i32 3, i32 1, i32 4
  %1451 = load i8, ptr %1450, align 1
  %1452 = icmp ugt i8 %1451, 1
  %1453 = icmp ne i16 %1449, 256
  %1454 = select i1 %1452, i1 %1453, i1 false
  %1455 = icmp ne i16 %1449, 336
  %1456 = select i1 %1454, i1 %1455, i1 false
  %1457 = icmp ne i16 %1449, 416
  %1458 = select i1 %1456, i1 %1457, i1 false
  %1459 = icmp ne i16 %1449, 512
  %1460 = select i1 %1458, i1 %1459, i1 false
  br i1 %1460, label %1461, label %1477

1461:                                             ; preds = %1444
  %1462 = select i1 %97, i32 6293600, i32 6301792
  %1463 = getelementptr inbounds %struct.nouveau_drm, ptr %1445, i32 0, i32 2, i32 3, i32 0, i32 6
  %1464 = load ptr, ptr %1463, align 8
  %1465 = icmp eq ptr %1464, null
  br i1 %1465, label %1469, label %1466, !prof !8

1466:                                             ; preds = %1461
  %1467 = getelementptr i8, ptr %1464, i32 %1462
  %1468 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1467) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1473

1469:                                             ; preds = %1461
  %1470 = getelementptr inbounds %struct.nouveau_drm, ptr %1445, i32 0, i32 2, i32 3
  %1471 = zext i32 %1462 to i64
  %1472 = call i32 @nvif_object_rd(ptr noundef %1470, i32 noundef 4, i64 noundef %1471) #7
  br label %1473

1473:                                             ; preds = %1469, %1466
  %1474 = phi i32 [ %1468, %1466 ], [ %1472, %1469 ]
  %1475 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 14
  store i32 %1474, ptr %1475, align 4
  %1476 = load ptr, ptr %6, align 4
  br label %1477

1477:                                             ; preds = %1473, %1444
  %1478 = phi ptr [ %1476, %1473 ], [ %1445, %1444 ]
  %1479 = select i1 %97, i32 6293520, i32 6301712
  %1480 = getelementptr inbounds %struct.nouveau_drm, ptr %1478, i32 0, i32 2, i32 3, i32 0, i32 6
  %1481 = load ptr, ptr %1480, align 8
  %1482 = icmp eq ptr %1481, null
  br i1 %1482, label %1486, label %1483, !prof !8

1483:                                             ; preds = %1477
  %1484 = getelementptr i8, ptr %1481, i32 %1479
  %1485 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1484) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1490

1486:                                             ; preds = %1477
  %1487 = getelementptr inbounds %struct.nouveau_drm, ptr %1478, i32 0, i32 2, i32 3
  %1488 = zext i32 %1479 to i64
  %1489 = call i32 @nvif_object_rd(ptr noundef %1487, i32 noundef 4, i64 noundef %1488) #7
  br label %1490

1490:                                             ; preds = %1486, %1483
  %1491 = phi i32 [ %1485, %1483 ], [ %1489, %1486 ]
  %1492 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 9
  store i32 %1491, ptr %1492, align 4
  br label %1493

1493:                                             ; preds = %1490, %1371
  %1494 = load ptr, ptr %6, align 4
  %1495 = select i1 %97, i32 6293508, i32 6301700
  %1496 = getelementptr inbounds %struct.nouveau_drm, ptr %1494, i32 0, i32 2, i32 3, i32 0, i32 6
  %1497 = load ptr, ptr %1496, align 8
  %1498 = icmp eq ptr %1497, null
  br i1 %1498, label %1502, label %1499, !prof !8

1499:                                             ; preds = %1493
  %1500 = getelementptr i8, ptr %1497, i32 %1495
  %1501 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1500) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1506

1502:                                             ; preds = %1493
  %1503 = getelementptr inbounds %struct.nouveau_drm, ptr %1494, i32 0, i32 2, i32 3
  %1504 = zext i32 %1495 to i64
  %1505 = call i32 @nvif_object_rd(ptr noundef %1503, i32 noundef 4, i64 noundef %1504) #7
  br label %1506

1506:                                             ; preds = %1502, %1499
  %1507 = phi i32 [ %1501, %1499 ], [ %1505, %1502 ]
  %1508 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 8
  store i32 %1507, ptr %1508, align 4
  %1509 = load ptr, ptr %6, align 4
  %1510 = getelementptr inbounds %struct.nouveau_drm, ptr %1509, i32 0, i32 2, i32 3
  %1511 = getelementptr inbounds %struct.nouveau_drm, ptr %1509, i32 0, i32 2, i32 3, i32 0, i32 6
  %1512 = load ptr, ptr %1511, align 8
  %1513 = icmp eq ptr %1512, null
  br i1 %1513, label %1516, label %1514, !prof !8

1514:                                             ; preds = %1506
  %1515 = getelementptr i8, ptr %1512, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1515, i8 59) #7, !srcloc !10
  br label %1517

1516:                                             ; preds = %1506
  call void @nvif_object_wr(ptr noundef %1510, i32 noundef 1, i64 noundef %750, i32 noundef 59) #7
  br label %1517

1517:                                             ; preds = %1516, %1514
  %1518 = load ptr, ptr %1511, align 8
  %1519 = icmp eq ptr %1518, null
  br i1 %1519, label %1524, label %1520, !prof !8

1520:                                             ; preds = %1517
  %1521 = getelementptr i8, ptr %1518, i32 %751
  %1522 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1521) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1523 = zext i8 %1522 to i32
  br label %1526

1524:                                             ; preds = %1517
  %1525 = call i32 @nvif_object_rd(ptr noundef %1510, i32 noundef 1, i64 noundef %752) #7
  br label %1526

1526:                                             ; preds = %1524, %1520
  %1527 = phi i32 [ %1523, %1520 ], [ %1525, %1524 ]
  %1528 = trunc i32 %1527 to i8
  %1529 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 59
  store i8 %1528, ptr %1529, align 1
  %1530 = load ptr, ptr %6, align 4
  %1531 = getelementptr inbounds %struct.nouveau_drm, ptr %1530, i32 0, i32 2, i32 3
  %1532 = getelementptr inbounds %struct.nouveau_drm, ptr %1530, i32 0, i32 2, i32 3, i32 0, i32 6
  %1533 = load ptr, ptr %1532, align 8
  %1534 = icmp eq ptr %1533, null
  br i1 %1534, label %1537, label %1535, !prof !8

1535:                                             ; preds = %1526
  %1536 = getelementptr i8, ptr %1533, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1536, i8 60) #7, !srcloc !10
  br label %1538

1537:                                             ; preds = %1526
  call void @nvif_object_wr(ptr noundef %1531, i32 noundef 1, i64 noundef %750, i32 noundef 60) #7
  br label %1538

1538:                                             ; preds = %1537, %1535
  %1539 = load ptr, ptr %1532, align 8
  %1540 = icmp eq ptr %1539, null
  br i1 %1540, label %1545, label %1541, !prof !8

1541:                                             ; preds = %1538
  %1542 = getelementptr i8, ptr %1539, i32 %751
  %1543 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1542) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1544 = zext i8 %1543 to i32
  br label %1547

1545:                                             ; preds = %1538
  %1546 = call i32 @nvif_object_rd(ptr noundef %1531, i32 noundef 1, i64 noundef %752) #7
  br label %1547

1547:                                             ; preds = %1545, %1541
  %1548 = phi i32 [ %1544, %1541 ], [ %1546, %1545 ]
  %1549 = trunc i32 %1548 to i8
  %1550 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 60
  store i8 %1549, ptr %1550, align 1
  %1551 = load i8, ptr %1220, align 1
  %1552 = icmp ugt i8 %1551, 1
  br i1 %1552, label %1553, label %1638

1553:                                             ; preds = %1547
  %1554 = load ptr, ptr %6, align 4
  %1555 = getelementptr inbounds %struct.nouveau_drm, ptr %1554, i32 0, i32 2, i32 3
  %1556 = getelementptr inbounds %struct.nouveau_drm, ptr %1554, i32 0, i32 2, i32 3, i32 0, i32 6
  %1557 = load ptr, ptr %1556, align 8
  %1558 = icmp eq ptr %1557, null
  br i1 %1558, label %1561, label %1559, !prof !8

1559:                                             ; preds = %1553
  %1560 = getelementptr i8, ptr %1557, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1560, i8 65) #7, !srcloc !10
  br label %1562

1561:                                             ; preds = %1553
  call void @nvif_object_wr(ptr noundef %1555, i32 noundef 1, i64 noundef %750, i32 noundef 65) #7
  br label %1562

1562:                                             ; preds = %1561, %1559
  %1563 = load ptr, ptr %1556, align 8
  %1564 = icmp eq ptr %1563, null
  br i1 %1564, label %1569, label %1565, !prof !8

1565:                                             ; preds = %1562
  %1566 = getelementptr i8, ptr %1563, i32 %751
  %1567 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1566) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1568 = zext i8 %1567 to i32
  br label %1571

1569:                                             ; preds = %1562
  %1570 = call i32 @nvif_object_rd(ptr noundef %1555, i32 noundef 1, i64 noundef %752) #7
  br label %1571

1571:                                             ; preds = %1569, %1565
  %1572 = phi i32 [ %1568, %1565 ], [ %1570, %1569 ]
  %1573 = trunc i32 %1572 to i8
  %1574 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 65
  store i8 %1573, ptr %1574, align 1
  %1575 = load ptr, ptr %6, align 4
  %1576 = getelementptr inbounds %struct.nouveau_drm, ptr %1575, i32 0, i32 2, i32 3
  %1577 = getelementptr inbounds %struct.nouveau_drm, ptr %1575, i32 0, i32 2, i32 3, i32 0, i32 6
  %1578 = load ptr, ptr %1577, align 8
  %1579 = icmp eq ptr %1578, null
  br i1 %1579, label %1582, label %1580, !prof !8

1580:                                             ; preds = %1571
  %1581 = getelementptr i8, ptr %1578, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1581, i8 69) #7, !srcloc !10
  br label %1583

1582:                                             ; preds = %1571
  call void @nvif_object_wr(ptr noundef %1576, i32 noundef 1, i64 noundef %750, i32 noundef 69) #7
  br label %1583

1583:                                             ; preds = %1582, %1580
  %1584 = load ptr, ptr %1577, align 8
  %1585 = icmp eq ptr %1584, null
  br i1 %1585, label %1590, label %1586, !prof !8

1586:                                             ; preds = %1583
  %1587 = getelementptr i8, ptr %1584, i32 %751
  %1588 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1587) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1589 = zext i8 %1588 to i32
  br label %1592

1590:                                             ; preds = %1583
  %1591 = call i32 @nvif_object_rd(ptr noundef %1576, i32 noundef 1, i64 noundef %752) #7
  br label %1592

1592:                                             ; preds = %1590, %1586
  %1593 = phi i32 [ %1589, %1586 ], [ %1591, %1590 ]
  %1594 = trunc i32 %1593 to i8
  %1595 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 69
  store i8 %1594, ptr %1595, align 1
  %1596 = load ptr, ptr %6, align 4
  %1597 = getelementptr inbounds %struct.nouveau_drm, ptr %1596, i32 0, i32 2, i32 3
  %1598 = getelementptr inbounds %struct.nouveau_drm, ptr %1596, i32 0, i32 2, i32 3, i32 0, i32 6
  %1599 = load ptr, ptr %1598, align 8
  %1600 = icmp eq ptr %1599, null
  br i1 %1600, label %1603, label %1601, !prof !8

1601:                                             ; preds = %1592
  %1602 = getelementptr i8, ptr %1599, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1602, i8 75) #7, !srcloc !10
  br label %1604

1603:                                             ; preds = %1592
  call void @nvif_object_wr(ptr noundef %1597, i32 noundef 1, i64 noundef %750, i32 noundef 75) #7
  br label %1604

1604:                                             ; preds = %1603, %1601
  %1605 = load ptr, ptr %1598, align 8
  %1606 = icmp eq ptr %1605, null
  br i1 %1606, label %1611, label %1607, !prof !8

1607:                                             ; preds = %1604
  %1608 = getelementptr i8, ptr %1605, i32 %751
  %1609 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1608) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1610 = zext i8 %1609 to i32
  br label %1613

1611:                                             ; preds = %1604
  %1612 = call i32 @nvif_object_rd(ptr noundef %1597, i32 noundef 1, i64 noundef %752) #7
  br label %1613

1613:                                             ; preds = %1611, %1607
  %1614 = phi i32 [ %1610, %1607 ], [ %1612, %1611 ]
  %1615 = trunc i32 %1614 to i8
  %1616 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 75
  store i8 %1615, ptr %1616, align 1
  %1617 = load ptr, ptr %6, align 4
  %1618 = getelementptr inbounds %struct.nouveau_drm, ptr %1617, i32 0, i32 2, i32 3
  %1619 = getelementptr inbounds %struct.nouveau_drm, ptr %1617, i32 0, i32 2, i32 3, i32 0, i32 6
  %1620 = load ptr, ptr %1619, align 8
  %1621 = icmp eq ptr %1620, null
  br i1 %1621, label %1624, label %1622, !prof !8

1622:                                             ; preds = %1613
  %1623 = getelementptr i8, ptr %1620, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1623, i8 82) #7, !srcloc !10
  br label %1625

1624:                                             ; preds = %1613
  call void @nvif_object_wr(ptr noundef %1618, i32 noundef 1, i64 noundef %750, i32 noundef 82) #7
  br label %1625

1625:                                             ; preds = %1624, %1622
  %1626 = load ptr, ptr %1619, align 8
  %1627 = icmp eq ptr %1626, null
  br i1 %1627, label %1632, label %1628, !prof !8

1628:                                             ; preds = %1625
  %1629 = getelementptr i8, ptr %1626, i32 %751
  %1630 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1629) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1631 = zext i8 %1630 to i32
  br label %1634

1632:                                             ; preds = %1625
  %1633 = call i32 @nvif_object_rd(ptr noundef %1618, i32 noundef 1, i64 noundef %752) #7
  br label %1634

1634:                                             ; preds = %1632, %1628
  %1635 = phi i32 [ %1631, %1628 ], [ %1633, %1632 ]
  %1636 = trunc i32 %1635 to i8
  %1637 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 82
  store i8 %1636, ptr %1637, align 1
  br label %1638

1638:                                             ; preds = %1634, %1547
  %1639 = load ptr, ptr %6, align 4
  %1640 = load ptr, ptr %115, align 4
  %1641 = getelementptr i8, ptr %1640, i32 -102
  %1642 = load i16, ptr %1641, align 2
  %1643 = and i16 %1642, 4080
  %1644 = getelementptr inbounds %struct.nouveau_drm, ptr %1639, i32 0, i32 2, i32 3, i32 1, i32 4
  %1645 = load i8, ptr %1644, align 1
  %1646 = icmp ugt i8 %1645, 1
  %1647 = icmp ne i16 %1643, 256
  %1648 = select i1 %1646, i1 %1647, i1 false
  %1649 = icmp ne i16 %1643, 336
  %1650 = select i1 %1648, i1 %1649, i1 false
  %1651 = icmp ne i16 %1643, 416
  %1652 = select i1 %1650, i1 %1651, i1 false
  %1653 = icmp ne i16 %1643, 512
  %1654 = select i1 %1652, i1 %1653, i1 false
  %1655 = icmp ne i16 %1643, 272
  %1656 = select i1 %1654, i1 %1655, i1 false
  br i1 %1656, label %1657, label %1847

1657:                                             ; preds = %1638
  %1658 = getelementptr inbounds %struct.nouveau_drm, ptr %1639, i32 0, i32 2, i32 3
  %1659 = getelementptr inbounds %struct.nouveau_drm, ptr %1639, i32 0, i32 2, i32 3, i32 0, i32 6
  %1660 = load ptr, ptr %1659, align 8
  %1661 = icmp eq ptr %1660, null
  br i1 %1661, label %1664, label %1662, !prof !8

1662:                                             ; preds = %1657
  %1663 = getelementptr i8, ptr %1660, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1663, i8 66) #7, !srcloc !10
  br label %1665

1664:                                             ; preds = %1657
  call void @nvif_object_wr(ptr noundef %1658, i32 noundef 1, i64 noundef %750, i32 noundef 66) #7
  br label %1665

1665:                                             ; preds = %1664, %1662
  %1666 = load ptr, ptr %1659, align 8
  %1667 = icmp eq ptr %1666, null
  br i1 %1667, label %1672, label %1668, !prof !8

1668:                                             ; preds = %1665
  %1669 = getelementptr i8, ptr %1666, i32 %751
  %1670 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1669) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1671 = zext i8 %1670 to i32
  br label %1674

1672:                                             ; preds = %1665
  %1673 = call i32 @nvif_object_rd(ptr noundef %1658, i32 noundef 1, i64 noundef %752) #7
  br label %1674

1674:                                             ; preds = %1672, %1668
  %1675 = phi i32 [ %1671, %1668 ], [ %1673, %1672 ]
  %1676 = trunc i32 %1675 to i8
  %1677 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 66
  store i8 %1676, ptr %1677, align 1
  %1678 = load ptr, ptr %6, align 4
  %1679 = getelementptr inbounds %struct.nouveau_drm, ptr %1678, i32 0, i32 2, i32 3
  %1680 = getelementptr inbounds %struct.nouveau_drm, ptr %1678, i32 0, i32 2, i32 3, i32 0, i32 6
  %1681 = load ptr, ptr %1680, align 8
  %1682 = icmp eq ptr %1681, null
  br i1 %1682, label %1685, label %1683, !prof !8

1683:                                             ; preds = %1674
  %1684 = getelementptr i8, ptr %1681, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1684, i8 83) #7, !srcloc !10
  br label %1686

1685:                                             ; preds = %1674
  call void @nvif_object_wr(ptr noundef %1679, i32 noundef 1, i64 noundef %750, i32 noundef 83) #7
  br label %1686

1686:                                             ; preds = %1685, %1683
  %1687 = load ptr, ptr %1680, align 8
  %1688 = icmp eq ptr %1687, null
  br i1 %1688, label %1693, label %1689, !prof !8

1689:                                             ; preds = %1686
  %1690 = getelementptr i8, ptr %1687, i32 %751
  %1691 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1690) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1692 = zext i8 %1691 to i32
  br label %1695

1693:                                             ; preds = %1686
  %1694 = call i32 @nvif_object_rd(ptr noundef %1679, i32 noundef 1, i64 noundef %752) #7
  br label %1695

1695:                                             ; preds = %1693, %1689
  %1696 = phi i32 [ %1692, %1689 ], [ %1694, %1693 ]
  %1697 = trunc i32 %1696 to i8
  %1698 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 83
  store i8 %1697, ptr %1698, align 1
  %1699 = load ptr, ptr %6, align 4
  %1700 = getelementptr inbounds %struct.nouveau_drm, ptr %1699, i32 0, i32 2, i32 3
  %1701 = getelementptr inbounds %struct.nouveau_drm, ptr %1699, i32 0, i32 2, i32 3, i32 0, i32 6
  %1702 = load ptr, ptr %1701, align 8
  %1703 = icmp eq ptr %1702, null
  br i1 %1703, label %1706, label %1704, !prof !8

1704:                                             ; preds = %1695
  %1705 = getelementptr i8, ptr %1702, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1705, i8 84) #7, !srcloc !10
  br label %1707

1706:                                             ; preds = %1695
  call void @nvif_object_wr(ptr noundef %1700, i32 noundef 1, i64 noundef %750, i32 noundef 84) #7
  br label %1707

1707:                                             ; preds = %1706, %1704
  %1708 = load ptr, ptr %1701, align 8
  %1709 = icmp eq ptr %1708, null
  br i1 %1709, label %1714, label %1710, !prof !8

1710:                                             ; preds = %1707
  %1711 = getelementptr i8, ptr %1708, i32 %751
  %1712 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1711) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1713 = zext i8 %1712 to i32
  br label %1716

1714:                                             ; preds = %1707
  %1715 = call i32 @nvif_object_rd(ptr noundef %1700, i32 noundef 1, i64 noundef %752) #7
  br label %1716

1716:                                             ; preds = %1714, %1710
  %1717 = phi i32 [ %1713, %1710 ], [ %1715, %1714 ]
  %1718 = trunc i32 %1717 to i8
  %1719 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 84
  store i8 %1718, ptr %1719, align 1
  br label %1720

1720:                                             ; preds = %1755, %1716
  %1721 = phi i32 [ 0, %1716 ], [ %1759, %1755 ]
  %1722 = trunc i32 %1721 to i8
  %1723 = load ptr, ptr %6, align 4
  %1724 = getelementptr inbounds %struct.nouveau_drm, ptr %1723, i32 0, i32 2, i32 3
  %1725 = getelementptr inbounds %struct.nouveau_drm, ptr %1723, i32 0, i32 2, i32 3, i32 0, i32 6
  %1726 = load ptr, ptr %1725, align 8
  %1727 = icmp eq ptr %1726, null
  br i1 %1727, label %1730, label %1728, !prof !8

1728:                                             ; preds = %1720
  %1729 = getelementptr i8, ptr %1726, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1729, i8 87) #7, !srcloc !10
  br label %1731

1730:                                             ; preds = %1720
  call void @nvif_object_wr(ptr noundef %1724, i32 noundef 1, i64 noundef %750, i32 noundef 87) #7
  br label %1731

1731:                                             ; preds = %1730, %1728
  %1732 = load ptr, ptr %1725, align 8
  %1733 = icmp eq ptr %1732, null
  br i1 %1733, label %1736, label %1734, !prof !8

1734:                                             ; preds = %1731
  %1735 = getelementptr i8, ptr %1732, i32 %751
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1735, i8 %1722) #7, !srcloc !10
  br label %1737

1736:                                             ; preds = %1731
  call void @nvif_object_wr(ptr noundef %1724, i32 noundef 1, i64 noundef %752, i32 noundef %1721) #7
  br label %1737

1737:                                             ; preds = %1736, %1734
  %1738 = load ptr, ptr %6, align 4
  %1739 = getelementptr inbounds %struct.nouveau_drm, ptr %1738, i32 0, i32 2, i32 3
  %1740 = getelementptr inbounds %struct.nouveau_drm, ptr %1738, i32 0, i32 2, i32 3, i32 0, i32 6
  %1741 = load ptr, ptr %1740, align 8
  %1742 = icmp eq ptr %1741, null
  br i1 %1742, label %1745, label %1743, !prof !8

1743:                                             ; preds = %1737
  %1744 = getelementptr i8, ptr %1741, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1744, i8 88) #7, !srcloc !10
  br label %1746

1745:                                             ; preds = %1737
  call void @nvif_object_wr(ptr noundef %1739, i32 noundef 1, i64 noundef %750, i32 noundef 88) #7
  br label %1746

1746:                                             ; preds = %1745, %1743
  %1747 = load ptr, ptr %1740, align 8
  %1748 = icmp eq ptr %1747, null
  br i1 %1748, label %1753, label %1749, !prof !8

1749:                                             ; preds = %1746
  %1750 = getelementptr i8, ptr %1747, i32 %751
  %1751 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1750) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1752 = zext i8 %1751 to i32
  br label %1755

1753:                                             ; preds = %1746
  %1754 = call i32 @nvif_object_rd(ptr noundef %1739, i32 noundef 1, i64 noundef %752) #7
  br label %1755

1755:                                             ; preds = %1753, %1749
  %1756 = phi i32 [ %1752, %1749 ], [ %1754, %1753 ]
  %1757 = trunc i32 %1756 to i8
  %1758 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 2, i32 %1721
  store i8 %1757, ptr %1758, align 1
  %1759 = add nuw nsw i32 %1721, 1
  %1760 = icmp eq i32 %1759, 16
  br i1 %1760, label %1761, label %1720

1761:                                             ; preds = %1755
  %1762 = load ptr, ptr %6, align 4
  %1763 = getelementptr inbounds %struct.nouveau_drm, ptr %1762, i32 0, i32 2, i32 3
  %1764 = getelementptr inbounds %struct.nouveau_drm, ptr %1762, i32 0, i32 2, i32 3, i32 0, i32 6
  %1765 = load ptr, ptr %1764, align 8
  %1766 = icmp eq ptr %1765, null
  br i1 %1766, label %1769, label %1767, !prof !8

1767:                                             ; preds = %1761
  %1768 = getelementptr i8, ptr %1765, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1768, i8 89) #7, !srcloc !10
  br label %1770

1769:                                             ; preds = %1761
  call void @nvif_object_wr(ptr noundef %1763, i32 noundef 1, i64 noundef %750, i32 noundef 89) #7
  br label %1770

1770:                                             ; preds = %1769, %1767
  %1771 = load ptr, ptr %1764, align 8
  %1772 = icmp eq ptr %1771, null
  br i1 %1772, label %1777, label %1773, !prof !8

1773:                                             ; preds = %1770
  %1774 = getelementptr i8, ptr %1771, i32 %751
  %1775 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1774) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1776 = zext i8 %1775 to i32
  br label %1779

1777:                                             ; preds = %1770
  %1778 = call i32 @nvif_object_rd(ptr noundef %1763, i32 noundef 1, i64 noundef %752) #7
  br label %1779

1779:                                             ; preds = %1777, %1773
  %1780 = phi i32 [ %1776, %1773 ], [ %1778, %1777 ]
  %1781 = trunc i32 %1780 to i8
  %1782 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 89
  store i8 %1781, ptr %1782, align 1
  %1783 = load ptr, ptr %6, align 4
  %1784 = getelementptr inbounds %struct.nouveau_drm, ptr %1783, i32 0, i32 2, i32 3
  %1785 = getelementptr inbounds %struct.nouveau_drm, ptr %1783, i32 0, i32 2, i32 3, i32 0, i32 6
  %1786 = load ptr, ptr %1785, align 8
  %1787 = icmp eq ptr %1786, null
  br i1 %1787, label %1790, label %1788, !prof !8

1788:                                             ; preds = %1779
  %1789 = getelementptr i8, ptr %1786, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1789, i8 91) #7, !srcloc !10
  br label %1791

1790:                                             ; preds = %1779
  call void @nvif_object_wr(ptr noundef %1784, i32 noundef 1, i64 noundef %750, i32 noundef 91) #7
  br label %1791

1791:                                             ; preds = %1790, %1788
  %1792 = load ptr, ptr %1785, align 8
  %1793 = icmp eq ptr %1792, null
  br i1 %1793, label %1798, label %1794, !prof !8

1794:                                             ; preds = %1791
  %1795 = getelementptr i8, ptr %1792, i32 %751
  %1796 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1795) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1797 = zext i8 %1796 to i32
  br label %1800

1798:                                             ; preds = %1791
  %1799 = call i32 @nvif_object_rd(ptr noundef %1784, i32 noundef 1, i64 noundef %752) #7
  br label %1800

1800:                                             ; preds = %1798, %1794
  %1801 = phi i32 [ %1797, %1794 ], [ %1799, %1798 ]
  %1802 = trunc i32 %1801 to i8
  %1803 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 91
  store i8 %1802, ptr %1803, align 1
  %1804 = load ptr, ptr %6, align 4
  %1805 = getelementptr inbounds %struct.nouveau_drm, ptr %1804, i32 0, i32 2, i32 3
  %1806 = getelementptr inbounds %struct.nouveau_drm, ptr %1804, i32 0, i32 2, i32 3, i32 0, i32 6
  %1807 = load ptr, ptr %1806, align 8
  %1808 = icmp eq ptr %1807, null
  br i1 %1808, label %1811, label %1809, !prof !8

1809:                                             ; preds = %1800
  %1810 = getelementptr i8, ptr %1807, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1810, i8 -123) #7, !srcloc !10
  br label %1812

1811:                                             ; preds = %1800
  call void @nvif_object_wr(ptr noundef %1805, i32 noundef 1, i64 noundef %750, i32 noundef 133) #7
  br label %1812

1812:                                             ; preds = %1811, %1809
  %1813 = load ptr, ptr %1806, align 8
  %1814 = icmp eq ptr %1813, null
  br i1 %1814, label %1819, label %1815, !prof !8

1815:                                             ; preds = %1812
  %1816 = getelementptr i8, ptr %1813, i32 %751
  %1817 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1816) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1818 = zext i8 %1817 to i32
  br label %1821

1819:                                             ; preds = %1812
  %1820 = call i32 @nvif_object_rd(ptr noundef %1805, i32 noundef 1, i64 noundef %752) #7
  br label %1821

1821:                                             ; preds = %1819, %1815
  %1822 = phi i32 [ %1818, %1815 ], [ %1820, %1819 ]
  %1823 = trunc i32 %1822 to i8
  %1824 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 133
  store i8 %1823, ptr %1824, align 1
  %1825 = load ptr, ptr %6, align 4
  %1826 = getelementptr inbounds %struct.nouveau_drm, ptr %1825, i32 0, i32 2, i32 3
  %1827 = getelementptr inbounds %struct.nouveau_drm, ptr %1825, i32 0, i32 2, i32 3, i32 0, i32 6
  %1828 = load ptr, ptr %1827, align 8
  %1829 = icmp eq ptr %1828, null
  br i1 %1829, label %1832, label %1830, !prof !8

1830:                                             ; preds = %1821
  %1831 = getelementptr i8, ptr %1828, i32 %749
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1831, i8 -122) #7, !srcloc !10
  br label %1833

1832:                                             ; preds = %1821
  call void @nvif_object_wr(ptr noundef %1826, i32 noundef 1, i64 noundef %750, i32 noundef 134) #7
  br label %1833

1833:                                             ; preds = %1832, %1830
  %1834 = load ptr, ptr %1827, align 8
  %1835 = icmp eq ptr %1834, null
  br i1 %1835, label %1840, label %1836, !prof !8

1836:                                             ; preds = %1833
  %1837 = getelementptr i8, ptr %1834, i32 %751
  %1838 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1837) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1839 = zext i8 %1838 to i32
  br label %1842

1840:                                             ; preds = %1833
  %1841 = call i32 @nvif_object_rd(ptr noundef %1826, i32 noundef 1, i64 noundef %752) #7
  br label %1842

1842:                                             ; preds = %1840, %1836
  %1843 = phi i32 [ %1839, %1836 ], [ %1841, %1840 ]
  %1844 = trunc i32 %1843 to i8
  %1845 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 134
  store i8 %1844, ptr %1845, align 1
  %1846 = load ptr, ptr %6, align 4
  br label %1847

1847:                                             ; preds = %1842, %1638
  %1848 = phi ptr [ %1846, %1842 ], [ %1639, %1638 ]
  %1849 = select i1 %97, i32 6293504, i32 6301696
  %1850 = getelementptr inbounds %struct.nouveau_drm, ptr %1848, i32 0, i32 2, i32 3, i32 0, i32 6
  %1851 = load ptr, ptr %1850, align 8
  %1852 = icmp eq ptr %1851, null
  br i1 %1852, label %1856, label %1853, !prof !8

1853:                                             ; preds = %1847
  %1854 = getelementptr i8, ptr %1851, i32 %1849
  %1855 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1854) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1860

1856:                                             ; preds = %1847
  %1857 = getelementptr inbounds %struct.nouveau_drm, ptr %1848, i32 0, i32 2, i32 3
  %1858 = zext i32 %1849 to i64
  %1859 = call i32 @nvif_object_rd(ptr noundef %1857, i32 noundef 4, i64 noundef %1858) #7
  br label %1860

1860:                                             ; preds = %1856, %1853
  %1861 = phi i32 [ %1855, %1853 ], [ %1859, %1856 ]
  %1862 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 7
  store i32 %1861, ptr %1862, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_hw_load_state(ptr noundef readonly %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca %struct.nvif_timer_wait, align 8
  %5 = alloca %struct.nvif_timer_wait, align 8
  tail call fastcc void @NVVgaProtect(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true)
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.anon.182, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nvkm_device, ptr %11, i32 0, i32 43
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq i32 %1, 0
  %15 = select i1 %14, i32 6817032, i32 6817056
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 4
  %17 = load i8, ptr %16, align 1
  %18 = icmp ugt i8 %17, 1
  br i1 %18, label %19, label %31

19:                                               ; preds = %3
  %20 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = select i1 %14, i32 6816772, i32 6824964
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %19
  %27 = getelementptr i8, ptr %24, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %21) #7, !srcloc !17
  br label %31

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3
  %30 = zext i32 %22 to i64
  tail call void @nvif_object_wr(ptr noundef %29, i32 noundef 4, i64 noundef %30, i32 noundef %21) #7
  br label %31

31:                                               ; preds = %28, %26, %3
  %32 = getelementptr inbounds %struct.nvkm_clk, ptr %13, i32 0, i32 22
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 16
  %35 = tail call i32 %33(ptr noundef %13, i32 noundef %15, ptr noundef %34) #7
  %36 = getelementptr inbounds %struct.nv04_mode_state, ptr %2, i32 0, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.nouveau_drm, ptr %38, i32 0, i32 2, i32 3, i32 0, i32 6
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %44, label %42, !prof !8

42:                                               ; preds = %31
  %43 = getelementptr i8, ptr %40, i32 6817036
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %37) #7, !srcloc !17
  br label %46

44:                                               ; preds = %31
  %45 = getelementptr inbounds %struct.nouveau_drm, ptr %38, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %45, i32 noundef 4, i64 noundef 6817036, i32 noundef %37) #7
  br label %46

46:                                               ; preds = %44, %42
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr i8, ptr %49, i32 -102
  %51 = load i16, ptr %50, align 2
  %52 = and i16 %51, 4080
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3, i32 1, i32 4
  %54 = load i8, ptr %53, align 1
  %55 = icmp ugt i8 %54, 1
  %56 = icmp ne i16 %52, 256
  %57 = select i1 %55, i1 %56, i1 false
  %58 = icmp ne i16 %52, 336
  %59 = select i1 %57, i1 %58, i1 false
  %60 = icmp ne i16 %52, 416
  %61 = select i1 %59, i1 %60, i1 false
  %62 = icmp ne i16 %52, 512
  %63 = select i1 %61, i1 %62, i1 false
  br i1 %63, label %64, label %74

64:                                               ; preds = %46
  %65 = getelementptr inbounds %struct.nv04_mode_state, ptr %2, i32 0, i32 2
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3, i32 0, i32 6
  %68 = load ptr, ptr %67, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %72, label %70, !prof !8

70:                                               ; preds = %64
  %71 = getelementptr i8, ptr %68, i32 6817060
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %66) #7, !srcloc !17
  br label %74

72:                                               ; preds = %64
  %73 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %73, i32 noundef 4, i64 noundef 6817060, i32 noundef %66) #7
  br label %74

74:                                               ; preds = %72, %70, %46
  %75 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 3, i32 1, i32 2
  %76 = load i16, ptr %75, align 2
  %77 = icmp eq i16 %76, 17
  br i1 %77, label %78, label %91

78:                                               ; preds = %74
  %79 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 30
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %6, align 4
  %82 = select i1 %14, i32 6817064, i32 6825256
  %83 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 2, i32 3, i32 0, i32 6
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !8

86:                                               ; preds = %78
  %87 = getelementptr i8, ptr %84, i32 %82
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %80) #7, !srcloc !17
  br label %91

88:                                               ; preds = %78
  %89 = getelementptr inbounds %struct.nouveau_drm, ptr %81, i32 0, i32 2, i32 3
  %90 = zext i32 %82 to i64
  tail call void @nvif_object_wr(ptr noundef %89, i32 noundef 4, i64 noundef %90, i32 noundef %80) #7
  br label %91

91:                                               ; preds = %88, %86, %74
  %92 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 17
  %93 = load i32, ptr %92, align 4
  %94 = load ptr, ptr %6, align 4
  %95 = select i1 %14, i32 6817280, i32 6825472
  %96 = getelementptr inbounds %struct.nouveau_drm, ptr %94, i32 0, i32 2, i32 3, i32 0, i32 6
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, null
  br i1 %98, label %101, label %99, !prof !8

99:                                               ; preds = %91
  %100 = getelementptr i8, ptr %97, i32 %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %93) #7, !srcloc !17
  br label %104

101:                                              ; preds = %91
  %102 = getelementptr inbounds %struct.nouveau_drm, ptr %94, i32 0, i32 2, i32 3
  %103 = zext i32 %95 to i64
  tail call void @nvif_object_wr(ptr noundef %102, i32 noundef 4, i64 noundef %103, i32 noundef %93) #7
  br label %104

104:                                              ; preds = %101, %99
  %105 = load ptr, ptr %6, align 4
  %106 = load ptr, ptr %48, align 4
  %107 = getelementptr i8, ptr %106, i32 -102
  %108 = load i16, ptr %107, align 2
  %109 = and i16 %108, 4080
  %110 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 2, i32 3, i32 1, i32 4
  %111 = load i8, ptr %110, align 1
  %112 = icmp ugt i8 %111, 1
  %113 = icmp ne i16 %109, 256
  %114 = select i1 %112, i1 %113, i1 false
  %115 = icmp ne i16 %109, 336
  %116 = select i1 %114, i1 %115, i1 false
  %117 = icmp ne i16 %109, 416
  %118 = select i1 %116, i1 %117, i1 false
  %119 = icmp ne i16 %109, 512
  %120 = select i1 %118, i1 %119, i1 false
  %121 = icmp ne i16 %109, 272
  %122 = select i1 %120, i1 %121, i1 false
  br i1 %122, label %123, label %135

123:                                              ; preds = %104
  %124 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 18
  %125 = load i32, ptr %124, align 4
  %126 = select i1 %14, i32 6817328, i32 6825520
  %127 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 2, i32 3, i32 0, i32 6
  %128 = load ptr, ptr %127, align 8
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130, !prof !8

130:                                              ; preds = %123
  %131 = getelementptr i8, ptr %128, i32 %126
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %125) #7, !srcloc !17
  br label %135

132:                                              ; preds = %123
  %133 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 2, i32 3
  %134 = zext i32 %126 to i64
  tail call void @nvif_object_wr(ptr noundef %133, i32 noundef 4, i64 noundef %134, i32 noundef %125) #7
  br label %135

135:                                              ; preds = %132, %130, %104
  %136 = load i16, ptr %75, align 2
  %137 = icmp ugt i16 %136, 47
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 19
  %140 = load i32, ptr %139, align 4
  %141 = load ptr, ptr %6, align 4
  %142 = select i1 %14, i32 6817332, i32 6825524
  %143 = getelementptr inbounds %struct.nouveau_drm, ptr %141, i32 0, i32 2, i32 3, i32 0, i32 6
  %144 = load ptr, ptr %143, align 8
  %145 = icmp eq ptr %144, null
  br i1 %145, label %148, label %146, !prof !8

146:                                              ; preds = %138
  %147 = getelementptr i8, ptr %144, i32 %142
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %147, i32 %140) #7, !srcloc !17
  br label %151

148:                                              ; preds = %138
  %149 = getelementptr inbounds %struct.nouveau_drm, ptr %141, i32 0, i32 2, i32 3
  %150 = zext i32 %142 to i64
  tail call void @nvif_object_wr(ptr noundef %149, i32 noundef 4, i64 noundef %150, i32 noundef %140) #7
  br label %151

151:                                              ; preds = %148, %146, %135
  %152 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 20
  %153 = load i32, ptr %152, align 4
  %154 = load ptr, ptr %6, align 4
  %155 = select i1 %14, i32 6817536, i32 6825728
  %156 = getelementptr inbounds %struct.nouveau_drm, ptr %154, i32 0, i32 2, i32 3, i32 0, i32 6
  %157 = load ptr, ptr %156, align 8
  %158 = icmp eq ptr %157, null
  br i1 %158, label %161, label %159, !prof !8

159:                                              ; preds = %151
  %160 = getelementptr i8, ptr %157, i32 %155
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %160, i32 %153) #7, !srcloc !17
  br label %164

161:                                              ; preds = %151
  %162 = getelementptr inbounds %struct.nouveau_drm, ptr %154, i32 0, i32 2, i32 3
  %163 = zext i32 %155 to i64
  tail call void @nvif_object_wr(ptr noundef %162, i32 noundef 4, i64 noundef %163, i32 noundef %153) #7
  br label %164

164:                                              ; preds = %161, %159
  %165 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 21
  %166 = load i32, ptr %165, align 4
  %167 = load ptr, ptr %6, align 4
  %168 = select i1 %14, i32 6817568, i32 6825760
  %169 = getelementptr inbounds %struct.nouveau_drm, ptr %167, i32 0, i32 2, i32 3, i32 0, i32 6
  %170 = load ptr, ptr %169, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172, !prof !8

172:                                              ; preds = %164
  %173 = getelementptr i8, ptr %170, i32 %168
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %173, i32 %166) #7, !srcloc !17
  br label %177

174:                                              ; preds = %164
  %175 = getelementptr inbounds %struct.nouveau_drm, ptr %167, i32 0, i32 2, i32 3
  %176 = zext i32 %168 to i64
  tail call void @nvif_object_wr(ptr noundef %175, i32 noundef 4, i64 noundef %176, i32 noundef %166) #7
  br label %177

177:                                              ; preds = %174, %172
  %178 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 22
  %179 = load i32, ptr %178, align 4
  %180 = load ptr, ptr %6, align 4
  %181 = select i1 %14, i32 6817572, i32 6825764
  %182 = getelementptr inbounds %struct.nouveau_drm, ptr %180, i32 0, i32 2, i32 3, i32 0, i32 6
  %183 = load ptr, ptr %182, align 8
  %184 = icmp eq ptr %183, null
  br i1 %184, label %187, label %185, !prof !8

185:                                              ; preds = %177
  %186 = getelementptr i8, ptr %183, i32 %181
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %179) #7, !srcloc !17
  br label %190

187:                                              ; preds = %177
  %188 = getelementptr inbounds %struct.nouveau_drm, ptr %180, i32 0, i32 2, i32 3
  %189 = zext i32 %181 to i64
  tail call void @nvif_object_wr(ptr noundef %188, i32 noundef 4, i64 noundef %189, i32 noundef %179) #7
  br label %190

190:                                              ; preds = %187, %185
  %191 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 23
  %192 = load i32, ptr %191, align 4
  %193 = load ptr, ptr %6, align 4
  %194 = select i1 %14, i32 6817576, i32 6825768
  %195 = getelementptr inbounds %struct.nouveau_drm, ptr %193, i32 0, i32 2, i32 3, i32 0, i32 6
  %196 = load ptr, ptr %195, align 8
  %197 = icmp eq ptr %196, null
  br i1 %197, label %200, label %198, !prof !8

198:                                              ; preds = %190
  %199 = getelementptr i8, ptr %196, i32 %194
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %192) #7, !srcloc !17
  br label %203

200:                                              ; preds = %190
  %201 = getelementptr inbounds %struct.nouveau_drm, ptr %193, i32 0, i32 2, i32 3
  %202 = zext i32 %194 to i64
  tail call void @nvif_object_wr(ptr noundef %201, i32 noundef 4, i64 noundef %202, i32 noundef %192) #7
  br label %203

203:                                              ; preds = %200, %198
  %204 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 24
  %205 = load i32, ptr %204, align 4
  %206 = load ptr, ptr %6, align 4
  %207 = select i1 %14, i32 6817580, i32 6825772
  %208 = getelementptr inbounds %struct.nouveau_drm, ptr %206, i32 0, i32 2, i32 3, i32 0, i32 6
  %209 = load ptr, ptr %208, align 8
  %210 = icmp eq ptr %209, null
  br i1 %210, label %213, label %211, !prof !8

211:                                              ; preds = %203
  %212 = getelementptr i8, ptr %209, i32 %207
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %212, i32 %205) #7, !srcloc !17
  br label %216

213:                                              ; preds = %203
  %214 = getelementptr inbounds %struct.nouveau_drm, ptr %206, i32 0, i32 2, i32 3
  %215 = zext i32 %207 to i64
  tail call void @nvif_object_wr(ptr noundef %214, i32 noundef 4, i64 noundef %215, i32 noundef %205) #7
  br label %216

216:                                              ; preds = %213, %211
  %217 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 25
  %218 = load i32, ptr %217, align 4
  %219 = load ptr, ptr %6, align 4
  %220 = select i1 %14, i32 6817584, i32 6825776
  %221 = getelementptr inbounds %struct.nouveau_drm, ptr %219, i32 0, i32 2, i32 3, i32 0, i32 6
  %222 = load ptr, ptr %221, align 8
  %223 = icmp eq ptr %222, null
  br i1 %223, label %226, label %224, !prof !8

224:                                              ; preds = %216
  %225 = getelementptr i8, ptr %222, i32 %220
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %225, i32 %218) #7, !srcloc !17
  br label %229

226:                                              ; preds = %216
  %227 = getelementptr inbounds %struct.nouveau_drm, ptr %219, i32 0, i32 2, i32 3
  %228 = zext i32 %220 to i64
  tail call void @nvif_object_wr(ptr noundef %227, i32 noundef 4, i64 noundef %228, i32 noundef %218) #7
  br label %229

229:                                              ; preds = %226, %224
  %230 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 26
  %231 = load i32, ptr %230, align 4
  %232 = load ptr, ptr %6, align 4
  %233 = select i1 %14, i32 6817588, i32 6825780
  %234 = getelementptr inbounds %struct.nouveau_drm, ptr %232, i32 0, i32 2, i32 3, i32 0, i32 6
  %235 = load ptr, ptr %234, align 8
  %236 = icmp eq ptr %235, null
  br i1 %236, label %239, label %237, !prof !8

237:                                              ; preds = %229
  %238 = getelementptr i8, ptr %235, i32 %233
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %238, i32 %231) #7, !srcloc !17
  br label %242

239:                                              ; preds = %229
  %240 = getelementptr inbounds %struct.nouveau_drm, ptr %232, i32 0, i32 2, i32 3
  %241 = zext i32 %233 to i64
  tail call void @nvif_object_wr(ptr noundef %240, i32 noundef 4, i64 noundef %241, i32 noundef %231) #7
  br label %242

242:                                              ; preds = %239, %237
  %243 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 27
  %244 = load i32, ptr %243, align 4
  %245 = load ptr, ptr %6, align 4
  %246 = select i1 %14, i32 6817592, i32 6825784
  %247 = getelementptr inbounds %struct.nouveau_drm, ptr %245, i32 0, i32 2, i32 3, i32 0, i32 6
  %248 = load ptr, ptr %247, align 8
  %249 = icmp eq ptr %248, null
  br i1 %249, label %252, label %250, !prof !8

250:                                              ; preds = %242
  %251 = getelementptr i8, ptr %248, i32 %246
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %251, i32 %244) #7, !srcloc !17
  br label %255

252:                                              ; preds = %242
  %253 = getelementptr inbounds %struct.nouveau_drm, ptr %245, i32 0, i32 2, i32 3
  %254 = zext i32 %246 to i64
  tail call void @nvif_object_wr(ptr noundef %253, i32 noundef 4, i64 noundef %254, i32 noundef %244) #7
  br label %255

255:                                              ; preds = %252, %250
  %256 = select i1 %14, i32 6817792, i32 6825984
  %257 = select i1 %14, i32 6817824, i32 6826016
  br label %258

258:                                              ; preds = %286, %255
  %259 = phi i32 [ 0, %255 ], [ %287, %286 ]
  %260 = shl i32 %259, 2
  %261 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 29, i32 %259
  %262 = load i32, ptr %261, align 4
  %263 = load ptr, ptr %6, align 4
  %264 = add nuw nsw i32 %260, %256
  %265 = getelementptr inbounds %struct.nouveau_drm, ptr %263, i32 0, i32 2, i32 3, i32 0, i32 6
  %266 = load ptr, ptr %265, align 8
  %267 = icmp eq ptr %266, null
  br i1 %267, label %270, label %268, !prof !8

268:                                              ; preds = %258
  %269 = getelementptr i8, ptr %266, i32 %264
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %269, i32 %262) #7, !srcloc !17
  br label %273

270:                                              ; preds = %258
  %271 = getelementptr inbounds %struct.nouveau_drm, ptr %263, i32 0, i32 2, i32 3
  %272 = zext i32 %264 to i64
  tail call void @nvif_object_wr(ptr noundef %271, i32 noundef 4, i64 noundef %272, i32 noundef %262) #7
  br label %273

273:                                              ; preds = %270, %268
  %274 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 28, i32 %259
  %275 = load i32, ptr %274, align 4
  %276 = load ptr, ptr %6, align 4
  %277 = add nuw nsw i32 %260, %257
  %278 = getelementptr inbounds %struct.nouveau_drm, ptr %276, i32 0, i32 2, i32 3, i32 0, i32 6
  %279 = load ptr, ptr %278, align 8
  %280 = icmp eq ptr %279, null
  br i1 %280, label %283, label %281, !prof !8

281:                                              ; preds = %273
  %282 = getelementptr i8, ptr %279, i32 %277
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %282, i32 %275) #7, !srcloc !17
  br label %286

283:                                              ; preds = %273
  %284 = getelementptr inbounds %struct.nouveau_drm, ptr %276, i32 0, i32 2, i32 3
  %285 = zext i32 %277 to i64
  tail call void @nvif_object_wr(ptr noundef %284, i32 noundef 4, i64 noundef %285, i32 noundef %275) #7
  br label %286

286:                                              ; preds = %283, %281
  %287 = add nuw nsw i32 %259, 1
  %288 = icmp eq i32 %287, 7
  br i1 %288, label %289, label %258

289:                                              ; preds = %286
  %290 = load ptr, ptr %6, align 4
  %291 = load ptr, ptr %48, align 4
  %292 = getelementptr i8, ptr %291, i32 -102
  %293 = load i16, ptr %292, align 2
  %294 = and i16 %293, 4080
  %295 = getelementptr inbounds %struct.nouveau_drm, ptr %290, i32 0, i32 2, i32 3, i32 1, i32 4
  %296 = load i8, ptr %295, align 1
  %297 = icmp ugt i8 %296, 1
  %298 = icmp ne i16 %294, 256
  %299 = select i1 %297, i1 %298, i1 false
  %300 = icmp ne i16 %294, 336
  %301 = select i1 %299, i1 %300, i1 false
  %302 = icmp ne i16 %294, 416
  %303 = select i1 %301, i1 %302, i1 false
  %304 = icmp ne i16 %294, 512
  %305 = select i1 %303, i1 %304, i1 false
  %306 = icmp ne i16 %294, 272
  %307 = select i1 %305, i1 %306, i1 false
  br i1 %307, label %308, label %400

308:                                              ; preds = %289
  %309 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 30
  %310 = load i32, ptr %309, align 4
  %311 = select i1 %14, i32 6817852, i32 6826044
  %312 = getelementptr inbounds %struct.nouveau_drm, ptr %290, i32 0, i32 2, i32 3, i32 0, i32 6
  %313 = load ptr, ptr %312, align 8
  %314 = icmp eq ptr %313, null
  br i1 %314, label %317, label %315, !prof !8

315:                                              ; preds = %308
  %316 = getelementptr i8, ptr %313, i32 %311
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %316, i32 %310) #7, !srcloc !17
  br label %320

317:                                              ; preds = %308
  %318 = getelementptr inbounds %struct.nouveau_drm, ptr %290, i32 0, i32 2, i32 3
  %319 = zext i32 %311 to i64
  tail call void @nvif_object_wr(ptr noundef %318, i32 noundef 4, i64 noundef %319, i32 noundef %310) #7
  br label %320

320:                                              ; preds = %317, %315
  %321 = select i1 %14, i32 6817872, i32 6826064
  %322 = select i1 %14, i32 6817884, i32 6826076
  %323 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 0
  %324 = load i32, ptr %323, align 4
  %325 = load ptr, ptr %6, align 4
  %326 = getelementptr inbounds %struct.nouveau_drm, ptr %325, i32 0, i32 2, i32 3, i32 0, i32 6
  %327 = load ptr, ptr %326, align 8
  %328 = icmp eq ptr %327, null
  br i1 %328, label %331, label %329, !prof !8

329:                                              ; preds = %320
  %330 = getelementptr i8, ptr %327, i32 %321
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %330, i32 %324) #7, !srcloc !17
  br label %334

331:                                              ; preds = %320
  %332 = getelementptr inbounds %struct.nouveau_drm, ptr %325, i32 0, i32 2, i32 3
  %333 = zext i32 %321 to i64
  tail call void @nvif_object_wr(ptr noundef %332, i32 noundef 4, i64 noundef %333, i32 noundef %324) #7
  br label %334

334:                                              ; preds = %331, %329
  %335 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 3
  %336 = load i32, ptr %335, align 4
  %337 = load ptr, ptr %6, align 4
  %338 = getelementptr inbounds %struct.nouveau_drm, ptr %337, i32 0, i32 2, i32 3, i32 0, i32 6
  %339 = load ptr, ptr %338, align 8
  %340 = icmp eq ptr %339, null
  br i1 %340, label %343, label %341, !prof !8

341:                                              ; preds = %334
  %342 = getelementptr i8, ptr %339, i32 %322
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %342, i32 %336) #7, !srcloc !17
  br label %346

343:                                              ; preds = %334
  %344 = getelementptr inbounds %struct.nouveau_drm, ptr %337, i32 0, i32 2, i32 3
  %345 = zext i32 %322 to i64
  tail call void @nvif_object_wr(ptr noundef %344, i32 noundef 4, i64 noundef %345, i32 noundef %336) #7
  br label %346

346:                                              ; preds = %343, %341
  %347 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 1
  %348 = load i32, ptr %347, align 4
  %349 = load ptr, ptr %6, align 4
  %350 = or i32 %321, 4
  %351 = getelementptr inbounds %struct.nouveau_drm, ptr %349, i32 0, i32 2, i32 3, i32 0, i32 6
  %352 = load ptr, ptr %351, align 8
  %353 = icmp eq ptr %352, null
  br i1 %353, label %356, label %354, !prof !8

354:                                              ; preds = %346
  %355 = getelementptr i8, ptr %352, i32 %350
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %355, i32 %348) #7, !srcloc !17
  br label %359

356:                                              ; preds = %346
  %357 = getelementptr inbounds %struct.nouveau_drm, ptr %349, i32 0, i32 2, i32 3
  %358 = zext i32 %350 to i64
  tail call void @nvif_object_wr(ptr noundef %357, i32 noundef 4, i64 noundef %358, i32 noundef %348) #7
  br label %359

359:                                              ; preds = %356, %354
  %360 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 4
  %361 = load i32, ptr %360, align 4
  %362 = load ptr, ptr %6, align 4
  %363 = add nuw nsw i32 %322, 4
  %364 = getelementptr inbounds %struct.nouveau_drm, ptr %362, i32 0, i32 2, i32 3, i32 0, i32 6
  %365 = load ptr, ptr %364, align 8
  %366 = icmp eq ptr %365, null
  br i1 %366, label %369, label %367, !prof !8

367:                                              ; preds = %359
  %368 = getelementptr i8, ptr %365, i32 %363
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %368, i32 %361) #7, !srcloc !17
  br label %372

369:                                              ; preds = %359
  %370 = getelementptr inbounds %struct.nouveau_drm, ptr %362, i32 0, i32 2, i32 3
  %371 = zext i32 %363 to i64
  tail call void @nvif_object_wr(ptr noundef %370, i32 noundef 4, i64 noundef %371, i32 noundef %361) #7
  br label %372

372:                                              ; preds = %369, %367
  %373 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 2
  %374 = load i32, ptr %373, align 4
  %375 = load ptr, ptr %6, align 4
  %376 = or i32 %321, 8
  %377 = getelementptr inbounds %struct.nouveau_drm, ptr %375, i32 0, i32 2, i32 3, i32 0, i32 6
  %378 = load ptr, ptr %377, align 8
  %379 = icmp eq ptr %378, null
  br i1 %379, label %382, label %380, !prof !8

380:                                              ; preds = %372
  %381 = getelementptr i8, ptr %378, i32 %376
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %381, i32 %374) #7, !srcloc !17
  br label %385

382:                                              ; preds = %372
  %383 = getelementptr inbounds %struct.nouveau_drm, ptr %375, i32 0, i32 2, i32 3
  %384 = zext i32 %376 to i64
  tail call void @nvif_object_wr(ptr noundef %383, i32 noundef 4, i64 noundef %384, i32 noundef %374) #7
  br label %385

385:                                              ; preds = %382, %380
  %386 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 32, i32 5
  %387 = load i32, ptr %386, align 4
  %388 = load ptr, ptr %6, align 4
  %389 = add nuw nsw i32 %322, 8
  %390 = getelementptr inbounds %struct.nouveau_drm, ptr %388, i32 0, i32 2, i32 3, i32 0, i32 6
  %391 = load ptr, ptr %390, align 8
  %392 = icmp eq ptr %391, null
  br i1 %392, label %395, label %393, !prof !8

393:                                              ; preds = %385
  %394 = getelementptr i8, ptr %391, i32 %389
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %394, i32 %387) #7, !srcloc !17
  br label %398

395:                                              ; preds = %385
  %396 = getelementptr inbounds %struct.nouveau_drm, ptr %388, i32 0, i32 2, i32 3
  %397 = zext i32 %389 to i64
  tail call void @nvif_object_wr(ptr noundef %396, i32 noundef 4, i64 noundef %397, i32 noundef %387) #7
  br label %398

398:                                              ; preds = %395, %393
  %399 = load ptr, ptr %6, align 4
  br label %400

400:                                              ; preds = %398, %289
  %401 = phi ptr [ %399, %398 ], [ %290, %289 ]
  %402 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 31
  %403 = load i32, ptr %402, align 4
  %404 = select i1 %14, i32 6817864, i32 6826056
  %405 = getelementptr inbounds %struct.nouveau_drm, ptr %401, i32 0, i32 2, i32 3, i32 0, i32 6
  %406 = load ptr, ptr %405, align 8
  %407 = icmp eq ptr %406, null
  br i1 %407, label %410, label %408, !prof !8

408:                                              ; preds = %400
  %409 = getelementptr i8, ptr %406, i32 %404
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %409, i32 %403) #7, !srcloc !17
  br label %413

410:                                              ; preds = %400
  %411 = getelementptr inbounds %struct.nouveau_drm, ptr %401, i32 0, i32 2, i32 3
  %412 = zext i32 %404 to i64
  tail call void @nvif_object_wr(ptr noundef %411, i32 noundef 4, i64 noundef %412, i32 noundef %403) #7
  br label %413

413:                                              ; preds = %410, %408
  %414 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 33
  %415 = load i32, ptr %414, align 4
  %416 = load ptr, ptr %6, align 4
  %417 = select i1 %14, i32 6817920, i32 6826112
  %418 = getelementptr inbounds %struct.nouveau_drm, ptr %416, i32 0, i32 2, i32 3, i32 0, i32 6
  %419 = load ptr, ptr %418, align 8
  %420 = icmp eq ptr %419, null
  br i1 %420, label %423, label %421, !prof !8

421:                                              ; preds = %413
  %422 = getelementptr i8, ptr %419, i32 %417
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %422, i32 %415) #7, !srcloc !17
  br label %426

423:                                              ; preds = %413
  %424 = getelementptr inbounds %struct.nouveau_drm, ptr %416, i32 0, i32 2, i32 3
  %425 = zext i32 %417 to i64
  tail call void @nvif_object_wr(ptr noundef %424, i32 noundef 4, i64 noundef %425, i32 noundef %415) #7
  br label %426

426:                                              ; preds = %423, %421
  %427 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 34
  %428 = load i32, ptr %427, align 4
  %429 = load ptr, ptr %6, align 4
  %430 = select i1 %14, i32 6817924, i32 6826116
  %431 = getelementptr inbounds %struct.nouveau_drm, ptr %429, i32 0, i32 2, i32 3, i32 0, i32 6
  %432 = load ptr, ptr %431, align 8
  %433 = icmp eq ptr %432, null
  br i1 %433, label %436, label %434, !prof !8

434:                                              ; preds = %426
  %435 = getelementptr i8, ptr %432, i32 %430
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %435, i32 %428) #7, !srcloc !17
  br label %439

436:                                              ; preds = %426
  %437 = getelementptr inbounds %struct.nouveau_drm, ptr %429, i32 0, i32 2, i32 3
  %438 = zext i32 %430 to i64
  tail call void @nvif_object_wr(ptr noundef %437, i32 noundef 4, i64 noundef %438, i32 noundef %428) #7
  br label %439

439:                                              ; preds = %436, %434
  %440 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 35
  %441 = load i32, ptr %440, align 4
  %442 = load ptr, ptr %6, align 4
  %443 = select i1 %14, i32 6817928, i32 6826120
  %444 = getelementptr inbounds %struct.nouveau_drm, ptr %442, i32 0, i32 2, i32 3, i32 0, i32 6
  %445 = load ptr, ptr %444, align 8
  %446 = icmp eq ptr %445, null
  br i1 %446, label %449, label %447, !prof !8

447:                                              ; preds = %439
  %448 = getelementptr i8, ptr %445, i32 %443
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %448, i32 %441) #7, !srcloc !17
  br label %452

449:                                              ; preds = %439
  %450 = getelementptr inbounds %struct.nouveau_drm, ptr %442, i32 0, i32 2, i32 3
  %451 = zext i32 %443 to i64
  tail call void @nvif_object_wr(ptr noundef %450, i32 noundef 4, i64 noundef %451, i32 noundef %441) #7
  br label %452

452:                                              ; preds = %449, %447
  %453 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 36
  %454 = load i32, ptr %453, align 4
  %455 = load ptr, ptr %6, align 4
  %456 = select i1 %14, i32 6817868, i32 6826060
  %457 = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 3, i32 0, i32 6
  %458 = load ptr, ptr %457, align 8
  %459 = icmp eq ptr %458, null
  br i1 %459, label %462, label %460, !prof !8

460:                                              ; preds = %452
  %461 = getelementptr i8, ptr %458, i32 %456
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %461, i32 %454) #7, !srcloc !17
  br label %465

462:                                              ; preds = %452
  %463 = getelementptr inbounds %struct.nouveau_drm, ptr %455, i32 0, i32 2, i32 3
  %464 = zext i32 %456 to i64
  tail call void @nvif_object_wr(ptr noundef %463, i32 noundef 4, i64 noundef %464, i32 noundef %454) #7
  br label %465

465:                                              ; preds = %462, %460
  %466 = load ptr, ptr %6, align 4
  %467 = load ptr, ptr %48, align 4
  %468 = getelementptr i8, ptr %467, i32 -102
  %469 = load i16, ptr %468, align 2
  %470 = and i16 %469, 4080
  %471 = getelementptr inbounds %struct.nouveau_drm, ptr %466, i32 0, i32 2, i32 3, i32 1, i32 4
  %472 = load i8, ptr %471, align 1
  %473 = icmp ugt i8 %472, 1
  %474 = icmp ne i16 %470, 256
  %475 = select i1 %473, i1 %474, i1 false
  %476 = icmp ne i16 %470, 336
  %477 = select i1 %475, i1 %476, i1 false
  %478 = icmp ne i16 %470, 416
  %479 = select i1 %477, i1 %478, i1 false
  %480 = icmp ne i16 %470, 512
  %481 = select i1 %479, i1 %480, i1 false
  %482 = icmp ne i16 %470, 272
  %483 = select i1 %481, i1 %482, i1 false
  br i1 %483, label %484, label %496

484:                                              ; preds = %465
  %485 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 37
  %486 = load i32, ptr %485, align 4
  %487 = select i1 %14, i32 6817984, i32 6826176
  %488 = getelementptr inbounds %struct.nouveau_drm, ptr %466, i32 0, i32 2, i32 3, i32 0, i32 6
  %489 = load ptr, ptr %488, align 8
  %490 = icmp eq ptr %489, null
  br i1 %490, label %493, label %491, !prof !8

491:                                              ; preds = %484
  %492 = getelementptr i8, ptr %489, i32 %487
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %492, i32 %486) #7, !srcloc !17
  br label %496

493:                                              ; preds = %484
  %494 = getelementptr inbounds %struct.nouveau_drm, ptr %466, i32 0, i32 2, i32 3
  %495 = zext i32 %487 to i64
  tail call void @nvif_object_wr(ptr noundef %494, i32 noundef 4, i64 noundef %495, i32 noundef %486) #7
  br label %496

496:                                              ; preds = %493, %491, %465
  %497 = load i8, ptr %16, align 1
  %498 = icmp eq i8 %497, 5
  br i1 %498, label %499, label %558

499:                                              ; preds = %496
  %500 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 38
  %501 = load i32, ptr %500, align 4
  %502 = load ptr, ptr %6, align 4
  %503 = select i1 %14, i32 6818336, i32 6826528
  %504 = getelementptr inbounds %struct.nouveau_drm, ptr %502, i32 0, i32 2, i32 3, i32 0, i32 6
  %505 = load ptr, ptr %504, align 8
  %506 = icmp eq ptr %505, null
  br i1 %506, label %509, label %507, !prof !8

507:                                              ; preds = %499
  %508 = getelementptr i8, ptr %505, i32 %503
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %508, i32 %501) #7, !srcloc !17
  br label %512

509:                                              ; preds = %499
  %510 = getelementptr inbounds %struct.nouveau_drm, ptr %502, i32 0, i32 2, i32 3
  %511 = zext i32 %503 to i64
  tail call void @nvif_object_wr(ptr noundef %510, i32 noundef 4, i64 noundef %511, i32 noundef %501) #7
  br label %512

512:                                              ; preds = %509, %507
  %513 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 39
  %514 = load i32, ptr %513, align 4
  %515 = load ptr, ptr %6, align 4
  %516 = select i1 %14, i32 6818340, i32 6826532
  %517 = getelementptr inbounds %struct.nouveau_drm, ptr %515, i32 0, i32 2, i32 3, i32 0, i32 6
  %518 = load ptr, ptr %517, align 8
  %519 = icmp eq ptr %518, null
  br i1 %519, label %522, label %520, !prof !8

520:                                              ; preds = %512
  %521 = getelementptr i8, ptr %518, i32 %516
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %521, i32 %514) #7, !srcloc !17
  br label %525

522:                                              ; preds = %512
  %523 = getelementptr inbounds %struct.nouveau_drm, ptr %515, i32 0, i32 2, i32 3
  %524 = zext i32 %516 to i64
  tail call void @nvif_object_wr(ptr noundef %523, i32 noundef 4, i64 noundef %524, i32 noundef %514) #7
  br label %525

525:                                              ; preds = %522, %520
  %526 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 40
  %527 = load i32, ptr %526, align 4
  %528 = load ptr, ptr %6, align 4
  %529 = select i1 %14, i32 6818356, i32 6826548
  %530 = getelementptr inbounds %struct.nouveau_drm, ptr %528, i32 0, i32 2, i32 3, i32 0, i32 6
  %531 = load ptr, ptr %530, align 8
  %532 = icmp eq ptr %531, null
  br i1 %532, label %535, label %533, !prof !8

533:                                              ; preds = %525
  %534 = getelementptr i8, ptr %531, i32 %529
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %534, i32 %527) #7, !srcloc !17
  br label %538

535:                                              ; preds = %525
  %536 = getelementptr inbounds %struct.nouveau_drm, ptr %528, i32 0, i32 2, i32 3
  %537 = zext i32 %529 to i64
  tail call void @nvif_object_wr(ptr noundef %536, i32 noundef 4, i64 noundef %537, i32 noundef %527) #7
  br label %538

538:                                              ; preds = %535, %533
  %539 = select i1 %14, i32 6818816, i32 6827008
  br label %540

540:                                              ; preds = %555, %538
  %541 = phi i32 [ 0, %538 ], [ %556, %555 ]
  %542 = shl i32 %541, 2
  %543 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 41, i32 %541
  %544 = load i32, ptr %543, align 4
  %545 = load ptr, ptr %6, align 4
  %546 = add nuw nsw i32 %542, %539
  %547 = getelementptr inbounds %struct.nouveau_drm, ptr %545, i32 0, i32 2, i32 3, i32 0, i32 6
  %548 = load ptr, ptr %547, align 8
  %549 = icmp eq ptr %548, null
  br i1 %549, label %552, label %550, !prof !8

550:                                              ; preds = %540
  %551 = getelementptr i8, ptr %548, i32 %546
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %551, i32 %544) #7, !srcloc !17
  br label %555

552:                                              ; preds = %540
  %553 = getelementptr inbounds %struct.nouveau_drm, ptr %545, i32 0, i32 2, i32 3
  %554 = zext i32 %546 to i64
  tail call void @nvif_object_wr(ptr noundef %553, i32 noundef 4, i64 noundef %554, i32 noundef %544) #7
  br label %555

555:                                              ; preds = %552, %550
  %556 = add nuw nsw i32 %541, 1
  %557 = icmp eq i32 %556, 38
  br i1 %557, label %558, label %540

558:                                              ; preds = %555, %496
  %559 = load ptr, ptr %6, align 4
  %560 = getelementptr inbounds %struct.nouveau_drm, ptr %559, i32 0, i32 2, i32 3
  %561 = getelementptr inbounds %struct.nouveau_drm, ptr %559, i32 0, i32 2, i32 3, i32 1, i32 4
  %562 = load i8, ptr %561, align 1
  %563 = icmp ugt i8 %562, 1
  br i1 %563, label %564, label %760

564:                                              ; preds = %558
  %565 = load ptr, ptr %48, align 4
  %566 = getelementptr i8, ptr %565, i32 -102
  %567 = load i16, ptr %566, align 2
  %568 = trunc i16 %567 to i12
  %569 = and i12 %568, -16
  switch i12 %569, label %570 [
    i12 512, label %581
    i12 416, label %581
    i12 336, label %581
    i12 256, label %581
  ]

570:                                              ; preds = %564
  %571 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 14
  %572 = load i32, ptr %571, align 4
  %573 = select i1 %14, i32 6293600, i32 6301792
  %574 = getelementptr inbounds %struct.nouveau_drm, ptr %559, i32 0, i32 2, i32 3, i32 0, i32 6
  %575 = load ptr, ptr %574, align 8
  %576 = icmp eq ptr %575, null
  br i1 %576, label %579, label %577, !prof !8

577:                                              ; preds = %570
  %578 = getelementptr i8, ptr %575, i32 %573
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %578, i32 %572) #7, !srcloc !17
  br label %581

579:                                              ; preds = %570
  %580 = zext i32 %573 to i64
  tail call void @nvif_object_wr(ptr noundef %560, i32 noundef 4, i64 noundef %580, i32 noundef %572) #7
  br label %581

581:                                              ; preds = %579, %577, %564, %564, %564, %564
  %582 = getelementptr inbounds %struct.nouveau_drm, ptr %559, i32 0, i32 2, i32 3, i32 0, i32 6
  %583 = load ptr, ptr %582, align 8
  %584 = icmp eq ptr %583, null
  br i1 %584, label %587, label %585, !prof !8

585:                                              ; preds = %581
  %586 = getelementptr i8, ptr %583, i32 34564
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %586, i32 1) #7, !srcloc !17
  br label %588

587:                                              ; preds = %581
  tail call void @nvif_object_wr(ptr noundef %560, i32 noundef 4, i64 noundef 34564, i32 noundef 1) #7
  br label %588

588:                                              ; preds = %587, %585
  %589 = load ptr, ptr %582, align 8
  %590 = icmp eq ptr %589, null
  br i1 %590, label %593, label %591, !prof !8

591:                                              ; preds = %588
  %592 = getelementptr i8, ptr %589, i32 33088
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %592, i32 0) #7, !srcloc !17
  br label %594

593:                                              ; preds = %588
  tail call void @nvif_object_wr(ptr noundef %560, i32 noundef 4, i64 noundef 33088, i32 noundef 0) #7
  br label %594

594:                                              ; preds = %593, %591
  %595 = load ptr, ptr %582, align 8
  %596 = icmp eq ptr %595, null
  br i1 %596, label %599, label %597, !prof !8

597:                                              ; preds = %594
  %598 = getelementptr i8, ptr %595, i32 35104
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %598, i32 0) #7, !srcloc !17
  br label %600

599:                                              ; preds = %594
  tail call void @nvif_object_wr(ptr noundef %560, i32 noundef 4, i64 noundef 35104, i32 noundef 0) #7
  br label %600

600:                                              ; preds = %599, %597
  %601 = load ptr, ptr %582, align 8
  %602 = icmp eq ptr %601, null
  br i1 %602, label %605, label %603, !prof !8

603:                                              ; preds = %600
  %604 = getelementptr i8, ptr %601, i32 35108
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %604, i32 0) #7, !srcloc !17
  br label %606

605:                                              ; preds = %600
  tail call void @nvif_object_wr(ptr noundef %560, i32 noundef 4, i64 noundef 35108, i32 noundef 0) #7
  br label %606

606:                                              ; preds = %605, %603
  %607 = load ptr, ptr %582, align 8
  %608 = icmp eq ptr %607, null
  %609 = getelementptr inbounds %struct.nouveau_drm, ptr %559, i32 0, i32 2, i32 3, i32 1, i32 6
  %610 = load i64, ptr %609, align 8
  %611 = trunc i64 %610 to i32
  %612 = add i32 %611, -1
  br i1 %608, label %615, label %613, !prof !8

613:                                              ; preds = %606
  %614 = getelementptr i8, ptr %607, i32 35080
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %614, i32 %612) #7, !srcloc !17
  br label %616

615:                                              ; preds = %606
  tail call void @nvif_object_wr(ptr noundef %560, i32 noundef 4, i64 noundef 35080, i32 noundef %612) #7
  br label %616

616:                                              ; preds = %615, %613
  %617 = load ptr, ptr %582, align 8
  %618 = icmp eq ptr %617, null
  %619 = load i64, ptr %609, align 8
  %620 = trunc i64 %619 to i32
  %621 = add i32 %620, -1
  br i1 %618, label %624, label %622, !prof !8

622:                                              ; preds = %616
  %623 = getelementptr i8, ptr %617, i32 35084
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %623, i32 %621) #7, !srcloc !17
  br label %625

624:                                              ; preds = %616
  tail call void @nvif_object_wr(ptr noundef %560, i32 noundef 4, i64 noundef 35084, i32 noundef %621) #7
  br label %625

625:                                              ; preds = %624, %622
  %626 = load ptr, ptr %582, align 8
  %627 = icmp eq ptr %626, null
  %628 = load i64, ptr %609, align 8
  %629 = trunc i64 %628 to i32
  %630 = add i32 %629, -1
  br i1 %627, label %633, label %631, !prof !8

631:                                              ; preds = %625
  %632 = getelementptr i8, ptr %626, i32 34824
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %632, i32 %630) #7, !srcloc !17
  br label %634

633:                                              ; preds = %625
  tail call void @nvif_object_wr(ptr noundef %560, i32 noundef 4, i64 noundef 34824, i32 noundef %630) #7
  br label %634

634:                                              ; preds = %633, %631
  %635 = load ptr, ptr %582, align 8
  %636 = icmp eq ptr %635, null
  %637 = load i64, ptr %609, align 8
  %638 = trunc i64 %637 to i32
  %639 = add i32 %638, -1
  br i1 %636, label %642, label %640, !prof !8

640:                                              ; preds = %634
  %641 = getelementptr i8, ptr %635, i32 34828
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %641, i32 %639) #7, !srcloc !17
  br label %643

642:                                              ; preds = %634
  tail call void @nvif_object_wr(ptr noundef %560, i32 noundef 4, i64 noundef 34828, i32 noundef %639) #7
  br label %643

643:                                              ; preds = %642, %640
  %644 = load ptr, ptr %582, align 8
  %645 = icmp eq ptr %644, null
  br i1 %645, label %648, label %646, !prof !8

646:                                              ; preds = %643
  %647 = getelementptr i8, ptr %644, i32 5512
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %647, i32 0) #7, !srcloc !17
  br label %649

648:                                              ; preds = %643
  tail call void @nvif_object_wr(ptr noundef %560, i32 noundef 4, i64 noundef 5512, i32 noundef 0) #7
  br label %649

649:                                              ; preds = %648, %646
  %650 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 9
  %651 = load i32, ptr %650, align 4
  %652 = load ptr, ptr %6, align 4
  %653 = select i1 %14, i32 6293520, i32 6301712
  %654 = getelementptr inbounds %struct.nouveau_drm, ptr %652, i32 0, i32 2, i32 3, i32 0, i32 6
  %655 = load ptr, ptr %654, align 8
  %656 = icmp eq ptr %655, null
  br i1 %656, label %659, label %657, !prof !8

657:                                              ; preds = %649
  %658 = getelementptr i8, ptr %655, i32 %653
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %658, i32 %651) #7, !srcloc !17
  br label %662

659:                                              ; preds = %649
  %660 = getelementptr inbounds %struct.nouveau_drm, ptr %652, i32 0, i32 2, i32 3
  %661 = zext i32 %653 to i64
  tail call void @nvif_object_wr(ptr noundef %660, i32 noundef 4, i64 noundef %661, i32 noundef %651) #7
  br label %662

662:                                              ; preds = %659, %657
  %663 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 11
  %664 = load i32, ptr %663, align 4
  %665 = load ptr, ptr %6, align 4
  %666 = select i1 %14, i32 6293552, i32 6301744
  %667 = getelementptr inbounds %struct.nouveau_drm, ptr %665, i32 0, i32 2, i32 3, i32 0, i32 6
  %668 = load ptr, ptr %667, align 8
  %669 = icmp eq ptr %668, null
  br i1 %669, label %672, label %670, !prof !8

670:                                              ; preds = %662
  %671 = getelementptr i8, ptr %668, i32 %666
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %671, i32 %664) #7, !srcloc !17
  br label %675

672:                                              ; preds = %662
  %673 = getelementptr inbounds %struct.nouveau_drm, ptr %665, i32 0, i32 2, i32 3
  %674 = zext i32 %666 to i64
  tail call void @nvif_object_wr(ptr noundef %673, i32 noundef 4, i64 noundef %674, i32 noundef %664) #7
  br label %675

675:                                              ; preds = %672, %670
  %676 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 12
  %677 = load i32, ptr %676, align 4
  %678 = load ptr, ptr %6, align 4
  %679 = select i1 %14, i32 6293556, i32 6301748
  %680 = getelementptr inbounds %struct.nouveau_drm, ptr %678, i32 0, i32 2, i32 3, i32 0, i32 6
  %681 = load ptr, ptr %680, align 8
  %682 = icmp eq ptr %681, null
  br i1 %682, label %685, label %683, !prof !8

683:                                              ; preds = %675
  %684 = getelementptr i8, ptr %681, i32 %679
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %684, i32 %677) #7, !srcloc !17
  br label %688

685:                                              ; preds = %675
  %686 = getelementptr inbounds %struct.nouveau_drm, ptr %678, i32 0, i32 2, i32 3
  %687 = zext i32 %679 to i64
  tail call void @nvif_object_wr(ptr noundef %686, i32 noundef 4, i64 noundef %687, i32 noundef %677) #7
  br label %688

688:                                              ; preds = %685, %683
  %689 = load i8, ptr %561, align 1
  %690 = icmp ugt i8 %689, 3
  br i1 %690, label %691, label %760

691:                                              ; preds = %688
  %692 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 10
  %693 = load i32, ptr %692, align 4
  %694 = load ptr, ptr %6, align 4
  %695 = select i1 %14, i32 6293532, i32 6301724
  %696 = getelementptr inbounds %struct.nouveau_drm, ptr %694, i32 0, i32 2, i32 3, i32 0, i32 6
  %697 = load ptr, ptr %696, align 8
  %698 = icmp eq ptr %697, null
  br i1 %698, label %701, label %699, !prof !8

699:                                              ; preds = %691
  %700 = getelementptr i8, ptr %697, i32 %695
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %700, i32 %693) #7, !srcloc !17
  br label %704

701:                                              ; preds = %691
  %702 = getelementptr inbounds %struct.nouveau_drm, ptr %694, i32 0, i32 2, i32 3
  %703 = zext i32 %695 to i64
  tail call void @nvif_object_wr(ptr noundef %702, i32 noundef 4, i64 noundef %703, i32 noundef %693) #7
  br label %704

704:                                              ; preds = %701, %699
  %705 = load i8, ptr %561, align 1
  %706 = icmp eq i8 %705, 5
  br i1 %706, label %707, label %760

707:                                              ; preds = %704
  %708 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 13
  %709 = load i32, ptr %708, align 4
  %710 = load ptr, ptr %6, align 4
  %711 = select i1 %14, i32 6293584, i32 6301776
  %712 = getelementptr inbounds %struct.nouveau_drm, ptr %710, i32 0, i32 2, i32 3, i32 0, i32 6
  %713 = load ptr, ptr %712, align 8
  %714 = icmp eq ptr %713, null
  br i1 %714, label %717, label %715, !prof !8

715:                                              ; preds = %707
  %716 = getelementptr i8, ptr %713, i32 %711
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %716, i32 %709) #7, !srcloc !17
  br label %720

717:                                              ; preds = %707
  %718 = getelementptr inbounds %struct.nouveau_drm, ptr %710, i32 0, i32 2, i32 3
  %719 = zext i32 %711 to i64
  tail call void @nvif_object_wr(ptr noundef %718, i32 noundef 4, i64 noundef %719, i32 noundef %709) #7
  br label %720

720:                                              ; preds = %717, %715
  %721 = load ptr, ptr %6, align 4
  %722 = select i1 %14, i32 6818048, i32 6826240
  %723 = getelementptr inbounds %struct.nouveau_drm, ptr %721, i32 0, i32 2, i32 3, i32 0, i32 6
  %724 = load ptr, ptr %723, align 8
  %725 = icmp eq ptr %724, null
  br i1 %725, label %729, label %726, !prof !8

726:                                              ; preds = %720
  %727 = getelementptr i8, ptr %724, i32 %722
  %728 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %727) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %733

729:                                              ; preds = %720
  %730 = getelementptr inbounds %struct.nouveau_drm, ptr %721, i32 0, i32 2, i32 3
  %731 = zext i32 %722 to i64
  %732 = tail call i32 @nvif_object_rd(ptr noundef %730, i32 noundef 4, i64 noundef %731) #7
  br label %733

733:                                              ; preds = %729, %726
  %734 = phi i32 [ %728, %726 ], [ %732, %729 ]
  %735 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 8
  %736 = load i32, ptr %735, align 4
  %737 = icmp eq i32 %736, 2
  br i1 %737, label %738, label %749

738:                                              ; preds = %733
  %739 = or i32 %734, 65536
  %740 = load ptr, ptr %6, align 4
  %741 = getelementptr inbounds %struct.nouveau_drm, ptr %740, i32 0, i32 2, i32 3, i32 0, i32 6
  %742 = load ptr, ptr %741, align 8
  %743 = icmp eq ptr %742, null
  br i1 %743, label %746, label %744, !prof !8

744:                                              ; preds = %738
  %745 = getelementptr i8, ptr %742, i32 %722
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %745, i32 %739) #7, !srcloc !17
  br label %760

746:                                              ; preds = %738
  %747 = getelementptr inbounds %struct.nouveau_drm, ptr %740, i32 0, i32 2, i32 3
  %748 = zext i32 %722 to i64
  tail call void @nvif_object_wr(ptr noundef %747, i32 noundef 4, i64 noundef %748, i32 noundef %739) #7
  br label %760

749:                                              ; preds = %733
  %750 = and i32 %734, -65537
  %751 = load ptr, ptr %6, align 4
  %752 = getelementptr inbounds %struct.nouveau_drm, ptr %751, i32 0, i32 2, i32 3, i32 0, i32 6
  %753 = load ptr, ptr %752, align 8
  %754 = icmp eq ptr %753, null
  br i1 %754, label %757, label %755, !prof !8

755:                                              ; preds = %749
  %756 = getelementptr i8, ptr %753, i32 %722
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %756, i32 %750) #7, !srcloc !17
  br label %760

757:                                              ; preds = %749
  %758 = getelementptr inbounds %struct.nouveau_drm, ptr %751, i32 0, i32 2, i32 3
  %759 = zext i32 %722 to i64
  tail call void @nvif_object_wr(ptr noundef %758, i32 noundef 4, i64 noundef %759, i32 noundef %750) #7
  br label %760

760:                                              ; preds = %757, %755, %746, %744, %704, %688, %558
  %761 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 8
  %762 = load i32, ptr %761, align 4
  %763 = load ptr, ptr %6, align 4
  %764 = select i1 %14, i32 6293508, i32 6301700
  %765 = getelementptr inbounds %struct.nouveau_drm, ptr %763, i32 0, i32 2, i32 3, i32 0, i32 6
  %766 = load ptr, ptr %765, align 8
  %767 = icmp eq ptr %766, null
  br i1 %767, label %770, label %768, !prof !8

768:                                              ; preds = %760
  %769 = getelementptr i8, ptr %766, i32 %764
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %769, i32 %762) #7, !srcloc !17
  br label %773

770:                                              ; preds = %760
  %771 = getelementptr inbounds %struct.nouveau_drm, ptr %763, i32 0, i32 2, i32 3
  %772 = zext i32 %764 to i64
  tail call void @nvif_object_wr(ptr noundef %771, i32 noundef 4, i64 noundef %772, i32 noundef %762) #7
  br label %773

773:                                              ; preds = %770, %768
  %774 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 25
  %775 = load i8, ptr %774, align 1
  %776 = load ptr, ptr %6, align 4
  %777 = getelementptr inbounds %struct.nouveau_drm, ptr %776, i32 0, i32 2, i32 3
  %778 = getelementptr inbounds %struct.nouveau_drm, ptr %776, i32 0, i32 2, i32 3, i32 0, i32 6
  %779 = load ptr, ptr %778, align 8
  %780 = icmp eq ptr %779, null
  %781 = shl i32 %1, 13
  %782 = add i32 %781, 6296532
  br i1 %780, label %785, label %783, !prof !8

783:                                              ; preds = %773
  %784 = getelementptr i8, ptr %779, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %784, i8 25) #7, !srcloc !10
  br label %787

785:                                              ; preds = %773
  %786 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %777, i32 noundef 1, i64 noundef %786, i32 noundef 25) #7
  br label %787

787:                                              ; preds = %785, %783
  %788 = load ptr, ptr %778, align 8
  %789 = icmp eq ptr %788, null
  %790 = add i32 %781, 6296533
  br i1 %789, label %793, label %791, !prof !8

791:                                              ; preds = %787
  %792 = getelementptr i8, ptr %788, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %792, i8 %775) #7, !srcloc !10
  br label %796

793:                                              ; preds = %787
  %794 = sext i32 %790 to i64
  %795 = zext i8 %775 to i32
  tail call void @nvif_object_wr(ptr noundef %777, i32 noundef 1, i64 noundef %794, i32 noundef %795) #7
  br label %796

796:                                              ; preds = %793, %791
  %797 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 26
  %798 = load i8, ptr %797, align 1
  %799 = load ptr, ptr %6, align 4
  %800 = getelementptr inbounds %struct.nouveau_drm, ptr %799, i32 0, i32 2, i32 3
  %801 = getelementptr inbounds %struct.nouveau_drm, ptr %799, i32 0, i32 2, i32 3, i32 0, i32 6
  %802 = load ptr, ptr %801, align 8
  %803 = icmp eq ptr %802, null
  br i1 %803, label %806, label %804, !prof !8

804:                                              ; preds = %796
  %805 = getelementptr i8, ptr %802, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %805, i8 26) #7, !srcloc !10
  br label %808

806:                                              ; preds = %796
  %807 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %800, i32 noundef 1, i64 noundef %807, i32 noundef 26) #7
  br label %808

808:                                              ; preds = %806, %804
  %809 = load ptr, ptr %801, align 8
  %810 = icmp eq ptr %809, null
  br i1 %810, label %813, label %811, !prof !8

811:                                              ; preds = %808
  %812 = getelementptr i8, ptr %809, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %812, i8 %798) #7, !srcloc !10
  br label %816

813:                                              ; preds = %808
  %814 = sext i32 %790 to i64
  %815 = zext i8 %798 to i32
  tail call void @nvif_object_wr(ptr noundef %800, i32 noundef 1, i64 noundef %814, i32 noundef %815) #7
  br label %816

816:                                              ; preds = %813, %811
  %817 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 37
  %818 = load i8, ptr %817, align 1
  %819 = load ptr, ptr %6, align 4
  %820 = getelementptr inbounds %struct.nouveau_drm, ptr %819, i32 0, i32 2, i32 3
  %821 = getelementptr inbounds %struct.nouveau_drm, ptr %819, i32 0, i32 2, i32 3, i32 0, i32 6
  %822 = load ptr, ptr %821, align 8
  %823 = icmp eq ptr %822, null
  br i1 %823, label %826, label %824, !prof !8

824:                                              ; preds = %816
  %825 = getelementptr i8, ptr %822, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %825, i8 37) #7, !srcloc !10
  br label %828

826:                                              ; preds = %816
  %827 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %820, i32 noundef 1, i64 noundef %827, i32 noundef 37) #7
  br label %828

828:                                              ; preds = %826, %824
  %829 = load ptr, ptr %821, align 8
  %830 = icmp eq ptr %829, null
  br i1 %830, label %833, label %831, !prof !8

831:                                              ; preds = %828
  %832 = getelementptr i8, ptr %829, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %832, i8 %818) #7, !srcloc !10
  br label %836

833:                                              ; preds = %828
  %834 = sext i32 %790 to i64
  %835 = zext i8 %818 to i32
  tail call void @nvif_object_wr(ptr noundef %820, i32 noundef 1, i64 noundef %834, i32 noundef %835) #7
  br label %836

836:                                              ; preds = %833, %831
  %837 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 40
  %838 = load i8, ptr %837, align 1
  %839 = load ptr, ptr %6, align 4
  %840 = getelementptr inbounds %struct.nouveau_drm, ptr %839, i32 0, i32 2, i32 3
  %841 = getelementptr inbounds %struct.nouveau_drm, ptr %839, i32 0, i32 2, i32 3, i32 0, i32 6
  %842 = load ptr, ptr %841, align 8
  %843 = icmp eq ptr %842, null
  br i1 %843, label %846, label %844, !prof !8

844:                                              ; preds = %836
  %845 = getelementptr i8, ptr %842, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %845, i8 40) #7, !srcloc !10
  br label %848

846:                                              ; preds = %836
  %847 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %840, i32 noundef 1, i64 noundef %847, i32 noundef 40) #7
  br label %848

848:                                              ; preds = %846, %844
  %849 = load ptr, ptr %841, align 8
  %850 = icmp eq ptr %849, null
  br i1 %850, label %853, label %851, !prof !8

851:                                              ; preds = %848
  %852 = getelementptr i8, ptr %849, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %852, i8 %838) #7, !srcloc !10
  br label %856

853:                                              ; preds = %848
  %854 = sext i32 %790 to i64
  %855 = zext i8 %838 to i32
  tail call void @nvif_object_wr(ptr noundef %840, i32 noundef 1, i64 noundef %854, i32 noundef %855) #7
  br label %856

856:                                              ; preds = %853, %851
  %857 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 51
  %858 = load i8, ptr %857, align 1
  %859 = load ptr, ptr %6, align 4
  %860 = getelementptr inbounds %struct.nouveau_drm, ptr %859, i32 0, i32 2, i32 3
  %861 = getelementptr inbounds %struct.nouveau_drm, ptr %859, i32 0, i32 2, i32 3, i32 0, i32 6
  %862 = load ptr, ptr %861, align 8
  %863 = icmp eq ptr %862, null
  br i1 %863, label %866, label %864, !prof !8

864:                                              ; preds = %856
  %865 = getelementptr i8, ptr %862, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %865, i8 51) #7, !srcloc !10
  br label %868

866:                                              ; preds = %856
  %867 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %860, i32 noundef 1, i64 noundef %867, i32 noundef 51) #7
  br label %868

868:                                              ; preds = %866, %864
  %869 = load ptr, ptr %861, align 8
  %870 = icmp eq ptr %869, null
  br i1 %870, label %873, label %871, !prof !8

871:                                              ; preds = %868
  %872 = getelementptr i8, ptr %869, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %872, i8 %858) #7, !srcloc !10
  br label %876

873:                                              ; preds = %868
  %874 = sext i32 %790 to i64
  %875 = zext i8 %858 to i32
  tail call void @nvif_object_wr(ptr noundef %860, i32 noundef 1, i64 noundef %874, i32 noundef %875) #7
  br label %876

876:                                              ; preds = %873, %871
  %877 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 45
  %878 = load i8, ptr %877, align 1
  %879 = load ptr, ptr %6, align 4
  %880 = getelementptr inbounds %struct.nouveau_drm, ptr %879, i32 0, i32 2, i32 3
  %881 = getelementptr inbounds %struct.nouveau_drm, ptr %879, i32 0, i32 2, i32 3, i32 0, i32 6
  %882 = load ptr, ptr %881, align 8
  %883 = icmp eq ptr %882, null
  br i1 %883, label %886, label %884, !prof !8

884:                                              ; preds = %876
  %885 = getelementptr i8, ptr %882, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %885, i8 45) #7, !srcloc !10
  br label %888

886:                                              ; preds = %876
  %887 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %880, i32 noundef 1, i64 noundef %887, i32 noundef 45) #7
  br label %888

888:                                              ; preds = %886, %884
  %889 = load ptr, ptr %881, align 8
  %890 = icmp eq ptr %889, null
  br i1 %890, label %893, label %891, !prof !8

891:                                              ; preds = %888
  %892 = getelementptr i8, ptr %889, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %892, i8 %878) #7, !srcloc !10
  br label %896

893:                                              ; preds = %888
  %894 = sext i32 %790 to i64
  %895 = zext i8 %878 to i32
  tail call void @nvif_object_wr(ptr noundef %880, i32 noundef 1, i64 noundef %894, i32 noundef %895) #7
  br label %896

896:                                              ; preds = %893, %891
  %897 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 28
  %898 = load i8, ptr %897, align 1
  %899 = load ptr, ptr %6, align 4
  %900 = getelementptr inbounds %struct.nouveau_drm, ptr %899, i32 0, i32 2, i32 3
  %901 = getelementptr inbounds %struct.nouveau_drm, ptr %899, i32 0, i32 2, i32 3, i32 0, i32 6
  %902 = load ptr, ptr %901, align 8
  %903 = icmp eq ptr %902, null
  br i1 %903, label %906, label %904, !prof !8

904:                                              ; preds = %896
  %905 = getelementptr i8, ptr %902, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %905, i8 28) #7, !srcloc !10
  br label %908

906:                                              ; preds = %896
  %907 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %900, i32 noundef 1, i64 noundef %907, i32 noundef 28) #7
  br label %908

908:                                              ; preds = %906, %904
  %909 = load ptr, ptr %901, align 8
  %910 = icmp eq ptr %909, null
  br i1 %910, label %913, label %911, !prof !8

911:                                              ; preds = %908
  %912 = getelementptr i8, ptr %909, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %912, i8 %898) #7, !srcloc !10
  br label %916

913:                                              ; preds = %908
  %914 = sext i32 %790 to i64
  %915 = zext i8 %898 to i32
  tail call void @nvif_object_wr(ptr noundef %900, i32 noundef 1, i64 noundef %914, i32 noundef %915) #7
  br label %916

916:                                              ; preds = %913, %911
  %917 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 27
  %918 = load i8, ptr %917, align 1
  %919 = load ptr, ptr %6, align 4
  %920 = getelementptr inbounds %struct.nouveau_drm, ptr %919, i32 0, i32 2, i32 3
  %921 = getelementptr inbounds %struct.nouveau_drm, ptr %919, i32 0, i32 2, i32 3, i32 0, i32 6
  %922 = load ptr, ptr %921, align 8
  %923 = icmp eq ptr %922, null
  br i1 %923, label %926, label %924, !prof !8

924:                                              ; preds = %916
  %925 = getelementptr i8, ptr %922, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %925, i8 27) #7, !srcloc !10
  br label %928

926:                                              ; preds = %916
  %927 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %920, i32 noundef 1, i64 noundef %927, i32 noundef 27) #7
  br label %928

928:                                              ; preds = %926, %924
  %929 = load ptr, ptr %921, align 8
  %930 = icmp eq ptr %929, null
  br i1 %930, label %933, label %931, !prof !8

931:                                              ; preds = %928
  %932 = getelementptr i8, ptr %929, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %932, i8 %918) #7, !srcloc !10
  br label %936

933:                                              ; preds = %928
  %934 = sext i32 %790 to i64
  %935 = zext i8 %918 to i32
  tail call void @nvif_object_wr(ptr noundef %920, i32 noundef 1, i64 noundef %934, i32 noundef %935) #7
  br label %936

936:                                              ; preds = %933, %931
  %937 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 32
  %938 = load i8, ptr %937, align 1
  %939 = load ptr, ptr %6, align 4
  %940 = getelementptr inbounds %struct.nouveau_drm, ptr %939, i32 0, i32 2, i32 3
  %941 = getelementptr inbounds %struct.nouveau_drm, ptr %939, i32 0, i32 2, i32 3, i32 0, i32 6
  %942 = load ptr, ptr %941, align 8
  %943 = icmp eq ptr %942, null
  br i1 %943, label %946, label %944, !prof !8

944:                                              ; preds = %936
  %945 = getelementptr i8, ptr %942, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %945, i8 32) #7, !srcloc !10
  br label %948

946:                                              ; preds = %936
  %947 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %940, i32 noundef 1, i64 noundef %947, i32 noundef 32) #7
  br label %948

948:                                              ; preds = %946, %944
  %949 = load ptr, ptr %941, align 8
  %950 = icmp eq ptr %949, null
  br i1 %950, label %953, label %951, !prof !8

951:                                              ; preds = %948
  %952 = getelementptr i8, ptr %949, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %952, i8 %938) #7, !srcloc !10
  br label %956

953:                                              ; preds = %948
  %954 = sext i32 %790 to i64
  %955 = zext i8 %938 to i32
  tail call void @nvif_object_wr(ptr noundef %940, i32 noundef 1, i64 noundef %954, i32 noundef %955) #7
  br label %956

956:                                              ; preds = %953, %951
  %957 = load i8, ptr %561, align 1
  %958 = icmp ugt i8 %957, 2
  br i1 %958, label %959, label %1002

959:                                              ; preds = %956
  %960 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 71
  %961 = load i8, ptr %960, align 1
  %962 = load ptr, ptr %6, align 4
  %963 = getelementptr inbounds %struct.nouveau_drm, ptr %962, i32 0, i32 2, i32 3
  %964 = getelementptr inbounds %struct.nouveau_drm, ptr %962, i32 0, i32 2, i32 3, i32 0, i32 6
  %965 = load ptr, ptr %964, align 8
  %966 = icmp eq ptr %965, null
  br i1 %966, label %969, label %967, !prof !8

967:                                              ; preds = %959
  %968 = getelementptr i8, ptr %965, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %968, i8 71) #7, !srcloc !10
  br label %971

969:                                              ; preds = %959
  %970 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %963, i32 noundef 1, i64 noundef %970, i32 noundef 71) #7
  br label %971

971:                                              ; preds = %969, %967
  %972 = load ptr, ptr %964, align 8
  %973 = icmp eq ptr %972, null
  br i1 %973, label %976, label %974, !prof !8

974:                                              ; preds = %971
  %975 = getelementptr i8, ptr %972, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %975, i8 %961) #7, !srcloc !10
  br label %979

976:                                              ; preds = %971
  %977 = sext i32 %790 to i64
  %978 = zext i8 %961 to i32
  tail call void @nvif_object_wr(ptr noundef %963, i32 noundef 1, i64 noundef %977, i32 noundef %978) #7
  br label %979

979:                                              ; preds = %976, %974
  %980 = load i8, ptr %561, align 1
  %981 = icmp ugt i8 %980, 3
  br i1 %981, label %982, label %1002

982:                                              ; preds = %979
  %983 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 159
  %984 = load i8, ptr %983, align 1
  %985 = load ptr, ptr %6, align 4
  %986 = getelementptr inbounds %struct.nouveau_drm, ptr %985, i32 0, i32 2, i32 3
  %987 = getelementptr inbounds %struct.nouveau_drm, ptr %985, i32 0, i32 2, i32 3, i32 0, i32 6
  %988 = load ptr, ptr %987, align 8
  %989 = icmp eq ptr %988, null
  br i1 %989, label %992, label %990, !prof !8

990:                                              ; preds = %982
  %991 = getelementptr i8, ptr %988, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %991, i8 -97) #7, !srcloc !10
  br label %994

992:                                              ; preds = %982
  %993 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %986, i32 noundef 1, i64 noundef %993, i32 noundef 159) #7
  br label %994

994:                                              ; preds = %992, %990
  %995 = load ptr, ptr %987, align 8
  %996 = icmp eq ptr %995, null
  br i1 %996, label %999, label %997, !prof !8

997:                                              ; preds = %994
  %998 = getelementptr i8, ptr %995, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %998, i8 %984) #7, !srcloc !10
  br label %1002

999:                                              ; preds = %994
  %1000 = sext i32 %790 to i64
  %1001 = zext i8 %984 to i32
  tail call void @nvif_object_wr(ptr noundef %986, i32 noundef 1, i64 noundef %1000, i32 noundef %1001) #7
  br label %1002

1002:                                             ; preds = %999, %997, %979, %956
  %1003 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 73
  %1004 = load i8, ptr %1003, align 1
  %1005 = load ptr, ptr %6, align 4
  %1006 = getelementptr inbounds %struct.nouveau_drm, ptr %1005, i32 0, i32 2, i32 3
  %1007 = getelementptr inbounds %struct.nouveau_drm, ptr %1005, i32 0, i32 2, i32 3, i32 0, i32 6
  %1008 = load ptr, ptr %1007, align 8
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1012, label %1010, !prof !8

1010:                                             ; preds = %1002
  %1011 = getelementptr i8, ptr %1008, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1011, i8 73) #7, !srcloc !10
  br label %1014

1012:                                             ; preds = %1002
  %1013 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1006, i32 noundef 1, i64 noundef %1013, i32 noundef 73) #7
  br label %1014

1014:                                             ; preds = %1012, %1010
  %1015 = load ptr, ptr %1007, align 8
  %1016 = icmp eq ptr %1015, null
  br i1 %1016, label %1019, label %1017, !prof !8

1017:                                             ; preds = %1014
  %1018 = getelementptr i8, ptr %1015, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1018, i8 %1004) #7, !srcloc !10
  br label %1022

1019:                                             ; preds = %1014
  %1020 = sext i32 %790 to i64
  %1021 = zext i8 %1004 to i32
  tail call void @nvif_object_wr(ptr noundef %1006, i32 noundef 1, i64 noundef %1020, i32 noundef %1021) #7
  br label %1022

1022:                                             ; preds = %1019, %1017
  %1023 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 48
  %1024 = load i8, ptr %1023, align 1
  %1025 = load ptr, ptr %6, align 4
  %1026 = getelementptr inbounds %struct.nouveau_drm, ptr %1025, i32 0, i32 2, i32 3
  %1027 = getelementptr inbounds %struct.nouveau_drm, ptr %1025, i32 0, i32 2, i32 3, i32 0, i32 6
  %1028 = load ptr, ptr %1027, align 8
  %1029 = icmp eq ptr %1028, null
  br i1 %1029, label %1032, label %1030, !prof !8

1030:                                             ; preds = %1022
  %1031 = getelementptr i8, ptr %1028, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1031, i8 48) #7, !srcloc !10
  br label %1034

1032:                                             ; preds = %1022
  %1033 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1026, i32 noundef 1, i64 noundef %1033, i32 noundef 48) #7
  br label %1034

1034:                                             ; preds = %1032, %1030
  %1035 = load ptr, ptr %1027, align 8
  %1036 = icmp eq ptr %1035, null
  br i1 %1036, label %1039, label %1037, !prof !8

1037:                                             ; preds = %1034
  %1038 = getelementptr i8, ptr %1035, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1038, i8 %1024) #7, !srcloc !10
  br label %1042

1039:                                             ; preds = %1034
  %1040 = sext i32 %790 to i64
  %1041 = zext i8 %1024 to i32
  tail call void @nvif_object_wr(ptr noundef %1026, i32 noundef 1, i64 noundef %1040, i32 noundef %1041) #7
  br label %1042

1042:                                             ; preds = %1039, %1037
  %1043 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 49
  %1044 = load i8, ptr %1043, align 1
  %1045 = load ptr, ptr %6, align 4
  %1046 = getelementptr inbounds %struct.nouveau_drm, ptr %1045, i32 0, i32 2, i32 3
  %1047 = getelementptr inbounds %struct.nouveau_drm, ptr %1045, i32 0, i32 2, i32 3, i32 0, i32 6
  %1048 = load ptr, ptr %1047, align 8
  %1049 = icmp eq ptr %1048, null
  br i1 %1049, label %1052, label %1050, !prof !8

1050:                                             ; preds = %1042
  %1051 = getelementptr i8, ptr %1048, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1051, i8 49) #7, !srcloc !10
  br label %1054

1052:                                             ; preds = %1042
  %1053 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1046, i32 noundef 1, i64 noundef %1053, i32 noundef 49) #7
  br label %1054

1054:                                             ; preds = %1052, %1050
  %1055 = load ptr, ptr %1047, align 8
  %1056 = icmp eq ptr %1055, null
  br i1 %1056, label %1059, label %1057, !prof !8

1057:                                             ; preds = %1054
  %1058 = getelementptr i8, ptr %1055, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1058, i8 %1044) #7, !srcloc !10
  br label %1062

1059:                                             ; preds = %1054
  %1060 = sext i32 %790 to i64
  %1061 = zext i8 %1044 to i32
  tail call void @nvif_object_wr(ptr noundef %1046, i32 noundef 1, i64 noundef %1060, i32 noundef %1061) #7
  br label %1062

1062:                                             ; preds = %1059, %1057
  %1063 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 47
  %1064 = load i8, ptr %1063, align 1
  %1065 = load ptr, ptr %6, align 4
  %1066 = getelementptr inbounds %struct.nouveau_drm, ptr %1065, i32 0, i32 2, i32 3
  %1067 = getelementptr inbounds %struct.nouveau_drm, ptr %1065, i32 0, i32 2, i32 3, i32 0, i32 6
  %1068 = load ptr, ptr %1067, align 8
  %1069 = icmp eq ptr %1068, null
  br i1 %1069, label %1072, label %1070, !prof !8

1070:                                             ; preds = %1062
  %1071 = getelementptr i8, ptr %1068, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1071, i8 47) #7, !srcloc !10
  br label %1074

1072:                                             ; preds = %1062
  %1073 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1066, i32 noundef 1, i64 noundef %1073, i32 noundef 47) #7
  br label %1074

1074:                                             ; preds = %1072, %1070
  %1075 = load ptr, ptr %1067, align 8
  %1076 = icmp eq ptr %1075, null
  br i1 %1076, label %1079, label %1077, !prof !8

1077:                                             ; preds = %1074
  %1078 = getelementptr i8, ptr %1075, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1078, i8 %1064) #7, !srcloc !10
  br label %1082

1079:                                             ; preds = %1074
  %1080 = sext i32 %790 to i64
  %1081 = zext i8 %1064 to i32
  tail call void @nvif_object_wr(ptr noundef %1066, i32 noundef 1, i64 noundef %1080, i32 noundef %1081) #7
  br label %1082

1082:                                             ; preds = %1079, %1077
  %1083 = load i8, ptr %561, align 1
  %1084 = icmp eq i8 %1083, 5
  br i1 %1084, label %1085, label %1109

1085:                                             ; preds = %1082
  %1086 = load ptr, ptr %6, align 4
  %1087 = select i1 %14, i32 6816512, i32 6824704
  %1088 = getelementptr inbounds %struct.nouveau_drm, ptr %1086, i32 0, i32 2, i32 3, i32 0, i32 6
  %1089 = load ptr, ptr %1088, align 8
  %1090 = icmp eq ptr %1089, null
  br i1 %1090, label %1094, label %1091, !prof !8

1091:                                             ; preds = %1085
  %1092 = getelementptr i8, ptr %1089, i32 %1087
  %1093 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1092) #7, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1098

1094:                                             ; preds = %1085
  %1095 = getelementptr inbounds %struct.nouveau_drm, ptr %1086, i32 0, i32 2, i32 3
  %1096 = zext i32 %1087 to i64
  %1097 = tail call i32 @nvif_object_rd(ptr noundef %1095, i32 noundef 4, i64 noundef %1096) #7
  br label %1098

1098:                                             ; preds = %1094, %1091
  %1099 = phi i32 [ %1093, %1091 ], [ %1097, %1094 ]
  %1100 = load ptr, ptr %6, align 4
  %1101 = getelementptr inbounds %struct.nouveau_drm, ptr %1100, i32 0, i32 2, i32 3, i32 0, i32 6
  %1102 = load ptr, ptr %1101, align 8
  %1103 = icmp eq ptr %1102, null
  br i1 %1103, label %1106, label %1104, !prof !8

1104:                                             ; preds = %1098
  %1105 = getelementptr i8, ptr %1102, i32 %1087
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1105, i32 %1099) #7, !srcloc !17
  br label %1109

1106:                                             ; preds = %1098
  %1107 = getelementptr inbounds %struct.nouveau_drm, ptr %1100, i32 0, i32 2, i32 3
  %1108 = zext i32 %1087 to i64
  tail call void @nvif_object_wr(ptr noundef %1107, i32 noundef 4, i64 noundef %1108, i32 noundef %1099) #7
  br label %1109

1109:                                             ; preds = %1106, %1104, %1082
  %1110 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 57
  %1111 = load i8, ptr %1110, align 1
  %1112 = load ptr, ptr %6, align 4
  %1113 = getelementptr inbounds %struct.nouveau_drm, ptr %1112, i32 0, i32 2, i32 3
  %1114 = getelementptr inbounds %struct.nouveau_drm, ptr %1112, i32 0, i32 2, i32 3, i32 0, i32 6
  %1115 = load ptr, ptr %1114, align 8
  %1116 = icmp eq ptr %1115, null
  br i1 %1116, label %1119, label %1117, !prof !8

1117:                                             ; preds = %1109
  %1118 = getelementptr i8, ptr %1115, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1118, i8 57) #7, !srcloc !10
  br label %1121

1119:                                             ; preds = %1109
  %1120 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1113, i32 noundef 1, i64 noundef %1120, i32 noundef 57) #7
  br label %1121

1121:                                             ; preds = %1119, %1117
  %1122 = load ptr, ptr %1114, align 8
  %1123 = icmp eq ptr %1122, null
  br i1 %1123, label %1126, label %1124, !prof !8

1124:                                             ; preds = %1121
  %1125 = getelementptr i8, ptr %1122, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1125, i8 %1111) #7, !srcloc !10
  br label %1129

1126:                                             ; preds = %1121
  %1127 = sext i32 %790 to i64
  %1128 = zext i8 %1111 to i32
  tail call void @nvif_object_wr(ptr noundef %1113, i32 noundef 1, i64 noundef %1127, i32 noundef %1128) #7
  br label %1129

1129:                                             ; preds = %1126, %1124
  %1130 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 59
  %1131 = load i8, ptr %1130, align 1
  %1132 = load ptr, ptr %6, align 4
  %1133 = getelementptr inbounds %struct.nouveau_drm, ptr %1132, i32 0, i32 2, i32 3
  %1134 = getelementptr inbounds %struct.nouveau_drm, ptr %1132, i32 0, i32 2, i32 3, i32 0, i32 6
  %1135 = load ptr, ptr %1134, align 8
  %1136 = icmp eq ptr %1135, null
  br i1 %1136, label %1139, label %1137, !prof !8

1137:                                             ; preds = %1129
  %1138 = getelementptr i8, ptr %1135, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1138, i8 59) #7, !srcloc !10
  br label %1141

1139:                                             ; preds = %1129
  %1140 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1133, i32 noundef 1, i64 noundef %1140, i32 noundef 59) #7
  br label %1141

1141:                                             ; preds = %1139, %1137
  %1142 = load ptr, ptr %1134, align 8
  %1143 = icmp eq ptr %1142, null
  br i1 %1143, label %1146, label %1144, !prof !8

1144:                                             ; preds = %1141
  %1145 = getelementptr i8, ptr %1142, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1145, i8 %1131) #7, !srcloc !10
  br label %1149

1146:                                             ; preds = %1141
  %1147 = sext i32 %790 to i64
  %1148 = zext i8 %1131 to i32
  tail call void @nvif_object_wr(ptr noundef %1133, i32 noundef 1, i64 noundef %1147, i32 noundef %1148) #7
  br label %1149

1149:                                             ; preds = %1146, %1144
  %1150 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 60
  %1151 = load i8, ptr %1150, align 1
  %1152 = load ptr, ptr %6, align 4
  %1153 = getelementptr inbounds %struct.nouveau_drm, ptr %1152, i32 0, i32 2, i32 3
  %1154 = getelementptr inbounds %struct.nouveau_drm, ptr %1152, i32 0, i32 2, i32 3, i32 0, i32 6
  %1155 = load ptr, ptr %1154, align 8
  %1156 = icmp eq ptr %1155, null
  br i1 %1156, label %1159, label %1157, !prof !8

1157:                                             ; preds = %1149
  %1158 = getelementptr i8, ptr %1155, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1158, i8 60) #7, !srcloc !10
  br label %1161

1159:                                             ; preds = %1149
  %1160 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1153, i32 noundef 1, i64 noundef %1160, i32 noundef 60) #7
  br label %1161

1161:                                             ; preds = %1159, %1157
  %1162 = load ptr, ptr %1154, align 8
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1166, label %1164, !prof !8

1164:                                             ; preds = %1161
  %1165 = getelementptr i8, ptr %1162, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1165, i8 %1151) #7, !srcloc !10
  br label %1169

1166:                                             ; preds = %1161
  %1167 = sext i32 %790 to i64
  %1168 = zext i8 %1151 to i32
  tail call void @nvif_object_wr(ptr noundef %1153, i32 noundef 1, i64 noundef %1167, i32 noundef %1168) #7
  br label %1169

1169:                                             ; preds = %1166, %1164
  %1170 = load i8, ptr %561, align 1
  %1171 = icmp ugt i8 %1170, 1
  br i1 %1171, label %1172, label %1252

1172:                                             ; preds = %1169
  %1173 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 65
  %1174 = load i8, ptr %1173, align 1
  %1175 = load ptr, ptr %6, align 4
  %1176 = getelementptr inbounds %struct.nouveau_drm, ptr %1175, i32 0, i32 2, i32 3
  %1177 = getelementptr inbounds %struct.nouveau_drm, ptr %1175, i32 0, i32 2, i32 3, i32 0, i32 6
  %1178 = load ptr, ptr %1177, align 8
  %1179 = icmp eq ptr %1178, null
  br i1 %1179, label %1182, label %1180, !prof !8

1180:                                             ; preds = %1172
  %1181 = getelementptr i8, ptr %1178, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1181, i8 65) #7, !srcloc !10
  br label %1184

1182:                                             ; preds = %1172
  %1183 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1176, i32 noundef 1, i64 noundef %1183, i32 noundef 65) #7
  br label %1184

1184:                                             ; preds = %1182, %1180
  %1185 = load ptr, ptr %1177, align 8
  %1186 = icmp eq ptr %1185, null
  br i1 %1186, label %1189, label %1187, !prof !8

1187:                                             ; preds = %1184
  %1188 = getelementptr i8, ptr %1185, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1188, i8 %1174) #7, !srcloc !10
  br label %1192

1189:                                             ; preds = %1184
  %1190 = sext i32 %790 to i64
  %1191 = zext i8 %1174 to i32
  tail call void @nvif_object_wr(ptr noundef %1176, i32 noundef 1, i64 noundef %1190, i32 noundef %1191) #7
  br label %1192

1192:                                             ; preds = %1189, %1187
  %1193 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 69
  %1194 = load i8, ptr %1193, align 1
  %1195 = load ptr, ptr %6, align 4
  %1196 = getelementptr inbounds %struct.nouveau_drm, ptr %1195, i32 0, i32 2, i32 3
  %1197 = getelementptr inbounds %struct.nouveau_drm, ptr %1195, i32 0, i32 2, i32 3, i32 0, i32 6
  %1198 = load ptr, ptr %1197, align 8
  %1199 = icmp eq ptr %1198, null
  br i1 %1199, label %1202, label %1200, !prof !8

1200:                                             ; preds = %1192
  %1201 = getelementptr i8, ptr %1198, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1201, i8 69) #7, !srcloc !10
  br label %1204

1202:                                             ; preds = %1192
  %1203 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1196, i32 noundef 1, i64 noundef %1203, i32 noundef 69) #7
  br label %1204

1204:                                             ; preds = %1202, %1200
  %1205 = load ptr, ptr %1197, align 8
  %1206 = icmp eq ptr %1205, null
  br i1 %1206, label %1209, label %1207, !prof !8

1207:                                             ; preds = %1204
  %1208 = getelementptr i8, ptr %1205, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1208, i8 %1194) #7, !srcloc !10
  br label %1212

1209:                                             ; preds = %1204
  %1210 = sext i32 %790 to i64
  %1211 = zext i8 %1194 to i32
  tail call void @nvif_object_wr(ptr noundef %1196, i32 noundef 1, i64 noundef %1210, i32 noundef %1211) #7
  br label %1212

1212:                                             ; preds = %1209, %1207
  %1213 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 75
  %1214 = load i8, ptr %1213, align 1
  %1215 = load ptr, ptr %6, align 4
  %1216 = getelementptr inbounds %struct.nouveau_drm, ptr %1215, i32 0, i32 2, i32 3
  %1217 = getelementptr inbounds %struct.nouveau_drm, ptr %1215, i32 0, i32 2, i32 3, i32 0, i32 6
  %1218 = load ptr, ptr %1217, align 8
  %1219 = icmp eq ptr %1218, null
  br i1 %1219, label %1222, label %1220, !prof !8

1220:                                             ; preds = %1212
  %1221 = getelementptr i8, ptr %1218, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1221, i8 75) #7, !srcloc !10
  br label %1224

1222:                                             ; preds = %1212
  %1223 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1216, i32 noundef 1, i64 noundef %1223, i32 noundef 75) #7
  br label %1224

1224:                                             ; preds = %1222, %1220
  %1225 = load ptr, ptr %1217, align 8
  %1226 = icmp eq ptr %1225, null
  br i1 %1226, label %1229, label %1227, !prof !8

1227:                                             ; preds = %1224
  %1228 = getelementptr i8, ptr %1225, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1228, i8 %1214) #7, !srcloc !10
  br label %1232

1229:                                             ; preds = %1224
  %1230 = sext i32 %790 to i64
  %1231 = zext i8 %1214 to i32
  tail call void @nvif_object_wr(ptr noundef %1216, i32 noundef 1, i64 noundef %1230, i32 noundef %1231) #7
  br label %1232

1232:                                             ; preds = %1229, %1227
  %1233 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 82
  %1234 = load i8, ptr %1233, align 1
  %1235 = load ptr, ptr %6, align 4
  %1236 = getelementptr inbounds %struct.nouveau_drm, ptr %1235, i32 0, i32 2, i32 3
  %1237 = getelementptr inbounds %struct.nouveau_drm, ptr %1235, i32 0, i32 2, i32 3, i32 0, i32 6
  %1238 = load ptr, ptr %1237, align 8
  %1239 = icmp eq ptr %1238, null
  br i1 %1239, label %1242, label %1240, !prof !8

1240:                                             ; preds = %1232
  %1241 = getelementptr i8, ptr %1238, i32 %782
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1241, i8 82) #7, !srcloc !10
  br label %1244

1242:                                             ; preds = %1232
  %1243 = sext i32 %782 to i64
  tail call void @nvif_object_wr(ptr noundef %1236, i32 noundef 1, i64 noundef %1243, i32 noundef 82) #7
  br label %1244

1244:                                             ; preds = %1242, %1240
  %1245 = load ptr, ptr %1237, align 8
  %1246 = icmp eq ptr %1245, null
  br i1 %1246, label %1249, label %1247, !prof !8

1247:                                             ; preds = %1244
  %1248 = getelementptr i8, ptr %1245, i32 %790
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1248, i8 %1234) #7, !srcloc !10
  br label %1252

1249:                                             ; preds = %1244
  %1250 = sext i32 %790 to i64
  %1251 = zext i8 %1234 to i32
  tail call void @nvif_object_wr(ptr noundef %1236, i32 noundef 1, i64 noundef %1250, i32 noundef %1251) #7
  br label %1252

1252:                                             ; preds = %1249, %1247, %1169
  %1253 = load ptr, ptr %6, align 4
  %1254 = load ptr, ptr %48, align 4
  %1255 = getelementptr i8, ptr %1254, i32 -102
  %1256 = load i16, ptr %1255, align 2
  %1257 = and i16 %1256, 4080
  %1258 = getelementptr inbounds %struct.nouveau_drm, ptr %1253, i32 0, i32 2, i32 3, i32 1, i32 4
  %1259 = load i8, ptr %1258, align 1
  %1260 = icmp ugt i8 %1259, 1
  %1261 = icmp ne i16 %1257, 256
  %1262 = select i1 %1260, i1 %1261, i1 false
  %1263 = icmp ne i16 %1257, 336
  %1264 = select i1 %1262, i1 %1263, i1 false
  %1265 = icmp ne i16 %1257, 416
  %1266 = select i1 %1264, i1 %1265, i1 false
  %1267 = icmp ne i16 %1257, 512
  %1268 = select i1 %1266, i1 %1267, i1 false
  %1269 = icmp ne i16 %1257, 272
  %1270 = select i1 %1268, i1 %1269, i1 false
  br i1 %1270, label %1271, label %1483

1271:                                             ; preds = %1252
  %1272 = load i8, ptr %561, align 1
  %1273 = icmp ult i8 %1272, 3
  br i1 %1273, label %1274, label %1309

1274:                                             ; preds = %1271
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false) #7, !annotation !13
  call void @nvif_timer_wait_init(ptr noundef %560, i64 noundef 650000000, ptr noundef nonnull %4) #7
  %1275 = getelementptr inbounds %struct.nouveau_drm, ptr %559, i32 0, i32 2, i32 3, i32 0, i32 6
  br label %1276

1276:                                             ; preds = %1288, %1274
  %1277 = load ptr, ptr %1275, align 8
  %1278 = icmp eq ptr %1277, null
  br i1 %1278, label %1282, label %1279, !prof !8

1279:                                             ; preds = %1276
  %1280 = getelementptr i8, ptr %1277, i32 6296538
  %1281 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1280) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1284

1282:                                             ; preds = %1276
  %1283 = call i32 @nvif_object_rd(ptr noundef %560, i32 noundef 4, i64 noundef 6296538) #7
  br label %1284

1284:                                             ; preds = %1282, %1279
  %1285 = phi i32 [ %1281, %1279 ], [ %1283, %1282 ]
  %1286 = and i32 %1285, 8
  %1287 = icmp eq i32 %1286, 0
  br i1 %1287, label %1288, label %1291

1288:                                             ; preds = %1284
  %1289 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %4) #7
  %1290 = icmp sgt i64 %1289, -1
  br i1 %1290, label %1276, label %1291

1291:                                             ; preds = %1288, %1284
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #7
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #7
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %5, i8 0, i32 40, i1 false) #7, !annotation !13
  call void @nvif_timer_wait_init(ptr noundef %560, i64 noundef 650000000, ptr noundef nonnull %5) #7
  br label %1292

1292:                                             ; preds = %1304, %1291
  %1293 = load ptr, ptr %1275, align 8
  %1294 = icmp eq ptr %1293, null
  br i1 %1294, label %1298, label %1295, !prof !8

1295:                                             ; preds = %1292
  %1296 = getelementptr i8, ptr %1293, i32 6296538
  %1297 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1296) #7, !srcloc !14
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !15
  br label %1300

1298:                                             ; preds = %1292
  %1299 = call i32 @nvif_object_rd(ptr noundef %560, i32 noundef 4, i64 noundef 6296538) #7
  br label %1300

1300:                                             ; preds = %1298, %1295
  %1301 = phi i32 [ %1297, %1295 ], [ %1299, %1298 ]
  %1302 = and i32 %1301, 8
  %1303 = icmp eq i32 %1302, 0
  br i1 %1303, label %1307, label %1304

1304:                                             ; preds = %1300
  %1305 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %5) #7
  %1306 = icmp sgt i64 %1305, -1
  br i1 %1306, label %1292, label %1307

1307:                                             ; preds = %1304, %1300
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #7
  %1308 = load ptr, ptr %6, align 4
  br label %1309

1309:                                             ; preds = %1307, %1271
  %1310 = phi ptr [ %1308, %1307 ], [ %1253, %1271 ]
  %1311 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 66
  %1312 = load i8, ptr %1311, align 1
  %1313 = getelementptr inbounds %struct.nouveau_drm, ptr %1310, i32 0, i32 2, i32 3
  %1314 = getelementptr inbounds %struct.nouveau_drm, ptr %1310, i32 0, i32 2, i32 3, i32 0, i32 6
  %1315 = load ptr, ptr %1314, align 8
  %1316 = icmp eq ptr %1315, null
  br i1 %1316, label %1319, label %1317, !prof !8

1317:                                             ; preds = %1309
  %1318 = getelementptr i8, ptr %1315, i32 %782
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1318, i8 66) #7, !srcloc !10
  br label %1321

1319:                                             ; preds = %1309
  %1320 = sext i32 %782 to i64
  call void @nvif_object_wr(ptr noundef %1313, i32 noundef 1, i64 noundef %1320, i32 noundef 66) #7
  br label %1321

1321:                                             ; preds = %1319, %1317
  %1322 = load ptr, ptr %1314, align 8
  %1323 = icmp eq ptr %1322, null
  br i1 %1323, label %1326, label %1324, !prof !8

1324:                                             ; preds = %1321
  %1325 = getelementptr i8, ptr %1322, i32 %790
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1325, i8 %1312) #7, !srcloc !10
  br label %1329

1326:                                             ; preds = %1321
  %1327 = sext i32 %790 to i64
  %1328 = zext i8 %1312 to i32
  call void @nvif_object_wr(ptr noundef %1313, i32 noundef 1, i64 noundef %1327, i32 noundef %1328) #7
  br label %1329

1329:                                             ; preds = %1326, %1324
  %1330 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 83
  %1331 = load i8, ptr %1330, align 1
  %1332 = load ptr, ptr %6, align 4
  %1333 = getelementptr inbounds %struct.nouveau_drm, ptr %1332, i32 0, i32 2, i32 3
  %1334 = getelementptr inbounds %struct.nouveau_drm, ptr %1332, i32 0, i32 2, i32 3, i32 0, i32 6
  %1335 = load ptr, ptr %1334, align 8
  %1336 = icmp eq ptr %1335, null
  br i1 %1336, label %1339, label %1337, !prof !8

1337:                                             ; preds = %1329
  %1338 = getelementptr i8, ptr %1335, i32 %782
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1338, i8 83) #7, !srcloc !10
  br label %1341

1339:                                             ; preds = %1329
  %1340 = sext i32 %782 to i64
  call void @nvif_object_wr(ptr noundef %1333, i32 noundef 1, i64 noundef %1340, i32 noundef 83) #7
  br label %1341

1341:                                             ; preds = %1339, %1337
  %1342 = load ptr, ptr %1334, align 8
  %1343 = icmp eq ptr %1342, null
  br i1 %1343, label %1346, label %1344, !prof !8

1344:                                             ; preds = %1341
  %1345 = getelementptr i8, ptr %1342, i32 %790
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1345, i8 %1331) #7, !srcloc !10
  br label %1349

1346:                                             ; preds = %1341
  %1347 = sext i32 %790 to i64
  %1348 = zext i8 %1331 to i32
  call void @nvif_object_wr(ptr noundef %1333, i32 noundef 1, i64 noundef %1347, i32 noundef %1348) #7
  br label %1349

1349:                                             ; preds = %1346, %1344
  %1350 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 84
  %1351 = load i8, ptr %1350, align 1
  %1352 = load ptr, ptr %6, align 4
  %1353 = getelementptr inbounds %struct.nouveau_drm, ptr %1352, i32 0, i32 2, i32 3
  %1354 = getelementptr inbounds %struct.nouveau_drm, ptr %1352, i32 0, i32 2, i32 3, i32 0, i32 6
  %1355 = load ptr, ptr %1354, align 8
  %1356 = icmp eq ptr %1355, null
  br i1 %1356, label %1359, label %1357, !prof !8

1357:                                             ; preds = %1349
  %1358 = getelementptr i8, ptr %1355, i32 %782
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1358, i8 84) #7, !srcloc !10
  br label %1361

1359:                                             ; preds = %1349
  %1360 = sext i32 %782 to i64
  call void @nvif_object_wr(ptr noundef %1353, i32 noundef 1, i64 noundef %1360, i32 noundef 84) #7
  br label %1361

1361:                                             ; preds = %1359, %1357
  %1362 = load ptr, ptr %1354, align 8
  %1363 = icmp eq ptr %1362, null
  br i1 %1363, label %1367, label %1364, !prof !8

1364:                                             ; preds = %1361
  %1365 = getelementptr i8, ptr %1362, i32 %790
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1365, i8 %1351) #7, !srcloc !10
  %1366 = sext i32 %790 to i64
  br label %1370

1367:                                             ; preds = %1361
  %1368 = sext i32 %790 to i64
  %1369 = zext i8 %1351 to i32
  call void @nvif_object_wr(ptr noundef %1353, i32 noundef 1, i64 noundef %1368, i32 noundef %1369) #7
  br label %1370

1370:                                             ; preds = %1367, %1364
  %1371 = phi i64 [ %1366, %1364 ], [ %1368, %1367 ]
  %1372 = sext i32 %782 to i64
  br label %1373

1373:                                             ; preds = %1408, %1370
  %1374 = phi i32 [ 0, %1370 ], [ %1409, %1408 ]
  %1375 = trunc i32 %1374 to i8
  %1376 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 2, i32 %1374
  %1377 = load i8, ptr %1376, align 1
  %1378 = load ptr, ptr %6, align 4
  %1379 = getelementptr inbounds %struct.nouveau_drm, ptr %1378, i32 0, i32 2, i32 3
  %1380 = getelementptr inbounds %struct.nouveau_drm, ptr %1378, i32 0, i32 2, i32 3, i32 0, i32 6
  %1381 = load ptr, ptr %1380, align 8
  %1382 = icmp eq ptr %1381, null
  br i1 %1382, label %1385, label %1383, !prof !8

1383:                                             ; preds = %1373
  %1384 = getelementptr i8, ptr %1381, i32 %782
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1384, i8 87) #7, !srcloc !10
  br label %1386

1385:                                             ; preds = %1373
  call void @nvif_object_wr(ptr noundef %1379, i32 noundef 1, i64 noundef %1372, i32 noundef 87) #7
  br label %1386

1386:                                             ; preds = %1385, %1383
  %1387 = load ptr, ptr %1380, align 8
  %1388 = icmp eq ptr %1387, null
  br i1 %1388, label %1391, label %1389, !prof !8

1389:                                             ; preds = %1386
  %1390 = getelementptr i8, ptr %1387, i32 %790
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1390, i8 %1375) #7, !srcloc !10
  br label %1392

1391:                                             ; preds = %1386
  call void @nvif_object_wr(ptr noundef %1379, i32 noundef 1, i64 noundef %1371, i32 noundef %1374) #7
  br label %1392

1392:                                             ; preds = %1391, %1389
  %1393 = load ptr, ptr %6, align 4
  %1394 = getelementptr inbounds %struct.nouveau_drm, ptr %1393, i32 0, i32 2, i32 3
  %1395 = getelementptr inbounds %struct.nouveau_drm, ptr %1393, i32 0, i32 2, i32 3, i32 0, i32 6
  %1396 = load ptr, ptr %1395, align 8
  %1397 = icmp eq ptr %1396, null
  br i1 %1397, label %1400, label %1398, !prof !8

1398:                                             ; preds = %1392
  %1399 = getelementptr i8, ptr %1396, i32 %782
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1399, i8 88) #7, !srcloc !10
  br label %1401

1400:                                             ; preds = %1392
  call void @nvif_object_wr(ptr noundef %1394, i32 noundef 1, i64 noundef %1372, i32 noundef 88) #7
  br label %1401

1401:                                             ; preds = %1400, %1398
  %1402 = load ptr, ptr %1395, align 8
  %1403 = icmp eq ptr %1402, null
  br i1 %1403, label %1406, label %1404, !prof !8

1404:                                             ; preds = %1401
  %1405 = getelementptr i8, ptr %1402, i32 %790
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1405, i8 %1377) #7, !srcloc !10
  br label %1408

1406:                                             ; preds = %1401
  %1407 = zext i8 %1377 to i32
  call void @nvif_object_wr(ptr noundef %1394, i32 noundef 1, i64 noundef %1371, i32 noundef %1407) #7
  br label %1408

1408:                                             ; preds = %1406, %1404
  %1409 = add nuw nsw i32 %1374, 1
  %1410 = icmp eq i32 %1409, 16
  br i1 %1410, label %1411, label %1373

1411:                                             ; preds = %1408
  %1412 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 89
  %1413 = load i8, ptr %1412, align 1
  %1414 = load ptr, ptr %6, align 4
  %1415 = getelementptr inbounds %struct.nouveau_drm, ptr %1414, i32 0, i32 2, i32 3
  %1416 = getelementptr inbounds %struct.nouveau_drm, ptr %1414, i32 0, i32 2, i32 3, i32 0, i32 6
  %1417 = load ptr, ptr %1416, align 8
  %1418 = icmp eq ptr %1417, null
  br i1 %1418, label %1421, label %1419, !prof !8

1419:                                             ; preds = %1411
  %1420 = getelementptr i8, ptr %1417, i32 %782
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1420, i8 89) #7, !srcloc !10
  br label %1422

1421:                                             ; preds = %1411
  call void @nvif_object_wr(ptr noundef %1415, i32 noundef 1, i64 noundef %1372, i32 noundef 89) #7
  br label %1422

1422:                                             ; preds = %1421, %1419
  %1423 = load ptr, ptr %1416, align 8
  %1424 = icmp eq ptr %1423, null
  br i1 %1424, label %1427, label %1425, !prof !8

1425:                                             ; preds = %1422
  %1426 = getelementptr i8, ptr %1423, i32 %790
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1426, i8 %1413) #7, !srcloc !10
  br label %1429

1427:                                             ; preds = %1422
  %1428 = zext i8 %1413 to i32
  call void @nvif_object_wr(ptr noundef %1415, i32 noundef 1, i64 noundef %1371, i32 noundef %1428) #7
  br label %1429

1429:                                             ; preds = %1427, %1425
  %1430 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 91
  %1431 = load i8, ptr %1430, align 1
  %1432 = load ptr, ptr %6, align 4
  %1433 = getelementptr inbounds %struct.nouveau_drm, ptr %1432, i32 0, i32 2, i32 3
  %1434 = getelementptr inbounds %struct.nouveau_drm, ptr %1432, i32 0, i32 2, i32 3, i32 0, i32 6
  %1435 = load ptr, ptr %1434, align 8
  %1436 = icmp eq ptr %1435, null
  br i1 %1436, label %1439, label %1437, !prof !8

1437:                                             ; preds = %1429
  %1438 = getelementptr i8, ptr %1435, i32 %782
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1438, i8 91) #7, !srcloc !10
  br label %1440

1439:                                             ; preds = %1429
  call void @nvif_object_wr(ptr noundef %1433, i32 noundef 1, i64 noundef %1372, i32 noundef 91) #7
  br label %1440

1440:                                             ; preds = %1439, %1437
  %1441 = load ptr, ptr %1434, align 8
  %1442 = icmp eq ptr %1441, null
  br i1 %1442, label %1445, label %1443, !prof !8

1443:                                             ; preds = %1440
  %1444 = getelementptr i8, ptr %1441, i32 %790
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1444, i8 %1431) #7, !srcloc !10
  br label %1447

1445:                                             ; preds = %1440
  %1446 = zext i8 %1431 to i32
  call void @nvif_object_wr(ptr noundef %1433, i32 noundef 1, i64 noundef %1371, i32 noundef %1446) #7
  br label %1447

1447:                                             ; preds = %1445, %1443
  %1448 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 133
  %1449 = load i8, ptr %1448, align 1
  %1450 = load ptr, ptr %6, align 4
  %1451 = getelementptr inbounds %struct.nouveau_drm, ptr %1450, i32 0, i32 2, i32 3
  %1452 = getelementptr inbounds %struct.nouveau_drm, ptr %1450, i32 0, i32 2, i32 3, i32 0, i32 6
  %1453 = load ptr, ptr %1452, align 8
  %1454 = icmp eq ptr %1453, null
  br i1 %1454, label %1457, label %1455, !prof !8

1455:                                             ; preds = %1447
  %1456 = getelementptr i8, ptr %1453, i32 %782
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1456, i8 -123) #7, !srcloc !10
  br label %1458

1457:                                             ; preds = %1447
  call void @nvif_object_wr(ptr noundef %1451, i32 noundef 1, i64 noundef %1372, i32 noundef 133) #7
  br label %1458

1458:                                             ; preds = %1457, %1455
  %1459 = load ptr, ptr %1452, align 8
  %1460 = icmp eq ptr %1459, null
  br i1 %1460, label %1463, label %1461, !prof !8

1461:                                             ; preds = %1458
  %1462 = getelementptr i8, ptr %1459, i32 %790
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1462, i8 %1449) #7, !srcloc !10
  br label %1465

1463:                                             ; preds = %1458
  %1464 = zext i8 %1449 to i32
  call void @nvif_object_wr(ptr noundef %1451, i32 noundef 1, i64 noundef %1371, i32 noundef %1464) #7
  br label %1465

1465:                                             ; preds = %1463, %1461
  %1466 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 134
  %1467 = load i8, ptr %1466, align 1
  %1468 = load ptr, ptr %6, align 4
  %1469 = getelementptr inbounds %struct.nouveau_drm, ptr %1468, i32 0, i32 2, i32 3
  %1470 = getelementptr inbounds %struct.nouveau_drm, ptr %1468, i32 0, i32 2, i32 3, i32 0, i32 6
  %1471 = load ptr, ptr %1470, align 8
  %1472 = icmp eq ptr %1471, null
  br i1 %1472, label %1475, label %1473, !prof !8

1473:                                             ; preds = %1465
  %1474 = getelementptr i8, ptr %1471, i32 %782
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1474, i8 -122) #7, !srcloc !10
  br label %1476

1475:                                             ; preds = %1465
  call void @nvif_object_wr(ptr noundef %1469, i32 noundef 1, i64 noundef %1372, i32 noundef 134) #7
  br label %1476

1476:                                             ; preds = %1475, %1473
  %1477 = load ptr, ptr %1470, align 8
  %1478 = icmp eq ptr %1477, null
  br i1 %1478, label %1481, label %1479, !prof !8

1479:                                             ; preds = %1476
  %1480 = getelementptr i8, ptr %1477, i32 %790
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1480, i8 %1467) #7, !srcloc !10
  br label %1483

1481:                                             ; preds = %1476
  %1482 = zext i8 %1467 to i32
  call void @nvif_object_wr(ptr noundef %1469, i32 noundef 1, i64 noundef %1371, i32 noundef %1482) #7
  br label %1483

1483:                                             ; preds = %1481, %1479, %1252
  %1484 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 7
  %1485 = load i32, ptr %1484, align 4
  %1486 = load ptr, ptr %6, align 4
  %1487 = select i1 %14, i32 6293504, i32 6301696
  %1488 = getelementptr inbounds %struct.nouveau_drm, ptr %1486, i32 0, i32 2, i32 3, i32 0, i32 6
  %1489 = load ptr, ptr %1488, align 8
  %1490 = icmp eq ptr %1489, null
  br i1 %1490, label %1493, label %1491, !prof !8

1491:                                             ; preds = %1483
  %1492 = getelementptr i8, ptr %1489, i32 %1487
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1492, i32 %1485) #7, !srcloc !17
  br label %1496

1493:                                             ; preds = %1483
  %1494 = getelementptr inbounds %struct.nouveau_drm, ptr %1486, i32 0, i32 2, i32 3
  %1495 = zext i32 %1487 to i64
  call void @nvif_object_wr(ptr noundef %1494, i32 noundef 4, i64 noundef %1495, i32 noundef %1485) #7
  br label %1496

1496:                                             ; preds = %1493, %1491
  call void @nouveau_hw_load_state_palette(ptr noundef %0, i32 noundef %1, ptr noundef %2)
  %1497 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1
  %1498 = load i8, ptr %1497, align 4
  %1499 = load ptr, ptr %6, align 4
  %1500 = getelementptr inbounds %struct.nouveau_drm, ptr %1499, i32 0, i32 2, i32 3
  br i1 %14, label %1506, label %1501

1501:                                             ; preds = %1496
  %1502 = getelementptr inbounds %struct.nouveau_drm, ptr %1499, i32 0, i32 2, i32 3, i32 1, i32 4
  %1503 = load i8, ptr %1502, align 1
  %1504 = icmp eq i8 %1503, 5
  %1505 = select i1 %1504, i32 795586, i32 787394
  br label %1506

1506:                                             ; preds = %1501, %1496
  %1507 = phi i32 [ 787394, %1496 ], [ %1505, %1501 ]
  %1508 = getelementptr inbounds %struct.nouveau_drm, ptr %1499, i32 0, i32 2, i32 3, i32 0, i32 6
  %1509 = load ptr, ptr %1508, align 8
  %1510 = icmp eq ptr %1509, null
  br i1 %1510, label %1513, label %1511, !prof !8

1511:                                             ; preds = %1506
  %1512 = getelementptr i8, ptr %1509, i32 %1507
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1512, i8 %1498) #7, !srcloc !10
  br label %1516

1513:                                             ; preds = %1506
  %1514 = zext i32 %1507 to i64
  %1515 = zext i8 %1498 to i32
  call void @nvif_object_wr(ptr noundef %1500, i32 noundef 1, i64 noundef %1514, i32 noundef %1515) #7
  br label %1516

1516:                                             ; preds = %1513, %1511
  %1517 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 3, i32 0
  %1518 = load i8, ptr %1517, align 1
  call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %1518) #7
  %1519 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 3, i32 1
  %1520 = load i8, ptr %1519, align 1
  call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %1520) #7
  %1521 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 3, i32 2
  %1522 = load i8, ptr %1521, align 1
  call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %1522) #7
  %1523 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 3, i32 3
  %1524 = load i8, ptr %1523, align 1
  call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %1524) #7
  %1525 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 3, i32 4
  %1526 = load i8, ptr %1525, align 1
  call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 4, i8 noundef zeroext %1526) #7
  call fastcc void @nv_lock_vga_crtc_base(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false) #7
  %1527 = sext i32 %782 to i64
  %1528 = sext i32 %790 to i64
  br label %1529

1529:                                             ; preds = %1549, %1516
  %1530 = phi i32 [ 0, %1516 ], [ %1550, %1549 ]
  %1531 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 1, i32 %1530
  %1532 = load i8, ptr %1531, align 1
  %1533 = load ptr, ptr %6, align 4
  %1534 = getelementptr inbounds %struct.nouveau_drm, ptr %1533, i32 0, i32 2, i32 3
  %1535 = getelementptr inbounds %struct.nouveau_drm, ptr %1533, i32 0, i32 2, i32 3, i32 0, i32 6
  %1536 = load ptr, ptr %1535, align 8
  %1537 = icmp eq ptr %1536, null
  br i1 %1537, label %1541, label %1538, !prof !8

1538:                                             ; preds = %1529
  %1539 = trunc i32 %1530 to i8
  %1540 = getelementptr i8, ptr %1536, i32 %782
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1540, i8 %1539) #7, !srcloc !10
  br label %1542

1541:                                             ; preds = %1529
  call void @nvif_object_wr(ptr noundef %1534, i32 noundef 1, i64 noundef %1527, i32 noundef %1530) #7
  br label %1542

1542:                                             ; preds = %1541, %1538
  %1543 = load ptr, ptr %1535, align 8
  %1544 = icmp eq ptr %1543, null
  br i1 %1544, label %1547, label %1545, !prof !8

1545:                                             ; preds = %1542
  %1546 = getelementptr i8, ptr %1543, i32 %790
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1546, i8 %1532) #7, !srcloc !10
  br label %1549

1547:                                             ; preds = %1542
  %1548 = zext i8 %1532 to i32
  call void @nvif_object_wr(ptr noundef %1534, i32 noundef 1, i64 noundef %1528, i32 noundef %1548) #7
  br label %1549

1549:                                             ; preds = %1547, %1545
  %1550 = add nuw nsw i32 %1530, 1
  %1551 = icmp eq i32 %1550, 25
  br i1 %1551, label %1552, label %1529

1552:                                             ; preds = %1549
  call fastcc void @nv_lock_vga_crtc_base(ptr noundef %0, i32 noundef %1, i1 noundef zeroext true) #7
  %1553 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 4, i32 0
  %1554 = load i8, ptr %1553, align 1
  call void @NVWriteVgaGr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext %1554) #7
  %1555 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 4, i32 1
  %1556 = load i8, ptr %1555, align 1
  call void @NVWriteVgaGr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %1556) #7
  %1557 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 4, i32 2
  %1558 = load i8, ptr %1557, align 1
  call void @NVWriteVgaGr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 2, i8 noundef zeroext %1558) #7
  %1559 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 4, i32 3
  %1560 = load i8, ptr %1559, align 1
  call void @NVWriteVgaGr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 3, i8 noundef zeroext %1560) #7
  %1561 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 4, i32 4
  %1562 = load i8, ptr %1561, align 1
  call void @NVWriteVgaGr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 4, i8 noundef zeroext %1562) #7
  %1563 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 4, i32 5
  %1564 = load i8, ptr %1563, align 1
  call void @NVWriteVgaGr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 5, i8 noundef zeroext %1564) #7
  %1565 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 4, i32 6
  %1566 = load i8, ptr %1565, align 1
  call void @NVWriteVgaGr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 6, i8 noundef zeroext %1566) #7
  %1567 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 4, i32 7
  %1568 = load i8, ptr %1567, align 1
  call void @NVWriteVgaGr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 7, i8 noundef zeroext %1568) #7
  %1569 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 4, i32 8
  %1570 = load i8, ptr %1569, align 1
  call void @NVWriteVgaGr(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 8, i8 noundef zeroext %1570) #7
  %1571 = load ptr, ptr %6, align 4
  %1572 = getelementptr inbounds %struct.nouveau_drm, ptr %1571, i32 0, i32 2, i32 3
  %1573 = getelementptr inbounds %struct.nouveau_drm, ptr %1571, i32 0, i32 2, i32 3, i32 0, i32 6
  %1574 = load ptr, ptr %1573, align 8
  %1575 = icmp eq ptr %1574, null
  %1576 = add i32 %781, 6296538
  br i1 %1575, label %1580, label %1577, !prof !8

1577:                                             ; preds = %1552
  %1578 = getelementptr i8, ptr %1574, i32 %1576
  %1579 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1578) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %1583

1580:                                             ; preds = %1552
  %1581 = sext i32 %1576 to i64
  %1582 = call i32 @nvif_object_rd(ptr noundef %1572, i32 noundef 1, i64 noundef %1581) #7
  br label %1583

1583:                                             ; preds = %1580, %1577
  %1584 = load ptr, ptr %1573, align 8
  %1585 = icmp eq ptr %1584, null
  %1586 = add i32 %781, 6296512
  br i1 %1585, label %1590, label %1587, !prof !8

1587:                                             ; preds = %1583
  %1588 = getelementptr i8, ptr %1584, i32 %1586
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1588, i8 0) #7, !srcloc !10
  %1589 = sext i32 %1586 to i64
  br label %1592

1590:                                             ; preds = %1583
  %1591 = sext i32 %1586 to i64
  call void @nvif_object_wr(ptr noundef %1572, i32 noundef 1, i64 noundef %1591, i32 noundef 0) #7
  br label %1592

1592:                                             ; preds = %1590, %1587
  %1593 = phi i64 [ %1589, %1587 ], [ %1591, %1590 ]
  %1594 = sext i32 %1576 to i64
  br label %1595

1595:                                             ; preds = %1646, %1592
  %1596 = phi i32 [ 0, %1592 ], [ %1647, %1646 ]
  %1597 = trunc i32 %1596 to i8
  %1598 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %2, i32 0, i32 %1, i32 5, i32 %1596
  %1599 = load i8, ptr %1598, align 1
  %1600 = load ptr, ptr %6, align 4
  %1601 = getelementptr inbounds %struct.nouveau_drm, ptr %1600, i32 0, i32 2, i32 3
  %1602 = getelementptr inbounds %struct.nouveau_drm, ptr %1600, i32 0, i32 2, i32 3, i32 0, i32 6
  %1603 = load ptr, ptr %1602, align 8
  %1604 = icmp eq ptr %1603, null
  br i1 %1604, label %1608, label %1605, !prof !8

1605:                                             ; preds = %1595
  %1606 = getelementptr i8, ptr %1603, i32 %1576
  %1607 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1606) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %1610

1608:                                             ; preds = %1595
  %1609 = call i32 @nvif_object_rd(ptr noundef %1601, i32 noundef 1, i64 noundef %1594) #7
  br label %1610

1610:                                             ; preds = %1608, %1605
  %1611 = load ptr, ptr %1602, align 8
  %1612 = icmp eq ptr %1611, null
  br i1 %1612, label %1617, label %1613, !prof !8

1613:                                             ; preds = %1610
  %1614 = getelementptr i8, ptr %1611, i32 %1586
  %1615 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1614) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %1616 = zext i8 %1615 to i32
  br label %1619

1617:                                             ; preds = %1610
  %1618 = call i32 @nvif_object_rd(ptr noundef %1601, i32 noundef 1, i64 noundef %1593) #7
  br label %1619

1619:                                             ; preds = %1617, %1613
  %1620 = phi i32 [ %1616, %1613 ], [ %1618, %1617 ]
  %1621 = and i8 %1597, -33
  %1622 = trunc i32 %1620 to i8
  %1623 = and i8 %1622, 32
  %1624 = or i8 %1623, %1621
  %1625 = load ptr, ptr %1602, align 8
  %1626 = icmp eq ptr %1625, null
  br i1 %1626, label %1630, label %1627, !prof !8

1627:                                             ; preds = %1619
  %1628 = getelementptr i8, ptr %1625, i32 %1576
  %1629 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1628) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %1632

1630:                                             ; preds = %1619
  %1631 = call i32 @nvif_object_rd(ptr noundef %1601, i32 noundef 1, i64 noundef %1594) #7
  br label %1632

1632:                                             ; preds = %1630, %1627
  %1633 = load ptr, ptr %1602, align 8
  %1634 = icmp eq ptr %1633, null
  br i1 %1634, label %1637, label %1635, !prof !8

1635:                                             ; preds = %1632
  %1636 = getelementptr i8, ptr %1633, i32 %1586
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1636, i8 %1624) #7, !srcloc !10
  br label %1639

1637:                                             ; preds = %1632
  %1638 = zext i8 %1624 to i32
  call void @nvif_object_wr(ptr noundef %1601, i32 noundef 1, i64 noundef %1593, i32 noundef %1638) #7
  br label %1639

1639:                                             ; preds = %1637, %1635
  %1640 = load ptr, ptr %1602, align 8
  %1641 = icmp eq ptr %1640, null
  br i1 %1641, label %1644, label %1642, !prof !8

1642:                                             ; preds = %1639
  %1643 = getelementptr i8, ptr %1640, i32 %1586
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1643, i8 %1599) #7, !srcloc !10
  br label %1646

1644:                                             ; preds = %1639
  %1645 = zext i8 %1599 to i32
  call void @nvif_object_wr(ptr noundef %1601, i32 noundef 1, i64 noundef %1593, i32 noundef %1645) #7
  br label %1646

1646:                                             ; preds = %1644, %1642
  %1647 = add nuw nsw i32 %1596, 1
  %1648 = icmp eq i32 %1647, 21
  br i1 %1648, label %1649, label %1595

1649:                                             ; preds = %1646
  %1650 = load ptr, ptr %6, align 4
  %1651 = getelementptr inbounds %struct.nouveau_drm, ptr %1650, i32 0, i32 2, i32 3
  %1652 = getelementptr inbounds %struct.nouveau_drm, ptr %1650, i32 0, i32 2, i32 3, i32 0, i32 6
  %1653 = load ptr, ptr %1652, align 8
  %1654 = icmp eq ptr %1653, null
  br i1 %1654, label %1658, label %1655, !prof !8

1655:                                             ; preds = %1649
  %1656 = getelementptr i8, ptr %1653, i32 %1576
  %1657 = call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %1656) #7, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %1660

1658:                                             ; preds = %1649
  %1659 = call i32 @nvif_object_rd(ptr noundef %1651, i32 noundef 1, i64 noundef %1594) #7
  br label %1660

1660:                                             ; preds = %1658, %1655
  %1661 = load ptr, ptr %1652, align 8
  %1662 = icmp eq ptr %1661, null
  br i1 %1662, label %1665, label %1663, !prof !8

1663:                                             ; preds = %1660
  %1664 = getelementptr i8, ptr %1661, i32 %1586
  call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  call void @arm_heavy_mb() #7
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %1664, i8 32) #7, !srcloc !10
  br label %1666

1665:                                             ; preds = %1660
  call void @nvif_object_wr(ptr noundef %1651, i32 noundef 1, i64 noundef %1593, i32 noundef 32) #7
  br label %1666

1666:                                             ; preds = %1665, %1663
  call fastcc void @NVVgaProtect(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @NVVgaProtect(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 1, i32 4
  %10 = load i8, ptr %9, align 1
  %11 = icmp eq i8 %10, 5
  %12 = select i1 %11, i32 795588, i32 787396
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi i32 [ 787396, %3 ], [ %12, %8 ]
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %20, label %18, !prof !8

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %16, i32 %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %19, i8 1) #7, !srcloc !10
  br label %22

20:                                               ; preds = %13
  %21 = zext i32 %14 to i64
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 1, i64 noundef %21, i32 noundef 1) #7
  br label %22

22:                                               ; preds = %20, %18
  %23 = load ptr, ptr %4, align 4
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 2, i32 3
  br i1 %7, label %30, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 2, i32 3, i32 1, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = icmp eq i8 %27, 5
  %29 = select i1 %28, i32 795589, i32 787397
  br label %30

30:                                               ; preds = %25, %22
  %31 = phi i32 [ 787397, %22 ], [ %29, %25 ]
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 2, i32 3, i32 0, i32 6
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !8

35:                                               ; preds = %30
  %36 = getelementptr i8, ptr %33, i32 %31
  %37 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %36) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %38 = zext i8 %37 to i32
  br label %42

39:                                               ; preds = %30
  %40 = zext i32 %31 to i64
  %41 = tail call i32 @nvif_object_rd(ptr noundef %24, i32 noundef 1, i64 noundef %40) #7
  br label %42

42:                                               ; preds = %39, %35
  %43 = phi i32 [ %38, %35 ], [ %41, %39 ]
  %44 = trunc i32 %43 to i8
  br i1 %2, label %45, label %47

45:                                               ; preds = %42
  tail call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 1) #7
  %46 = or i8 %44, 32
  tail call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %46)
  br label %49

47:                                               ; preds = %42
  %48 = and i8 %44, -33
  tail call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 1, i8 noundef zeroext %48)
  tail call void @NVWriteVgaSeq(ptr noundef %0, i32 noundef %1, i8 noundef zeroext 0, i8 noundef zeroext 3) #7
  br label %49

49:                                               ; preds = %47, %45
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 3, i32 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  %55 = shl i32 %1, 13
  %56 = add i32 %55, 6296538
  br i1 %54, label %60, label %57, !prof !8

57:                                               ; preds = %49
  %58 = getelementptr i8, ptr %53, i32 %56
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %58) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  br label %63

60:                                               ; preds = %49
  %61 = sext i32 %56 to i64
  %62 = tail call i32 @nvif_object_rd(ptr noundef %51, i32 noundef 1, i64 noundef %61) #7
  br label %63

63:                                               ; preds = %60, %57
  %64 = load ptr, ptr %52, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %70, label %66, !prof !8

66:                                               ; preds = %63
  %67 = select i1 %2, i8 0, i8 32
  %68 = add i32 %55, 6296512
  %69 = getelementptr i8, ptr %64, i32 %68
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %69, i8 %67) #7, !srcloc !10
  br label %74

70:                                               ; preds = %63
  %71 = add i32 %55, 6296512
  %72 = sext i32 %71 to i64
  %73 = select i1 %2, i32 0, i32 32
  tail call void @nvif_object_wr(ptr noundef %51, i32 noundef 1, i64 noundef %72, i32 noundef %73) #7
  br label %74

74:                                               ; preds = %70, %66
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv_lock_vga_crtc_base(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  %10 = shl i32 %1, 13
  %11 = add i32 %10, 6296532
  br i1 %9, label %14, label %12, !prof !8

12:                                               ; preds = %3
  %13 = getelementptr i8, ptr %8, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %13, i8 17) #7, !srcloc !10
  br label %16

14:                                               ; preds = %3
  %15 = sext i32 %11 to i64
  tail call void @nvif_object_wr(ptr noundef %6, i32 noundef 1, i64 noundef %15, i32 noundef 17) #7
  br label %16

16:                                               ; preds = %14, %12
  %17 = load ptr, ptr %7, align 8
  %18 = icmp eq ptr %17, null
  %19 = add i32 %10, 6296533
  br i1 %18, label %24, label %20, !prof !8

20:                                               ; preds = %16
  %21 = getelementptr i8, ptr %17, i32 %19
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %21) #7, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !12
  %23 = zext i8 %22 to i32
  br label %27

24:                                               ; preds = %16
  %25 = sext i32 %19 to i64
  %26 = tail call i32 @nvif_object_rd(ptr noundef %6, i32 noundef 1, i64 noundef %25) #7
  br label %27

27:                                               ; preds = %24, %20
  %28 = phi i32 [ %23, %20 ], [ %26, %24 ]
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 127
  %31 = select i1 %2, i8 -128, i8 0
  %32 = or i8 %30, %31
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %40, label %38, !prof !8

38:                                               ; preds = %27
  %39 = getelementptr i8, ptr %36, i32 %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %39, i8 17) #7, !srcloc !10
  br label %42

40:                                               ; preds = %27
  %41 = sext i32 %11 to i64
  tail call void @nvif_object_wr(ptr noundef %34, i32 noundef 1, i64 noundef %41, i32 noundef 17) #7
  br label %42

42:                                               ; preds = %40, %38
  %43 = load ptr, ptr %35, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !8

45:                                               ; preds = %42
  %46 = getelementptr i8, ptr %43, i32 %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !9
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 %32) #7, !srcloc !10
  br label %50

47:                                               ; preds = %42
  %48 = sext i32 %19 to i64
  %49 = zext i8 %32 to i32
  tail call void @nvif_object_wr(ptr noundef %34, i32 noundef 1, i64 noundef %48, i32 noundef %49) #7
  br label %50

50:                                               ; preds = %47, %45
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }

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
!9 = !{i64 2151509949}
!10 = !{i64 3969529}
!11 = !{i64 3969924}
!12 = !{i64 2151508651}
!13 = !{!"auto-init"}
!14 = !{i64 3970144}
!15 = !{i64 2151509597}
!16 = !{i64 2151510819}
!17 = !{i64 3969726}
