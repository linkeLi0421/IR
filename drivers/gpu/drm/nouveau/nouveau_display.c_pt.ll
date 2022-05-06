; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_display.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_display.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_framebuffer_funcs = type { ptr, ptr, ptr }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.83, %struct.anon.84, %struct.anon.86, ptr, ptr }
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
%struct.anon.83 = type { i32, i8, i32, i32 }
%struct.anon.84 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.86 = type { i32 }
%struct.anon.201 = type { %struct.nv04_disp_mthd_v0, %struct.nv04_disp_scanoutpos_v0 }
%struct.nv04_disp_mthd_v0 = type { i8, i8, i8, [5 x i8] }
%struct.nv04_disp_scanoutpos_v0 = type { i8, [7 x i8], [2 x i64], i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.79, ptr, i32, ptr, i8, i32 }
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
%struct.anon.79 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.90, %struct.anon.91, %struct.anon.92, ptr, %struct.anon.93, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.94, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.106 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.90 = type { ptr, i32, i32, i8 }
%struct.anon.91 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.85] }
%struct.anon.85 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.92 = type { i64, i64 }
%struct.anon.93 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.82 }
%struct.anon.82 = type { ptr, i64 }
%struct.anon.94 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.101, %struct.anon.102, %struct.anon.103, %struct.anon.104 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.95, i8 }
%union.anon.95 = type { %struct.anon.99 }
%struct.anon.99 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.101 = type { i32 }
%struct.anon.102 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.103 = type { i16, i16 }
%struct.anon.104 = type { i16, i16, i16, %struct.anon.105, i16 }
%struct.anon.105 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.106 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.drm_vblank_crtc = type { ptr, %struct.wait_queue_head, %struct.timer_list, %struct.seqlock_t, %struct.atomic64_t, i64, %struct.atomic_t, i32, i32, i32, i32, i32, i32, %struct.drm_display_mode, i8, ptr, %struct.list_head, %struct.wait_queue_head }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.atomic64_t = type { i64 }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.nouveau_bo = type { %struct.ttm_buffer_object, %struct.ttm_placement, i32, [3 x %struct.ttm_place], [3 x %struct.ttm_place], i8, %struct.ttm_bo_kmap_obj, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, i8, i64, %struct.list_head, i24, i32, ptr }
%struct.ttm_buffer_object = type { %struct.drm_gem_object, ptr, i32, i32, ptr, %struct.kref, ptr, ptr, i8, %struct.list_head, %struct.list_head, ptr, i32, i32, ptr }
%struct.drm_gem_object = type { %struct.kref, i32, ptr, ptr, %struct.drm_vma_offset_node, i32, i32, ptr, ptr, ptr, %struct.dma_resv, ptr }
%struct.drm_vma_offset_node = type { %struct.rwlock_t, %struct.drm_mm_node, %struct.rb_root, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t }
%struct.arch_rwlock_t = type { i32 }
%struct.drm_mm_node = type { i32, i64, i64, ptr, %struct.list_head, %struct.list_head, %struct.rb_node, %struct.rb_node, %struct.rb_node, i64, i64, i64, i32 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.rb_root = type { ptr }
%struct.dma_resv = type { %struct.ww_mutex, %struct.seqcount_ww_mutex, ptr, ptr }
%struct.seqcount_ww_mutex = type { %struct.seqcount }
%struct.ttm_placement = type { i32, ptr, i32, ptr }
%struct.ttm_place = type { i32, i32, i32, i32 }
%struct.ttm_bo_kmap_obj = type { ptr, ptr, i32, ptr }
%struct.drm_mode_fb_cmd2 = type { i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i64] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.75, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.75 = type { [4 x i8] }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.77 }
%union.anon.77 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.nouveau_connector = type { %struct.drm_connector, i32, i8, ptr, %struct.nvif_notify, %struct.drm_dp_aux, i32, i32, ptr, ptr, ptr, ptr, %struct.nouveau_conn_atom }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.116, %struct.anon.117, %struct.anon.119, %union.anon.120 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.116 = type { i32, i32 }
%struct.anon.117 = type { i32, %struct.anon.118, i8 }
%struct.anon.118 = type { i32, i32, i32 }
%struct.anon.119 = type { i32, i32 }
%union.anon.120 = type { %struct.anon.121 }
%struct.anon.121 = type { i8 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.anon.200 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.drm_file = type { i8, i8, i8, i8, i8, i8, i8, i8, ptr, %struct.spinlock, ptr, i32, %struct.list_head, ptr, %struct.idr, %struct.spinlock, %struct.idr, %struct.spinlock, ptr, ptr, %struct.list_head, %struct.mutex, %struct.list_head, %struct.wait_queue_head, %struct.list_head, %struct.list_head, i32, %struct.mutex, %struct.drm_prime_file_private, i32 }
%struct.drm_prime_file_private = type { %struct.mutex, %struct.rb_root, %struct.rb_root }
%struct.drm_mode_create_dumb = type { i32, i32, i32, i32, i32, i32, i64 }

@.str = private unnamed_addr constant [60 x i8] c"Unsuitable framebuffer: format: %p4cc; pitches: 0x%x\0A 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Unsupported modifier: 0x%llx\0A\00", align 1
@nouveau_framebuffer_funcs = internal constant %struct.drm_framebuffer_funcs { ptr @drm_gem_fb_destroy, ptr @drm_gem_fb_create_handle, ptr null }, align 4
@nouveau_mode_config_funcs = internal constant %struct.drm_mode_config_funcs { ptr @nouveau_user_framebuffer_create, ptr null, ptr @nouveau_fbcon_output_poll_changed, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@nouveau_modeset = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"kmsDisp\00", align 1
@nouveau_display_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"&drm->hpd_lock\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.4 = private unnamed_addr constant [89 x i8] c"offset=%u stride=%u h=%u tile_mode=0x%02x bw=%u bh=%u gob_size=%u bl_size=%llu size=%zu\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"dithering mode\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"dithering depth\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"underscan\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"underscan hborder\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"underscan vborder\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"vibrant hue\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"color vibrance\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"on\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"static 2x2\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"dynamic 2x2\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"temporal\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"6 bpc\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c"8 bpc\00", align 1
@.str.20 = private unnamed_addr constant [75 x i8] c"[CONNECTOR:%d:%s] status updated from %s to %s (epoch counter %llu->%llu)\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_display_vblank_enable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 2
  %3 = tail call i32 @nvif_notify_get(ptr noundef %2) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_display_vblank_disable(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 2
  %3 = tail call i32 @nvif_notify_put(ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nouveau_display_scanoutpos(ptr nocapture noundef readonly %0, i1 noundef zeroext %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr noundef writeonly %4, ptr noundef writeonly %5, ptr nocapture noundef readnone %6) local_unnamed_addr #0 {
  %8 = alloca %struct.anon.201, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %8) #5
  %9 = getelementptr inbounds %struct.nv04_disp_mthd_v0, ptr %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.nouveau_crtc, ptr %0, i32 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 48, i1 false) #5
  %11 = load i32, ptr %10, align 8
  %12 = trunc i32 %11 to i8
  store i8 %12, ptr %9, align 2
  %13 = load ptr, ptr %0, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 19
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 23
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.drm_crtc, ptr %0, i32 0, i32 8
  %21 = load i32, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nouveau_display, ptr %17, i32 0, i32 4
  %23 = call i32 @nvif_object_mthd(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %8, i32 noundef 48) #5
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %71

25:                                               ; preds = %7
  %26 = getelementptr inbounds %struct.anon.201, ptr %8, i32 0, i32 1, i32 6
  %27 = getelementptr %struct.drm_vblank_crtc, ptr %19, i32 %21, i32 12
  br label %28

28:                                               ; preds = %34, %25
  %29 = phi i32 [ 20, %25 ], [ %39, %34 ]
  %30 = load i16, ptr %26, align 2
  %31 = icmp ne i16 %30, 0
  %32 = icmp eq i32 %29, 0
  %33 = select i1 %31, i1 true, i1 %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %28
  %35 = load i32, ptr %27, align 8
  %36 = add i32 %35, 999
  %37 = udiv i32 %36, 1000
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  call void %38(i32 noundef %37) #5
  %39 = add nsw i32 %29, -1
  %40 = call i32 @nvif_object_mthd(ptr noundef %22, i32 noundef 0, ptr noundef nonnull %8, i32 noundef 48) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %28, label %71

42:                                               ; preds = %28
  %43 = getelementptr inbounds %struct.anon.201, ptr %8, i32 0, i32 1, i32 10
  %44 = load i16, ptr %43, align 2
  %45 = zext i16 %44 to i32
  store i32 %45, ptr %3, align 4
  %46 = getelementptr inbounds %struct.anon.201, ptr %8, i32 0, i32 1, i32 3
  %47 = load i16, ptr %46, align 8
  %48 = getelementptr inbounds %struct.anon.201, ptr %8, i32 0, i32 1, i32 4
  %49 = load i16, ptr %48, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr inbounds %struct.anon.201, ptr %8, i32 0, i32 1, i32 5
  %52 = load i16, ptr %51, align 4
  %53 = zext i16 %30 to i32
  %54 = icmp ult i16 %49, %47
  %55 = icmp ult i16 %30, %47
  %56 = select i1 %55, i16 0, i16 %52
  %57 = zext i16 %56 to i32
  %58 = xor i32 %50, -1
  %59 = select i1 %54, i32 %58, i32 0
  %60 = add nsw i32 %59, %53
  %61 = sub nsw i32 %60, %57
  store i32 %61, ptr %2, align 4
  %62 = icmp eq ptr %4, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %42
  %64 = getelementptr inbounds %struct.anon.201, ptr %8, i32 0, i32 1, i32 2
  %65 = load i64, ptr %64, align 8
  store i64 %65, ptr %4, align 8
  br label %66

66:                                               ; preds = %63, %42
  %67 = icmp eq ptr %5, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %66
  %69 = getelementptr inbounds %struct.anon.201, ptr %8, i32 0, i32 1, i32 2, i32 1
  %70 = load i64, ptr %69, align 8
  store i64 %70, ptr %5, align 8
  br label %71

71:                                               ; preds = %68, %66, %34, %7
  %72 = phi i1 [ %31, %68 ], [ %31, %66 ], [ false, %7 ], [ false, %34 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %8) #5
  ret i1 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_framebuffer_get_layout(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef writeonly %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 11
  %5 = load i32, ptr %4, align 8
  %6 = and i32 %5, 2
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %52, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %0, align 8
  %10 = getelementptr inbounds %struct.drm_device, ptr %9, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 8
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 19
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %1, null
  %21 = icmp eq ptr %2, null
  %22 = or i1 %20, %21
  br i1 %22, label %23, label %24, !prof !8

23:                                               ; preds = %8
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_display.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 143, 0\0A.popsection", ""() #5, !srcloc !9
  unreachable

24:                                               ; preds = %8
  %25 = icmp eq i64 %13, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %24
  store i32 0, ptr %1, align 4
  store i8 0, ptr %2, align 1
  br label %61

27:                                               ; preds = %24
  %28 = and i64 %13, 1044480
  %29 = icmp eq i64 %28, 0
  %30 = trunc i64 %13 to i32
  %31 = lshr i64 %13, 12
  %32 = trunc i64 %31 to i8
  br i1 %29, label %33, label %42

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.nouveau_display, ptr %19, i32 0, i32 13
  %35 = load ptr, ptr %34, align 8
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 1044480
  %38 = or i64 %37, %13
  %39 = trunc i64 %38 to i32
  %40 = lshr i64 %38, 12
  %41 = trunc i64 %40 to i8
  br label %42

42:                                               ; preds = %33, %27
  %43 = phi i32 [ %39, %33 ], [ %30, %27 ]
  %44 = phi i8 [ %41, %33 ], [ %32, %27 ]
  %45 = and i32 %43, 15
  store i32 %45, ptr %1, align 4
  store i8 %44, ptr %2, align 1
  %46 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 1, i32 2
  %47 = load i16, ptr %46, align 2
  %48 = icmp ugt i16 %47, 191
  br i1 %48, label %49, label %61

49:                                               ; preds = %42
  %50 = load i32, ptr %1, align 4
  %51 = shl i32 %50, 4
  store i32 %51, ptr %1, align 4
  br label %61

52:                                               ; preds = %3
  %53 = getelementptr inbounds %struct.drm_framebuffer, ptr %0, i32 0, i32 15
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nouveau_bo, ptr %54, i32 0, i32 16
  %56 = load i32, ptr %55, align 4
  store i32 %56, ptr %1, align 4
  %57 = getelementptr inbounds %struct.nouveau_bo, ptr %54, i32 0, i32 15
  %58 = load i32, ptr %57, align 8
  %59 = lshr i32 %58, 6
  %60 = trunc i32 %59 to i8
  store i8 %60, ptr %2, align 1
  br label %61

61:                                               ; preds = %52, %49, %42, %26
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_framebuffer_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nocapture noundef writeonly %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 4
  %8 = load i8, ptr %7, align 1
  %9 = icmp ult i8 %8, 6
  br i1 %9, label %10, label %30

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 3
  %12 = load i32, ptr %11, align 4
  switch i32 %12, label %25 [
    i32 1448695129, label %13
    i32 1498831189, label %13
    i32 842094158, label %13
    i32 825382478, label %13
  ]

13:                                               ; preds = %10, %10, %10, %10
  %14 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, -65473
  %17 = icmp eq i32 %16, 0
  %18 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6, i32 1
  %19 = load i32, ptr %18, align 4
  br i1 %17, label %20, label %24

20:                                               ; preds = %13
  %21 = icmp eq i32 %19, 0
  %22 = icmp eq i32 %15, %19
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %25, label %24

24:                                               ; preds = %20, %13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str, ptr noundef %11, i32 noundef %15, i32 noundef %19) #5
  br label %192

25:                                               ; preds = %20, %10
  %26 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 4
  %27 = load i32, ptr %26, align 8
  %28 = and i32 %27, 2
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %90, label %35

30:                                               ; preds = %4
  %31 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 4
  %32 = load i32, ptr %31, align 8
  %33 = and i32 %32, 2
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %90, label %38

35:                                               ; preds = %25
  %36 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 8
  %37 = load i64, ptr %36, align 8
  br label %88

38:                                               ; preds = %30
  %39 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 8
  %40 = load i64, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 19
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nouveau_display, ptr %46, i32 0, i32 13
  %48 = load ptr, ptr %47, align 8
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !8

50:                                               ; preds = %38
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_display.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 208, 0\0A.popsection", ""() #5, !srcloc !10
  unreachable

51:                                               ; preds = %51, %38
  %52 = phi i32 [ %58, %51 ], [ 0, %38 ]
  %53 = getelementptr i64, ptr %48, i32 %52
  %54 = load i64, ptr %53, align 8
  %55 = icmp eq i64 %54, 72057594037927935
  %56 = icmp eq i64 %54, %40
  %57 = or i1 %55, %56
  %58 = add i32 %52, 1
  br i1 %57, label %59, label %51

59:                                               ; preds = %51
  %60 = freeze i1 %55
  %61 = add i64 %40, -216172782113783830
  %62 = icmp ult i64 %61, -6
  %63 = and i1 %62, %60
  br i1 %63, label %88, label %64

64:                                               ; preds = %59
  %65 = icmp eq i64 %40, 0
  br i1 %65, label %97, label %66

66:                                               ; preds = %64
  %67 = and i64 %40, 1044480
  %68 = icmp eq i64 %67, 0
  %69 = trunc i64 %40 to i32
  %70 = lshr i64 %40, 12
  %71 = trunc i64 %70 to i8
  br i1 %68, label %72, label %79

72:                                               ; preds = %66
  %73 = load i64, ptr %48, align 8
  %74 = and i64 %73, 1044480
  %75 = or i64 %74, %40
  %76 = trunc i64 %75 to i32
  %77 = lshr i64 %75, 12
  %78 = trunc i64 %77 to i8
  br label %79

79:                                               ; preds = %72, %66
  %80 = phi i32 [ %76, %72 ], [ %69, %66 ]
  %81 = phi i8 [ %78, %72 ], [ %71, %66 ]
  %82 = and i32 %80, 15
  %83 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 2
  %84 = load i16, ptr %83, align 2
  %85 = icmp ugt i16 %84, 191
  %86 = shl nuw nsw i32 %82, 4
  %87 = select i1 %85, i32 %86, i32 %82
  br label %97

88:                                               ; preds = %59, %35
  %89 = phi i64 [ %37, %35 ], [ %40, %59 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.1, i64 noundef %89) #5
  br label %192

90:                                               ; preds = %30, %25
  %91 = getelementptr inbounds %struct.nouveau_bo, ptr %2, i32 0, i32 16
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.nouveau_bo, ptr %2, i32 0, i32 15
  %94 = load i32, ptr %93, align 8
  %95 = lshr i32 %94, 6
  %96 = trunc i32 %95 to i8
  br label %97

97:                                               ; preds = %90, %79, %64
  %98 = phi i32 [ %92, %90 ], [ 0, %64 ], [ %87, %79 ]
  %99 = phi i8 [ %96, %90 ], [ 0, %64 ], [ %81, %79 ]
  %100 = tail call ptr @drm_get_format_info(ptr noundef %0, ptr noundef %1) #5
  %101 = getelementptr inbounds %struct.drm_format_info, ptr %100, i32 0, i32 2
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %183, label %104

104:                                              ; preds = %97
  %105 = zext i8 %102 to i32
  %106 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 2
  %107 = icmp ne ptr %100, null
  %108 = getelementptr inbounds %struct.drm_format_info, ptr %100, i32 0, i32 7
  %109 = icmp eq i8 %99, 0
  %110 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 1, i32 2
  %111 = and i32 %98, 15
  %112 = icmp eq i32 %111, 0
  %113 = lshr i32 %98, 4
  %114 = getelementptr inbounds %struct.drm_gem_object, ptr %2, i32 0, i32 5
  br label %115

115:                                              ; preds = %178, %104
  %116 = phi i8 [ %102, %104 ], [ %179, %178 ]
  %117 = phi i32 [ %105, %104 ], [ %181, %178 ]
  %118 = phi i32 [ 0, %104 ], [ %180, %178 ]
  %119 = load i32, ptr %106, align 8
  %120 = icmp ult i32 %118, %117
  %121 = select i1 %107, i1 %120, i1 false
  br i1 %121, label %122, label %128

122:                                              ; preds = %115
  %123 = icmp eq i32 %118, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %122
  %125 = load i8, ptr %108, align 1
  %126 = zext i8 %125 to i32
  %127 = sdiv i32 %119, %126
  br label %128

128:                                              ; preds = %124, %122, %115
  %129 = phi i32 [ %127, %124 ], [ 0, %115 ], [ %119, %122 ]
  br i1 %109, label %169, label %130

130:                                              ; preds = %128
  %131 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 7, i32 %118
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6, i32 %118
  %134 = load i32, ptr %133, align 4
  %135 = load i8, ptr %7, align 1
  %136 = icmp ult i8 %135, 6
  br i1 %136, label %137, label %138, !prof !8

137:                                              ; preds = %130
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_display.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #5, !srcloc !11
  unreachable

138:                                              ; preds = %130
  %139 = load i16, ptr %110, align 2
  %140 = icmp ult i16 %139, 192
  %141 = select i1 %140, i1 true, i1 %112
  %142 = select i1 %140, i32 %98, i32 %113
  %143 = icmp ult i32 %142, 16
  %144 = select i1 %141, i1 %143, i1 false
  br i1 %144, label %145, label %192

145:                                              ; preds = %138
  %146 = icmp ult i8 %135, 7
  %147 = select i1 %146, i32 256, i32 512
  %148 = add i32 %134, 63
  %149 = lshr i32 %148, 6
  %150 = icmp eq i8 %135, 6
  %151 = select i1 %150, i32 2, i32 3
  %152 = add nuw nsw i32 %142, %151
  %153 = shl nuw nsw i32 1, %152
  %154 = add i32 %129, -1
  %155 = add i32 %154, %153
  %156 = lshr i32 %155, %152
  %157 = mul i32 %156, %149
  %158 = shl i32 %157, %142
  %159 = mul i32 %158, %147
  %160 = zext i32 %159 to i64
  %161 = load i32, ptr %114, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.4, i32 noundef %132, i32 noundef %134, i32 noundef %129, i32 noundef %142, i32 noundef %149, i32 noundef %156, i32 noundef %147, i64 noundef %160, i32 noundef %161) #5
  %162 = zext i32 %132 to i64
  %163 = add nuw nsw i64 %160, %162
  %164 = load i32, ptr %114, align 8
  %165 = zext i32 %164 to i64
  %166 = icmp ugt i64 %163, %165
  br i1 %166, label %192, label %167

167:                                              ; preds = %145
  %168 = load i8, ptr %101, align 1
  br label %178

169:                                              ; preds = %128
  %170 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 6, i32 %118
  %171 = load i32, ptr %170, align 4
  %172 = mul i32 %171, %129
  %173 = getelementptr %struct.drm_mode_fb_cmd2, ptr %1, i32 0, i32 7, i32 %118
  %174 = load i32, ptr %173, align 4
  %175 = add i32 %172, %174
  %176 = load i32, ptr %114, align 8
  %177 = icmp ugt i32 %175, %176
  br i1 %177, label %192, label %178

178:                                              ; preds = %169, %167
  %179 = phi i8 [ %168, %167 ], [ %116, %169 ]
  %180 = add nuw nsw i32 %118, 1
  %181 = zext i8 %179 to i32
  %182 = icmp ult i32 %180, %181
  br i1 %182, label %115, label %183

183:                                              ; preds = %178, %97
  %184 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %185 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %184, i32 noundef 3520, i32 noundef 144) #6
  store ptr %185, ptr %3, align 4
  %186 = icmp eq ptr %185, null
  br i1 %186, label %192, label %187

