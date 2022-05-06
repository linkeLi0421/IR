; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/headc57d.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/headc57d.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.78, %struct.anon.79, %struct.nv50_head_mode, %struct.anon.82, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.anon.90, %struct.nv50_crc_atom, %struct.anon.91, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.anon.78 = type { i32, i32, i32 }
%struct.anon.79 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.80, %struct.anon.81 }
%struct.anon.80 = type { i16, i16, i16, i16 }
%struct.anon.81 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.82 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.83 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.84 = type { i8, i32, [6 x i8], i8 }
%struct.anon.85 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.86 = type { i8 }
%struct.anon.87 = type { i8 }
%struct.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { i16, i16 }
%struct.anon.90 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.91 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.92 }
%struct.anon.92 = type { i16 }
%struct.drm_color_lut = type { i16, i16, i16, i16 }

@headc57d = dso_local local_unnamed_addr constant %struct.nv50_head_func { ptr @headc37d_view, ptr @headc57d_mode, ptr @headc57d_olut, ptr @head907d_ilut_check, i8 1, i32 1024, ptr @headc57d_olut_set, ptr @headc57d_olut_clr, ptr null, ptr null, ptr null, ptr @head917d_curs_layout, ptr @headc37d_curs_format, ptr @headc37d_curs_set, ptr @headc37d_curs_clr, ptr null, ptr null, ptr @headc37d_dither, ptr @headc57d_procamp, ptr @headc57d_or, ptr @headc37d_static_wndw_map }, align 4
@.str = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/nouveau/dispnv50/headc57d.c\00", align 1
@switch.table.headc57d_or = private unnamed_addr constant [7 x i8] c"@P\10PP@P", align 1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @headc37d_view(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @headc57d_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
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
  %18 = getelementptr i32, ptr %17, i32 15
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 15) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %135

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3
  %31 = shl i32 %15, 10
  %32 = add i32 %31, 8292
  %33 = and i32 %32, 15460
  %34 = or i32 %33, 1048576
  %35 = getelementptr i32, ptr %29, i32 1
  store ptr %35, ptr %16, align 4
  store i32 %34, ptr %29, align 4
  %36 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2
  %37 = load i16, ptr %36, align 4
  %38 = and i16 %37, 32767
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = shl i32 %41, 16
  %43 = and i32 %42, 2147418112
  %44 = or i32 %43, %39
  %45 = load ptr, ptr %16, align 4
  %46 = getelementptr i32, ptr %45, i32 1
  store ptr %46, ptr %16, align 4
  store i32 %44, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2, i32 1
  %48 = load i16, ptr %47, align 2
  %49 = and i16 %48, 32767
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 1
  %52 = load i16, ptr %51, align 4
  %53 = and i16 %52, 32767
  %54 = zext i16 %53 to i32
  %55 = shl nuw nsw i32 %54, 16
  %56 = or i32 %55, %50
  %57 = load ptr, ptr %16, align 4
  %58 = getelementptr i32, ptr %57, i32 1
  store ptr %58, ptr %16, align 4
  store i32 %56, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2, i32 2
  %60 = load i16, ptr %59, align 4
  %61 = and i16 %60, 32767
  %62 = zext i16 %61 to i32
  %63 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 2
  %64 = load i16, ptr %63, align 2
  %65 = and i16 %64, 32767
  %66 = zext i16 %65 to i32
  %67 = shl nuw nsw i32 %66, 16
  %68 = or i32 %67, %62
  %69 = load ptr, ptr %16, align 4
  %70 = getelementptr i32, ptr %69, i32 1
  store ptr %70, ptr %16, align 4
  store i32 %68, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 2, i32 3
  %72 = load i16, ptr %71, align 2
  %73 = and i16 %72, 32767
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 3
  %76 = load i16, ptr %75, align 4
  %77 = and i16 %76, 32767
  %78 = zext i16 %77 to i32
  %79 = shl nuw nsw i32 %78, 16
  %80 = or i32 %79, %74
  %81 = load ptr, ptr %16, align 4
  %82 = getelementptr i32, ptr %81, i32 1
  store ptr %82, ptr %16, align 4
  store i32 %80, ptr %81, align 4
  %83 = add i32 %31, 8308
  %84 = and i32 %83, 15476
  %85 = or i32 %84, 262144
  %86 = load ptr, ptr %16, align 4
  %87 = getelementptr i32, ptr %86, i32 1
  store ptr %87, ptr %16, align 4
  store i32 %85, ptr %86, align 4
  %88 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 5
  %89 = load i16, ptr %88, align 4
  %90 = zext i16 %89 to i32
  %91 = shl nuw i32 %90, 16
  %92 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 3, i32 4
  %93 = load i16, ptr %92, align 2
  %94 = zext i16 %93 to i32
  %95 = or i32 %91, %94
  %96 = load ptr, ptr %16, align 4
  %97 = getelementptr i32, ptr %96, i32 1
  store ptr %97, ptr %16, align 4
  store i32 %95, ptr %96, align 4
  %98 = add i32 %31, 8200
  %99 = and i32 %98, 15368
  %100 = or i32 %99, 262144
  %101 = load ptr, ptr %16, align 4
  %102 = getelementptr i32, ptr %101, i32 1
  store ptr %102, ptr %16, align 4
  store i32 %100, ptr %101, align 4
  %103 = load i8, ptr %30, align 4, !range !8
  %104 = zext i8 %103 to i32
  %105 = load ptr, ptr %16, align 4
  %106 = getelementptr i32, ptr %105, i32 1
  store ptr %106, ptr %16, align 4
  store i32 %104, ptr %105, align 4
  %107 = add i32 %31, 8204
  %108 = and i32 %107, 15372
  %109 = or i32 %108, 262144
  %110 = load ptr, ptr %16, align 4
  %111 = getelementptr i32, ptr %110, i32 1
  store ptr %111, ptr %16, align 4
  store i32 %109, ptr %110, align 4
  %112 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 3, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = mul i32 %113, 1000
  %115 = and i32 %114, 2147483640
  %116 = load ptr, ptr %16, align 4
  %117 = getelementptr i32, ptr %116, i32 1
  store ptr %117, ptr %16, align 4
  store i32 %115, ptr %116, align 4
  %118 = add i32 %31, 8232
  %119 = and i32 %118, 15400
  %120 = or i32 %119, 262144
  %121 = load ptr, ptr %16, align 4
  %122 = getelementptr i32, ptr %121, i32 1
  store ptr %122, ptr %16, align 4
  store i32 %120, ptr %121, align 4
  %123 = load i32, ptr %112, align 4
  %124 = mul i32 %123, 1000
  %125 = and i32 %124, 2147483640
  %126 = load ptr, ptr %16, align 4
  %127 = getelementptr i32, ptr %126, i32 1
  store ptr %127, ptr %16, align 4
  store i32 %125, ptr %126, align 4
  %128 = add i32 %31, 8240
  %129 = and i32 %128, 15408
  %130 = or i32 %129, 262144
  %131 = load ptr, ptr %16, align 4
  %132 = getelementptr i32, ptr %131, i32 1
  store ptr %132, ptr %16, align 4
  store i32 %130, ptr %131, align 4
  %133 = load ptr, ptr %16, align 4
  %134 = getelementptr i32, ptr %133, i32 1
  store ptr %134, ptr %16, align 4
  store i32 4372, ptr %133, align 4
  br label %135

