; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/disp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/disp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
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
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.anon.76 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.106, %struct.anon.107, %struct.anon.112, ptr, %struct.anon.113, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.114, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.120 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.106 = type { ptr, i32, i32, i8 }
%struct.anon.107 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.108] }
%struct.anon.108 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.112 = type { i64, i64 }
%struct.anon.113 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.78 }
%struct.anon.78 = type { ptr, i64 }
%struct.anon.114 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.115, %struct.anon.116, %struct.anon.117, %struct.anon.118 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.79, i8 }
%union.anon.79 = type { %struct.anon.83 }
%struct.anon.83 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.115 = type { i32 }
%struct.anon.116 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.117 = type { i16, i16 }
%struct.anon.118 = type { i16, i16, i16, %struct.anon.119, i16 }
%struct.anon.119 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.120 = type { ptr, %struct.mutex, i8 }
%struct.anon.199 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.172, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.172 = type { %struct.notifier_block }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.nouveau_channel = type { %struct.anon.109, ptr, ptr, ptr, i32, i64, i32, %struct.nvif_object, %struct.nvif_object, %struct.nvif_object, %struct.anon.110, i8, ptr, %struct.anon.111, i32, i32, i32, %struct.nvif_object, %struct.nvif_notify, %struct.atomic_t }
%struct.anon.109 = type { %struct.nvif_push, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.anon.110 = type { ptr, ptr, %struct.nvif_object, i64 }
%struct.anon.111 = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.nv04_display = type { %struct.nv04_mode_state, %struct.nv04_mode_state, [4 x [16384 x i32]], [4 x i32], [2 x ptr], %struct.nvif_notify }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.177, i32, i32 }
%union.anon.177 = type { %struct.anon.179 }
%struct.anon.179 = type { i16, i16 }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }

@.str = private unnamed_addr constant [8 x i8] c"kmsFlip\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: DCB type %d not known\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"%s: %s has no encoders, removing\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"%s: Could not pin framebuffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%s: Could not pin/map cursor.\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv04_encoder_get_connector(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.drm_connector_list_iter, align 8
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i64 0, ptr %2, align 8, !annotation !8
  call void @drm_connector_list_iter_begin(ptr noundef %3, ptr noundef nonnull %2) #5
  %4 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %6, %1
  %7 = phi ptr [ %13, %6 ], [ %4, %1 ]
  %8 = phi ptr [ %12, %6 ], [ null, %1 ]
  %9 = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 41
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %0
  %12 = select i1 %11, ptr %7, ptr %8
  %13 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %6