187:                                              ; preds = %183
  tail call void @drm_helper_mode_fill_fb_struct(ptr noundef %0, ptr noundef nonnull %185, ptr noundef %1) #5
  %188 = getelementptr inbounds %struct.drm_framebuffer, ptr %185, i32 0, i32 15
  store ptr %2, ptr %188, align 4
  %189 = tail call i32 @drm_framebuffer_init(ptr noundef %0, ptr noundef nonnull %185, ptr noundef nonnull @nouveau_framebuffer_funcs) #5
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %192, label %191

191:                                              ; preds = %187
  tail call void @kfree(ptr noundef nonnull %185) #5
  br label %192

192:                                              ; preds = %191, %187, %183, %169, %145, %138, %88, %24
  %193 = phi i32 [ -22, %24 ], [ -22, %88 ], [ -12, %183 ], [ %189, %191 ], [ 0, %187 ], [ -34, %145 ], [ -34, %169 ], [ -22, %138 ]
  ret i32 %193
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_format_info(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_helper_mode_fill_fb_struct(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_framebuffer_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_user_framebuffer_create(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store ptr null, ptr %4, align 4, !annotation !12
  %5 = getelementptr inbounds %struct.drm_mode_fb_cmd2, ptr %2, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @drm_gem_object_lookup(ptr noundef %1, i32 noundef %6) #5
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9

9:                                                ; preds = %3
  %10 = call i32 @nouveau_framebuffer_new(ptr noundef %0, ptr noundef %2, ptr noundef nonnull %7, ptr noundef nonnull %4)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load ptr, ptr %4, align 4
  br label %24

14:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %7) #5, !srcloc !14
  %15 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %7, ptr nonnull %7, i32 1, ptr nonnull elementtype(i32) %7) #5, !srcloc !15
  %16 = extractvalue { i32, i32, i32 } %15, 0
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = icmp sgt i32 %16, 0
  br i1 %19, label %22, label %20, !prof !16

20:                                               ; preds = %18
  tail call void @refcount_warn_saturate(ptr noundef nonnull %7, i32 noundef 3) #5
  br label %22

21:                                               ; preds = %14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  tail call void @drm_gem_object_free(ptr noundef nonnull %7) #5
  br label %22

22:                                               ; preds = %21, %20, %18
  %23 = inttoptr i32 %10 to ptr
  br label %24

24:                                               ; preds = %22, %12, %3
  %25 = phi ptr [ %13, %12 ], [ %23, %22 ], [ inttoptr (i32 -2 to ptr), %3 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret ptr %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_object_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_display_hpd_resume(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %4) #5
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 22
  store i32 -1, ptr %5, align 4
  tail call void @mutex_unlock(ptr noundef %4) #5
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 20
  %7 = load ptr, ptr @system_wq, align 4
  %8 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %7, ptr noundef %6) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_display_init(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drm_connector_list_iter, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i64 0, ptr %4, align 8, !annotation !12
  call void @drm_connector_list_iter_begin(ptr noundef %0, ptr noundef nonnull %4) #5
  %9 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #5
  %10 = icmp eq ptr %9, null
  br i1 %10, label %29, label %11

11:                                               ; preds = %26, %3
  %12 = phi ptr [ %27, %26 ], [ %9, %3 ]
  %13 = getelementptr inbounds %struct.drm_connector, ptr %12, i32 0, i32 10
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 10
  br i1 %15, label %16, label %23

16:                                               ; preds = %11
  %17 = call ptr @find_encoder(ptr noundef nonnull %12, i32 noundef -1) #5
  %18 = icmp eq ptr %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.drm_encoder, ptr %17, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %26, label %23

23:                                               ; preds = %19, %16, %11
  %24 = getelementptr inbounds %struct.nouveau_connector, ptr %12, i32 0, i32 4
  %25 = call i32 @nvif_notify_get(ptr noundef %24) #5
  br label %26

26:                                               ; preds = %23, %19
  %27 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %11

29:                                               ; preds = %26, %3
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #5
  %30 = getelementptr inbounds %struct.nouveau_display, ptr %8, i32 0, i32 2
  %31 = load ptr, ptr %30, align 8
  %32 = call i32 %31(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  call void @drm_kms_helper_poll_enable(ptr noundef %0) #5
  br label %35

35:                                               ; preds = %34, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_display_fini(ptr noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #0 {
  %4 = alloca %struct.drm_connector_list_iter, align 8
  %5 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #5
  store i64 0, ptr %4, align 8, !annotation !12
  br i1 %1, label %30, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_driver, ptr %11, i32 0, i32 24
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %13, 16
  %17 = and i32 %16, %15
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %21, i32 0, i32 5
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %23, %9
  tail call void @drm_atomic_helper_shutdown(ptr noundef %0) #5
  br label %30

28:                                               ; preds = %23, %19
  %29 = tail call i32 @drm_helper_force_disable_all(ptr noundef %0) #5
  br label %30

30:                                               ; preds = %28, %27, %3
  call void @drm_connector_list_iter_begin(ptr noundef %0, ptr noundef nonnull %4) #5
  %31 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #5
  %32 = icmp eq ptr %31, null
  br i1 %32, label %51, label %33

33:                                               ; preds = %48, %30
  %34 = phi ptr [ %49, %48 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct.drm_connector, ptr %34, i32 0, i32 10
  %36 = load i32, ptr %35, align 8
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = call ptr @find_encoder(ptr noundef nonnull %34, i32 noundef -1) #5
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.drm_encoder, ptr %39, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 7
  br i1 %44, label %48, label %45

45:                                               ; preds = %41, %38, %33
  %46 = getelementptr inbounds %struct.nouveau_connector, ptr %34, i32 0, i32 4
  %47 = call i32 @nvif_notify_put(ptr noundef %46) #5
  br label %48

48:                                               ; preds = %45, %41
  %49 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #5
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %33

51:                                               ; preds = %48, %30
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #5
  br i1 %2, label %55, label %52

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 20
  %54 = call zeroext i1 @cancel_work_sync(ptr noundef %53) #5
  br label %55

55:                                               ; preds = %52, %51
  call void @drm_kms_helper_poll_disable(ptr noundef %0) #5
  %56 = getelementptr inbounds %struct.nouveau_display, ptr %8, i32 0, i32 3
  %57 = load ptr, ptr %56, align 4
  call void %57(ptr noundef %0, i1 noundef zeroext %2, i1 noundef zeroext %1) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_force_disable_all(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_display_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon.200, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %10 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 3520, i32 noundef 96) #6
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  store ptr %10, ptr %11, align 4
  %12 = icmp eq ptr %10, null
  br i1 %12, label %199, label %13

13:                                               ; preds = %1
  %14 = tail call i32 @drmm_mode_config_init(ptr noundef %0) #5
  %15 = tail call i32 @drm_mode_create_scaling_mode_property(ptr noundef %0) #5
  %16 = tail call i32 @drm_mode_create_dvi_i_properties(ptr noundef %0) #5
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  store ptr @nouveau_mode_config_funcs, ptr %17, align 4
  %18 = load ptr, ptr %8, align 8
  %19 = getelementptr inbounds %struct.nvkm_device_func, ptr %18, i32 0, i32 6
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 %20(ptr noundef %8, i32 noundef 1) #5
  %22 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 28
  store i32 %21, ptr %22, align 4
  %23 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 23
  store i32 0, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 24
  store i32 0, ptr %24, align 4
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 4
  %26 = load i8, ptr %25, align 1
  %27 = icmp ult i8 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 25
  store i32 2048, ptr %29, align 4
  br label %39

30:                                               ; preds = %13
  %31 = icmp ult i8 %26, 6
  br i1 %31, label %32, label %34

32:                                               ; preds = %30
  %33 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 25
  store i32 4096, ptr %33, align 4
  br label %39

34:                                               ; preds = %30
  %35 = icmp eq i8 %26, 6
  %36 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 25
  br i1 %35, label %37, label %38

37:                                               ; preds = %34
  store i32 8192, ptr %36, align 4
  br label %39

38:                                               ; preds = %34
  store i32 16384, ptr %36, align 4
  br label %39

39:                                               ; preds = %38, %37, %32, %28
  %40 = phi i32 [ 4096, %32 ], [ 16384, %38 ], [ 8192, %37 ], [ 2048, %28 ]
  %41 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 26
  store i32 %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 91
  store i32 24, ptr %42, align 4
  %43 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 92
  store i32 1, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 2, i32 3, i32 1, i32 2
  %45 = load i16, ptr %44, align 2
  %46 = icmp ugt i16 %45, 16
  %47 = zext i1 %46 to i8
  %48 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 96
  store i8 %47, ptr %48, align 1
  tail call void @drm_kms_helper_poll_init(ptr noundef %0) #5
  tail call void @drm_kms_helper_poll_disable(ptr noundef %0) #5
  %49 = load i32, ptr @nouveau_modeset, align 4
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %176, label %51

51:                                               ; preds = %39
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 18, i32 22, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %176, label %55

55:                                               ; preds = %51
  %56 = getelementptr inbounds %struct.nouveau_display, ptr %10, i32 0, i32 4
  %57 = tail call i32 @nvif_disp_ctor(ptr noundef %4, ptr noundef nonnull @.str.2, i32 noundef 0, ptr noundef %56) #5
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %197

59:                                               ; preds = %55
  %60 = load ptr, ptr %2, align 4
  %61 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 19
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nouveau_display, ptr %62, i32 0, i32 4, i32 0, i32 4
  %64 = load i32, ptr %63, align 8
  %65 = icmp slt i32 %64, 20592
  %66 = icmp slt i32 %64, 36976
  %67 = select i1 %66, i32 1, i32 2
  %68 = select i1 %65, i32 0, i32 %67
  %69 = lshr i32 7, %68
  %70 = shl nuw nsw i32 %69, 1
  %71 = and i32 %70, 2
  %72 = lshr i32 1, %68
  %73 = lshr i32 6, %68
  %74 = and i32 %73, 1
  %75 = shl nuw nsw i32 %74, 1
  %76 = lshr i32 4, %68
  %77 = and i32 %76, 1
  %78 = add nuw nsw i32 %77, %72
  %79 = add nuw nsw i32 %78, %71
  %80 = add nuw nsw i32 %79, %75
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %116, label %82

82:                                               ; preds = %59
  %83 = tail call ptr @drm_property_create(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.5, i32 noundef %80) #5
  %84 = getelementptr inbounds %struct.nouveau_display, ptr %62, i32 0, i32 5
  store ptr %83, ptr %84, align 8
  %85 = icmp eq ptr %83, null
  br i1 %85, label %116, label %86

86:                                               ; preds = %82
  %87 = shl nuw nsw i32 1, %68
  %88 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %83, i64 noundef 34, ptr noundef nonnull @.str.12) #5
  %89 = load ptr, ptr %84, align 8
  %90 = icmp eq ptr %89, null
  br i1 %90, label %116, label %91

91:                                               ; preds = %86
  %92 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %89, i64 noundef 0, ptr noundef nonnull @.str.13) #5
  %93 = load ptr, ptr %84, align 8
  %94 = icmp eq ptr %93, null
  br i1 %94, label %116, label %95

95:                                               ; preds = %91
  br i1 %65, label %96, label %100

96:                                               ; preds = %95
  %97 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %93, i64 noundef 1, ptr noundef nonnull @.str.14) #5
  %98 = load ptr, ptr %84, align 8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %116, label %100

100:                                              ; preds = %96, %95
  %101 = phi ptr [ %98, %96 ], [ %93, %95 ]
  %102 = and i32 %87, 6
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %112, label %104

104:                                              ; preds = %100
  %105 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %101, i64 noundef 25, ptr noundef nonnull @.str.15) #5
  %106 = load ptr, ptr %84, align 8
  %107 = icmp eq ptr %106, null
  br i1 %107, label %116, label %108

108:                                              ; preds = %104
  %109 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %106, i64 noundef 17, ptr noundef nonnull @.str.16) #5
  %110 = load ptr, ptr %84, align 8
  %111 = icmp eq ptr %110, null
  br i1 %111, label %116, label %112