135:                                              ; preds = %28, %22
  %136 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %136
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @headc57d_olut(ptr nocapture noundef readnone %0, ptr nocapture noundef %1, i32 noundef %2) #2 {
  switch i32 %2, label %16 [
    i32 1024, label %4
    i32 256, label %4
    i32 0, label %4
  ]

4:                                                ; preds = %3, %3, %3
  %5 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 2
  %6 = load i48, ptr %5, align 8
  %7 = and i48 %6, -32985348833281
  %8 = or i48 %7, 4398046511104
  store i48 %8, ptr %5, align 8
  %9 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 3
  %10 = load i16, ptr %9, align 2
  %11 = and i16 %10, -26624
  %12 = or i16 %11, 9221
  store i16 %12, ptr %9, align 2
  %13 = icmp eq i32 %2, 256
  %14 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 4
  %15 = select i1 %13, ptr @headc57d_olut_load_8, ptr @headc57d_olut_load
  store ptr %15, ptr %14, align 8
  br label %16

16:                                               ; preds = %4, %3
  %17 = icmp eq i32 %2, 1024
  %18 = and i32 %2, -257
  %19 = icmp eq i32 %18, 0
  %20 = or i1 %17, %19
  ret i1 %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @head907d_ilut_check(i32 noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @headc57d_olut_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
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
  %18 = getelementptr i32, ptr %17, i32 5
  %19 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ult ptr %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load ptr, ptr %13, align 8
  %24 = tail call i32 %23(ptr noundef %13, i32 noundef 5) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = shl i32 %15, 10
  %31 = add i32 %30, 8832
  %32 = and i32 %31, 16000
  %33 = or i32 %32, 1048576
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 3
  %36 = load i16, ptr %35, align 2
  %37 = lshr i16 %36, 13
  %38 = and i16 %37, 1
  %39 = zext i16 %38 to i32
  %40 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 2
  %41 = load i48, ptr %40, align 8
  %42 = lshr i48 %41, 39
  %43 = trunc i48 %42 to i32
  %44 = and i32 %43, 12
  %45 = or i32 %44, %39
  %46 = and i16 %36, 2047
  %47 = zext i16 %46 to i32
  %48 = shl nuw nsw i32 %47, 8
  %49 = or i32 %45, %48
  %50 = load ptr, ptr %16, align 4
  %51 = getelementptr i32, ptr %50, i32 1
  store ptr %51, ptr %16, align 4
  store i32 %49, ptr %50, align 4
  %52 = load ptr, ptr %16, align 4
  %53 = getelementptr i32, ptr %52, i32 1
  store ptr %53, ptr %16, align 4
  store i32 -1, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = load ptr, ptr %16, align 4
  %57 = getelementptr i32, ptr %56, i32 1
  store ptr %57, ptr %16, align 4
  store i32 %55, ptr %56, align 4
  %58 = load i48, ptr %40, align 8
  %59 = lshr i48 %58, 8
  %60 = trunc i48 %59 to i32
  %61 = load ptr, ptr %16, align 4
  %62 = getelementptr i32, ptr %61, i32 1
  store ptr %62, ptr %16, align 4
  store i32 %60, ptr %61, align 4
  br label %63

63:                                               ; preds = %28, %22
  %64 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %64
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @headc57d_olut_clr(ptr nocapture noundef readonly %0) #1 {
  %2 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nv50_disp, ptr %8, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nv50_core, ptr %10, i32 0, i32 1, i32 2
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 1, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 4
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i32, ptr %16, i32 2
  %18 = getelementptr inbounds %struct.nvif_push, ptr %12, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = icmp ult ptr %17, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %12, align 8
  %23 = tail call i32 %22(ptr noundef %12, i32 noundef 2) #3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load ptr, ptr %15, align 4
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi ptr [ %26, %25 ], [ %16, %1 ]
  %29 = shl i32 %14, 10
  %30 = add i32 %29, 8840
  %31 = and i32 %30, 16008
  %32 = or i32 %31, 262144
  %33 = getelementptr i32, ptr %28, i32 1
  store ptr %33, ptr %15, align 4
  store i32 %32, ptr %28, align 4
  %34 = load ptr, ptr %15, align 4
  %35 = getelementptr i32, ptr %34, i32 1
  store ptr %35, ptr %15, align 4
  store i32 0, ptr %34, align 4
  br label %36

36:                                               ; preds = %27, %21
  %37 = phi i32 [ 0, %27 ], [ %23, %21 ]
  ret i32 %37
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @head917d_curs_layout(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @headc37d_curs_format(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @headc37d_curs_set(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @headc37d_curs_clr(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @headc37d_dither(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @headc57d_procamp(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #1 {
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
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load ptr, ptr %16, align 4
  br label %28

28:                                               ; preds = %26, %2
  %29 = phi ptr [ %27, %26 ], [ %17, %2 ]
  %30 = shl i32 %15, 10
  %31 = add i32 %30, 8192
  %32 = and i32 %31, 15360
  %33 = or i32 %32, 262144
  %34 = getelementptr i32, ptr %29, i32 1
  store ptr %34, ptr %16, align 4
  store i32 %33, ptr %29, align 4
  %35 = load ptr, ptr %16, align 4
  %36 = getelementptr i32, ptr %35, i32 1
  store ptr %36, ptr %16, align 4
  store i32 0, ptr %35, align 4
  br label %37

37:                                               ; preds = %28, %22
  %38 = phi i32 [ 0, %28 ], [ %24, %22 ]
  ret i32 %38
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @headc57d_or(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #1 {
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
  %16 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 11
  %17 = load i8, ptr %16, align 8
  %18 = lshr i8 %17, 2
  %19 = and i8 %18, 15
  %20 = zext i8 %19 to i32
  %21 = icmp ult i8 %19, 7
  br i1 %21, label %24, label %22

22:                                               ; preds = %24, %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 48, i32 noundef 9, ptr noundef null) #3
  %23 = shl i8 %18, 4
  br label %31

24:                                               ; preds = %2
  %25 = lshr i8 101, %19
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %22, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds [7 x i8], ptr @switch.table.headc57d_or, i32 0, i32 %20
  %30 = load i8, ptr %29, align 1
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i8 [ %23, %22 ], [ %30, %28 ]
  %33 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 4
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr i32, ptr %34, i32 2
  %36 = getelementptr inbounds %struct.nvif_push, ptr %13, i32 0, i32 6
  %37 = load ptr, ptr %36, align 4
  %38 = icmp ult ptr %35, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %31
  %40 = load ptr, ptr %13, align 8
  %41 = tail call i32 %40(ptr noundef %13, i32 noundef 2) #3
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %64

43:                                               ; preds = %39
  %44 = load ptr, ptr %33, align 4
  br label %45

45:                                               ; preds = %43, %31
  %46 = phi ptr [ %44, %43 ], [ %34, %31 ]
  %47 = shl i32 %15, 10
  %48 = add i32 %47, 8196
  %49 = and i32 %48, 15364
  %50 = or i32 %49, 262144
  %51 = getelementptr i32, ptr %46, i32 1
  store ptr %51, ptr %33, align 4
  store i32 %50, ptr %46, align 4
  %52 = load i8, ptr %16, align 8
  %53 = lshr i8 %52, 6
  %54 = shl i8 %52, 2
  %55 = and i8 %54, 4
  %56 = and i8 %54, 8
  %57 = or i8 %53, %32
  %58 = or i8 %57, %55
  %59 = or i8 %58, %56
  %60 = zext i8 %59 to i32
  %61 = or i32 %60, -67108864
  %62 = load ptr, ptr %33, align 4
  %63 = getelementptr i32, ptr %62, i32 1
  store ptr %63, ptr %33, align 4
  store i32 %61, ptr %62, align 4
  br label %64

64:                                               ; preds = %45, %39
  %65 = phi i32 [ 0, %45 ], [ %41, %39 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @headc37d_static_wndw_map(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @headc57d_olut_load_8(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #1 {
  tail call void @mmioset(ptr noundef %2, i32 noundef 0, i32 noundef 32) #3
  %4 = getelementptr i8, ptr %2, i32 32
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %70, label %6

6:                                                ; preds = %36, %3
  %7 = phi i32 [ %10, %36 ], [ %1, %3 ]
  %8 = phi ptr [ %16, %36 ], [ %0, %3 ]
  %9 = phi ptr [ %69, %36 ], [ %4, %3 ]
  %10 = add i32 %7, -1
  %11 = load i16, ptr %8, align 2
  %12 = getelementptr inbounds %struct.drm_color_lut, ptr %8, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr inbounds %struct.drm_color_lut, ptr %8, i32 0, i32 2
  %15 = load i16, ptr %14, align 2
  %16 = getelementptr %struct.drm_color_lut, ptr %8, i32 1
  %17 = icmp eq i32 %10, 0
  br i1 %17, label %36, label %18

18:                                               ; preds = %6
  %19 = zext i16 %15 to i32
  %20 = zext i16 %13 to i32
  %21 = zext i16 %11 to i32
  %22 = load i16, ptr %16, align 2
  %23 = zext i16 %22 to i32
  %24 = sub nsw i32 %23, %21
  %25 = lshr i32 %24, 2
  %26 = getelementptr %struct.drm_color_lut, ptr %8, i32 1, i32 1
  %27 = load i16, ptr %26, align 2
  %28 = zext i16 %27 to i32
  %29 = sub nsw i32 %28, %20
  %30 = lshr i32 %29, 2
  %31 = getelementptr %struct.drm_color_lut, ptr %8, i32 1, i32 2
  %32 = load i16, ptr %31, align 2
  %33 = zext i16 %32 to i32
  %34 = sub nsw i32 %33, %19
  %35 = lshr i32 %34, 2
  br label %36

36:                                               ; preds = %18, %6
  %37 = phi i32 [ %35, %18 ], [ 0, %6 ]
  %38 = phi i32 [ %30, %18 ], [ 0, %6 ]
  %39 = phi i32 [ %25, %18 ], [ 0, %6 ]
  %40 = trunc i32 %39 to i16
  %41 = trunc i32 %38 to i16
  %42 = trunc i32 %37 to i16
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 %11) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %43 = getelementptr i8, ptr %9, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 %13) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %44 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %44, i16 %15) #3, !srcloc !10
  %45 = getelementptr i8, ptr %9, i32 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %46 = add i16 %11, %40
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %45, i16 %46) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %47 = add i16 %13, %41
  %48 = getelementptr i8, ptr %9, i32 10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %48, i16 %47) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %49 = add i16 %15, %42
  %50 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %49) #3, !srcloc !10
  %51 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %52 = shl i16 %40, 1
  %53 = add i16 %52, %11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %51, i16 %53) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %54 = shl i16 %41, 1
  %55 = add i16 %54, %13
  %56 = getelementptr i8, ptr %9, i32 18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %56, i16 %55) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %57 = shl i16 %42, 1
  %58 = add i16 %57, %15
  %59 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %59, i16 %58) #3, !srcloc !10
  %60 = getelementptr i8, ptr %9, i32 24
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !9
  tail call void @arm_heavy_mb() #3
  %61 = mul i16 %40, 3
  %62 = add i16 %61, %11
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %60, i16 %62) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !11
  tail call void @arm_heavy_mb() #3
  %63 = mul i16 %41, 3
  %64 = add i16 %63, %13
  %65 = getelementptr i8, ptr %9, i32 26
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %65, i16 %64) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !12
  tail call void @arm_heavy_mb() #3
  %66 = mul i16 %42, 3
  %67 = add i16 %66, %15
  %68 = getelementptr i8, ptr %9, i32 28
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %68, i16 %67) #3, !srcloc !10
  %69 = getelementptr i8, ptr %9, i32 32
  br i1 %17, label %70, label %6

