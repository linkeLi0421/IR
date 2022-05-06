; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/head.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/head.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_crtc_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.79, %struct.anon.80, %struct.nv50_head_mode, %struct.anon.83, %struct.anon.84, %struct.anon.85, %struct.anon.86, %struct.anon.87, %struct.anon.88, %struct.anon.89, %struct.anon.91, %struct.nv50_crc_atom, %struct.anon.92, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.anon.79 = type { i32, i32, i32 }
%struct.anon.80 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.81, %struct.anon.82 }
%struct.anon.81 = type { i16, i16, i16, i16 }
%struct.anon.82 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.83 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.84 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.85 = type { i8, i32, [6 x i8], i8 }
%struct.anon.86 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.87 = type { i8 }
%struct.anon.88 = type { i8 }
%struct.anon.89 = type { %struct.anon.90 }
%struct.anon.90 = type { i16, i16 }
%struct.anon.91 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.92 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.93 }
%struct.anon.93 = type { i16 }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.105, %struct.anon.106, %struct.anon.107, ptr, ptr }
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
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.anon.105 = type { i32, i8, i32, i32 }
%struct.anon.106 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.107 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.104 }
%struct.anon.104 = type { ptr, i64 }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.nvif_notify_head_req_v0 = type { i8, i8, [6 x i8] }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
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
%struct.anon.78 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.113, %struct.anon.114, %struct.anon.116, ptr, %struct.anon.117, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.118, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.130 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.113 = type { ptr, i32, i32, i8 }
%struct.anon.114 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.115] }
%struct.anon.115 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.116 = type { i64, i64 }
%struct.anon.117 = type { i32, i64 }
%struct.anon.118 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.125, %struct.anon.126, %struct.anon.127, %struct.anon.128 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.119, i8 }
%union.anon.119 = type { %struct.anon.123 }
%struct.anon.123 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.125 = type { i32 }
%struct.anon.126 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.127 = type { i16, i16 }
%struct.anon.128 = type { i16, i16, i16, %struct.anon.129, i16 }
%struct.anon.129 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.130 = type { ptr, %struct.mutex, i8 }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.131, ptr, ptr, ptr, ptr, ptr }
%struct.anon.131 = type { ptr }
%struct.nv50_wndw = type { ptr, ptr, i32, %struct.nv50_disp_interlock, %struct.anon.141, %struct.drm_plane, %struct.nv50_lut, %struct.nv50_dmac, %struct.nv50_dmac, %struct.nvif_notify, i16, i16, i32 }
%struct.nv50_disp_interlock = type { i32, i32, i32 }
%struct.anon.141 = type { ptr, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_property_blob = type { %struct.drm_mode_object, ptr, %struct.list_head, %struct.list_head, i32, ptr }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.142, %struct.anon.143, %struct.anon.145, %union.anon.146 }
%struct.anon.142 = type { i32, i32 }
%struct.anon.143 = type { i32, %struct.anon.144, i8 }
%struct.anon.144 = type { i32, i32, i32 }
%struct.anon.145 = type { i32, i32 }
%union.anon.146 = type { %struct.anon.147 }
%struct.anon.147 = type { i8 }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.nv50_atom = type { %struct.drm_atomic_state, %struct.list_head, i8, i8 }