112:                                              ; preds = %108, %100
  %113 = phi ptr [ %110, %108 ], [ %101, %100 ]
  br i1 %66, label %116, label %114

114:                                              ; preds = %112
  %115 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %113, i64 noundef 33, ptr noundef nonnull @.str.17) #5
  br label %116

116:                                              ; preds = %114, %112, %108, %104, %96, %91, %86, %82, %59
  %117 = mul nuw nsw i32 %74, 3
  %118 = icmp eq i32 %74, 0
  br i1 %118, label %155, label %119

119:                                              ; preds = %116
  %120 = tail call ptr @drm_property_create(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.6, i32 noundef %117) #5
  %121 = getelementptr inbounds %struct.nouveau_display, ptr %62, i32 0, i32 6
  store ptr %120, ptr %121, align 4
  %122 = icmp eq ptr %120, null
  br i1 %122, label %137, label %123

123:                                              ; preds = %119
  %124 = shl nuw nsw i32 1, %68
  %125 = and i32 %124, 6
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %123
  %128 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %120, i64 noundef 3, ptr noundef nonnull @.str.12) #5
  %129 = load ptr, ptr %121, align 4
  %130 = icmp eq ptr %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %127
  %132 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %129, i64 noundef 0, ptr noundef nonnull @.str.18) #5
  %133 = load ptr, ptr %121, align 4
  %134 = icmp eq ptr %133, null
  br i1 %134, label %137, label %135