70:                                               ; preds = %36, %3
  %71 = phi ptr [ %4, %3 ], [ %69, %36 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !13
  tail call void @arm_heavy_mb() #3
  %72 = getelementptr i8, ptr %71, i32 -8
  %73 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %72) #3, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %71, i16 %73) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !16
  tail call void @arm_heavy_mb() #3
  %74 = getelementptr i8, ptr %71, i32 -6
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %74) #3, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !17
  %76 = getelementptr i8, ptr %71, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 %75) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !18
  tail call void @arm_heavy_mb() #3
  %77 = getelementptr i8, ptr %71, i32 -4
  %78 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %77) #3, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !19
  %79 = getelementptr i8, ptr %71, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %79, i16 %78) #3, !srcloc !10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @headc57d_olut_load(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef %2) #1 {
  tail call void @mmioset(ptr noundef %2, i32 noundef 0, i32 noundef 32) #3
  %4 = getelementptr i8, ptr %2, i32 32
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %21, label %6

6:                                                ; preds = %6, %3
  %7 = phi ptr [ %18, %6 ], [ %0, %3 ]
  %8 = phi i32 [ %10, %6 ], [ %1, %3 ]
  %9 = phi ptr [ %19, %6 ], [ %4, %3 ]
  %10 = add i32 %8, -1
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !20
  tail call void @arm_heavy_mb() #3
  %11 = load i16, ptr %7, align 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %9, i16 %11) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !21
  tail call void @arm_heavy_mb() #3
  %12 = getelementptr inbounds %struct.drm_color_lut, ptr %7, i32 0, i32 1
  %13 = load i16, ptr %12, align 2
  %14 = getelementptr i8, ptr %9, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 %13) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !22
  tail call void @arm_heavy_mb() #3
  %15 = getelementptr inbounds %struct.drm_color_lut, ptr %7, i32 0, i32 2
  %16 = load i16, ptr %15, align 2
  %17 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 %16) #3, !srcloc !10
  %18 = getelementptr %struct.drm_color_lut, ptr %7, i32 1
  %19 = getelementptr i8, ptr %9, i32 8
  %20 = icmp eq i32 %10, 0
  br i1 %20, label %21, label %6