15:                                               ; preds = %6, %1
  %16 = phi ptr [ null, %1 ], [ %12, %6 ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret ptr %16
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_display_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.anon.199, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nvkm_device, ptr %7, i32 0, i32 26
  %9 = load ptr, ptr %8, align 4
  %10 = tail call noalias ptr @vzalloc(i32 noundef 267612) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %166, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %14 = tail call i32 @nvif_object_map(ptr noundef %13, ptr noundef null, i32 noundef 0) #5
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  store ptr %10, ptr %17, align 8
  %18 = load ptr, ptr %2, align 4
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nouveau_display, ptr %20, i32 0, i32 1
  store ptr @nv04_display_destroy, ptr %21, align 4
  %22 = load ptr, ptr %2, align 4
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_display, ptr %24, i32 0, i32 2
  store ptr @nv04_display_init, ptr %25, align 8
  %26 = load ptr, ptr %2, align 4
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %26, i32 0, i32 19
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.nouveau_display, ptr %28, i32 0, i32 3
  store ptr @nv04_display_fini, ptr %29, align 4
  %30 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  %32 = and i32 %31, -17
  store i32 %32, ptr %30, align 4
  %33 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 13
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %40, label %36

36:                                               ; preds = %12
  %37 = getelementptr inbounds %struct.nouveau_channel, ptr %34, i32 0, i32 9
  %38 = getelementptr inbounds %struct.nv04_display, ptr %10, i32 0, i32 5
  %39 = tail call i32 @nvif_notify_ctor(ptr noundef %37, ptr noundef nonnull @.str, ptr noundef nonnull @nv04_flip_complete, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef %38) #5
  br label %40

40:                                               ; preds = %36, %12
  tail call void @nouveau_hw_save_vga_fonts(ptr noundef %0, i1 noundef zeroext true) #5
  %41 = tail call i32 @nv04_crtc_create(ptr noundef %0, i32 noundef 0) #5
  %42 = load ptr, ptr %2, align 4
  %43 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 -102
  %46 = load i16, ptr %45, align 2
  %47 = and i16 %46, 4080
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3, i32 1, i32 4
  %49 = load i8, ptr %48, align 1
  %50 = icmp ugt i8 %49, 1
  %51 = icmp ne i16 %47, 256
  %52 = select i1 %50, i1 %51, i1 false
  %53 = icmp ne i16 %47, 336
  %54 = select i1 %52, i1 %53, i1 false
  %55 = icmp ne i16 %47, 416
  %56 = select i1 %54, i1 %55, i1 false
  %57 = icmp ne i16 %47, 512
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %59, label %61

59:                                               ; preds = %40
  %60 = tail call i32 @nv04_crtc_create(ptr noundef %0, i32 noundef 1) #5
  br label %61

61:                                               ; preds = %59, %40
  %62 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 22, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = icmp sgt i32 %63, 0
  br i1 %64, label %65, label %98

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %67 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  br label %68

68:                                               ; preds = %94, %65
  %69 = phi i32 [ 0, %65 ], [ %95, %94 ]
  %70 = getelementptr %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 22, i32 2, i32 %69
  %71 = tail call ptr @nouveau_connector_create(ptr noundef %0, ptr noundef %70) #5
  %72 = icmp ugt ptr %71, inttoptr (i32 -4096 to ptr)
  br i1 %72, label %94, label %73

73:                                               ; preds = %68
  %74 = getelementptr %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 22, i32 2, i32 %69, i32 3
  %75 = load i32, ptr %74, align 4
  switch i32 %75, label %88 [
    i32 0, label %76
    i32 3, label %78
    i32 2, label %78
    i32 1, label %80
  ]

76:                                               ; preds = %73
  %77 = tail call i32 @nv04_dac_create(ptr noundef %71, ptr noundef %70) #5
  br label %94

78:                                               ; preds = %73, %73
  %79 = tail call i32 @nv04_dfp_create(ptr noundef %71, ptr noundef %70) #5
  br label %94

80:                                               ; preds = %73
  %81 = getelementptr %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 22, i32 2, i32 %69, i32 8
  %82 = load i8, ptr %81, align 4
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = tail call i32 @nv17_tv_create(ptr noundef %71, ptr noundef %70) #5
  br label %94

86:                                               ; preds = %80
  %87 = tail call i32 @nv04_tv_create(ptr noundef %71, ptr noundef %70) #5
  br label %94

88:                                               ; preds = %73
  %89 = load ptr, ptr %66, align 8
  %90 = getelementptr inbounds %struct.nouveau_drm, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.drm_device, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %93, ptr noundef nonnull @.str.1, ptr noundef %67, i32 noundef %75) #7
  br label %94

94:                                               ; preds = %88, %86, %84, %78, %76, %68
  %95 = add nuw nsw i32 %69, 1
  %96 = load i32, ptr %62, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %68, label %98

98:                                               ; preds = %94, %61
  %99 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 12
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, %99
  br i1 %101, label %126, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 1
  %104 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 12
  br label %105

105:                                              ; preds = %124, %102
  %106 = phi ptr [ %100, %102 ], [ %107, %124 ]
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr i8, ptr %106, i32 728
  %109 = load i32, ptr %108, align 8
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %124

111:                                              ; preds = %105
  %112 = getelementptr i8, ptr %106, i32 -16
  %113 = load ptr, ptr %103, align 8
  %114 = getelementptr inbounds %struct.nouveau_drm, ptr %113, i32 0, i32 3
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.drm_device, ptr %115, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %106, i32 36
  %119 = load ptr, ptr %118, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %117, ptr noundef nonnull @.str.2, ptr noundef %104, ptr noundef %119) #7
  %120 = getelementptr i8, ptr %106, i32 264
  %121 = load ptr, ptr %120, align 8
  %122 = getelementptr inbounds %struct.drm_connector_funcs, ptr %121, i32 0, i32 8
  %123 = load ptr, ptr %122, align 4
  tail call void %123(ptr noundef %112) #5
  br label %124

124:                                              ; preds = %111, %105
  %125 = icmp eq ptr %107, %99
  br i1 %125, label %126, label %105

126:                                              ; preds = %124, %98
  %127 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %128 = load ptr, ptr %127, align 4
  %129 = icmp eq ptr %128, %127
  br i1 %129, label %144, label %130