135:                                              ; preds = %131
  %136 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %133, i64 noundef 2, ptr noundef nonnull @.str.19) #5
  br label %137

137:                                              ; preds = %135, %131, %127, %123, %119
  %138 = tail call ptr @drm_property_create(ptr noundef %0, i32 noundef 8, ptr noundef nonnull @.str.7, i32 noundef %117) #5
  %139 = getelementptr inbounds %struct.nouveau_display, ptr %62, i32 0, i32 7
  store ptr %138, ptr %139, align 8
  %140 = icmp eq ptr %138, null
  br i1 %140, label %155, label %141

141:                                              ; preds = %137
  %142 = shl nuw nsw i32 1, %68
  %143 = and i32 %142, 6
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %141
  %146 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %138, i64 noundef 2, ptr noundef nonnull @.str.12) #5
  %147 = load ptr, ptr %139, align 8
  %148 = icmp eq ptr %147, null
  br i1 %148, label %155, label %149

149:                                              ; preds = %145
  %150 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %147, i64 noundef 0, ptr noundef nonnull @.str.13) #5
  %151 = load ptr, ptr %139, align 8
  %152 = icmp eq ptr %151, null
  br i1 %152, label %155, label %153

153:                                              ; preds = %149
  %154 = tail call i32 @drm_property_add_enum(ptr noundef nonnull %151, i64 noundef 1, ptr noundef nonnull @.str.14) #5
  br label %155