@nv50_head_func = internal constant %struct.drm_crtc_funcs { ptr @nv50_head_reset, ptr null, ptr null, ptr null, ptr null, ptr @nv50_head_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @nv50_head_atomic_duplicate_state, ptr @nv50_head_atomic_destroy_state, ptr null, ptr null, ptr @nv50_head_late_register, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_display_vblank_enable, ptr @nouveau_display_vblank_disable, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, align 4
@nvd9_head_func = internal constant %struct.drm_crtc_funcs { ptr @nv50_head_reset, ptr null, ptr null, ptr null, ptr null, ptr @nv50_head_destroy, ptr @drm_atomic_helper_set_config, ptr @drm_atomic_helper_page_flip, ptr null, ptr null, ptr @nv50_head_atomic_duplicate_state, ptr @nv50_head_atomic_destroy_state, ptr null, ptr null, ptr @nv50_head_late_register, ptr null, ptr @nv50_crc_set_source, ptr @nv50_crc_verify_source, ptr @nv50_crc_get_sources, ptr null, ptr null, ptr @nouveau_display_vblank_enable, ptr @nouveau_display_vblank_disable, ptr @drm_crtc_vblank_helper_get_vblank_timestamp }, align 4
@.str = private unnamed_addr constant [8 x i8] c"head-%d\00", align 1
@nv50_head_help = internal constant %struct.drm_crtc_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_head_atomic_check, ptr null, ptr null, ptr null, ptr null, ptr @nouveau_display_scanoutpos }, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"kmsVbl\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/nouveau/dispnv50/head.c\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"%s: %s atomic_check %d\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"%s: Invalid size %d for degamma on [CRTC:%d:%s]\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"%s: Invalid size %d for gamma on [CRTC:%d:%s]\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_head_flush_clr(ptr noundef %0, ptr nocapture noundef readonly %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 15
  %5 = load i16, ptr %4, align 2
  br i1 %2, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 14
  %8 = load i16, ptr %7, align 8
  %9 = xor i16 %8, -1
  br label %10

10:                                               ; preds = %6, %3
  %11 = phi i16 [ %9, %6 ], [ -1, %3 ]
  %12 = and i16 %11, %5
  %13 = and i16 %12, 512
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @nv50_crc_atomic_clr(ptr noundef %0) #9
  br label %16

16:                                               ; preds = %15, %10
  %17 = and i16 %12, 1
  %18 = icmp eq i16 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %0, align 8
  %21 = getelementptr inbounds %struct.nv50_head_func, ptr %20, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 %22(ptr noundef %0) #9
  br label %24

24:                                               ; preds = %19, %16
  %25 = and i16 %12, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.nv50_head_func, ptr %28, i32 0, i32 10
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 %30(ptr noundef %0) #9
  br label %32

32:                                               ; preds = %27, %24
  %33 = and i16 %12, 4
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %32
  %36 = load ptr, ptr %0, align 8
  %37 = getelementptr inbounds %struct.nv50_head_func, ptr %36, i32 0, i32 14
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 %38(ptr noundef %0) #9
  br label %40

40:                                               ; preds = %35, %32
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_clr(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_head_flush_set_wndw(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 14
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 4
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.nv50_head_func, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %1) #9
  %12 = load i16, ptr %3, align 8
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i16 [ %12, %7 ], [ %4, %2 ]
  %15 = and i16 %14, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %37, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nv50_head, ptr %0, i32 0, i32 3
  %19 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 2
  %20 = load i48, ptr %19, align 8
  %21 = lshr i48 %20, 40
  %22 = trunc i48 %21 to i32
  %23 = and i32 %22, 1
  %24 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 12
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 4, i32 4
  %27 = load ptr, ptr %26, align 8
  %28 = tail call i32 @nv50_lut_load(ptr noundef %18, i32 noundef %23, ptr noundef %25, ptr noundef %27) #9
  %29 = zext i32 %28 to i48
  %30 = load i48, ptr %19, align 8
  %31 = and i48 %30, -1099511627776
  %32 = or i48 %31, %29
  store i48 %32, ptr %19, align 8
  %33 = load ptr, ptr %0, align 8
  %34 = getelementptr inbounds %struct.nv50_head_func, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 %35(ptr noundef %0, ptr noundef %1) #9
  br label %37

37:                                               ; preds = %17, %13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_lut_load(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_head_flush_set(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 14
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 8
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 %9(ptr noundef %0, ptr noundef %1) #9
  %11 = load i16, ptr %3, align 8
  br label %12

12:                                               ; preds = %7, %2
  %13 = phi i16 [ %11, %7 ], [ %4, %2 ]
  %14 = and i16 %13, 16
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8
  %18 = getelementptr inbounds %struct.nv50_head_func, ptr %17, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef %1) #9
  %21 = load i16, ptr %3, align 8
  br label %22

22:                                               ; preds = %16, %12
  %23 = phi i16 [ %21, %16 ], [ %13, %12 ]
  %24 = and i16 %23, 2
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.nv50_head_func, ptr %27, i32 0, i32 9
  %29 = load ptr, ptr %28, align 4
  %30 = tail call i32 %29(ptr noundef %0, ptr noundef %1) #9
  %31 = load i16, ptr %3, align 8
  br label %32

32:                                               ; preds = %26, %22
  %33 = phi i16 [ %31, %26 ], [ %23, %22 ]
  %34 = and i16 %33, 32
  %35 = icmp eq i16 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %0, align 8
  %38 = getelementptr inbounds %struct.nv50_head_func, ptr %37, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  %40 = tail call i32 %39(ptr noundef %0, ptr noundef %1) #9
  %41 = load i16, ptr %3, align 8
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi i16 [ %41, %36 ], [ %33, %32 ]
  %44 = and i16 %43, 64
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %0, align 8
  %48 = getelementptr inbounds %struct.nv50_head_func, ptr %47, i32 0, i32 16
  %49 = load ptr, ptr %48, align 4
  %50 = tail call i32 %49(ptr noundef %0, ptr noundef %1) #9
  %51 = load i16, ptr %3, align 8
  br label %52

52:                                               ; preds = %46, %42
  %53 = phi i16 [ %51, %46 ], [ %43, %42 ]
  %54 = and i16 %53, 128
  %55 = icmp eq i16 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %52
  %57 = load ptr, ptr %0, align 8
  %58 = getelementptr inbounds %struct.nv50_head_func, ptr %57, i32 0, i32 17
  %59 = load ptr, ptr %58, align 4
  %60 = tail call i32 %59(ptr noundef %0, ptr noundef %1) #9
  %61 = load i16, ptr %3, align 8
  br label %62

62:                                               ; preds = %56, %52
  %63 = phi i16 [ %61, %56 ], [ %53, %52 ]
  %64 = and i16 %63, 256
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %0, align 8
  %68 = getelementptr inbounds %struct.nv50_head_func, ptr %67, i32 0, i32 18
  %69 = load ptr, ptr %68, align 4
  %70 = tail call i32 %69(ptr noundef %0, ptr noundef %1) #9
  %71 = load i16, ptr %3, align 8
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi i16 [ %71, %66 ], [ %63, %62 ]
  %74 = and i16 %73, 512
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  tail call void @nv50_crc_atomic_set(ptr noundef %0, ptr noundef %1) #9
  %77 = load i16, ptr %3, align 8
  br label %78

78:                                               ; preds = %76, %72
  %79 = phi i16 [ %77, %76 ], [ %73, %72 ]
  %80 = and i16 %79, 1024
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %0, align 8
  %84 = getelementptr inbounds %struct.nv50_head_func, ptr %83, i32 0, i32 19
  %85 = load ptr, ptr %84, align 4
  %86 = tail call i32 %85(ptr noundef %0, ptr noundef %1) #9
  br label %87

87:                                               ; preds = %82, %78
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_set(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nv50_head_create(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = alloca ptr, align 4
  %4 = alloca ptr, align 4
  %5 = alloca ptr, align 4
  %6 = alloca %struct.nvif_notify_head_req_v0, align 1
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store ptr null, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store ptr null, ptr %4, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store ptr null, ptr %5, align 4, !annotation !8
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %13 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 1320) #10
  %14 = icmp eq ptr %13, null
  br i1 %14, label %89, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.nv50_disp, ptr %11, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nv50_core_func, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  store ptr %20, ptr %13, align 8
  %21 = getelementptr inbounds %struct.nv50_head, ptr %13, i32 0, i32 1
  %22 = getelementptr inbounds %struct.nv50_head, ptr %13, i32 0, i32 1, i32 1
  store i32 %1, ptr %22, align 8
  %23 = load ptr, ptr %11, align 8
  %24 = getelementptr inbounds %struct.nvif_object, ptr %23, i32 0, i32 4
  %25 = load i32, ptr %24, align 8
  %26 = icmp slt i32 %25, 36976
  %27 = select i1 %26, ptr @nv50_head_func, ptr @nvd9_head_func
  %28 = icmp slt i32 %25, 50032
  br i1 %28, label %29, label %32

29:                                               ; preds = %15
  %30 = call i32 @nv50_base_new(ptr noundef %8, i32 noundef %1, ptr noundef nonnull %3) #9
  %31 = call i32 @nv50_ovly_new(ptr noundef %8, i32 noundef %1, ptr noundef nonnull %4) #9
  br label %37

32:                                               ; preds = %15
  %33 = shl i32 %1, 1
  %34 = call i32 @nv50_wndw_new(ptr noundef %8, i32 noundef 1, i32 noundef %33, ptr noundef nonnull %3) #9
  %35 = or i32 %33, 1
  %36 = call i32 @nv50_wndw_new(ptr noundef %8, i32 noundef 0, i32 noundef %35, ptr noundef nonnull %4) #9
  br label %37

37:                                               ; preds = %32, %29
  %38 = phi i32 [ %31, %29 ], [ %36, %32 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = call i32 @nv50_curs_new(ptr noundef %8, i32 noundef %1, ptr noundef nonnull %5) #9
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40, %37
  %44 = phi i32 [ %41, %40 ], [ %38, %37 ]
  call void @kfree(ptr noundef nonnull %13) #9
  %45 = inttoptr i32 %44 to ptr
  br label %89

46:                                               ; preds = %40
  %47 = load ptr, ptr %3, align 4
  %48 = getelementptr inbounds %struct.nv50_wndw, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %5, align 4
  %50 = getelementptr inbounds %struct.nv50_wndw, ptr %49, i32 0, i32 5
  %51 = call i32 (ptr, ptr, ptr, ptr, ptr, ptr, ...) @drm_crtc_init_with_planes(ptr noundef %0, ptr noundef %21, ptr noundef %48, ptr noundef %50, ptr noundef nonnull %27, ptr noundef nonnull @.str, i32 noundef %1) #9
  %52 = getelementptr inbounds %struct.nv50_head, ptr %13, i32 0, i32 1, i32 0, i32 19
  store ptr @nv50_head_help, ptr %52, align 4
  %53 = call i32 @drm_mode_crtc_set_gamma_size(ptr noundef %21, i32 noundef 256) #9
  %54 = load ptr, ptr %3, align 4
  %55 = load ptr, ptr %54, align 8
  %56 = getelementptr inbounds %struct.nv50_wndw_func, ptr %55, i32 0, i32 14
  %57 = load i32, ptr %56, align 4
  %58 = load ptr, ptr %11, align 8
  %59 = getelementptr inbounds %struct.nvif_object, ptr %58, i32 0, i32 4
  %60 = load i32, ptr %59, align 8
  %61 = icmp sgt i32 %60, 36975
  %62 = load ptr, ptr %13, align 8
  %63 = getelementptr inbounds %struct.nv50_head_func, ptr %62, i32 0, i32 5
  %64 = load i32, ptr %63, align 4
  call void @drm_crtc_enable_color_mgmt(ptr noundef %21, i32 noundef %57, i1 noundef zeroext %61, i32 noundef %64) #9
  %65 = load ptr, ptr %13, align 8
  %66 = getelementptr inbounds %struct.nv50_head_func, ptr %65, i32 0, i32 6
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %78, label %69

69:                                               ; preds = %46
  %70 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 4
  %71 = getelementptr %struct.nv50_head, ptr %13, i32 0, i32 3
  %72 = call i32 @nv50_lut_init(ptr noundef %11, ptr noundef %70, ptr noundef %71) #9
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = getelementptr inbounds %struct.nv50_head, ptr %13, i32 0, i32 1, i32 2
  %76 = call i32 @nvif_notify_dtor(ptr noundef %75) #9
  call void @nv50_lut_fini(ptr noundef %71) #9
  call void @drm_crtc_cleanup(ptr noundef %21) #9
  call void @kfree(ptr noundef nonnull %13) #9
  %77 = inttoptr i32 %72 to ptr
  br label %89

78:                                               ; preds = %69, %46
  %79 = load ptr, ptr %11, align 8
  store i8 0, ptr %6, align 1
  %80 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %6, i32 0, i32 1
  %81 = load i32, ptr %22, align 8
  %82 = trunc i32 %81 to i8
  store i8 %82, ptr %80, align 1
  %83 = getelementptr inbounds %struct.nvif_notify_head_req_v0, ptr %6, i32 0, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(6) %83, i8 0, i32 6, i1 false)
  %84 = getelementptr inbounds %struct.nv50_head, ptr %13, i32 0, i32 1, i32 2
  %85 = call i32 @nvif_notify_ctor(ptr noundef %79, ptr noundef nonnull @.str.1, ptr noundef nonnull @nv50_head_vblank_handler, i1 noundef zeroext false, i8 noundef zeroext 0, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 8, ptr noundef %84) #9
  %86 = icmp eq i32 %85, 0
  %87 = inttoptr i32 %85 to ptr
  %88 = select i1 %86, ptr %13, ptr %87
  br label %89

89:                                               ; preds = %78, %74, %43, %2
  %90 = phi ptr [ %45, %43 ], [ %77, %74 ], [ inttoptr (i32 -12 to ptr), %2 ], [ %88, %78 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  ret ptr %90
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_base_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_ovly_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wndw_new(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_curs_new(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_init_with_planes(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_crtc_set_gamma_size(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_enable_color_mgmt(ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_lut_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_head_destroy(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 2
  %4 = tail call i32 @nvif_notify_dtor(ptr noundef %3) #9
  %5 = getelementptr i8, ptr %0, i32 1176
  tail call void @nv50_lut_fini(ptr noundef %5) #9
  tail call void @drm_crtc_cleanup(ptr noundef %0) #9
  tail call void @kfree(ptr noundef %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_head_vblank_handler(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -756
  %3 = tail call zeroext i1 @drm_crtc_handle_vblank(ptr noundef %2) #9
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = getelementptr i8, ptr %0, i32 -764
  tail call void @nv50_crc_handle_vblank(ptr noundef %5) #9
  br label %6

6:                                                ; preds = %4, %1
  ret i32 1
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_head_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 448) #10
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !9

5:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 500, i32 noundef 9, ptr noundef null) #9
  br label %12

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef nonnull %8) #9
  tail call void @kfree(ptr noundef nonnull %8) #9
  br label %11

11:                                               ; preds = %10, %6
  tail call void @__drm_atomic_helper_crtc_reset(ptr noundef %0, ptr noundef nonnull %3) #9
  br label %12

12:                                               ; preds = %11, %5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_set_config(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_page_flip(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv50_head_atomic_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 22
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 448) #10
  %6 = icmp eq ptr %5, null
  br i1 %6, label %43, label %7

7:                                                ; preds = %1
  tail call void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef %0, ptr noundef nonnull %5) #9
  %8 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(12) %8, ptr noundef align 4 dereferenceable(12) %9, i32 12, i1 false)
  %10 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 2
  %11 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %10, align 8
  %13 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 3
  %14 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %13, ptr noundef align 8 dereferenceable(32) %14, i32 32, i1 false)
  %15 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 4
  %16 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(24) %15, ptr noundef align 8 dereferenceable(24) %16, i32 24, i1 false)
  %17 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 5
  %18 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 5
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(32) %17, ptr noundef align 8 dereferenceable(32) %18, i32 32, i1 false)
  %19 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 6
  %20 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 6
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(16) %19, ptr noundef align 8 dereferenceable(16) %20, i32 16, i1 false)
  %21 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 7
  %22 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 7
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(10) %21, ptr noundef align 8 dereferenceable(10) %22, i32 10, i1 false)
  %23 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 8
  %24 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 8
  %25 = load i8, ptr %24, align 2
  store i8 %25, ptr %23, align 2
  %26 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 9
  %27 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 9
  %28 = load i8, ptr %27, align 1
  store i8 %28, ptr %26, align 1
  %29 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 10
  %30 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 10
  %31 = load i32, ptr %30, align 4
  store i32 %31, ptr %29, align 4
  %32 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 12
  %33 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 12
  %34 = load i32, ptr %33, align 4
  store i32 %34, ptr %32, align 4
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 11
  %36 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 11
  %37 = load i16, ptr %36, align 8
  store i16 %37, ptr %35, align 8
  %38 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 13
  %39 = getelementptr inbounds %struct.nv50_head_atom, ptr %3, i32 0, i32 13
  %40 = load i64, ptr %39, align 8
  store i64 %40, ptr %38, align 8
  %41 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 15
  store i16 0, ptr %41, align 2
  %42 = getelementptr inbounds %struct.nv50_head_atom, ptr %5, i32 0, i32 14
  store i16 0, ptr %42, align 8
  br label %43

43:                                               ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_head_atomic_destroy_state(ptr nocapture noundef readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_crtc_destroy_state(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_head_late_register(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  %3 = tail call i32 @nv50_head_crc_late_register(ptr noundef %2) #9
  ret i32 %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_display_vblank_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_display_vblank_disable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_vblank_helper_get_vblank_timestamp(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_crtc_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_head_crc_late_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_crc_set_source(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_crc_verify_source(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_crc_get_sources(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_head_atomic_check(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr %struct.__drm_crtcs_state, ptr %6, i32 %8, i32 2
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr %struct.__drm_crtcs_state, ptr %6, i32 %8, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %0, i32 -8
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 3
  %18 = load i8, ptr %17, align 2
  %19 = and i8 %18, 32
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.nv50_head_atom, ptr %10, i32 0, i32 1
  %23 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 1
  %24 = tail call i32 @bcmp(ptr noundef dereferenceable(12) %22, ptr noundef dereferenceable(12) %23, i32 12)
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %21, %2
  %27 = phi i1 [ true, %2 ], [ %25, %21 ]
  %28 = load i32, ptr @__drm_debug, align 4
  %29 = and i32 %28, 16
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %44, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8
  %36 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 2
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 2, i32 12
  %39 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 2
  %42 = load i8, ptr %41, align 1, !range !10
  %43 = zext i8 %42 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %37, ptr noundef nonnull @.str.3, ptr noundef %38, ptr noundef %40, i32 noundef %43) #11
  br label %44

44:                                               ; preds = %31, %26
  br i1 %27, label %45, label %134

45:                                               ; preds = %44
  %46 = load ptr, ptr %0, align 8
  %47 = getelementptr inbounds %struct.drm_device, ptr %46, i32 0, i32 5
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 19
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 12
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 10
  %55 = load ptr, ptr %54, align 8
  %56 = icmp eq ptr %55, null
  br i1 %56, label %81, label %57

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.drm_property_blob, ptr %55, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = lshr i32 %59, 3
  %61 = load ptr, ptr %16, align 8
  %62 = getelementptr inbounds %struct.nv50_head_func, ptr %61, i32 0, i32 3
  %63 = load ptr, ptr %62, align 4
  %64 = tail call zeroext i1 %63(i32 noundef %60) #9
  br i1 %64, label %81, label %65

65:                                               ; preds = %57
  %66 = load i32, ptr @__drm_debug, align 4
  %67 = and i32 %66, 16
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %670, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 2, i32 1
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 3
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 2, i32 12
  %77 = getelementptr i8, ptr %0, i32 52
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr i8, ptr %0, i32 16
  %80 = load ptr, ptr %79, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %75, ptr noundef nonnull @.str.4, ptr noundef %76, i32 noundef %60, i32 noundef %78, ptr noundef %80) #11
  br label %670

81:                                               ; preds = %57, %45
  %82 = icmp eq ptr %53, null
  br i1 %82, label %91, label %83

83:                                               ; preds = %81
  %84 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 1, i32 2
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %98, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 1
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %85, %89
  br i1 %90, label %91, label %670

91:                                               ; preds = %87, %81
  %92 = load ptr, ptr %16, align 8
  %93 = getelementptr inbounds %struct.nv50_head_func, ptr %92, i32 0, i32 4
  %94 = load i8, ptr %93, align 4, !range !10
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 4, i32 1
  store i32 0, ptr %97, align 4
  br label %134

98:                                               ; preds = %83
  %99 = getelementptr inbounds %struct.drm_property_blob, ptr %53, i32 0, i32 4
  %100 = load i32, ptr %99, align 4
  %101 = lshr i32 %100, 3
  %102 = load ptr, ptr %16, align 8
  br label %103

103:                                              ; preds = %98, %91
  %104 = phi ptr [ %102, %98 ], [ %92, %91 ]
  %105 = phi i32 [ %101, %98 ], [ 0, %91 ]
  %106 = getelementptr inbounds %struct.nv50_head_func, ptr %104, i32 0, i32 2
  %107 = load ptr, ptr %106, align 4
  %108 = tail call zeroext i1 %107(ptr noundef %16, ptr noundef %12, i32 noundef %105) #9
  br i1 %108, label %125, label %109

109:                                              ; preds = %103
  %110 = load i32, ptr @__drm_debug, align 4
  %111 = and i32 %110, 16
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %670, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 2, i32 1
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.nouveau_drm, ptr %115, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8
  %118 = getelementptr inbounds %struct.drm_device, ptr %117, i32 0, i32 2
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 2, i32 12
  %121 = getelementptr i8, ptr %0, i32 52
  %122 = load i32, ptr %121, align 4
  %123 = getelementptr i8, ptr %0, i32 16
  %124 = load ptr, ptr %123, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %119, ptr noundef nonnull @.str.5, ptr noundef %120, i32 noundef %105, i32 noundef %122, ptr noundef %124) #11
  br label %670

125:                                              ; preds = %103
  %126 = getelementptr inbounds %struct.nv50_disp, ptr %51, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nv50_core, ptr %127, i32 0, i32 1, i32 5, i32 3
  %129 = load i32, ptr %128, align 4
  %130 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 4, i32 1
  store i32 %129, ptr %130, align 4
  %131 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 4, i32 2
  %132 = load i48, ptr %131, align 8
  %133 = xor i48 %132, 1099511627776
  store i48 %133, ptr %131, align 8
  br label %134

134:                                              ; preds = %125, %96, %44
  %135 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 2
  %136 = load i8, ptr %135, align 1, !range !10
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %551, label %138

138:                                              ; preds = %134
  %139 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 20
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.drm_atomic_state, ptr %140, i32 0, i32 5
  %142 = load i32, ptr %141, align 4
  %143 = icmp sgt i32 %142, 0
  br i1 %143, label %144, label %166

144:                                              ; preds = %138
  %145 = getelementptr inbounds %struct.drm_atomic_state, ptr %140, i32 0, i32 6
  %146 = load ptr, ptr %145, align 4
  br label %147

147:                                              ; preds = %158, %144
  %148 = phi i32 [ 0, %144 ], [ %159, %158 ]
  %149 = getelementptr %struct.__drm_connnectors_state, ptr %146, i32 %148
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %158, label %152

152:                                              ; preds = %147
  %153 = getelementptr %struct.__drm_connnectors_state, ptr %146, i32 %148, i32 3
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr inbounds %struct.drm_connector_state, ptr %154, i32 0, i32 1
  %156 = load ptr, ptr %155, align 4
  %157 = icmp eq ptr %156, %0
  br i1 %157, label %161, label %158

158:                                              ; preds = %152, %147
  %159 = add nuw nsw i32 %148, 1
  %160 = icmp eq i32 %159, %142
  br i1 %160, label %166, label %147

161:                                              ; preds = %152
  %162 = getelementptr inbounds %struct.drm_crtc_state, ptr %10, i32 0, i32 2
  %163 = load i8, ptr %162, align 1, !range !10
  %164 = icmp eq i8 %163, 0
  %165 = icmp eq ptr %154, null
  br i1 %164, label %189, label %170

166:                                              ; preds = %158, %138
  %167 = getelementptr inbounds %struct.drm_crtc_state, ptr %10, i32 0, i32 2
  %168 = load i8, ptr %167, align 1, !range !10
  %169 = icmp eq i8 %168, 0
  br i1 %169, label %192, label %200

170:                                              ; preds = %161
  br i1 %165, label %200, label %171

171:                                              ; preds = %170
  %172 = load i8, ptr %17, align 2
  %173 = and i8 %172, 2
  %174 = icmp eq i8 %173, 0
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %154, i32 0, i32 4
  %177 = load i8, ptr %176, align 4
  %178 = or i8 %177, 2
  store i8 %178, ptr %176, align 4
  br label %179

179:                                              ; preds = %175, %171
  %180 = getelementptr inbounds %struct.nv50_head_atom, ptr %10, i32 0, i32 7
  %181 = load i8, ptr %180, align 8
  %182 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 7
  %183 = load i8, ptr %182, align 8
  %184 = icmp eq i8 %181, %183
  br i1 %184, label %200, label %185

185:                                              ; preds = %179
  %186 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %154, i32 0, i32 4
  %187 = load i8, ptr %186, align 4
  %188 = or i8 %187, 1
  store i8 %188, ptr %186, align 4
  br label %200

189:                                              ; preds = %161
  br i1 %165, label %192, label %190

190:                                              ; preds = %189
  %191 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %154, i32 0, i32 4
  store i8 -1, ptr %191, align 4
  br label %192

192:                                              ; preds = %190, %189, %166
  %193 = phi ptr [ %154, %190 ], [ null, %189 ], [ null, %166 ]
  %194 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  store i16 -1, ptr %194, align 8
  %195 = load ptr, ptr %16, align 8
  %196 = getelementptr inbounds %struct.nv50_head_func, ptr %195, i32 0, i32 19
  %197 = load ptr, ptr %196, align 4
  %198 = icmp eq ptr %197, null
  %199 = select i1 %198, i16 -1025, i16 -1
  store i16 %199, ptr %194, align 8
  br label %200

200:                                              ; preds = %192, %185, %179, %170, %166
  %201 = phi ptr [ null, %170 ], [ %154, %185 ], [ %154, %179 ], [ %193, %192 ], [ null, %166 ]
  %202 = load i8, ptr %17, align 2
  %203 = and i8 %202, 10
  %204 = icmp eq i8 %203, 0
  br i1 %204, label %291, label %205

205:                                              ; preds = %200
  %206 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7
  tail call void @drm_mode_set_crtcinfo(ptr noundef %206, i32 noundef 3) #9
  %207 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 18
  %208 = load i16, ptr %207, align 2
  %209 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 2
  store i16 %208, ptr %209, align 4
  %210 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 17
  %211 = load i16, ptr %210, align 4
  %212 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 16
  %213 = load i16, ptr %212, align 2
  %214 = xor i16 %213, -1
  %215 = add i16 %211, %214
  %216 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 2, i32 1
  store i16 %215, ptr %216, align 2
  %217 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 15
  %218 = load i16, ptr %217, align 4
  %219 = add i16 %218, %214
  %220 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 2, i32 2
  store i16 %219, ptr %220, align 4
  %221 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 13
  %222 = load i16, ptr %221, align 4
  %223 = add i16 %222, %219
  %224 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 2, i32 3
  store i16 %223, ptr %224, align 2
  %225 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 25
  %226 = load i16, ptr %225, align 4
  %227 = zext i16 %226 to i32
  %228 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 3
  store i32 %227, ptr %228, align 4
  %229 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 24
  %230 = load i16, ptr %229, align 2
  %231 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 23
  %232 = load i16, ptr %231, align 4
  %233 = xor i16 %232, -1
  %234 = add i16 %230, %233
  %235 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 3, i32 1
  store i16 %234, ptr %235, align 4
  %236 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 22
  %237 = load i16, ptr %236, align 2
  %238 = add i16 %237, %233
  %239 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 3, i32 2
  store i16 %238, ptr %239, align 2
  %240 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 20
  %241 = load i16, ptr %240, align 2
  %242 = add i16 %241, %238
  %243 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 3, i32 3
  store i16 %242, ptr %243, align 4
  %244 = zext i16 %241 to i32
  %245 = add nsw i32 %227, -2
  %246 = sub nsw i32 %245, %244
  %247 = zext i16 %208 to i32
  %248 = mul nuw nsw i32 %247, 1000
  %249 = mul i32 %248, %246
  %250 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 12
  %251 = load i32, ptr %250, align 4
  %252 = udiv i32 %249, %251
  %253 = trunc i32 %252 to i16
  %254 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 3, i32 6
  store i16 %253, ptr %254, align 2
  %255 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7, i32 11
  %256 = load i32, ptr %255, align 4
  %257 = and i32 %256, 16
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %205
  %260 = add i16 %238, %226
  %261 = add i16 %260, %241
  %262 = shl nuw nsw i32 %227, 1
  %263 = or i32 %262, 1
  store i32 %263, ptr %228, align 4
  br label %264

264:                                              ; preds = %259, %205
  %265 = phi i16 [ %260, %259 ], [ 0, %205 ]
  %266 = phi i16 [ %261, %259 ], [ 1, %205 ]
  %267 = phi i8 [ 1, %259 ], [ 0, %205 ]
  %268 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 3, i32 5
  store i16 %265, ptr %268, align 4
  %269 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 3, i32 4
  store i16 %266, ptr %269, align 2
  %270 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3
  store i8 %267, ptr %270, align 4
  %271 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 3, i32 1
  store i32 %251, ptr %271, align 4
  %272 = trunc i32 %256 to i8
  %273 = lshr i8 %272, 1
  %274 = and i8 %273, 1
  %275 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 11
  %276 = load i8, ptr %275, align 8
  %277 = and i8 %276, -4
  %278 = lshr i8 %272, 2
  %279 = and i8 %278, 2
  %280 = or i8 %279, %274
  %281 = or i8 %280, %277
  store i8 %281, ptr %275, align 8
  %282 = load ptr, ptr %16, align 8
  %283 = getelementptr inbounds %struct.nv50_head_func, ptr %282, i32 0, i32 19
  %284 = load ptr, ptr %283, align 4
  %285 = icmp eq ptr %284, null
  %286 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  %287 = load i16, ptr %286, align 8
  %288 = and i16 %287, -1041
  %289 = select i1 %285, i16 16, i16 1040
  %290 = or i16 %289, %288
  store i16 %290, ptr %286, align 8
  br label %291

291:                                              ; preds = %264, %200
  br i1 %27, label %292, label %298

292:                                              ; preds = %291
  %293 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 4
  %294 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 4, i32 1
  %295 = load i32, ptr %294, align 4
  %296 = icmp ne i32 %295, 0
  %297 = zext i1 %296 to i8
  store i8 %297, ptr %293, align 8
  br label %298

298:                                              ; preds = %292, %291
  %299 = icmp eq ptr %201, null
  br i1 %299, label %521, label %300

300:                                              ; preds = %298
  %301 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %201, i32 0, i32 4
  %302 = load i8, ptr %301, align 4
  %303 = and i8 %302, 2
  %304 = icmp eq i8 %303, 0
  br i1 %304, label %442, label %305

305:                                              ; preds = %300
  %306 = load ptr, ptr %201, align 4
  %307 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 7
  %308 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 8
  %309 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %201, i32 0, i32 2
  %310 = load i32, ptr %309, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #9
  store i32 0, ptr %4, align 4, !annotation !8
  %311 = getelementptr inbounds %struct.drm_connector, ptr %306, i32 0, i32 22
  %312 = load ptr, ptr %311, align 4
  %313 = icmp eq ptr %312, null
  br i1 %313, label %317, label %314

314:                                              ; preds = %305
  %315 = getelementptr inbounds %struct.drm_property_blob, ptr %312, i32 0, i32 5
  %316 = load ptr, ptr %315, align 4
  br label %317

317:                                              ; preds = %314, %305
  %318 = phi ptr [ %316, %314 ], [ null, %305 ]
  %319 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %201, i32 0, i32 2, i32 2
  %320 = load i8, ptr %319, align 4, !range !10
  %321 = icmp eq i8 %320, 0
  %322 = icmp eq i32 %310, 0
  %323 = select i1 %321, i32 %310, i32 1
  %324 = select i1 %321, i1 %322, i1 false
  %325 = select i1 %324, ptr %308, ptr %307
  %326 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 8, i32 6
  %327 = load i16, ptr %326, align 2
  %328 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 8, i32 11
  %329 = load i32, ptr %328, align 4
  %330 = and i32 %329, 507904
  %331 = icmp eq i32 %330, 16384
  br i1 %331, label %332, label %336

332:                                              ; preds = %317
  %333 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 8, i32 9
  %334 = load i16, ptr %333, align 4
  %335 = add i16 %334, %327
  br label %336

336:                                              ; preds = %332, %317
  %337 = phi i16 [ %335, %332 ], [ %327, %317 ]
  %338 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 8, i32 1
  %339 = load i16, ptr %338, align 4
  %340 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 2
  store i16 %339, ptr %340, align 8
  %341 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 2, i32 1
  store i16 %337, ptr %341, align 2
  call void @drm_mode_get_hv_timing(ptr noundef %325, ptr noundef nonnull %3, ptr noundef nonnull %4) #9
  %342 = load i32, ptr %3, align 4
  %343 = trunc i32 %342 to i16
  %344 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 2, i32 2
  store i16 %343, ptr %344, align 4
  %345 = load i32, ptr %4, align 4
  %346 = trunc i32 %345 to i16
  %347 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 2, i32 3
  store i16 %346, ptr %347, align 2
  %348 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %201, i32 0, i32 2, i32 1
  %349 = load i32, ptr %348, align 4
  switch i32 %349, label %401 [
    i32 1, label %355
    i32 2, label %350
  ]

350:                                              ; preds = %336
  %351 = call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %318) #9
  br i1 %351, label %352, label %401

352:                                              ; preds = %350
  %353 = load i16, ptr %347, align 2
  %354 = load i16, ptr %344, align 4
  br label %355

355:                                              ; preds = %352, %336
  %356 = phi i16 [ %354, %352 ], [ %343, %336 ]
  %357 = phi i16 [ %353, %352 ], [ %346, %336 ]
  %358 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %201, i32 0, i32 2, i32 1, i32 1
  %359 = load i32, ptr %358, align 4
  %360 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %201, i32 0, i32 2, i32 1, i32 2
  %361 = load i32, ptr %360, align 4
  %362 = zext i16 %357 to i32
  %363 = shl i32 %362, 19
  %364 = zext i16 %356 to i32
  %365 = sdiv i32 %363, %364
  %366 = icmp eq i32 %359, 0
  br i1 %366, label %383, label %367

367:                                              ; preds = %355
  %368 = trunc i32 %359 to i16
  %369 = mul i16 %368, -2
  %370 = add i16 %369, %356
  store i16 %370, ptr %344, align 4
  %371 = icmp eq i32 %361, 0
  br i1 %371, label %376, label %372

372:                                              ; preds = %367
  %373 = trunc i32 %361 to i16
  %374 = mul i16 %373, -2
  %375 = add i16 %374, %357
  br label %399

376:                                              ; preds = %367
  %377 = zext i16 %370 to i32
  %378 = mul i32 %365, %377
  %379 = lshr i32 %365, 1
  %380 = add i32 %378, %379
  %381 = lshr i32 %380, 19
  %382 = trunc i32 %381 to i16
  br label %399

383:                                              ; preds = %355
  %384 = lshr i16 %356, 4
  %385 = add i16 %356, -32
  %386 = sub i16 %385, %384
  store i16 %386, ptr %344, align 4
  %387 = icmp eq i32 %361, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %383
  %389 = trunc i32 %361 to i16
  %390 = mul i16 %389, -2
  %391 = add i16 %390, %357
  br label %399

392:                                              ; preds = %383
  %393 = zext i16 %386 to i32
  %394 = mul i32 %365, %393
  %395 = lshr i32 %365, 1
  %396 = add i32 %394, %395
  %397 = lshr i32 %396, 19
  %398 = trunc i32 %397 to i16
  br label %399

399:                                              ; preds = %392, %388, %376, %372
  %400 = phi i16 [ %382, %376 ], [ %375, %372 ], [ %398, %392 ], [ %391, %388 ]
  store i16 %400, ptr %347, align 2
  br label %401

401:                                              ; preds = %399, %350, %336
  switch i32 %323, label %437 [
    i32 2, label %402
    i32 3, label %409
  ]

402:                                              ; preds = %401
  %403 = load i16, ptr %340, align 8
  %404 = load i16, ptr %344, align 4
  %405 = call i16 @llvm.umin.i16(i16 %403, i16 %404) #9
  store i16 %405, ptr %344, align 4
  %406 = load i16, ptr %341, align 2
  %407 = load i16, ptr %347, align 2
  %408 = call i16 @llvm.umin.i16(i16 %406, i16 %407) #9
  store i16 %408, ptr %347, align 2
  br label %437

409:                                              ; preds = %401
  %410 = load i16, ptr %344, align 4
  %411 = zext i16 %410 to i32
  %412 = load i16, ptr %341, align 2
  %413 = zext i16 %412 to i32
  %414 = mul nuw i32 %413, %411
  %415 = load i16, ptr %340, align 8
  %416 = zext i16 %415 to i32
  %417 = load i16, ptr %347, align 2
  %418 = zext i16 %417 to i32
  %419 = mul nuw i32 %418, %416
  %420 = icmp sgt i32 %414, %419
  br i1 %420, label %421, label %429

421:                                              ; preds = %409
  %422 = shl i32 %416, 19
  %423 = sdiv i32 %422, %413
  %424 = mul i32 %423, %418
  %425 = lshr i32 %423, 1
  %426 = add i32 %424, %425
  %427 = lshr i32 %426, 19
  %428 = trunc i32 %427 to i16
  store i16 %428, ptr %344, align 4
  br label %437

429:                                              ; preds = %409
  %430 = shl i32 %413, 19
  %431 = sdiv i32 %430, %416
  %432 = mul i32 %431, %411
  %433 = lshr i32 %431, 1
  %434 = add i32 %432, %433
  %435 = lshr i32 %434, 19
  %436 = trunc i32 %435 to i16
  store i16 %436, ptr %347, align 2
  br label %437

437:                                              ; preds = %429, %421, %402, %401
  %438 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  %439 = load i16, ptr %438, align 8
  %440 = or i16 %439, 8
  store i16 %440, ptr %438, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  %441 = load i8, ptr %301, align 4
  br label %442

442:                                              ; preds = %437, %300
  %443 = phi i8 [ %441, %437 ], [ %302, %300 ]
  %444 = and i8 %443, 1
  %445 = icmp eq i8 %444, 0
  br i1 %445, label %488, label %446

446:                                              ; preds = %442
  %447 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %201, i32 0, i32 1
  %448 = load i32, ptr %447, align 4
  switch i32 %448, label %459 [
    i32 0, label %472
    i32 34, label %449
  ]

449:                                              ; preds = %446
  %450 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 7
  %451 = load i8, ptr %450, align 8
  %452 = zext i8 %451 to i32
  %453 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 11, i32 1
  %454 = load i8, ptr %453, align 1
  %455 = zext i8 %454 to i32
  %456 = mul nuw nsw i32 %455, 3
  %457 = icmp ult i32 %456, %452
  %458 = select i1 %457, i32 17, i32 0
  br label %459

459:                                              ; preds = %449, %446
  %460 = phi i32 [ %458, %449 ], [ %448, %446 ]
  %461 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %201, i32 0, i32 1, i32 1
  %462 = load i32, ptr %461, align 4
  %463 = icmp eq i32 %462, 3
  br i1 %463, label %464, label %470

464:                                              ; preds = %459
  %465 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 11, i32 1
  %466 = load i8, ptr %465, align 1
  %467 = icmp ugt i8 %466, 7
  %468 = or i32 %460, 2
  %469 = select i1 %467, i32 %468, i32 %460
  br label %472

470:                                              ; preds = %459
  %471 = or i32 %462, %460
  br label %472

472:                                              ; preds = %470, %464, %446
  %473 = phi i32 [ %471, %470 ], [ %448, %446 ], [ %469, %464 ]
  %474 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 9
  %475 = trunc i32 %473 to i8
  %476 = and i8 %475, 1
  %477 = load i8, ptr %474, align 1
  %478 = and i8 %477, -128
  %479 = or i8 %478, %476
  %480 = and i8 %475, 6
  %481 = or i8 %479, %480
  %482 = and i8 %475, 120
  %483 = or i8 %481, %482
  store i8 %483, ptr %474, align 1
  %484 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  %485 = load i16, ptr %484, align 8
  %486 = or i16 %485, 128
  store i16 %486, ptr %484, align 8
  %487 = load i8, ptr %301, align 4
  br label %488

488:                                              ; preds = %472, %442
  %489 = phi i8 [ %487, %472 ], [ %443, %442 ]
  %490 = and i8 %489, 4
  %491 = icmp eq i8 %490, 0
  br i1 %491, label %521, label %492

492:                                              ; preds = %488
  %493 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %201, i32 0, i32 3
  %494 = load i32, ptr %493, align 4
  %495 = add i32 %494, -100
  %496 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %201, i32 0, i32 3, i32 1
  %497 = load i32, ptr %496, align 4
  %498 = icmp sgt i32 %495, 0
  %499 = select i1 %498, i32 50, i32 0
  %500 = mul i32 %495, 2047
  %501 = add i32 %499, %500
  %502 = sdiv i32 %501, 100
  %503 = trunc i32 %502 to i16
  %504 = and i16 %503, 4095
  %505 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 10
  %506 = load i16, ptr %505, align 4
  %507 = and i16 %506, -4096
  %508 = or i16 %504, %507
  store i16 %508, ptr %505, align 4
  %509 = mul i32 %497, 2047
  %510 = add i32 %509, -184230
  %511 = sdiv i32 %510, 100
  %512 = trunc i32 %511 to i16
  %513 = and i16 %512, 4095
  %514 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 10, i32 0, i32 1
  %515 = load i16, ptr %514, align 2
  %516 = and i16 %515, -4096
  %517 = or i16 %513, %516
  store i16 %517, ptr %514, align 2
  %518 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  %519 = load i16, ptr %518, align 8
  %520 = or i16 %519, 256
  store i16 %520, ptr %518, align 8
  br label %521

521:                                              ; preds = %492, %488, %298
  %522 = load ptr, ptr %16, align 8
  %523 = getelementptr inbounds %struct.nv50_head_func, ptr %522, i32 0, i32 8
  %524 = load ptr, ptr %523, align 4
  %525 = icmp eq ptr %524, null
  br i1 %525, label %532, label %526

526:                                              ; preds = %521
  call void %524(ptr noundef %16, ptr noundef %12) #9
  %527 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 5
  %528 = load i8, ptr %527, align 8, !range !10
  %529 = icmp eq i8 %528, 0
  br i1 %529, label %530, label %532

530:                                              ; preds = %526
  %531 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 4
  store i8 0, ptr %531, align 8
  br label %532

532:                                              ; preds = %530, %526, %521
  %533 = getelementptr inbounds %struct.nv50_head_atom, ptr %10, i32 0, i32 7, i32 1
  %534 = load i8, ptr %533, align 1
  %535 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 7, i32 1
  %536 = load i8, ptr %535, align 1
  %537 = icmp eq i8 %534, %536
  %538 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  %539 = load i16, ptr %538, align 8
  %540 = select i1 %537, i16 0, i16 32
  %541 = and i16 %539, -33
  %542 = or i16 %541, %540
  store i16 %542, ptr %538, align 8
  %543 = getelementptr inbounds %struct.nv50_head_atom, ptr %10, i32 0, i32 8
  %544 = load i8, ptr %543, align 2
  %545 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 8
  %546 = load i8, ptr %545, align 2
  %547 = icmp eq i8 %544, %546
  %548 = select i1 %547, i16 0, i16 64
  %549 = and i16 %542, -65
  %550 = or i16 %548, %549
  store i16 %550, ptr %538, align 8
  br label %557

551:                                              ; preds = %134
  %552 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 4
  store i8 0, ptr %552, align 8
  %553 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 5
  store i8 0, ptr %553, align 8
  %554 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 6
  store i8 0, ptr %554, align 8
  %555 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 7, i32 1
  store i8 0, ptr %555, align 1
  %556 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 8
  store i8 0, ptr %556, align 2
  br label %557

557:                                              ; preds = %551, %532
  %558 = load i8, ptr %17, align 2
  %559 = and i8 %558, 14
  %560 = icmp eq i8 %559, 0
  br i1 %560, label %561, label %618

561:                                              ; preds = %557
  %562 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 5
  %563 = load i8, ptr %562, align 8, !range !10
  %564 = icmp eq i8 %563, 0
  %565 = getelementptr inbounds %struct.nv50_head_atom, ptr %10, i32 0, i32 5
  br i1 %564, label %573, label %566

566:                                              ; preds = %561
  %567 = call i32 @bcmp(ptr noundef dereferenceable(32) %565, ptr noundef dereferenceable(32) %562, i32 32)
  %568 = icmp eq i32 %567, 0
  br i1 %568, label %580, label %569

569:                                              ; preds = %566
  %570 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  %571 = load i16, ptr %570, align 8
  %572 = or i16 %571, 2
  store i16 %572, ptr %570, align 8
  br label %580

573:                                              ; preds = %561
  %574 = load i8, ptr %565, align 8, !range !10
  %575 = icmp eq i8 %574, 0
  br i1 %575, label %580, label %576

576:                                              ; preds = %573
  %577 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 15
  %578 = load i16, ptr %577, align 2
  %579 = or i16 %578, 2
  store i16 %579, ptr %577, align 2
  br label %580

580:                                              ; preds = %576, %573, %569, %566
  %581 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 6
  %582 = load i8, ptr %581, align 8, !range !10
  %583 = icmp eq i8 %582, 0
  %584 = getelementptr inbounds %struct.nv50_head_atom, ptr %10, i32 0, i32 6
  br i1 %583, label %592, label %585

585:                                              ; preds = %580
  %586 = call i32 @bcmp(ptr noundef dereferenceable(16) %584, ptr noundef dereferenceable(16) %581, i32 16)
  %587 = icmp eq i32 %586, 0
  br i1 %587, label %599, label %588

588:                                              ; preds = %585
  %589 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  %590 = load i16, ptr %589, align 8
  %591 = or i16 %590, 4
  store i16 %591, ptr %589, align 8
  br label %599

592:                                              ; preds = %580
  %593 = load i8, ptr %584, align 8, !range !10
  %594 = icmp eq i8 %593, 0
  br i1 %594, label %599, label %595

595:                                              ; preds = %592
  %596 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 15
  %597 = load i16, ptr %596, align 2
  %598 = or i16 %597, 4
  store i16 %598, ptr %596, align 2
  br label %599

599:                                              ; preds = %595, %592, %588, %585
  %600 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 4
  %601 = load i8, ptr %600, align 8, !range !10
  %602 = icmp eq i8 %601, 0
  %603 = getelementptr inbounds %struct.nv50_head_atom, ptr %10, i32 0, i32 4
  br i1 %602, label %611, label %604

604:                                              ; preds = %599
  %605 = call i32 @bcmp(ptr noundef dereferenceable(24) %603, ptr noundef dereferenceable(24) %600, i32 24)
  %606 = icmp eq i32 %605, 0
  br i1 %606, label %655, label %607

607:                                              ; preds = %604
  %608 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  %609 = load i16, ptr %608, align 8
  %610 = or i16 %609, 1
  store i16 %610, ptr %608, align 8
  br label %655

611:                                              ; preds = %599
  %612 = load i8, ptr %603, align 8, !range !10
  %613 = icmp eq i8 %612, 0
  br i1 %613, label %655, label %614

614:                                              ; preds = %611
  %615 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 15
  %616 = load i16, ptr %615, align 2
  %617 = or i16 %616, 1
  store i16 %617, ptr %615, align 2
  br label %655

618:                                              ; preds = %557
  %619 = getelementptr inbounds %struct.nv50_head_atom, ptr %10, i32 0, i32 4
  %620 = load i8, ptr %619, align 8, !range !10
  %621 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 15
  %622 = zext i8 %620 to i16
  %623 = load i16, ptr %621, align 2
  %624 = and i16 %623, -2
  %625 = or i16 %624, %622
  store i16 %625, ptr %621, align 2
  %626 = getelementptr inbounds %struct.nv50_head_atom, ptr %10, i32 0, i32 5
  %627 = load i8, ptr %626, align 8, !range !10
  %628 = shl nuw nsw i8 %627, 1
  %629 = zext i8 %628 to i16
  %630 = and i16 %625, -3
  %631 = or i16 %630, %629
  store i16 %631, ptr %621, align 2
  %632 = getelementptr inbounds %struct.nv50_head_atom, ptr %10, i32 0, i32 6
  %633 = load i8, ptr %632, align 8, !range !10
  %634 = shl nuw nsw i8 %633, 2
  %635 = zext i8 %634 to i16
  %636 = and i16 %631, -5
  %637 = or i16 %636, %635
  store i16 %637, ptr %621, align 2
  %638 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 4
  %639 = load i8, ptr %638, align 8, !range !10
  %640 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  %641 = zext i8 %639 to i16
  %642 = load i16, ptr %640, align 8
  %643 = and i16 %642, -8
  %644 = or i16 %643, %641
  %645 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 5
  %646 = load i8, ptr %645, align 8, !range !10
  %647 = shl nuw nsw i8 %646, 1
  %648 = zext i8 %647 to i16
  %649 = or i16 %644, %648
  %650 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 6
  %651 = load i8, ptr %650, align 8, !range !10
  %652 = shl nuw nsw i8 %651, 2
  %653 = zext i8 %652 to i16
  %654 = or i16 %649, %653
  store i16 %654, ptr %640, align 8
  br label %655

655:                                              ; preds = %618, %614, %611, %607, %604
  %656 = call i32 @nv50_crc_atomic_check_head(ptr noundef %16, ptr noundef %12, ptr noundef %10) #9
  %657 = icmp eq i32 %656, 0
  br i1 %657, label %658, label %670

658:                                              ; preds = %655
  %659 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 15
  %660 = load i16, ptr %659, align 2
  %661 = icmp eq i16 %660, 0
  br i1 %661, label %662, label %666

662:                                              ; preds = %658
  %663 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 14
  %664 = load i16, ptr %663, align 8
  %665 = icmp eq i16 %664, 0
  br i1 %665, label %670, label %666

666:                                              ; preds = %662, %658
  %667 = getelementptr inbounds %struct.drm_crtc_state, ptr %12, i32 0, i32 20
  %668 = load ptr, ptr %667, align 8
  %669 = getelementptr inbounds %struct.nv50_atom, ptr %668, i32 0, i32 2
  store i8 1, ptr %669, align 4
  br label %670

670:                                              ; preds = %666, %662, %655, %113, %109, %87, %69, %65
  %671 = phi i32 [ %656, %655 ], [ 0, %666 ], [ 0, %662 ], [ -22, %69 ], [ -22, %65 ], [ -22, %87 ], [ -22, %113 ], [ -22, %109 ]
  ret i32 %671
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nouveau_display_scanoutpos(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_crc_atomic_check_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_set_crtcinfo(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_get_hv_timing(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_lut_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_handle_vblank(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

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
!10 = !{i8 0, i8 2}