130:                                              ; preds = %130, %126
  %131 = phi ptr [ %142, %130 ], [ %128, %126 ]
  %132 = getelementptr i8, ptr %131, i32 80
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.dcb_output, ptr %133, i32 0, i32 4
  %135 = load i8, ptr %134, align 4
  %136 = zext i8 %135 to i32
  %137 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %9, i32 noundef %136) #5
  %138 = icmp eq ptr %137, null
  %139 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %137, i32 0, i32 5
  %140 = select i1 %138, ptr null, ptr %139
  %141 = getelementptr i8, ptr %131, i32 92
  store ptr %140, ptr %141, align 4
  %142 = load ptr, ptr %131, align 4
  %143 = icmp eq ptr %142, %127
  br i1 %143, label %144, label %130

144:                                              ; preds = %130, %126
  %145 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %146 = load ptr, ptr %145, align 4
  %147 = icmp eq ptr %146, %145
  br i1 %147, label %148, label %151

148:                                              ; preds = %151, %144
  %149 = load ptr, ptr %127, align 4
  %150 = icmp eq ptr %149, %127
  br i1 %150, label %165, label %158

151:                                              ; preds = %151, %144
  %152 = phi ptr [ %156, %151 ], [ %146, %144 ]
  %153 = getelementptr i8, ptr %152, i32 -8
  %154 = getelementptr i8, ptr %152, i32 872
  %155 = load ptr, ptr %154, align 8
  tail call void %155(ptr noundef %153) #5
  %156 = load ptr, ptr %152, align 4
  %157 = icmp eq ptr %156, %145
  br i1 %157, label %148, label %151

158:                                              ; preds = %158, %148
  %159 = phi ptr [ %163, %158 ], [ %149, %148 ]
  %160 = getelementptr i8, ptr %159, i32 -4
  %161 = getelementptr i8, ptr %159, i32 328
  %162 = load ptr, ptr %161, align 4
  tail call void %162(ptr noundef %160) #5
  %163 = load ptr, ptr %159, align 4
  %164 = icmp eq ptr %163, %127
  br i1 %164, label %165, label %158

165:                                              ; preds = %158, %148
  tail call void @nouveau_overlay_init(ptr noundef %0) #5
  br label %166

166:                                              ; preds = %165, %1
  %167 = phi i32 [ 0, %165 ], [ -12, %1 ]
  ret i32 %167
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_display_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %17, label %10

10:                                               ; preds = %10, %1
  %11 = phi ptr [ %15, %10 ], [ %8, %1 ]
  %12 = getelementptr i8, ptr %11, i32 -4
  %13 = getelementptr i8, ptr %11, i32 332
  %14 = load ptr, ptr %13, align 4
  tail call void %14(ptr noundef %12) #5
  %15 = load ptr, ptr %11, align 4
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %10

17:                                               ; preds = %10, %1
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %28, label %21

21:                                               ; preds = %21, %17
  %22 = phi ptr [ %26, %21 ], [ %19, %17 ]
  %23 = getelementptr i8, ptr %22, i32 -8
  %24 = getelementptr i8, ptr %22, i32 876
  %25 = load ptr, ptr %24, align 4
  tail call void %25(ptr noundef %23) #5
  %26 = load ptr, ptr %22, align 4
  %27 = icmp eq ptr %26, %18
  br i1 %27, label %28, label %21

28:                                               ; preds = %21, %17
  tail call void @nouveau_hw_save_vga_fonts(ptr noundef %0, i1 noundef zeroext false) #5
  %29 = getelementptr inbounds %struct.nv04_display, ptr %6, i32 0, i32 5
  %30 = tail call i32 @nvif_notify_dtor(ptr noundef %29) #5
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  store ptr null, ptr %33, align 8
  tail call void @vfree(ptr noundef %6) #5
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  tail call void @nvif_object_unmap(ptr noundef %34) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv04_display_init(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %19, label %12

12:                                               ; preds = %12, %3
  %13 = phi ptr [ %17, %12 ], [ %10, %3 ]
  %14 = getelementptr i8, ptr %13, i32 -8
  %15 = getelementptr i8, ptr %13, i32 872
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef %14) #5
  %17 = load ptr, ptr %13, align 4
  %18 = icmp eq ptr %17, %9
  br i1 %18, label %19, label %12

19:                                               ; preds = %12, %3
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %30, label %23

23:                                               ; preds = %23, %19
  %24 = phi ptr [ %28, %23 ], [ %21, %19 ]
  %25 = getelementptr i8, ptr %24, i32 -4
  %26 = getelementptr i8, ptr %24, i32 328
  %27 = load ptr, ptr %26, align 4
  tail call void %27(ptr noundef %25) #5
  %28 = load ptr, ptr %24, align 4
  %29 = icmp eq ptr %28, %20
  br i1 %29, label %30, label %23