155:                                              ; preds = %153, %149, %145, %141, %137, %116
  %156 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.8, i64 noundef 0, i64 noundef 128) #5
  %157 = getelementptr inbounds %struct.nouveau_display, ptr %62, i32 0, i32 8
  store ptr %156, ptr %157, align 4
  %158 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.9, i64 noundef 0, i64 noundef 128) #5
  %159 = getelementptr inbounds %struct.nouveau_display, ptr %62, i32 0, i32 9
  store ptr %158, ptr %159, align 8
  br i1 %65, label %165, label %160

160:                                              ; preds = %155
  %161 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.10, i64 noundef 0, i64 noundef 180) #5
  %162 = getelementptr inbounds %struct.nouveau_display, ptr %62, i32 0, i32 10
  store ptr %161, ptr %162, align 4
  %163 = tail call ptr @drm_property_create_range(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @.str.11, i64 noundef 0, i64 noundef 200) #5
  %164 = getelementptr inbounds %struct.nouveau_display, ptr %62, i32 0, i32 11
  store ptr %163, ptr %164, align 8
  br label %165

165:                                              ; preds = %160, %155
  %166 = getelementptr inbounds %struct.nouveau_display, ptr %10, i32 0, i32 4, i32 0, i32 4
  %167 = load i32, ptr %166, align 8
  %168 = icmp slt i32 %167, 20592
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = tail call i32 @nv04_display_create(ptr noundef %0) #5
  br label %173