21:                                               ; preds = %6, %3
  %22 = phi ptr [ %4, %3 ], [ %19, %6 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !23
  tail call void @arm_heavy_mb() #3
  %23 = getelementptr i8, ptr %22, i32 -8
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %23) #3, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !24
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 %24) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !25
  tail call void @arm_heavy_mb() #3
  %25 = getelementptr i8, ptr %22, i32 -6
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #3, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !26
  %27 = getelementptr i8, ptr %22, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 %26) #3, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %28 = getelementptr i8, ptr %22, i32 -4
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %28) #3, !srcloc !14
  tail call void asm sideeffect "dsb ", "~{memory}"() #3, !srcloc !28
  %30 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %29) #3, !srcloc !10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmioset(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #0

attributes #0 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{i64 2156343897}
!10 = !{i64 3950855}
!11 = !{i64 2156344212}
!12 = !{i64 2156344527}
!13 = !{i64 2156345301}
!14 = !{i64 3951055}
!15 = !{i64 2156345742}
!16 = !{i64 2156346385}
!17 = !{i64 2156346826}
!18 = !{i64 2156347469}
!19 = !{i64 2156347910}
!20 = !{i64 2156348157}
!21 = !{i64 2156348550}
!22 = !{i64 2156348943}
!23 = !{i64 2156349769}
!24 = !{i64 2156350210}
!25 = !{i64 2156350853}
!26 = !{i64 2156351294}
!27 = !{i64 2156351937}
!28 = !{i64 2156352378}