30:                                               ; preds = %23, %19
  %31 = getelementptr inbounds %struct.nv04_display, ptr %8, i32 0, i32 5
  %32 = tail call i32 @nvif_notify_get(ptr noundef %31) #5
  br i1 %1, label %33, label %129

33:                                               ; preds = %30
  %34 = load ptr, ptr %9, align 4
  %35 = icmp eq ptr %34, %9
  br i1 %35, label %101, label %36

36:                                               ; preds = %33
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  br label %45

39:                                               ; preds = %65
  %40 = load ptr, ptr %9, align 4
  %41 = icmp eq ptr %40, %9
  br i1 %41, label %101, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  br label %71

45:                                               ; preds = %65, %36
  %46 = phi ptr [ %34, %36 ], [ %66, %65 ]
  %47 = getelementptr i8, ptr %46, i32 64
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.drm_plane, ptr %48, i32 0, i32 12
  %50 = load ptr, ptr %49, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %65, label %52

52:                                               ; preds = %45
  %53 = getelementptr inbounds %struct.drm_framebuffer, ptr %50, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %65, label %56

56:                                               ; preds = %52
  %57 = tail call i32 @nouveau_bo_pin(ptr noundef nonnull %54, i32 noundef 2, i1 noundef zeroext true) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %37, align 8
  %61 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8
  %63 = getelementptr inbounds %struct.drm_device, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.3, ptr noundef %38) #7
  br label %65

65:                                               ; preds = %59, %56, %52, %45
  %66 = load ptr, ptr %46, align 4
  %67 = icmp eq ptr %66, %9
  br i1 %67, label %39, label %45

68:                                               ; preds = %93
  %69 = load ptr, ptr %9, align 4
  %70 = icmp eq ptr %69, %9
  br i1 %70, label %101, label %96

71:                                               ; preds = %93, %42
  %72 = phi ptr [ %40, %42 ], [ %94, %93 ]
  %73 = getelementptr i8, ptr %72, i32 844
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, null
  br i1 %75, label %93, label %76

76:                                               ; preds = %71
  %77 = tail call i32 @nouveau_bo_pin(ptr noundef nonnull %74, i32 noundef 2, i1 noundef zeroext true) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %76
  %80 = getelementptr i8, ptr %72, i32 852
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %73, align 4
  %85 = tail call i32 @nouveau_bo_map(ptr noundef %84) #5
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %83, %76
  %88 = load ptr, ptr %43, align 8
  %89 = getelementptr inbounds %struct.nouveau_drm, ptr %88, i32 0, i32 3
  %90 = load ptr, ptr %89, align 8
  %91 = getelementptr inbounds %struct.drm_device, ptr %90, i32 0, i32 2
  %92 = load ptr, ptr %91, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.4, ptr noundef %44) #7
  br label %93

93:                                               ; preds = %87, %83, %79, %71
  %94 = load ptr, ptr %72, align 4
  %95 = icmp eq ptr %94, %9
  br i1 %95, label %68, label %71

96:                                               ; preds = %96, %68
  %97 = phi ptr [ %99, %96 ], [ %69, %68 ]
  %98 = getelementptr i8, ptr %97, i32 868
  store i32 0, ptr %98, align 4
  %99 = load ptr, ptr %97, align 4
  %100 = icmp eq ptr %99, %9
  br i1 %100, label %101, label %96

101:                                              ; preds = %96, %68, %39, %33
  br i1 %2, label %129, label %102

102:                                              ; preds = %101
  tail call void @drm_helper_resume_force_mode(ptr noundef %0) #5
  %103 = load ptr, ptr %9, align 4
  %104 = icmp eq ptr %103, %9
  br i1 %104, label %129, label %105

105:                                              ; preds = %126, %102
  %106 = phi ptr [ %127, %126 ], [ %103, %102 ]
  %107 = getelementptr i8, ptr %106, i32 -8
  %108 = getelementptr i8, ptr %106, i32 844
  %109 = load ptr, ptr %108, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %126, label %111

111:                                              ; preds = %105
  %112 = getelementptr i8, ptr %106, i32 852
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %119, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %struct.nouveau_bo, ptr %109, i32 0, i32 13
  %117 = load i64, ptr %116, align 8
  %118 = trunc i64 %117 to i32
  tail call void %113(ptr noundef %107, i32 noundef %118) #5
  br label %119

119:                                              ; preds = %115, %111
  %120 = getelementptr i8, ptr %106, i32 856
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr i8, ptr %106, i32 820
  %123 = load i32, ptr %122, align 4
  %124 = getelementptr i8, ptr %106, i32 824
  %125 = load i32, ptr %124, align 8
  tail call void %121(ptr noundef %107, i32 noundef %123, i32 noundef %125) #5
  br label %126