171:                                              ; preds = %165
  %172 = tail call i32 @nv50_display_create(ptr noundef %0) #5
  br label %173

173:                                              ; preds = %171, %169
  %174 = phi i32 [ %170, %169 ], [ %172, %171 ]
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %197

176:                                              ; preds = %173, %51, %39
  tail call void @drm_mode_config_reset(ptr noundef %0) #5
  %177 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %178 = load i32, ptr %177, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %188, label %180

180:                                              ; preds = %176
  %181 = tail call i32 @drm_vblank_init(ptr noundef %0, i32 noundef %178) #5
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %194

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.nouveau_display, ptr %10, i32 0, i32 4, i32 0, i32 4
  %185 = load i32, ptr %184, align 8
  %186 = icmp sgt i32 %185, 20591
  br i1 %186, label %187, label %188

187:                                              ; preds = %183
  tail call void @nv50_crc_init(ptr noundef %0) #5
  br label %188

188:                                              ; preds = %187, %183, %176
  %189 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 20
  store i32 -32, ptr %189, align 8
  %190 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 20, i32 1
  store volatile ptr %190, ptr %190, align 4
  %191 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 20, i32 1, i32 1
  store ptr %190, ptr %191, align 4
  %192 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 20, i32 2
  store ptr @nouveau_display_hpd_work, ptr %192, align 4
  %193 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 21
  tail call void @__mutex_init(ptr noundef %193, ptr noundef nonnull @.str.3, ptr noundef nonnull @nouveau_display_create.__key) #5
  br label %199