126:                                              ; preds = %119, %105
  %127 = load ptr, ptr %106, align 4
  %128 = icmp eq ptr %127, %9
  br i1 %128, label %129, label %105

129:                                              ; preds = %126, %102, %101, %30
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_display_fini(ptr noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nv04_display, ptr %8, i32 0, i32 5
  %10 = tail call i32 @nvif_notify_put(ptr noundef %9) #5
  %11 = load ptr, ptr %4, align 4
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 0, i32 6
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15, !prof !9

15:                                               ; preds = %3
  %16 = getelementptr i8, ptr %13, i32 6291776
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #5, !srcloc !11
  br label %19

17:                                               ; preds = %3
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %18, i32 noundef 4, i64 noundef 6291776, i32 noundef 0) #5
  br label %19

19:                                               ; preds = %17, %15
  %20 = load ptr, ptr %4, align 4
  %21 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 -102
  %24 = load i16, ptr %23, align 2
  %25 = and i16 %24, 4080
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3, i32 1, i32 4
  %27 = load i8, ptr %26, align 1
  %28 = icmp ugt i8 %27, 1
  %29 = icmp ne i16 %25, 256
  %30 = select i1 %28, i1 %29, i1 false
  %31 = icmp ne i16 %25, 336
  %32 = select i1 %30, i1 %31, i1 false
  %33 = icmp ne i16 %25, 416
  %34 = select i1 %32, i1 %33, i1 false
  %35 = icmp ne i16 %25, 512
  %36 = select i1 %34, i1 %35, i1 false
  br i1 %36, label %37, label %45

37:                                               ; preds = %19
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3, i32 0, i32 6
  %39 = load ptr, ptr %38, align 8
  %40 = icmp eq ptr %39, null
  br i1 %40, label %43, label %41, !prof !9

41:                                               ; preds = %37
  %42 = getelementptr i8, ptr %39, i32 6299968
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #5, !srcloc !11
  br label %45

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %44, i32 noundef 4, i64 noundef 6299968, i32 noundef 0) #5
  br label %45

45:                                               ; preds = %43, %41, %19
  br i1 %1, label %49, label %46

46:                                               ; preds = %45
  %47 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 20
  %48 = tail call zeroext i1 @cancel_work_sync(ptr noundef %47) #5
  br label %49

49:                                               ; preds = %46, %45
  br i1 %2, label %50, label %90

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %90, label %57

54:                                               ; preds = %70
  %55 = load ptr, ptr %51, align 4
  %56 = icmp eq ptr %55, %51
  br i1 %56, label %90, label %73

57:                                               ; preds = %70, %50
  %58 = phi ptr [ %71, %70 ], [ %52, %50 ]
  %59 = getelementptr i8, ptr %58, i32 64
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.drm_plane, ptr %60, i32 0, i32 12
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %57
  %65 = getelementptr inbounds %struct.drm_framebuffer, ptr %62, i32 0, i32 15
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68

68:                                               ; preds = %64
  %69 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %66) #5
  br label %70

70:                                               ; preds = %68, %64, %57
  %71 = load ptr, ptr %58, align 4
  %72 = icmp eq ptr %71, %51
  br i1 %72, label %54, label %57

73:                                               ; preds = %87, %54
  %74 = phi ptr [ %88, %87 ], [ %55, %54 ]
  %75 = getelementptr i8, ptr %74, i32 844
  %76 = load ptr, ptr %75, align 4
  %77 = icmp eq ptr %76, null
  br i1 %77, label %87, label %78

78:                                               ; preds = %73
  %79 = getelementptr i8, ptr %74, i32 852
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  tail call void @nouveau_bo_unmap(ptr noundef nonnull %76) #5
  %83 = load ptr, ptr %75, align 4
  br label %84

84:                                               ; preds = %82, %78
  %85 = phi ptr [ %83, %82 ], [ %76, %78 ]
  %86 = tail call i32 @nouveau_bo_unpin(ptr noundef %85) #5
  br label %87

87:                                               ; preds = %84, %73
  %88 = load ptr, ptr %74, align 4
  %89 = icmp eq ptr %88, %51
  br i1 %89, label %90, label %73

90:                                               ; preds = %87, %54, %50, %49
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_flip_complete(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_hw_save_vga_fonts(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_crtc_create(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_connector_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dac_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dfp_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv17_tv_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_tv_create(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_overlay_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_resume_force_mode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { cold nounwind }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2150872590}
!11 = !{i64 3331497}