194:                                              ; preds = %180
  %195 = getelementptr inbounds %struct.nouveau_display, ptr %10, i32 0, i32 1
  %196 = load ptr, ptr %195, align 4
  tail call void %196(ptr noundef %0) #5
  br label %197

197:                                              ; preds = %194, %173, %55
  %198 = phi i32 [ %174, %173 ], [ %181, %194 ], [ %57, %55 ]
  tail call void @drm_kms_helper_poll_fini(ptr noundef %0) #5
  tail call void @drm_mode_config_cleanup(ptr noundef %0) #5
  br label %199

199:                                              ; preds = %197, %188, %1
  %200 = phi i32 [ %198, %197 ], [ 0, %188 ], [ -12, %1 ]
  ret i32 %200
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_scaling_mode_property(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_create_dvi_i_properties(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_disp_ctor(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_display_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_display_create(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_display_hpd_work(ptr noundef %0) #0 {
  %2 = alloca %struct.drm_connector_list_iter, align 8
  %3 = getelementptr i8, ptr %0, i32 -2512
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #5
  store i64 0, ptr %2, align 8, !annotation !12
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #5
  %8 = getelementptr i8, ptr %0, i32 16
  tail call void @mutex_lock(ptr noundef %8) #5
  %9 = getelementptr i8, ptr %0, i32 36
  %10 = load i32, ptr %9, align 4
  store i32 0, ptr %9, align 4
  tail call void @mutex_unlock(ptr noundef %8) #5
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %78, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 30
  tail call void @mutex_lock(ptr noundef %13) #5
  call void @drm_connector_list_iter_begin(ptr noundef %4, ptr noundef nonnull %2) #5
  %14 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %15 = icmp eq ptr %14, null
  br i1 %15, label %71, label %16

16:                                               ; preds = %12
  %17 = icmp eq ptr %4, null
  br label %18

18:                                               ; preds = %64, %16
  %19 = phi ptr [ %14, %16 ], [ %66, %64 ]
  %20 = phi i1 [ false, %16 ], [ %65, %64 ]
  br label %21

21:                                               ; preds = %61, %18
  %22 = phi ptr [ %19, %18 ], [ %62, %61 ]
  %23 = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 10
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %24, 10
  br i1 %25, label %26, label %33

26:                                               ; preds = %21
  %27 = call ptr @find_encoder(ptr noundef nonnull %22, i32 noundef -1) #5
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.drm_encoder, ptr %27, i32 0, i32 4
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 7
  br i1 %32, label %64, label %33

33:                                               ; preds = %29, %26, %21
  %34 = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 9
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 1, %35
  %37 = and i32 %36, %10
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %61, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 39
  %41 = load i64, ptr %40, align 8
  %42 = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 18
  %43 = load i32, ptr %42, align 8
  %44 = call i32 @drm_helper_probe_detect(ptr noundef nonnull %22, ptr noundef null, i1 noundef zeroext false) #5
  store i32 %44, ptr %42, align 8
  %45 = load i64, ptr %40, align 8
  %46 = icmp eq i64 %41, %45
  br i1 %46, label %61, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 18
  br i1 %17, label %51, label %49

49:                                               ; preds = %47
  %50 = load ptr, ptr %5, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi ptr [ %50, %49 ], [ null, %47 ]
  %53 = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 6
  %54 = load i32, ptr %53, align 8
  %55 = getelementptr inbounds %struct.drm_connector, ptr %22, i32 0, i32 7
  %56 = load ptr, ptr %55, align 4
  %57 = call ptr @drm_get_connector_status_name(i32 noundef %43) #5
  %58 = load i32, ptr %48, align 8
  %59 = call ptr @drm_get_connector_status_name(i32 noundef %58) #5
  %60 = load i64, ptr %40, align 8
  call void (ptr, i32, ptr, ...) @drm_dev_dbg(ptr noundef %52, i32 noundef 4, ptr noundef nonnull @.str.20, i32 noundef %54, ptr noundef %56, ptr noundef %57, ptr noundef %59, i64 noundef %41, i64 noundef %60) #5
  br label %64

61:                                               ; preds = %39, %33
  %62 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %63 = icmp eq ptr %62, null
  br i1 %63, label %68, label %21

64:                                               ; preds = %51, %29
  %65 = phi i1 [ true, %51 ], [ %20, %29 ]
  %66 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %2) #5
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %18

68:                                               ; preds = %64, %61
  %69 = phi i1 [ %20, %61 ], [ %65, %64 ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #5
  call void @mutex_unlock(ptr noundef %13) #5
  br i1 %69, label %70, label %72

70:                                               ; preds = %68
  call void @drm_kms_helper_hotplug_event(ptr noundef %4) #5
  br label %72

71:                                               ; preds = %12
  call void @drm_connector_list_iter_end(ptr noundef nonnull %2) #5
  call void @mutex_unlock(ptr noundef %13) #5
  br label %72

72:                                               ; preds = %71, %70, %68
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds %struct.drm_device, ptr %73, i32 0, i32 2
  %75 = load ptr, ptr %74, align 4
  %76 = call i64 @ktime_get_mono_fast_ns() #5
  %77 = getelementptr inbounds %struct.device, ptr %75, i32 0, i32 11, i32 22
  store volatile i64 %76, ptr %77, align 8
  br label %78

78:                                               ; preds = %72, %1
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr inbounds %struct.drm_device, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = call i32 @__pm_runtime_idle(ptr noundef %81, i32 noundef 4) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_display_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  tail call void @drm_kms_helper_poll_fini(ptr noundef %0) #5
  tail call void @drm_mode_config_cleanup(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void %7(ptr noundef %0) #5
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.nouveau_display, ptr %5, i32 0, i32 4
  tail call void @nvif_disp_dtor(ptr noundef %11) #5
  %12 = load ptr, ptr %2, align 4
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 19
  store ptr null, ptr %13, align 4
  tail call void @kfree(ptr noundef %5) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_disp_dtor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_display_suspend(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %10, 16
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %18, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br label %24

24:                                               ; preds = %20, %2
  %25 = phi i1 [ false, %2 ], [ %23, %20 ]
  %26 = or i1 %25, %1
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = tail call ptr @drm_atomic_helper_suspend(ptr noundef %0) #5
  %29 = getelementptr inbounds %struct.nouveau_display, ptr %6, i32 0, i32 12
  store ptr %28, ptr %29, align 4
  %30 = icmp ugt ptr %28, inttoptr (i32 -4096 to ptr)
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = ptrtoint ptr %28 to i32
  store ptr null, ptr %29, align 4
  br label %34

33:                                               ; preds = %27, %24, %16
  tail call void @nouveau_display_fini(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %1)
  br label %34

34:                                               ; preds = %33, %31
  %35 = phi i32 [ 0, %33 ], [ %32, %31 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_suspend(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_display_resume(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @nouveau_display_init(ptr noundef %0, i1 noundef zeroext true, i1 noundef zeroext %1)
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_driver, ptr %9, i32 0, i32 24
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 10
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %11, 16
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %31, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %19, i32 0, i32 5
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %21, %2
  %26 = getelementptr inbounds %struct.nouveau_display, ptr %6, i32 0, i32 12
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %25
  %30 = tail call i32 @drm_atomic_helper_resume(ptr noundef %0, ptr noundef nonnull %27) #5
  store ptr null, ptr %26, align 4
  br label %31

31:                                               ; preds = %29, %25, %21, %17
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_resume(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_display_dumb_create(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca ptr, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.drm_file, ptr %0, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %6, %3
  %10 = phi ptr [ %8, %6 ], [ null, %3 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #5
  store ptr null, ptr %4, align 4, !annotation !12
  %11 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 2
  %14 = load i32, ptr %13, align 8
  %15 = lshr i32 %14, 3
  %16 = mul i32 %15, %12
  %17 = add i32 %16, 255
  %18 = and i32 %17, -256
  %19 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 5
  store i32 %18, ptr %19, align 4
  %20 = load i32, ptr %2, align 8
  %21 = mul i32 %18, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 6
  %24 = add nuw nsw i64 %22, 4095
  %25 = and i64 %24, 8589930496
  store i64 %25, ptr %23, align 8
  %26 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 2, i32 3, i32 1, i32 6
  %29 = load i64, ptr %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = select i1 %30, i32 4, i32 2
  %32 = call i32 @nouveau_gem_new(ptr noundef %10, i64 noundef %25, i32 noundef 0, i32 noundef %31, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %9
  %35 = load ptr, ptr %4, align 4
  %36 = getelementptr inbounds %struct.drm_mode_create_dumb, ptr %2, i32 0, i32 4
  %37 = call i32 @drm_gem_handle_create(ptr noundef %0, ptr noundef %35, ptr noundef %36) #5
  %38 = load ptr, ptr %4, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr nonnull %38) #5, !srcloc !14
  %41 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %38, ptr nonnull %38, i32 1, ptr nonnull elementtype(i32) %38) #5, !srcloc !15
  %42 = extractvalue { i32, i32, i32 } %41, 0
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %47, label %44

44:                                               ; preds = %40
  %45 = icmp sgt i32 %42, 0
  br i1 %45, label %48, label %46, !prof !16

46:                                               ; preds = %44
  call void @refcount_warn_saturate(ptr noundef nonnull %38, i32 noundef 3) #5
  br label %48

47:                                               ; preds = %40
  call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !17
  call void @drm_gem_object_free(ptr noundef nonnull %38) #5
  br label %48

48:                                               ; preds = %47, %46, %44, %34, %9
  %49 = phi i32 [ %32, %9 ], [ %37, %34 ], [ %37, %44 ], [ %37, %46 ], [ %37, %47 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #5
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_gem_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_handle_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_fb_destroy(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_fb_create_handle(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_gem_object_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_encoder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drmm_mode_config_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_output_poll_changed(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_property_add_enum(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_property_create_range(ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_detect(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_dbg(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_connector_status_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }

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
!9 = !{i64 2156516296, i64 2156516802, i64 2156516333, i64 2156516389, i64 2156516423, i64 2156516447, i64 2156516488, i64 2156516509, i64 2156516537, i64 2156516571}
!10 = !{i64 2156520917, i64 2156521423, i64 2156520954, i64 2156521010, i64 2156521044, i64 2156521068, i64 2156521109, i64 2156521130, i64 2156521158, i64 2156521192}
!11 = !{i64 2156524337, i64 2156524843, i64 2156524374, i64 2156524430, i64 2156524464, i64 2156524488, i64 2156524529, i64 2156524550, i64 2156524578, i64 2156524612}
!12 = !{!"auto-init"}
!13 = !{i64 2148259704}
!14 = !{i64 655853, i64 2148145824, i64 2148145850, i64 2148145897, i64 2148145919, i64 2148145947, i64 2148145967}
!15 = !{i64 2148161851, i64 2148161883, i64 2148161912, i64 2148161946, i64 2148161977, i64 2148162000}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2149598346}
