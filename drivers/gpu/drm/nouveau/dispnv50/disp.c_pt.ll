; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv50/disp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv50/disp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.module = type { i32, %struct.list_head, [60 x i8], %struct.module_kobject, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.mutex, ptr, i32, i32, ptr, ptr, i8, i8, i32, ptr, ptr, [48 x i8], %struct.module_layout, %struct.module_layout, %struct.mod_arch_specific, i32, i32, %struct.list_head, ptr, ptr, %struct.mod_kallsyms, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, ptr, %struct.atomic_t, [40 x i8] }
%struct.module_kobject = type { %struct.kobject, ptr, ptr, ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.module_layout = type { ptr, i32, i32, i32, i32, %struct.mod_tree_node }
%struct.mod_tree_node = type { ptr, %struct.latch_tree_node }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mod_arch_specific = type { [7 x ptr], %struct.mod_plt_sec, %struct.mod_plt_sec }
%struct.mod_plt_sec = type { ptr, ptr, i32 }
%struct.mod_kallsyms = type { ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.65 }
%union.anon.65 = type { ptr }
%struct.lock_class_key = type {}
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_audio_component_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_plane_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_dp_mst_topology_cbs = type { ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_dmac = type { %struct.nv50_chan, %struct.nvif_push, ptr, ptr, %struct.nvif_object, %struct.nvif_object, %struct.mutex, i32, i32, i32 }
%struct.nv50_chan = type { %struct.nvif_object, ptr }
%struct.nvif_push = type { ptr, ptr, %struct.nvif_mem, ptr, ptr, ptr, ptr }
%struct.nvif_mem = type { %struct.nvif_object, i8, i8, i64, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.nv_dma_v0 = type { i8, i8, i8, [5 x i8], i64, i64 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.nv50_disp_core_channel_dma_v0 = type { i8, [7 x i8], i64 }
%struct.nvif_sclass = type { i32, i32, i32 }
%struct.nvif_timer_wait = type { ptr, i64, i64, i64, i32 }
%struct.drm_atomic_state = type { %struct.kref, ptr, i8, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, %struct.work_struct }
%struct.__drm_connnectors_state = type { ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.nv50_msto = type { %struct.drm_encoder, ptr, ptr, i8 }
%struct.nouveau_connector = type { %struct.drm_connector, i32, i8, ptr, %struct.nvif_notify, %struct.drm_dp_aux, i32, i32, ptr, ptr, ptr, ptr, %struct.nouveau_conn_atom }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.83 }
%union.anon.83 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.131, %struct.anon.132, %struct.anon.134, %union.anon.135 }
%struct.anon.131 = type { i32, i32 }
%struct.anon.132 = type { i32, %struct.anon.133, i8 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.anon.134 = type { i32, i32 }
%union.anon.135 = type { %struct.anon.136 }
%struct.anon.136 = type { i8 }
%struct.nv50_mstm = type { ptr, %struct.drm_dp_mst_topology_mgr, i8, i8, i8, i8, i8, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.86, %struct.anon.87, %struct.anon.92, ptr, %struct.anon.93, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.94, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.106 }
%struct.nvif_parent = type { ptr }
%struct.anon.86 = type { ptr, i32, i32, i8 }
%struct.anon.87 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.88] }
%struct.anon.88 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.92 = type { i64, i64 }
%struct.anon.93 = type { i32, i64 }
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.85, ptr, i32, ptr, i8, i32 }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.85 = type { i32, ptr }
%struct.anon.151 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_dp_mst_link_v0 }
%struct.nv50_disp_mthd_v1 = type { i8, i8, i16, i16, [2 x i8] }
%struct.nv50_disp_sor_dp_mst_link_v0 = type { i8, i8, [6 x i8] }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.107, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.108, %struct.anon.115, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.anon.107 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.115 = type { i8 }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.anon.230 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.203, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.203 = type { %struct.notifier_block }
%struct.nv50_disp = type { ptr, ptr, %struct.nvif_object, ptr, %struct.mutex }
%struct.nv50_core_func = type { ptr, ptr, ptr, ptr, ptr, %struct.anon.150, ptr, ptr, ptr, ptr, ptr }
%struct.anon.150 = type { ptr }
%struct.nv50_head = type { ptr, %struct.nouveau_crtc, %struct.nv50_crc, %struct.nv50_lut, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.147, %struct.anon.148, %struct.anon.149, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.anon.147 = type { i32, i8, i32, i32 }
%struct.anon.148 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.149 = type { i32 }
%struct.nv50_crc = type { %struct.spinlock, [2 x %struct.nv50_crc_notifier_ctx], %struct.drm_vblank_work, i32, i64, i16, i16, i8 }
%struct.nv50_crc_notifier_ctx = type { %struct.nvif_mem, %struct.nvif_object }
%struct.drm_vblank_work = type { %struct.kthread_work, ptr, i64, i32, %struct.list_head }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.nv50_lut = type { [2 x %struct.nvif_mem] }
%struct.anon.236 = type { %struct.nvkm_object, ptr }
%struct.nv50_outp_func = type { ptr, ptr }
%struct.nvkm_i2c_aux = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8, i32 }
%struct.nvkm_i2c_bus = type { ptr, ptr, i32, %struct.mutex, %struct.list_head, %struct.i2c_adapter, i8 }
%struct.anon.246 = type { %struct.nvkm_object, ptr }
%struct.anon.248 = type { %struct.nvkm_object, ptr }
%struct.drm_audio_component = type { ptr, ptr, ptr, %struct.completion }
%struct.nv50_core = type { ptr, %struct.nv50_dmac, i8 }
%struct.nv50_head_func = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.__drm_crtcs_state = type { ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.nv50_atom = type { %struct.drm_atomic_state, %struct.list_head, i8, i8 }
%struct.nv50_outp_atom = type { %struct.list_head, ptr, i8, %union.nv50_outp_atom_mask, %union.nv50_outp_atom_mask }
%union.nv50_outp_atom_mask = type { %struct.anon.232 }
%struct.anon.232 = type { i8 }
%struct.__drm_planes_state = type { ptr, ptr, ptr, ptr }
%struct.nv50_wndw_atom = type { %struct.drm_plane_state, ptr, i8, %struct.anon.137, %struct.anon.138, [4 x i8], %struct.anon.139, %struct.anon.141, %struct.anon.142, %struct.anon.143, %struct.anon.144, %struct.anon.145, %union.nv50_wndw_atom_mask, %union.nv50_wndw_atom_mask }
%struct.drm_plane_state = type { ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, i32, ptr, %struct.drm_rect, %struct.drm_rect, i8, i32, ptr, ptr }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.anon.137 = type { i32, i16 }
%struct.anon.138 = type { i32, i16, i32, i32 }
%struct.anon.139 = type { i32, [4 x i8], %struct.anon.140 }
%struct.anon.140 = type { [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.141 = type { [12 x i32], i8 }
%struct.anon.142 = type { i8, i8, i16, [3 x i16], [3 x i32], i16, i16, [6 x i32], [6 x i64] }
%struct.anon.143 = type { i16, i16, i16, i16, i16, i16 }
%struct.anon.144 = type { i16, i16 }
%struct.anon.145 = type { i8, i8, i8 }
%union.nv50_wndw_atom_mask = type { %struct.anon.146 }
%struct.anon.146 = type { i8 }
%struct.nv50_head_atom = type { %struct.drm_crtc_state, %struct.anon.116, %struct.anon.117, %struct.nv50_head_mode, %struct.anon.120, %struct.anon.121, %struct.anon.122, %struct.anon.123, %struct.anon.124, %struct.anon.125, %struct.anon.126, %struct.anon.128, %struct.nv50_crc_atom, %struct.anon.129, %union.nv50_head_atom_mask, %union.nv50_head_atom_mask, [4 x i8] }
%struct.anon.116 = type { i32, i32, i32 }
%struct.anon.117 = type { i16, i16, i16, i16 }
%struct.nv50_head_mode = type { i8, i32, %struct.anon.118, %struct.anon.119 }
%struct.anon.118 = type { i16, i16, i16, i16 }
%struct.anon.119 = type { i32, i16, i16, i16, i16, i16, i16 }
%struct.anon.120 = type { i8, i32, [6 x i8], i16, ptr, [4 x i8] }
%struct.anon.121 = type { i8, i32, [5 x i8], i8, i16, i32, i16, i16, i16, i16, [4 x i8] }
%struct.anon.122 = type { i8, i32, [6 x i8], i8 }
%struct.anon.123 = type { i8, i8, i16, i16, i16, i16 }
%struct.anon.124 = type { i8 }
%struct.anon.125 = type { i8 }
%struct.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i16, i16 }
%struct.anon.128 = type { i8, i8 }
%struct.nv50_crc_atom = type { i32 }
%struct.anon.129 = type { i32, i8 }
%union.nv50_head_atom_mask = type { %struct.anon.130 }
%struct.anon.130 = type { i16 }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv50_wndw_func = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.234 = type { %struct.nv50_disp_mthd_v1 }
%struct.anon.233 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_dp_mst_vcpi_v0 }
%struct.nv50_disp_sor_dp_mst_vcpi_v0 = type { i8, [1 x i8], i8, i8, i16, i16 }
%struct.nv50_mstc = type { ptr, ptr, %struct.drm_connector, ptr, ptr }
%struct.drm_dp_mst_port = type { %struct.kref, %struct.kref, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, %struct.list_head, ptr, %struct.drm_dp_aux, ptr, %struct.drm_dp_vcpi, ptr, ptr, ptr, i8, i8 }
%struct.drm_dp_vcpi = type { i32, i32, i32, i32 }
%struct.drm_dp_payload = type { i32, i32, i32, i32 }
%struct.anon.235 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_acquire_v0 }
%struct.nv50_disp_acquire_v0 = type { i8, i8, i8, i8, [4 x i8] }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.anon.238 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_hdmi_pwr_v0 }
%struct.nv50_disp_sor_hdmi_pwr_v0 = type { i8, i8, i8, i8, i8, i8, i8, [1 x i8] }
%struct.anon.237 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_hda_eld_v0 }
%struct.nv50_disp_sor_hda_eld_v0 = type { i8, [7 x i8], [0 x i8] }
%struct.nouveau_backlight = type { ptr, %struct.drm_edp_backlight_info, i8, i32 }
%struct.drm_edp_backlight_info = type { i8, i8, i16, i8 }
%struct.drm_audio_component_audio_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.anon.240 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_hdmi_pwr_v0, [34 x i8] }
%union.hdmi_infoframe = type { %struct.hdmi_avi_infoframe }
%struct.hdmi_avi_infoframe = type { i32, i8, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, i8, i32, i32, i8, i16, i16, i16, i16 }
%struct.anon.239 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_lvds_script_v0 }
%struct.nv50_disp_sor_lvds_script_v0 = type { i8, [1 x i8], i16, [4 x i8] }
%struct.anon.244 = type { %struct.anon.245, [128 x i8] }
%struct.anon.245 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_sor_hda_eld_v0 }
%struct.anon.247 = type { %struct.nv50_disp_mthd_v1, %struct.nv50_disp_dac_load_v0 }
%struct.nv50_disp_dac_load_v0 = type { i8, i8, [2 x i8], i32 }

@__UNIQUE_ID_kms_vram_pushbuf281 = internal constant [73 x i8] c"parm=kms_vram_pushbuf:Place EVO/NVD push buffers in VRAM (default: auto)\00", section ".modinfo", align 1
@__param_str_kms_vram_pushbuf = internal constant [17 x i8] c"kms_vram_pushbuf\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nv50_dmac_vram_pushbuf = internal global i32 -1, align 4
@__param_kms_vram_pushbuf = internal constant %struct.kernel_param { ptr @__param_str_kms_vram_pushbuf, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.65 { ptr @nv50_dmac_vram_pushbuf } }, section "__param", align 4
@__UNIQUE_ID_kms_vram_pushbuftype282 = internal constant [30 x i8] c"parmtype=kms_vram_pushbuf:int\00", section ".modinfo", align 1
@nv50_dmac_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str = private unnamed_addr constant [12 x i8] c"&dmac->lock\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"kmsChanPush\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"kmsSyncCtxDma\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"kmsVramCtxDma\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"%s: Failed to handle ESI on %s: %d\0A\00", align 1
@nv50_display_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"&disp->mutex\00", align 1
@nv50_disp_func = internal constant %struct.drm_mode_config_funcs { ptr @nouveau_user_framebuffer_create, ptr null, ptr @nouveau_fbcon_output_poll_changed, ptr null, ptr @nv50_disp_atomic_check, ptr @nv50_disp_atomic_commit, ptr @nv50_disp_atomic_state_alloc, ptr @nv50_disp_atomic_state_clear, ptr @nv50_disp_atomic_state_free }, align 4
@wndwc57e_modifiers = external dso_local constant [0 x i64], align 8
@.str.6 = private unnamed_addr constant [43 x i8] c"%s: failed to create encoder %d/%d/%d: %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"%s: %s has no encoders, removing\0A\00", align 1
@disp50xx_modifiers = dso_local constant [20 x i64] [i64 216172782119526416, i64 216172782119526417, i64 216172782119526418, i64 216172782119526419, i64 216172782119526420, i64 216172782119526421, i64 216172782119518224, i64 216172782119518225, i64 216172782119518226, i64 216172782119518227, i64 216172782119518228, i64 216172782119518229, i64 216172782119485456, i64 216172782119485457, i64 216172782119485458, i64 216172782119485459, i64 216172782119485460, i64 216172782119485461, i64 0, i64 72057594037927935], align 8
@disp90xx_modifiers = dso_local constant [8 x i64] [i64 216172782119018512, i64 216172782119018513, i64 216172782119018514, i64 216172782119018515, i64 216172782119018516, i64 216172782119018517, i64 0, i64 72057594037927935], align 8
@.str.10 = private unnamed_addr constant [40 x i8] c"drivers/gpu/drm/nouveau/dispnv50/disp.c\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"kmsChan\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv50_audio_component_bind_ops = internal constant %struct.component_ops { ptr @nv50_audio_component_bind, ptr @nv50_audio_component_unbind }, align 4
@nv50_audio_component_ops = internal constant %struct.drm_audio_component_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_audio_component_get_eld }, align 4
@nv50_wndw = external dso_local constant %struct.drm_plane_funcs, align 4
@system_unbound_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.12 = private unnamed_addr constant [18 x i8] c"%s: commit %d %d\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"%s: %s: clr %04x (set %04x)\0A\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"%s: %s: clr %02x (set %02x)\0A\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"%s: %s: set %02x (clr %02x)\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"%s: %s: set %04x (clr %04x)\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"%s: %s: timeout\0A\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"%s: commit core %08x\0A\00", align 1
@.str.19 = private unnamed_addr constant [27 x i8] c"%s: core notifier timeout\0A\00", align 1
@.str.20 = private unnamed_addr constant [22 x i8] c"%s: %s: mstm prepare\0A\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"%s: %s: msto prepare\0A\00", align 1
@.str.22 = private unnamed_addr constant [33 x i8] c"%s: %s: %s: %02x %02x %04x %04x\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"%s: %s: vcpi %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"%s: %s: %d: vcpi %d start 0x%02x slots 0x%02x\0A\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"%s: %s: mstm cleanup\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"%s: %s: msto cleanup\0A\00", align 1
@nv50_msto = internal constant %struct.drm_encoder_funcs { ptr null, ptr @nv50_msto_destroy, ptr null, ptr null }, align 4
@.str.27 = private unnamed_addr constant [7 x i8] c"mst-%d\00", align 1
@nv50_msto_help = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_msto_atomic_disable, ptr @nv50_msto_atomic_enable, ptr null, ptr null, ptr @nv50_msto_atomic_check }, align 4
@.str.28 = private unnamed_addr constant [25 x i8] c"Failed to allocate VCPI\0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"%s: error acquiring output path: %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"%s: %s atomic_check\0A\00", align 1
@nv50_sor_func = internal constant %struct.drm_encoder_funcs { ptr null, ptr @nv50_sor_destroy, ptr null, ptr null }, align 4
@.str.31 = private unnamed_addr constant [14 x i8] c"sor-%04x-%04x\00", align 1
@nv50_sor_help = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_sor_atomic_disable, ptr @nv50_sor_atomic_enable, ptr null, ptr null, ptr @nv50_outp_atomic_check }, align 4
@nv50_sor_create.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.32 = private unnamed_addr constant [29 x i8] c"&nv_encoder->dp.hpd_irq_lock\00", align 1
@.str.33 = private unnamed_addr constant [58 x i8] c"%s: Failed to disable backlight on [CONNECTOR:%d:%s]: %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [42 x i8] c"%s: Failure to read SCDC_TMDS_CONFIG: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"%s: Failure to write SCDC_TMDS_CONFIG = 0x%02x: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"%s: %s caps: dp_interlace=%d\0A\00", align 1
@nv50_mstm = internal constant %struct.drm_dp_mst_topology_cbs { ptr @nv50_mstm_add_connector, ptr null }, align 4
@nv50_mstc = internal constant %struct.drm_connector_funcs { ptr null, ptr @nouveau_conn_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @nv50_mstc_destroy, ptr @nouveau_conn_atomic_duplicate_state, ptr @nouveau_conn_atomic_destroy_state, ptr @nouveau_conn_atomic_set_property, ptr @nouveau_conn_atomic_get_property, ptr null, ptr null }, align 4
@nv50_mstc_help = internal constant %struct.drm_connector_helper_funcs { ptr @nv50_mstc_get_modes, ptr @nv50_mstc_detect, ptr @nv50_mstc_mode_valid, ptr null, ptr null, ptr @nv50_mstc_atomic_best_encoder, ptr @nv50_mstc_atomic_check, ptr null, ptr null, ptr null }, align 4
@nv50_dac_func = internal constant %struct.drm_encoder_funcs { ptr null, ptr @nv50_dac_destroy, ptr null, ptr null }, align 4
@.str.37 = private unnamed_addr constant [14 x i8] c"dac-%04x-%04x\00", align 1
@nv50_dac_help = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_dac_detect, ptr @nv50_dac_atomic_disable, ptr @nv50_dac_atomic_enable, ptr null, ptr null, ptr @nv50_outp_atomic_check }, align 4
@nv50_pior_func = internal constant %struct.drm_encoder_funcs { ptr null, ptr @nv50_pior_destroy, ptr null, ptr null }, align 4
@.str.38 = private unnamed_addr constant [15 x i8] c"pior-%04x-%04x\00", align 1
@nv50_pior_help = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nv50_pior_atomic_disable, ptr @nv50_pior_atomic_enable, ptr null, ptr null, ptr @nv50_pior_atomic_check }, align 4
@nv50_audio_component_init.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"&drm->audio.lock\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_kms_vram_pushbuf281, ptr @__UNIQUE_ID_kms_vram_pushbuftype282, ptr @__param_kms_vram_pushbuf], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_dmac_destroy(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv50_dmac, ptr %0, i32 0, i32 5
  tail call void @nvif_object_dtor(ptr noundef %2) #11
  %3 = getelementptr inbounds %struct.nv50_dmac, ptr %0, i32 0, i32 4
  tail call void @nvif_object_dtor(ptr noundef %3) #11
  tail call void @nvif_object_dtor(ptr noundef %0) #11
  %4 = getelementptr inbounds %struct.nv50_dmac, ptr %0, i32 0, i32 1, i32 2
  tail call void @nvif_mem_dtor(ptr noundef %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_mem_dtor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_dmac_create(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i8 noundef zeroext %3, ptr noundef %4, i32 noundef %5, i64 noundef %6, ptr noundef %7) local_unnamed_addr #0 {
  %9 = alloca ptr, align 4
  %10 = alloca %struct.nv_dma_v0, align 8
  %11 = alloca %struct.nv_dma_v0, align 8
  %12 = getelementptr inbounds %struct.nvif_object, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %14, ptr noundef nonnull @.str, ptr noundef nonnull @nv50_dmac_create.__key) #11
  %15 = load i32, ptr @nv50_dmac_vram_pushbuf, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %8
  %18 = icmp slt i32 %15, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 1, i32 4
  %21 = load i8, ptr %20, align 1
  %22 = icmp eq i8 %21, 10
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %8
  br label %24

24:                                               ; preds = %23, %19, %17
  %25 = phi i8 [ 65, %23 ], [ 64, %19 ], [ 64, %17 ]
  %26 = getelementptr inbounds %struct.nouveau_cli, ptr %13, i32 0, i32 4
  %27 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 1, i32 2
  %28 = tail call i32 @nvif_mem_ctor_map(ptr noundef %26, ptr noundef nonnull @.str.1, i8 noundef zeroext %25, i64 noundef 4096, ptr noundef %27) #11
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %101

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 1
  %32 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 1, i32 2, i32 0, i32 6
  %33 = load ptr, ptr %32, align 8
  %34 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 3
  store ptr %33, ptr %34, align 4
  store ptr @nv50_dmac_wait, ptr %31, align 8
  %35 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 1, i32 1
  store ptr @nv50_dmac_kick, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 2
  store ptr %31, ptr %36, align 8
  %37 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 1, i32 3
  store ptr %33, ptr %37, align 8
  %38 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 1, i32 4
  store ptr %33, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 1, i32 6
  store ptr %33, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 9
  store i32 1023, ptr %40, align 4
  %41 = getelementptr inbounds %struct.nvif_object, ptr %1, i32 0, i32 4
  %42 = load i32, ptr %41, align 8
  %43 = icmp slt i32 %42, 50032
  %44 = select i1 %43, i32 1011, i32 1023
  store i32 %44, ptr %40, align 4
  %45 = ptrtoint ptr %27 to i32
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.nv50_disp_core_channel_dma_v0, ptr %4, i32 0, i32 2
  store i64 %46, ptr %47, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #11
  store ptr null, ptr %9, align 4, !annotation !8
  %48 = getelementptr inbounds %struct.nv50_chan, ptr %7, i32 0, i32 1
  store ptr %0, ptr %48, align 8
  %49 = call i32 @nvif_object_sclass_get(ptr noundef %1, ptr noundef nonnull %9) #11
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %30
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  br label %101

52:                                               ; preds = %30
  %53 = load i32, ptr %2, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %76, label %55

55:                                               ; preds = %52
  %56 = icmp eq i32 %49, 0
  %57 = load ptr, ptr %9, align 4
  br label %58

58:                                               ; preds = %72, %55
  %59 = phi i32 [ %53, %55 ], [ %74, %72 ]
  %60 = phi ptr [ %2, %55 ], [ %73, %72 ]
  br i1 %56, label %72, label %64

61:                                               ; preds = %64
  %62 = add nuw nsw i32 %65, 1
  %63 = icmp eq i32 %62, %49
  br i1 %63, label %72, label %64

64:                                               ; preds = %61, %58
  %65 = phi i32 [ %62, %61 ], [ 0, %58 ]
  %66 = getelementptr %struct.nvif_sclass, ptr %57, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %59
  br i1 %68, label %69, label %61

69:                                               ; preds = %64
  %70 = call i32 @nvif_object_ctor(ptr noundef %1, ptr noundef nonnull @.str.11, i32 noundef 0, i32 noundef %59, ptr noundef %4, i32 noundef %5, ptr noundef %7) #11
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %76

72:                                               ; preds = %61, %58
  %73 = getelementptr i32, ptr %60, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %58

76:                                               ; preds = %72, %69, %52
  %77 = phi i32 [ -38, %52 ], [ %70, %69 ], [ -38, %72 ]
  call void @nvif_object_sclass_put(ptr noundef nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  br label %101

78:                                               ; preds = %69
  %79 = call i32 @nvif_object_map(ptr noundef %7, ptr noundef null, i32 noundef 0) #11
  call void @nvif_object_sclass_put(ptr noundef nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #11
  %80 = icmp slt i64 %6, 0
  br i1 %80, label %101, label %81

81:                                               ; preds = %78
  store i8 0, ptr %10, align 8
  %82 = getelementptr inbounds %struct.nv_dma_v0, ptr %10, i32 0, i32 1
  store i8 1, ptr %82, align 1
  %83 = getelementptr inbounds %struct.nv_dma_v0, ptr %10, i32 0, i32 2
  store i8 3, ptr %83, align 2
  %84 = getelementptr inbounds %struct.nv_dma_v0, ptr %10, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %84, i8 0, i32 5, i1 false)
  %85 = getelementptr inbounds %struct.nv_dma_v0, ptr %10, i32 0, i32 4
  store i64 %6, ptr %85, align 8
  %86 = getelementptr inbounds %struct.nv_dma_v0, ptr %10, i32 0, i32 5
  %87 = add nuw i64 %6, 4095
  store i64 %87, ptr %86, align 8
  %88 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 4
  %89 = call i32 @nvif_object_ctor(ptr noundef %7, ptr noundef nonnull @.str.2, i32 noundef -268435456, i32 noundef 61, ptr noundef nonnull %10, i32 noundef 24, ptr noundef %88) #11
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %81
  store i8 0, ptr %11, align 8
  %92 = getelementptr inbounds %struct.nv_dma_v0, ptr %11, i32 0, i32 1
  store i8 1, ptr %92, align 1
  %93 = getelementptr inbounds %struct.nv_dma_v0, ptr %11, i32 0, i32 2
  store i8 3, ptr %93, align 2
  %94 = getelementptr inbounds %struct.nv_dma_v0, ptr %11, i32 0, i32 3
  %95 = getelementptr inbounds %struct.nv_dma_v0, ptr %11, i32 0, i32 5
  %96 = getelementptr inbounds %struct.nvif_device, ptr %0, i32 0, i32 1, i32 7
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(13) %94, i8 0, i64 13, i1 false)
  %97 = load i64, ptr %96, align 8
  %98 = add i64 %97, -1
  store i64 %98, ptr %95, align 8
  %99 = getelementptr inbounds %struct.nv50_dmac, ptr %7, i32 0, i32 5
  %100 = call i32 @nvif_object_ctor(ptr noundef %7, ptr noundef nonnull @.str.3, i32 noundef -268435455, i32 noundef 61, ptr noundef nonnull %11, i32 noundef 24, ptr noundef %99) #11
  br label %101

101:                                              ; preds = %91, %81, %78, %76, %51, %24
  %102 = phi i32 [ %28, %24 ], [ 0, %78 ], [ %89, %81 ], [ %100, %91 ], [ %49, %51 ], [ %77, %76 ]
  ret i32 %102
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_mem_ctor_map(ptr noundef, ptr noundef, i8 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_dmac_wait(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca %struct.nvif_timer_wait, align 8
  %4 = alloca %struct.nvif_timer_wait, align 8
  %5 = getelementptr i8, ptr %0, i32 -48
  %6 = getelementptr i8, ptr %0, i32 204
  %7 = load i32, ptr %6, align 4
  %8 = icmp ult i32 %7, %1
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 195, i32 noundef 9, ptr noundef null) #11
  br label %113

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 2, i32 0, i32 6
  %14 = load ptr, ptr %13, align 8
  %15 = ptrtoint ptr %12 to i32
  %16 = ptrtoint ptr %14 to i32
  %17 = sub i32 %15, %16
  %18 = ashr exact i32 %17, 2
  %19 = getelementptr i8, ptr %0, i32 196
  store i32 %18, ptr %19, align 4
  %20 = add i32 %18, %1
  %21 = icmp ult i32 %20, %7
  br i1 %21, label %76, label %22

22:                                               ; preds = %10
  %23 = getelementptr i8, ptr %0, i32 -24
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26, !prof !9

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %24, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #11, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %31

29:                                               ; preds = %22
  %30 = tail call i32 @nvif_object_rd(ptr noundef %5, i32 noundef 4, i64 noundef 4) #11
  br label %31

31:                                               ; preds = %29, %26
  %32 = phi i32 [ %28, %26 ], [ %30, %29 ]
  %33 = and i32 %32, 4092
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %31
  %36 = getelementptr i8, ptr %0, i32 200
  %37 = load i32, ptr %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = getelementptr i8, ptr %0, i32 88
  %41 = load ptr, ptr %40, align 8
  tail call void @nv50_dmac_kick(ptr noundef %41) #11
  br label %42

42:                                               ; preds = %39, %35
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %3, i8 0, i32 40, i1 false) #11, !annotation !8
  %43 = getelementptr i8, ptr %0, i32 -8
  %44 = load ptr, ptr %43, align 8
  call void @nvif_timer_wait_init(ptr noundef %44, i64 noundef 2000000000, ptr noundef nonnull %3) #11
  br label %45

45:                                               ; preds = %57, %42
  %46 = load ptr, ptr %23, align 8
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48, !prof !9

48:                                               ; preds = %45
  %49 = getelementptr i8, ptr %46, i32 4
  %50 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %53

51:                                               ; preds = %45
  %52 = call i32 @nvif_object_rd(ptr noundef %5, i32 noundef 4, i64 noundef 4) #11
  br label %53

53:                                               ; preds = %51, %48
  %54 = phi i32 [ %50, %48 ], [ %52, %51 ]
  %55 = and i32 %54, 4092
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %3) #11
  %59 = icmp sgt i64 %58, -1
  br i1 %59, label %45, label %61

60:                                               ; preds = %53
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #11
  br label %62

61:                                               ; preds = %57
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #11
  br label %113

62:                                               ; preds = %60, %31
  %63 = getelementptr i8, ptr %0, i32 88
  %64 = load ptr, ptr %63, align 8
  %65 = getelementptr inbounds %struct.nvif_push, ptr %64, i32 0, i32 5
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr i32, ptr %66, i32 1
  store ptr %67, ptr %65, align 8
  %68 = getelementptr inbounds %struct.nvif_push, ptr %64, i32 0, i32 6
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i32, ptr %69, i32 1
  store ptr %70, ptr %68, align 4
  %71 = load ptr, ptr %63, align 8
  %72 = getelementptr inbounds %struct.nvif_push, ptr %71, i32 0, i32 4
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i32, ptr %73, i32 1
  store ptr %74, ptr %72, align 4
  store i32 536870912, ptr %73, align 4
  store i32 0, ptr %19, align 4
  %75 = load ptr, ptr %13, align 8
  store ptr %75, ptr %11, align 4
  call void @nv50_dmac_kick(ptr noundef %0)
  br label %76

76:                                               ; preds = %62, %10
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %4, i8 0, i32 40, i1 false), !annotation !8
  %77 = getelementptr i8, ptr %0, i32 -8
  %78 = load ptr, ptr %77, align 8
  call void @nvif_timer_wait_init(ptr noundef %78, i64 noundef 2000000000, ptr noundef nonnull %4) #11
  %79 = getelementptr i8, ptr %0, i32 -24
  br label %80

80:                                               ; preds = %103, %76
  %81 = load ptr, ptr %79, align 8
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83, !prof !9

83:                                               ; preds = %80
  %84 = getelementptr i8, ptr %81, i32 4
  %85 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %88

86:                                               ; preds = %80
  %87 = call i32 @nvif_object_rd(ptr noundef %5, i32 noundef 4, i64 noundef 4) #11
  br label %88

88:                                               ; preds = %86, %83
  %89 = phi i32 [ %85, %83 ], [ %87, %86 ]
  %90 = lshr i32 %89, 2
  %91 = and i32 %90, 1023
  %92 = load i32, ptr %19, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = sub i32 -5, %92
  %96 = add i32 %95, %91
  br label %100

97:                                               ; preds = %88
  %98 = load i32, ptr %6, align 4
  %99 = sub i32 %98, %92
  br label %100

100:                                              ; preds = %97, %94
  %101 = phi i32 [ %96, %94 ], [ %99, %97 ]
  %102 = icmp ult i32 %101, %1
  br i1 %102, label %103, label %107

103:                                              ; preds = %100
  %104 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %4) #11
  %105 = icmp sgt i64 %104, -1
  br i1 %105, label %80, label %106

106:                                              ; preds = %103
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 213, i32 noundef 9, ptr noundef null) #11
  br label %113

107:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #11
  %108 = load ptr, ptr %13, align 8
  %109 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 3
  %110 = getelementptr i32, ptr %108, i32 %92
  store ptr %110, ptr %109, align 8
  store ptr %110, ptr %11, align 4
  %111 = getelementptr i32, ptr %110, i32 %101
  %112 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 6
  store ptr %111, ptr %112, align 4
  br label %113

113:                                              ; preds = %107, %106, %61, %9
  %114 = phi i32 [ -22, %9 ], [ -110, %106 ], [ 0, %107 ], [ -110, %61 ]
  ret i32 %114
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_dmac_kick(ptr noundef %0) #0 {
  %2 = alloca %struct.nvif_timer_wait, align 8
  %3 = getelementptr i8, ptr %0, i32 -48
  %4 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 2, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = ptrtoint ptr %5 to i32
  %9 = ptrtoint ptr %7 to i32
  %10 = sub i32 %8, %9
  %11 = ashr exact i32 %10, 2
  %12 = getelementptr i8, ptr %0, i32 196
  store i32 %11, ptr %12, align 4
  %13 = getelementptr i8, ptr %0, i32 200
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, %11
  br i1 %15, label %61, label %16

16:                                               ; preds = %1
  %17 = getelementptr i8, ptr %0, i32 88
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.nvif_push, ptr %18, i32 0, i32 2, i32 1
  %20 = load i8, ptr %19, align 8
  %21 = and i8 %20, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %49, label %23

23:                                               ; preds = %16
  %24 = getelementptr i8, ptr %0, i32 -8
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nvif_object, ptr %25, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !9

29:                                               ; preds = %23
  %30 = getelementptr i8, ptr %27, i32 458752
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 1) #11, !srcloc !13
  br label %32

31:                                               ; preds = %23
  tail call void @nvif_object_wr(ptr noundef %25, i32 noundef 4, i64 noundef 458752, i32 noundef 1) #11
  br label %32

32:                                               ; preds = %31, %29
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 8 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !8
  call void @nvif_timer_wait_init(ptr noundef %25, i64 noundef 2000000000, ptr noundef nonnull %2) #11
  br label %33

33:                                               ; preds = %45, %32
  %34 = load ptr, ptr %26, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %39, label %36, !prof !9

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %34, i32 458752
  %38 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %41

39:                                               ; preds = %33
  %40 = call i32 @nvif_object_rd(ptr noundef %25, i32 noundef 4, i64 noundef 458752) #11
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i32 [ %38, %36 ], [ %40, %39 ]
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %41
  %46 = call i64 @nvif_timer_wait_test(ptr noundef nonnull %2) #11
  %47 = icmp sgt i64 %46, -1
  br i1 %47, label %33, label %48

48:                                               ; preds = %45, %41
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #11
  br label %49

49:                                               ; preds = %48, %16
  %50 = getelementptr i8, ptr %0, i32 -24
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  %53 = load i32, ptr %12, align 4
  %54 = shl i32 %53, 2
  %55 = and i32 %54, 4092
  br i1 %52, label %57, label %56, !prof !9

56:                                               ; preds = %49
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  call void @arm_heavy_mb() #11
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %51, i32 %55) #11, !srcloc !13
  br label %58

57:                                               ; preds = %49
  call void @nvif_object_wr(ptr noundef %3, i32 noundef 4, i64 noundef 0, i32 noundef %55) #11
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, ptr %12, align 4
  store i32 %59, ptr %13, align 8
  %60 = load ptr, ptr %4, align 4
  br label %61

61:                                               ; preds = %58, %1
  %62 = phi ptr [ %60, %58 ], [ %5, %1 ]
  %63 = getelementptr inbounds %struct.nvif_push, ptr %0, i32 0, i32 3
  store ptr %62, ptr %63, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_ctor(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nv50_outp_get_new_connector(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %20, %6
  %10 = phi i32 [ 0, %6 ], [ %21, %20 ]
  %11 = getelementptr %struct.__drm_connnectors_state, ptr %8, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.__drm_connnectors_state, ptr %8, i32 %10, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_connector_state, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %9
  %21 = add nuw nsw i32 %10, 1
  %22 = icmp eq i32 %21, %4
  br i1 %22, label %23, label %9

23:                                               ; preds = %20, %14, %2
  %24 = phi ptr [ null, %2 ], [ %12, %14 ], [ null, %20 ]
  ret ptr %24
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @nv50_outp_get_old_connector(ptr nocapture noundef readonly %0, ptr noundef readnone %1) local_unnamed_addr #4 {
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 5
  %4 = load i32, ptr %3, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %23

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 6
  %8 = load ptr, ptr %7, align 4
  br label %9

9:                                                ; preds = %20, %6
  %10 = phi i32 [ 0, %6 ], [ %21, %20 ]
  %11 = getelementptr %struct.__drm_connnectors_state, ptr %8, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %9
  %15 = getelementptr %struct.__drm_connnectors_state, ptr %8, i32 %10, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_connector_state, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %1
  br i1 %19, label %23, label %20

20:                                               ; preds = %14, %9
  %21 = add nuw nsw i32 %10, 1
  %22 = icmp eq i32 %21, %4
  br i1 %22, label %23, label %9

23:                                               ; preds = %20, %14, %2
  %24 = phi ptr [ null, %2 ], [ %12, %14 ], [ null, %20 ]
  ret ptr %24
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define dso_local ptr @nv50_real_outp(ptr noundef readonly %0) local_unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 4
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 7
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nv50_msto, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8
  %11 = load ptr, ptr %10, align 4
  br label %12

12:                                               ; preds = %9, %5, %1
  %13 = phi ptr [ %11, %9 ], [ null, %5 ], [ %0, %1 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local zeroext i1 @nv50_mstm_service(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = alloca i8, align 1
  %5 = alloca [8 x i8], align 8
  %6 = getelementptr inbounds %struct.nouveau_connector, ptr %1, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 1, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #11
  store i64 0, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nv50_mstm, ptr %2, i32 0, i32 1
  %8 = getelementptr inbounds [8 x i8], ptr %5, i32 0, i32 1
  br label %12

9:                                                ; preds = %19
  %10 = load i8, ptr %4, align 1
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %9, %3
  %13 = call i32 @drm_dp_dpcd_read(ptr noundef %6, i32 noundef 8194, ptr noundef nonnull %5, i32 noundef 8) #11
  %14 = icmp eq i32 %13, 8
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = call i32 @drm_dp_mst_hpd_irq(ptr noundef %7, ptr noundef nonnull %5, ptr noundef nonnull %4) #11
  %17 = load i8, ptr %4, align 1, !range !14
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %37, label %19

19:                                               ; preds = %15
  %20 = call i32 @drm_dp_dpcd_write(ptr noundef %6, i32 noundef 8195, ptr noundef %8, i32 noundef 3) #11
  %21 = icmp eq i32 %20, 3
  br i1 %21, label %9, label %22

22:                                               ; preds = %19, %12
  %23 = phi i32 [ %13, %12 ], [ %20, %19 ]
  %24 = load i32, ptr @__drm_debug, align 4
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %37, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %29 = load ptr, ptr %28, align 8
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %29, i32 0, i32 3
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.drm_device, ptr %31, i32 0, i32 2
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  %35 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %33, ptr noundef nonnull @.str.4, ptr noundef %34, ptr noundef %36, i32 noundef %23) #12
  br label %37

37:                                               ; preds = %27, %22, %15, %9
  %38 = phi i1 [ false, %22 ], [ false, %27 ], [ true, %15 ], [ true, %9 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  ret i1 %38
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_hpd_irq(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv50_mstm_remove(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nv50_mstm, ptr %0, i32 0, i32 3
  store i8 0, ptr %2, align 1
  %3 = getelementptr inbounds %struct.nv50_mstm, ptr %0, i32 0, i32 1
  %4 = tail call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %3, i1 noundef zeroext false) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_mstm_detect(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.anon.151, align 2
  %3 = alloca %struct.anon.151, align 2
  %4 = alloca i8, align 1
  %5 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 12
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %65, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.nv50_mstm, ptr %6, i32 0, i32 2
  %10 = load i8, ptr %9, align 4, !range !14
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %65, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.nv50_mstm, ptr %6, i32 0, i32 1
  %14 = getelementptr inbounds %struct.nv50_mstm, ptr %6, i32 0, i32 1, i32 4
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4)
  store i8 0, ptr %4, align 1
  %16 = call i32 @drm_dp_dpcd_write(ptr noundef %15, i32 noundef 273, ptr noundef nonnull %4, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4)
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  store i8 1, ptr %3, align 2
  %20 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 1
  store i8 37, ptr %20, align 1
  %21 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 2
  %22 = getelementptr inbounds %struct.nouveau_encoder, ptr %19, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dcb_output, ptr %23, i32 0, i32 1
  %25 = load i16, ptr %24, align 4
  store i16 %25, ptr %21, align 2
  %26 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 3
  %27 = getelementptr inbounds %struct.dcb_output, ptr %23, i32 0, i32 2
  %28 = load i16, ptr %27, align 2
  store i16 %28, ptr %26, align 2
  %29 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 4
  store i16 0, ptr %29, align 2
  %30 = getelementptr inbounds %struct.anon.151, ptr %3, i32 0, i32 1
  store i8 0, ptr %30, align 2
  %31 = getelementptr inbounds %struct.anon.151, ptr %3, i32 0, i32 1, i32 1
  store i8 1, ptr %31, align 1
  %32 = getelementptr inbounds %struct.anon.151, ptr %3, i32 0, i32 1, i32 2
  call void @llvm.memset.p0.i32(ptr noundef align 2 dereferenceable(6) %32, i8 0, i32 6, i1 false) #11
  %33 = load ptr, ptr %19, align 4
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 5
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %35, i32 0, i32 19
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nouveau_display, ptr %37, i32 0, i32 4
  %39 = call i32 @nvif_object_mthd(ptr noundef %38, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %65

41:                                               ; preds = %18
  %42 = call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %13, i1 noundef zeroext true) #11
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %63, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #11
  store i8 1, ptr %2, align 2
  %46 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %2, i32 0, i32 1
  store i8 37, ptr %46, align 1
  %47 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %2, i32 0, i32 2
  %48 = getelementptr inbounds %struct.nouveau_encoder, ptr %45, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dcb_output, ptr %49, i32 0, i32 1
  %51 = load i16, ptr %50, align 4
  store i16 %51, ptr %47, align 2
  %52 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %2, i32 0, i32 3
  %53 = getelementptr inbounds %struct.dcb_output, ptr %49, i32 0, i32 2
  %54 = load i16, ptr %53, align 2
  store i16 %54, ptr %52, align 2
  %55 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %2, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(10) %55, i8 0, i64 10, i1 false)
  %56 = load ptr, ptr %45, align 4
  %57 = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nouveau_drm, ptr %58, i32 0, i32 19
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.nouveau_display, ptr %60, i32 0, i32 4
  %62 = call i32 @nvif_object_mthd(ptr noundef %61, i32 noundef 0, ptr noundef nonnull %2, i32 noundef 16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #11
  br label %65

63:                                               ; preds = %41
  %64 = getelementptr inbounds %struct.nv50_mstm, ptr %6, i32 0, i32 3
  store i8 1, ptr %64, align 1
  br label %65

65:                                               ; preds = %63, %44, %18, %12, %8, %1
  %66 = phi i32 [ %42, %44 ], [ 1, %63 ], [ 0, %8 ], [ 0, %1 ], [ %16, %12 ], [ %39, %18 ]
  ret i32 %66
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_display_create(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.anon.230, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nvkm_device, ptr %16, i32 0, i32 21
  %18 = load ptr, ptr %17, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #11
  store i8 0, ptr %6, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #11
  store i8 0, ptr %8, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #11
  store i8 0, ptr %9, align 1, !annotation !8
  %19 = call zeroext i16 @nvbios_dp_table(ptr noundef %18, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9) #11
  %20 = icmp ne i16 %19, 0
  %21 = load i8, ptr %6, align 1
  %22 = icmp ugt i8 %21, 63
  %23 = select i1 %20, i1 %22, i1 false
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = zext i16 %19 to i32
  %26 = add nuw nsw i32 %25, 8
  %27 = call zeroext i8 @nvbios_rd08(ptr noundef %18, i32 noundef %26) #11
  %28 = and i8 %27, 4
  %29 = icmp ne i8 %28, 0
  br label %30

30:                                               ; preds = %24, %1
  %31 = phi i1 [ false, %1 ], [ %29, %24 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #11
  %32 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %33 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %32, i32 noundef 3520, i32 noundef 72) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %563, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.nv50_disp, ptr %33, i32 0, i32 4
  call void @__mutex_init(ptr noundef %36, ptr noundef nonnull @.str.5, ptr noundef nonnull @nv50_display_create.__key) #11
  %37 = load ptr, ptr %10, align 4
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 19
  %39 = load ptr, ptr %38, align 4
  store ptr %33, ptr %39, align 8
  %40 = load ptr, ptr %10, align 4
  %41 = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 19
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_display, ptr %42, i32 0, i32 1
  store ptr @nv50_display_destroy, ptr %43, align 4
  %44 = load ptr, ptr %10, align 4
  %45 = getelementptr inbounds %struct.nouveau_drm, ptr %44, i32 0, i32 19
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.nouveau_display, ptr %46, i32 0, i32 2
  store ptr @nv50_display_init, ptr %47, align 8
  %48 = load ptr, ptr %10, align 4
  %49 = getelementptr inbounds %struct.nouveau_drm, ptr %48, i32 0, i32 19
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nouveau_display, ptr %50, i32 0, i32 3
  store ptr @nv50_display_fini, ptr %51, align 4
  %52 = load ptr, ptr %10, align 4
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %52, i32 0, i32 19
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nouveau_display, ptr %54, i32 0, i32 4
  store ptr %55, ptr %33, align 8
  %56 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 27
  store ptr @nv50_disp_func, ptr %56, align 4
  %57 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 94
  store i8 1, ptr %57, align 1
  %58 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 98
  store i8 1, ptr %58, align 1
  %59 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2
  %60 = getelementptr inbounds %struct.nv50_disp, ptr %33, i32 0, i32 3
  %61 = call i32 @nouveau_bo_new(ptr noundef %59, i64 noundef 4096, i32 noundef 4096, i32 noundef 2, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef null, ptr noundef %60) #11
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %561

63:                                               ; preds = %35
  %64 = load ptr, ptr %60, align 8
  %65 = call i32 @nouveau_bo_pin(ptr noundef %64, i32 noundef 2, i1 noundef zeroext true) #11
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %63
  %68 = load ptr, ptr %60, align 8
  %69 = call i32 @nouveau_bo_map(ptr noundef %68) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %67
  %72 = load ptr, ptr %60, align 8
  %73 = call i32 @nouveau_bo_unpin(ptr noundef %72) #11
  br label %74

74:                                               ; preds = %71, %63
  %75 = phi i32 [ %69, %71 ], [ %65, %63 ]
  %76 = icmp eq ptr %60, null
  br i1 %76, label %561, label %77

77:                                               ; preds = %74
  %78 = load ptr, ptr %60, align 8
  store ptr null, ptr %60, align 8
  %79 = icmp eq ptr %78, null
  br i1 %79, label %561, label %80

80:                                               ; preds = %77
  call void @ttm_bo_put(ptr noundef nonnull %78) #11
  br label %561

81:                                               ; preds = %67
  %82 = getelementptr inbounds %struct.nv50_disp, ptr %33, i32 0, i32 1
  %83 = call i32 @nv50_core_new(ptr noundef %11, ptr noundef %82) #11
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %561

85:                                               ; preds = %81
  %86 = load ptr, ptr %82, align 4
  %87 = load ptr, ptr %86, align 8
  %88 = load ptr, ptr %87, align 4
  %89 = call i32 %88(ptr noundef %86) #11
  %90 = load ptr, ptr %82, align 4
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nv50_core_func, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %98, label %95

95:                                               ; preds = %85
  %96 = call i32 %93(ptr noundef %11, ptr noundef nonnull %33) #11
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %561

98:                                               ; preds = %95, %85
  %99 = load ptr, ptr %33, align 8
  %100 = getelementptr inbounds %struct.nvif_object, ptr %99, i32 0, i32 4
  %101 = load i32, ptr %100, align 8
  %102 = icmp sgt i32 %101, 50543
  br i1 %102, label %103, label %108

103:                                              ; preds = %98
  %104 = load ptr, ptr %10, align 4
  %105 = getelementptr inbounds %struct.nouveau_drm, ptr %104, i32 0, i32 19
  %106 = load ptr, ptr %105, align 4
  %107 = getelementptr inbounds %struct.nouveau_display, ptr %106, i32 0, i32 13
  store ptr @wndwc57e_modifiers, ptr %107, align 8
  br label %118

108:                                              ; preds = %98
  %109 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 1, i32 4
  %110 = load i8, ptr %109, align 1
  %111 = icmp ugt i8 %110, 6
  %112 = load ptr, ptr %10, align 4
  %113 = getelementptr inbounds %struct.nouveau_drm, ptr %112, i32 0, i32 19
  %114 = load ptr, ptr %113, align 4
  %115 = getelementptr inbounds %struct.nouveau_display, ptr %114, i32 0, i32 13
  br i1 %111, label %116, label %117

116:                                              ; preds = %108
  store ptr @disp90xx_modifiers, ptr %115, align 8
  br label %118

117:                                              ; preds = %108
  store ptr @disp50xx_modifiers, ptr %115, align 8
  br label %118

118:                                              ; preds = %117, %116, %103
  %119 = load ptr, ptr %33, align 8
  %120 = getelementptr inbounds %struct.nvif_object, ptr %119, i32 0, i32 4
  %121 = load i32, ptr %120, align 8
  %122 = icmp sgt i32 %121, 37999
  br i1 %122, label %123, label %125

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 100
  store i32 256, ptr %124, align 4
  br label %130

125:                                              ; preds = %118
  %126 = icmp sgt i32 %121, 37231
  %127 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 100
  br i1 %126, label %128, label %129

128:                                              ; preds = %125
  store i32 128, ptr %127, align 4
  br label %130

129:                                              ; preds = %125
  store i32 64, ptr %127, align 4
  br label %130

130:                                              ; preds = %129, %128, %123
  %131 = phi i32 [ 128, %128 ], [ 64, %129 ], [ 256, %123 ]
  %132 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 101
  store i32 %131, ptr %132, align 4
  %133 = load i32, ptr %120, align 8
  %134 = icmp sgt i32 %133, 50031
  br i1 %134, label %135, label %147

135:                                              ; preds = %130
  %136 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 0, i32 6
  %137 = load ptr, ptr %136, align 8
  %138 = icmp eq ptr %137, null
  br i1 %138, label %142, label %139, !prof !9

139:                                              ; preds = %135
  %140 = getelementptr i8, ptr %137, i32 6357088
  %141 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %140) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %144

142:                                              ; preds = %135
  %143 = call i32 @nvif_object_rd(ptr noundef %12, i32 noundef 4, i64 noundef 6357088) #11
  br label %144

144:                                              ; preds = %142, %139
  %145 = phi i32 [ %141, %139 ], [ %143, %142 ]
  %146 = and i32 %145, 255
  br label %161

147:                                              ; preds = %130
  %148 = icmp sgt i32 %133, 36975
  br i1 %148, label %149, label %166

149:                                              ; preds = %147
  %150 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 0, i32 6
  %151 = load ptr, ptr %150, align 8
  %152 = icmp eq ptr %151, null
  br i1 %152, label %156, label %153, !prof !9

153:                                              ; preds = %149
  %154 = getelementptr i8, ptr %151, i32 6365188
  %155 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #11, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !11
  br label %158

156:                                              ; preds = %149
  %157 = call i32 @nvif_object_rd(ptr noundef %12, i32 noundef 4, i64 noundef 6365188) #11
  br label %158

158:                                              ; preds = %156, %153
  %159 = phi i32 [ %155, %153 ], [ %157, %156 ]
  %160 = and i32 %159, 15
  br label %161

161:                                              ; preds = %158, %144
  %162 = phi i32 [ %146, %144 ], [ %160, %158 ]
  %163 = call i32 @llvm.ctlz.i32(i32 %162, i1 false) #11, !range !15
  %164 = sub nuw nsw i32 32, %163
  %165 = icmp eq i32 %162, 0
  br i1 %165, label %210, label %166

166:                                              ; preds = %161, %147
  %167 = phi i32 [ 2, %147 ], [ %164, %161 ]
  %168 = phi i32 [ 3, %147 ], [ %162, %161 ]
  br label %169

169:                                              ; preds = %207, %166
  %170 = phi i32 [ %208, %207 ], [ 0, %166 ]
  %171 = shl nuw i32 1, %170
  %172 = and i32 %171, %168
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %207, label %174

174:                                              ; preds = %169
  %175 = call ptr @nv50_head_create(ptr noundef %0, i32 noundef %170) #11
  %176 = icmp ugt ptr %175, inttoptr (i32 -4096 to ptr)
  br i1 %176, label %558, label %177

177:                                              ; preds = %174
  br i1 %31, label %178, label %207

178:                                              ; preds = %177
  %179 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %180 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %179, i32 noundef 3520, i32 noundef 84) #13
  %181 = icmp eq ptr %180, null
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = getelementptr inbounds %struct.nv50_head, ptr %175, i32 0, i32 4
  store ptr inttoptr (i32 -12 to ptr), ptr %183, align 8
  br label %202

184:                                              ; preds = %178
  %185 = call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %0, ptr noundef nonnull %180, ptr noundef nonnull @nv50_msto, i32 noundef 7, ptr noundef nonnull @.str.27, i32 noundef %170) #11
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %184
  call void @kfree(ptr noundef nonnull %180) #11
  %188 = inttoptr i32 %185 to ptr
  br label %196

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.drm_encoder, ptr %180, i32 0, i32 11
  store ptr @nv50_msto_help, ptr %190, align 4
  %191 = getelementptr inbounds %struct.nv50_head, ptr %175, i32 0, i32 1, i32 0, i32 8
  %192 = load i32, ptr %191, align 8
  %193 = shl nuw i32 1, %192
  %194 = getelementptr inbounds %struct.drm_encoder, ptr %180, i32 0, i32 6
  store i32 %193, ptr %194, align 4
  %195 = getelementptr inbounds %struct.nv50_msto, ptr %180, i32 0, i32 1
  store ptr %175, ptr %195, align 8
  br label %196

196:                                              ; preds = %189, %187
  %197 = phi ptr [ %188, %187 ], [ %180, %189 ]
  %198 = getelementptr inbounds %struct.nv50_head, ptr %175, i32 0, i32 4
  store ptr %197, ptr %198, align 8
  %199 = icmp ugt ptr %197, inttoptr (i32 -4096 to ptr)
  br i1 %199, label %200, label %205

200:                                              ; preds = %196
  %201 = getelementptr inbounds %struct.nv50_head, ptr %175, i32 0, i32 4
  br label %202

202:                                              ; preds = %200, %182
  %203 = phi ptr [ %183, %182 ], [ %201, %200 ]
  %204 = phi ptr [ inttoptr (i32 -12 to ptr), %182 ], [ %197, %200 ]
  store ptr null, ptr %203, align 8
  br label %558

205:                                              ; preds = %196
  %206 = getelementptr inbounds %struct.drm_encoder, ptr %197, i32 0, i32 6
  store i32 %168, ptr %206, align 4
  br label %207

207:                                              ; preds = %205, %177, %169
  %208 = add nuw nsw i32 %170, 1
  %209 = icmp eq i32 %208, %167
  br i1 %209, label %210, label %169

210:                                              ; preds = %207, %161
  %211 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 18, i32 22, i32 1
  %212 = load i32, ptr %211, align 4
  %213 = icmp sgt i32 %212, 0
  br i1 %213, label %214, label %519

214:                                              ; preds = %210
  %215 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 18, i32 22, i32 2
  %216 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 1
  %217 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 12
  br label %218

218:                                              ; preds = %514, %214
  %219 = phi ptr [ %215, %214 ], [ %516, %514 ]
  %220 = phi i32 [ 0, %214 ], [ %515, %514 ]
  %221 = call ptr @nouveau_connector_create(ptr noundef %0, ptr noundef %219) #11
  %222 = icmp ugt ptr %221, inttoptr (i32 -4096 to ptr)
  br i1 %222, label %514, label %223

223:                                              ; preds = %218
  %224 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 8
  %225 = load i8, ptr %224, align 4
  %226 = icmp eq i8 %225, 0
  br i1 %226, label %227, label %409

227:                                              ; preds = %223
  %228 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 3
  %229 = load i32, ptr %228, align 4
  switch i32 %229, label %497 [
    i32 2, label %230
    i32 3, label %230
    i32 6, label %230
    i32 0, label %370
  ]

230:                                              ; preds = %227, %227, %227
  %231 = load ptr, ptr %221, align 8
  %232 = getelementptr inbounds %struct.drm_device, ptr %231, i32 0, i32 5
  %233 = load ptr, ptr %232, align 4
  %234 = getelementptr inbounds %struct.nouveau_drm, ptr %233, i32 0, i32 2, i32 3, i32 0, i32 5
  %235 = load ptr, ptr %234, align 4
  %236 = getelementptr inbounds %struct.anon.236, ptr %235, i32 0, i32 1
  %237 = load ptr, ptr %236, align 8
  %238 = getelementptr inbounds %struct.nvkm_device, ptr %237, i32 0, i32 26
  %239 = load ptr, ptr %238, align 4
  %240 = getelementptr inbounds %struct.nouveau_drm, ptr %233, i32 0, i32 19
  %241 = load ptr, ptr %240, align 4
  %242 = load ptr, ptr %241, align 8
  %243 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %244 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %243, i32 noundef 3520, i32 noundef 344) #13
  %245 = icmp eq ptr %244, null
  br i1 %245, label %497, label %246

246:                                              ; preds = %230
  %247 = icmp eq i32 %229, 3
  %248 = select i1 %247, i32 3, i32 2
  %249 = getelementptr inbounds %struct.nouveau_encoder, ptr %244, i32 0, i32 1
  store ptr %219, ptr %249, align 4
  %250 = getelementptr inbounds %struct.nouveau_encoder, ptr %244, i32 0, i32 16
  store ptr @nv50_sor_update, ptr %250, align 4
  %251 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 5
  %252 = load i8, ptr %251, align 1
  %253 = zext i8 %252 to i32
  %254 = getelementptr inbounds %struct.drm_encoder, ptr %244, i32 0, i32 6
  store i32 %253, ptr %254, align 4
  %255 = getelementptr inbounds %struct.drm_encoder, ptr %244, i32 0, i32 7
  store i32 0, ptr %255, align 8
  %256 = load ptr, ptr %221, align 8
  %257 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 1
  %258 = load i16, ptr %257, align 4
  %259 = zext i16 %258 to i32
  %260 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 2
  %261 = load i16, ptr %260, align 2
  %262 = zext i16 %261 to i32
  %263 = call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %256, ptr noundef nonnull %244, ptr noundef nonnull @nv50_sor_func, i32 noundef %248, ptr noundef nonnull @.str.31, i32 noundef %259, i32 noundef %262) #11
  %264 = getelementptr inbounds %struct.drm_encoder, ptr %244, i32 0, i32 11
  store ptr @nv50_sor_help, ptr %264, align 4
  %265 = call i32 @drm_connector_attach_encoder(ptr noundef %221, ptr noundef nonnull %244) #11
  %266 = getelementptr inbounds %struct.nv50_disp, ptr %242, i32 0, i32 1
  %267 = load ptr, ptr %266, align 4
  %268 = load ptr, ptr %267, align 8
  %269 = getelementptr inbounds %struct.nv50_core_func, ptr %268, i32 0, i32 10
  %270 = load ptr, ptr %269, align 4
  %271 = getelementptr inbounds %struct.nv50_outp_func, ptr %270, i32 0, i32 1
  %272 = load ptr, ptr %271, align 4
  %273 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 9
  %274 = load i8, ptr %273, align 1
  %275 = call i8 @llvm.cttz.i8(i8 %274, i1 true) #11, !range !16
  %276 = zext i8 %275 to i32
  %277 = icmp eq i8 %274, 0
  %278 = select i1 %277, i32 -1, i32 %276
  call void %272(ptr noundef %242, ptr noundef nonnull %244, i32 noundef %278) #11
  %279 = load i32, ptr @__drm_debug, align 4
  %280 = and i32 %279, 2
  %281 = icmp eq i32 %280, 0
  br i1 %281, label %296, label %282

282:                                              ; preds = %246
  %283 = getelementptr inbounds %struct.nouveau_drm, ptr %233, i32 0, i32 2, i32 1
  %284 = load ptr, ptr %283, align 8
  %285 = getelementptr inbounds %struct.nouveau_drm, ptr %284, i32 0, i32 3
  %286 = load ptr, ptr %285, align 8
  %287 = getelementptr inbounds %struct.drm_device, ptr %286, i32 0, i32 2
  %288 = load ptr, ptr %287, align 4
  %289 = getelementptr inbounds %struct.nouveau_drm, ptr %233, i32 0, i32 2, i32 12
  %290 = getelementptr inbounds %struct.drm_encoder, ptr %244, i32 0, i32 3
  %291 = load ptr, ptr %290, align 8
  %292 = getelementptr inbounds %struct.nouveau_encoder, ptr %244, i32 0, i32 13
  %293 = load i8, ptr %292, align 8
  %294 = and i8 %293, 1
  %295 = zext i8 %294 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %288, ptr noundef nonnull @.str.36, ptr noundef %289, ptr noundef %291, i32 noundef %295) #12
  br label %296

296:                                              ; preds = %282, %246
  %297 = load i32, ptr %228, align 4
  %298 = icmp eq i32 %297, 6
  %299 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 4
  %300 = load i8, ptr %299, align 4
  %301 = zext i8 %300 to i32
  br i1 %298, label %302, label %364

302:                                              ; preds = %296
  %303 = call ptr @nvkm_i2c_aux_find(ptr noundef %239, i32 noundef %301) #11
  %304 = getelementptr inbounds %struct.nouveau_encoder, ptr %244, i32 0, i32 12
  %305 = getelementptr inbounds %struct.nouveau_encoder, ptr %244, i32 0, i32 12, i32 0, i32 3
  call void @__mutex_init(ptr noundef %305, ptr noundef nonnull @.str.32, ptr noundef nonnull @nv50_sor_create.__key) #11
  %306 = icmp eq ptr %303, null
  br i1 %306, label %317, label %307

307:                                              ; preds = %302
  %308 = load ptr, ptr %242, align 8
  %309 = getelementptr inbounds %struct.nvif_object, ptr %308, i32 0, i32 4
  %310 = load i32, ptr %309, align 8
  %311 = icmp slt i32 %310, 36976
  %312 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %303, i32 0, i32 5
  %313 = getelementptr inbounds %struct.nouveau_connector, ptr %221, i32 0, i32 5, i32 1
  %314 = select i1 %311, ptr %312, ptr %313
  %315 = getelementptr inbounds %struct.nouveau_encoder, ptr %244, i32 0, i32 4
  store ptr %314, ptr %315, align 8
  %316 = getelementptr inbounds %struct.nouveau_encoder, ptr %244, i32 0, i32 5
  store ptr %303, ptr %316, align 4
  br label %317

317:                                              ; preds = %307, %302
  %318 = getelementptr inbounds %struct.nouveau_connector, ptr %221, i32 0, i32 1
  %319 = load i32, ptr %318, align 8
  %320 = icmp eq i32 %319, 71
  br i1 %320, label %514, label %321

321:                                              ; preds = %317
  %322 = load ptr, ptr %234, align 4
  %323 = getelementptr inbounds %struct.anon.230, ptr %322, i32 0, i32 1
  %324 = load ptr, ptr %323, align 8
  %325 = getelementptr inbounds %struct.nvkm_device, ptr %324, i32 0, i32 21
  %326 = load ptr, ptr %325, align 8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #11
  store i8 0, ptr %2, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 0, ptr %3, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #11
  store i8 0, ptr %4, align 1, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #11
  store i8 0, ptr %5, align 1, !annotation !8
  %327 = call zeroext i16 @nvbios_dp_table(ptr noundef %326, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #11
  %328 = icmp ne i16 %327, 0
  %329 = load i8, ptr %2, align 1
  %330 = icmp ugt i8 %329, 63
  %331 = select i1 %328, i1 %330, i1 false
  br i1 %331, label %333, label %332

332:                                              ; preds = %321
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br label %514

333:                                              ; preds = %321
  %334 = zext i16 %327 to i32
  %335 = add nuw nsw i32 %334, 8
  %336 = call zeroext i8 @nvbios_rd08(ptr noundef %326, i32 noundef %335) #11
  %337 = and i8 %336, 4
  %338 = icmp eq i8 %337, 0
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #11
  br i1 %338, label %514, label %339

339:                                              ; preds = %333
  %340 = getelementptr inbounds %struct.drm_connector, ptr %221, i32 0, i32 6
  %341 = load i32, ptr %340, align 8
  %342 = load ptr, ptr %249, align 4
  %343 = getelementptr inbounds %struct.dcb_output, ptr %342, i32 0, i32 5
  %344 = load i8, ptr %343, align 1
  %345 = zext i8 %344 to i32
  %346 = call i32 @__sw_hweight8(i32 noundef %345) #11
  %347 = load ptr, ptr %244, align 8
  %348 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %349 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %348, i32 noundef 3520, i32 noundef 1028) #13
  store ptr %349, ptr %304, align 4
  %350 = icmp eq ptr %349, null
  br i1 %350, label %497, label %351

351:                                              ; preds = %339
  %352 = getelementptr inbounds %struct.nouveau_connector, ptr %221, i32 0, i32 5
  store ptr %244, ptr %349, align 8
  %353 = getelementptr inbounds %struct.nv50_mstm, ptr %349, i32 0, i32 1
  %354 = getelementptr inbounds %struct.nv50_mstm, ptr %349, i32 0, i32 1, i32 2
  store ptr @nv50_mstm, ptr %354, align 8
  %355 = load ptr, ptr %249, align 4
  %356 = getelementptr inbounds %struct.dcb_output, ptr %355, i32 0, i32 13, i32 0, i32 1
  %357 = load i32, ptr %356, align 4
  %358 = getelementptr inbounds %struct.dcb_output, ptr %355, i32 0, i32 13, i32 0, i32 2
  %359 = load i32, ptr %358, align 4
  %360 = trunc i32 %359 to i8
  %361 = call i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext %360) #11
  %362 = call i32 @drm_dp_mst_topology_mgr_init(ptr noundef %353, ptr noundef %347, ptr noundef %352, i32 noundef 16, i32 noundef %346, i32 noundef %357, i32 noundef %361, i32 noundef %341) #11
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %514, label %497

364:                                              ; preds = %296
  %365 = call ptr @nvkm_i2c_bus_find(ptr noundef %239, i32 noundef %301) #11
  %366 = icmp eq ptr %365, null
  br i1 %366, label %514, label %367

367:                                              ; preds = %364
  %368 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %365, i32 0, i32 5
  %369 = getelementptr inbounds %struct.nouveau_encoder, ptr %244, i32 0, i32 4
  store ptr %368, ptr %369, align 8
  br label %514

370:                                              ; preds = %227
  %371 = load ptr, ptr %221, align 8
  %372 = getelementptr inbounds %struct.drm_device, ptr %371, i32 0, i32 5
  %373 = load ptr, ptr %372, align 4
  %374 = getelementptr inbounds %struct.nouveau_drm, ptr %373, i32 0, i32 2, i32 3, i32 0, i32 5
  %375 = load ptr, ptr %374, align 4
  %376 = getelementptr inbounds %struct.anon.246, ptr %375, i32 0, i32 1
  %377 = load ptr, ptr %376, align 8
  %378 = getelementptr inbounds %struct.nvkm_device, ptr %377, i32 0, i32 26
  %379 = load ptr, ptr %378, align 4
  %380 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %381 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %380, i32 noundef 3520, i32 noundef 344) #13
  %382 = icmp eq ptr %381, null
  br i1 %382, label %497, label %383

383:                                              ; preds = %370
  %384 = getelementptr inbounds %struct.nouveau_encoder, ptr %381, i32 0, i32 1
  store ptr %219, ptr %384, align 4
  %385 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 4
  %386 = load i8, ptr %385, align 4
  %387 = zext i8 %386 to i32
  %388 = call ptr @nvkm_i2c_bus_find(ptr noundef %379, i32 noundef %387) #11
  %389 = icmp eq ptr %388, null
  br i1 %389, label %393, label %390

390:                                              ; preds = %383
  %391 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %388, i32 0, i32 5
  %392 = getelementptr inbounds %struct.nouveau_encoder, ptr %381, i32 0, i32 4
  store ptr %391, ptr %392, align 8
  br label %393

393:                                              ; preds = %390, %383
  %394 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 5
  %395 = load i8, ptr %394, align 1
  %396 = zext i8 %395 to i32
  %397 = getelementptr inbounds %struct.drm_encoder, ptr %381, i32 0, i32 6
  store i32 %396, ptr %397, align 4
  %398 = getelementptr inbounds %struct.drm_encoder, ptr %381, i32 0, i32 7
  store i32 0, ptr %398, align 8
  %399 = load ptr, ptr %221, align 8
  %400 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 1
  %401 = load i16, ptr %400, align 4
  %402 = zext i16 %401 to i32
  %403 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 2
  %404 = load i16, ptr %403, align 2
  %405 = zext i16 %404 to i32
  %406 = call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %399, ptr noundef nonnull %381, ptr noundef nonnull @nv50_dac_func, i32 noundef 1, ptr noundef nonnull @.str.37, i32 noundef %402, i32 noundef %405) #11
  %407 = getelementptr inbounds %struct.drm_encoder, ptr %381, i32 0, i32 11
  store ptr @nv50_dac_help, ptr %407, align 4
  %408 = call i32 @drm_connector_attach_encoder(ptr noundef %221, ptr noundef nonnull %381) #11
  br label %514

409:                                              ; preds = %223
  %410 = load ptr, ptr %221, align 8
  %411 = getelementptr inbounds %struct.drm_device, ptr %410, i32 0, i32 5
  %412 = load ptr, ptr %411, align 4
  %413 = getelementptr inbounds %struct.nouveau_drm, ptr %412, i32 0, i32 19
  %414 = load ptr, ptr %413, align 4
  %415 = load ptr, ptr %414, align 8
  %416 = getelementptr inbounds %struct.nouveau_drm, ptr %412, i32 0, i32 2, i32 3, i32 0, i32 5
  %417 = load ptr, ptr %416, align 4
  %418 = getelementptr inbounds %struct.anon.248, ptr %417, i32 0, i32 1
  %419 = load ptr, ptr %418, align 8
  %420 = getelementptr inbounds %struct.nvkm_device, ptr %419, i32 0, i32 26
  %421 = load ptr, ptr %420, align 4
  %422 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 3
  %423 = load i32, ptr %422, align 4
  switch i32 %423, label %497 [
    i32 2, label %424
    i32 6, label %433
  ]

424:                                              ; preds = %409
  %425 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 12
  %426 = load i8, ptr %425, align 4
  %427 = zext i8 %426 to i32
  %428 = or i32 %427, 256
  %429 = call ptr @nvkm_i2c_bus_find(ptr noundef %421, i32 noundef %428) #11
  %430 = icmp eq ptr %429, null
  %431 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %429, i32 0, i32 5
  %432 = select i1 %430, ptr null, ptr %431
  br label %442

433:                                              ; preds = %409
  %434 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 12
  %435 = load i8, ptr %434, align 4
  %436 = zext i8 %435 to i32
  %437 = or i32 %436, 256
  %438 = call ptr @nvkm_i2c_aux_find(ptr noundef %421, i32 noundef %437) #11
  %439 = icmp eq ptr %438, null
  %440 = getelementptr inbounds %struct.nvkm_i2c_aux, ptr %438, i32 0, i32 5
  %441 = select i1 %439, ptr null, ptr %440
  br label %442

442:                                              ; preds = %433, %424
  %443 = phi ptr [ %438, %433 ], [ null, %424 ]
  %444 = phi ptr [ %441, %433 ], [ %432, %424 ]
  %445 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %446 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %445, i32 noundef 3520, i32 noundef 344) #13
  %447 = icmp eq ptr %446, null
  br i1 %447, label %497, label %448

448:                                              ; preds = %442
  %449 = getelementptr inbounds %struct.nouveau_encoder, ptr %446, i32 0, i32 1
  store ptr %219, ptr %449, align 4
  %450 = getelementptr inbounds %struct.nouveau_encoder, ptr %446, i32 0, i32 4
  store ptr %444, ptr %450, align 8
  %451 = getelementptr inbounds %struct.nouveau_encoder, ptr %446, i32 0, i32 5
  store ptr %443, ptr %451, align 4
  %452 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 5
  %453 = load i8, ptr %452, align 1
  %454 = zext i8 %453 to i32
  %455 = getelementptr inbounds %struct.drm_encoder, ptr %446, i32 0, i32 6
  store i32 %454, ptr %455, align 4
  %456 = getelementptr inbounds %struct.drm_encoder, ptr %446, i32 0, i32 7
  store i32 0, ptr %456, align 8
  %457 = load ptr, ptr %221, align 8
  %458 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 1
  %459 = load i16, ptr %458, align 4
  %460 = zext i16 %459 to i32
  %461 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 2
  %462 = load i16, ptr %461, align 2
  %463 = zext i16 %462 to i32
  %464 = call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %457, ptr noundef nonnull %446, ptr noundef nonnull @nv50_pior_func, i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %460, i32 noundef %463) #11
  %465 = getelementptr inbounds %struct.drm_encoder, ptr %446, i32 0, i32 11
  store ptr @nv50_pior_help, ptr %465, align 4
  %466 = call i32 @drm_connector_attach_encoder(ptr noundef %221, ptr noundef nonnull %446) #11
  %467 = getelementptr inbounds %struct.nv50_disp, ptr %415, i32 0, i32 1
  %468 = load ptr, ptr %467, align 4
  %469 = load ptr, ptr %468, align 8
  %470 = getelementptr inbounds %struct.nv50_core_func, ptr %469, i32 0, i32 9
  %471 = load ptr, ptr %470, align 4
  %472 = getelementptr inbounds %struct.nv50_outp_func, ptr %471, i32 0, i32 1
  %473 = load ptr, ptr %472, align 4
  %474 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 9
  %475 = load i8, ptr %474, align 1
  %476 = call i8 @llvm.cttz.i8(i8 %475, i1 true) #11, !range !16
  %477 = zext i8 %476 to i32
  %478 = icmp eq i8 %475, 0
  %479 = select i1 %478, i32 -1, i32 %477
  call void %473(ptr noundef %415, ptr noundef nonnull %446, i32 noundef %479) #11
  %480 = load i32, ptr @__drm_debug, align 4
  %481 = and i32 %480, 2
  %482 = icmp eq i32 %481, 0
  br i1 %482, label %514, label %483

483:                                              ; preds = %448
  %484 = getelementptr inbounds %struct.nouveau_drm, ptr %412, i32 0, i32 2, i32 1
  %485 = load ptr, ptr %484, align 8
  %486 = getelementptr inbounds %struct.nouveau_drm, ptr %485, i32 0, i32 3
  %487 = load ptr, ptr %486, align 8
  %488 = getelementptr inbounds %struct.drm_device, ptr %487, i32 0, i32 2
  %489 = load ptr, ptr %488, align 4
  %490 = getelementptr inbounds %struct.nouveau_drm, ptr %412, i32 0, i32 2, i32 12
  %491 = getelementptr inbounds %struct.drm_encoder, ptr %446, i32 0, i32 3
  %492 = load ptr, ptr %491, align 8
  %493 = getelementptr inbounds %struct.nouveau_encoder, ptr %446, i32 0, i32 13
  %494 = load i8, ptr %493, align 8
  %495 = and i8 %494, 1
  %496 = zext i8 %495 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %489, ptr noundef nonnull @.str.36, ptr noundef %490, ptr noundef %492, i32 noundef %496) #12
  br label %514

497:                                              ; preds = %442, %409, %370, %351, %339, %230, %227
  %498 = phi i32 [ -19, %227 ], [ -12, %230 ], [ -12, %370 ], [ -19, %409 ], [ -12, %442 ], [ %362, %351 ], [ -12, %339 ]
  %499 = load ptr, ptr %216, align 8
  %500 = getelementptr inbounds %struct.nouveau_drm, ptr %499, i32 0, i32 3
  %501 = load ptr, ptr %500, align 8
  %502 = getelementptr inbounds %struct.drm_device, ptr %501, i32 0, i32 2
  %503 = load ptr, ptr %502, align 4
  %504 = load i8, ptr %224, align 4
  %505 = zext i8 %504 to i32
  %506 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 3
  %507 = load i32, ptr %506, align 4
  %508 = getelementptr inbounds %struct.dcb_output, ptr %219, i32 0, i32 9
  %509 = load i8, ptr %508, align 1
  %510 = call i8 @llvm.cttz.i8(i8 %509, i1 true), !range !16
  %511 = zext i8 %510 to i32
  %512 = icmp eq i8 %509, 0
  %513 = select i1 %512, i32 -1, i32 %511
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %503, ptr noundef nonnull @.str.6, ptr noundef %217, i32 noundef %505, i32 noundef %507, i32 noundef %513, i32 noundef %498) #12
  br label %514

514:                                              ; preds = %497, %483, %448, %393, %367, %364, %351, %333, %332, %317, %218
  %515 = add nuw nsw i32 %220, 1
  %516 = getelementptr %struct.dcb_output, ptr %219, i32 1
  %517 = load i32, ptr %211, align 4
  %518 = icmp slt i32 %515, %517
  br i1 %518, label %218, label %519

519:                                              ; preds = %514, %210
  %520 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 12
  %521 = load ptr, ptr %520, align 4
  %522 = icmp eq ptr %521, %520
  br i1 %522, label %547, label %523

523:                                              ; preds = %519
  %524 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 1
  %525 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 12
  br label %526

526:                                              ; preds = %545, %523
  %527 = phi ptr [ %521, %523 ], [ %528, %545 ]
  %528 = load ptr, ptr %527, align 8
  %529 = getelementptr i8, ptr %527, i32 728
  %530 = load i32, ptr %529, align 8
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %532, label %545

532:                                              ; preds = %526
  %533 = getelementptr i8, ptr %527, i32 -16
  %534 = load ptr, ptr %524, align 8
  %535 = getelementptr inbounds %struct.nouveau_drm, ptr %534, i32 0, i32 3
  %536 = load ptr, ptr %535, align 8
  %537 = getelementptr inbounds %struct.drm_device, ptr %536, i32 0, i32 2
  %538 = load ptr, ptr %537, align 4
  %539 = getelementptr i8, ptr %527, i32 36
  %540 = load ptr, ptr %539, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %538, ptr noundef nonnull @.str.7, ptr noundef %525, ptr noundef %540) #12
  %541 = getelementptr i8, ptr %527, i32 264
  %542 = load ptr, ptr %541, align 8
  %543 = getelementptr inbounds %struct.drm_connector_funcs, ptr %542, i32 0, i32 8
  %544 = load ptr, ptr %543, align 4
  call void %544(ptr noundef %533) #11
  br label %545

545:                                              ; preds = %532, %526
  %546 = icmp eq ptr %528, %520
  br i1 %546, label %547, label %526

547:                                              ; preds = %545, %519
  %548 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 22
  store i8 1, ptr %548, align 4
  %549 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 3
  %550 = load ptr, ptr %549, align 8
  %551 = getelementptr inbounds %struct.drm_device, ptr %550, i32 0, i32 2
  %552 = load ptr, ptr %551, align 4
  %553 = call i32 @component_add(ptr noundef %552, ptr noundef nonnull @nv50_audio_component_bind_ops) #11
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %555, label %563

555:                                              ; preds = %547
  %556 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 31, i32 2
  store i8 1, ptr %556, align 8
  %557 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 31, i32 1
  call void @__mutex_init(ptr noundef %557, ptr noundef nonnull @.str.39, ptr noundef nonnull @nv50_audio_component_init.__key) #11
  br label %563

558:                                              ; preds = %202, %174
  %559 = phi ptr [ %204, %202 ], [ %175, %174 ]
  %560 = ptrtoint ptr %559 to i32
  br label %561

561:                                              ; preds = %558, %95, %81, %80, %77, %74, %35
  %562 = phi i32 [ %560, %558 ], [ %96, %95 ], [ %83, %81 ], [ %75, %80 ], [ %75, %77 ], [ %75, %74 ], [ %61, %35 ]
  call void @nv50_display_destroy(ptr noundef %0)
  br label %563

563:                                              ; preds = %561, %555, %547, %30
  %564 = phi i32 [ -12, %30 ], [ %562, %561 ], [ 0, %547 ], [ 0, %555 ]
  ret i32 %564
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_display_destroy(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 19
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 31, i32 2
  %8 = load i8, ptr %7, align 8, !range !14
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %3, i32 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  tail call void @component_del(ptr noundef %14, ptr noundef nonnull @nv50_audio_component_bind_ops) #11
  store i8 0, ptr %7, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = getelementptr inbounds %struct.nv50_disp, ptr %6, i32 0, i32 2
  tail call void @nvif_object_unmap(ptr noundef %16) #11
  tail call void @nvif_object_dtor(ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.nv50_disp, ptr %6, i32 0, i32 1
  tail call void @nv50_core_del(ptr noundef %17) #11
  %18 = getelementptr inbounds %struct.nv50_disp, ptr %6, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  tail call void @nouveau_bo_unmap(ptr noundef %19) #11
  %20 = load ptr, ptr %18, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = tail call i32 @nouveau_bo_unpin(ptr noundef nonnull %20) #11
  br label %24

24:                                               ; preds = %22, %15
  %25 = icmp eq ptr %18, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %18, align 4
  store ptr null, ptr %18, align 4
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  tail call void @ttm_bo_put(ptr noundef nonnull %27) #11
  br label %30

30:                                               ; preds = %29, %26, %24
  %31 = load ptr, ptr %2, align 4
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %31, i32 0, i32 19
  %33 = load ptr, ptr %32, align 4
  store ptr null, ptr %33, align 8
  tail call void @kfree(ptr noundef %6) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_display_init(ptr noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = or i1 %1, %2
  br i1 %4, label %5, label %16

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.nv50_disp, ptr %10, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 %14(ptr noundef %12) #11
  br label %16

16:                                               ; preds = %5, %3
  %17 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %52, label %20

20:                                               ; preds = %16
  %21 = xor i1 %2, true
  br label %22

22:                                               ; preds = %49, %20
  %23 = phi ptr [ %18, %20 ], [ %50, %49 ]
  %24 = getelementptr i8, ptr %23, i32 32
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 7
  br i1 %26, label %49, label %27

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %23, i32 240
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %49, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.nv50_mstm, ptr %29, i32 0, i32 3
  %33 = load i8, ptr %32, align 1, !range !14
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %41, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nv50_mstm, ptr %29, i32 0, i32 1
  %37 = tail call i32 @drm_dp_mst_topology_mgr_resume(ptr noundef %36, i1 noundef zeroext %21) #11
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %41

39:                                               ; preds = %35
  store i8 0, ptr %32, align 1
  %40 = tail call i32 @drm_dp_mst_topology_mgr_set_mst(ptr noundef %36, i1 noundef zeroext false) #11
  br label %41

41:                                               ; preds = %39, %35, %31
  %42 = phi i32 [ -1, %39 ], [ %37, %35 ], [ 0, %31 ]
  %43 = getelementptr i8, ptr %23, i32 252
  tail call void @mutex_lock(ptr noundef %43) #11
  %44 = getelementptr inbounds %struct.nv50_mstm, ptr %29, i32 0, i32 4
  store i8 0, ptr %44, align 2
  tail call void @mutex_unlock(ptr noundef %43) #11
  %45 = icmp eq i32 %42, -1
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.nv50_mstm, ptr %29, i32 0, i32 1, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void @drm_kms_helper_hotplug_event(ptr noundef %48) #11
  br label %49

49:                                               ; preds = %46, %41, %27, %22
  %50 = load ptr, ptr %23, align 4
  %51 = icmp eq ptr %50, %17
  br i1 %51, label %52, label %22

52:                                               ; preds = %49, %16
  %53 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 18
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %66, label %56

56:                                               ; preds = %63, %52
  %57 = phi ptr [ %64, %63 ], [ %54, %52 ]
  %58 = getelementptr i8, ptr %57, i32 100
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, @nv50_wndw
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = getelementptr i8, ptr %57, i32 -44
  tail call void @nv50_wndw_init(ptr noundef %62) #11
  br label %63

63:                                               ; preds = %61, %56
  %64 = load ptr, ptr %57, align 4
  %65 = icmp eq ptr %64, %53
  br i1 %65, label %66, label %56

66:                                               ; preds = %63, %52
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_display_fini(ptr noundef readonly %0, i1 noundef zeroext %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 18
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %19, label %9

9:                                                ; preds = %16, %3
  %10 = phi ptr [ %17, %16 ], [ %7, %3 ]
  %11 = getelementptr i8, ptr %10, i32 100
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, @nv50_wndw
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %10, i32 -44
  tail call void @nv50_wndw_fini(ptr noundef %15) #11
  br label %16

16:                                               ; preds = %14, %9
  %17 = load ptr, ptr %10, align 4
  %18 = icmp eq ptr %17, %6
  br i1 %18, label %19, label %9

19:                                               ; preds = %16, %3
  %20 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 16
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, %20
  br i1 %22, label %43, label %23

23:                                               ; preds = %40, %19
  %24 = phi ptr [ %41, %40 ], [ %21, %19 ]
  %25 = getelementptr i8, ptr %24, i32 32
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 7
  br i1 %27, label %40, label %28

28:                                               ; preds = %23
  %29 = getelementptr i8, ptr %24, i32 240
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %24, i32 252
  tail call void @mutex_lock(ptr noundef %33) #11
  %34 = getelementptr inbounds %struct.nv50_mstm, ptr %30, i32 0, i32 4
  store i8 1, ptr %34, align 2
  tail call void @mutex_unlock(ptr noundef %33) #11
  %35 = getelementptr inbounds %struct.nv50_mstm, ptr %30, i32 0, i32 3
  %36 = load i8, ptr %35, align 1, !range !14
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.nv50_mstm, ptr %30, i32 0, i32 1
  tail call void @drm_dp_mst_topology_mgr_suspend(ptr noundef %39) #11
  br label %40

40:                                               ; preds = %38, %32, %28, %23
  %41 = load ptr, ptr %24, align 4
  %42 = icmp eq ptr %41, %20
  br i1 %42, label %43, label %23

43:                                               ; preds = %40, %19
  br i1 %1, label %47, label %44

44:                                               ; preds = %43
  %45 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 20
  %46 = tail call zeroext i1 @cancel_work_sync(ptr noundef %45) #11
  br label %47

47:                                               ; preds = %44, %43
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_new(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_pin(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_map(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bo_unpin(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_core_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv50_head_create(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_connector_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_timer_wait_init(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nvif_timer_wait_test(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_sclass_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_sclass_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_mthd(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @nvbios_dp_table(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @nvbios_rd08(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_core_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_bo_unmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_audio_component_bind(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = tail call ptr @device_link_add(ptr noundef %1, ptr noundef %0, i32 noundef 1) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %3
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 671, i32 noundef 9, ptr noundef null) #11
  br label %14

11:                                               ; preds = %3
  tail call void @drm_modeset_lock_all(ptr noundef %5) #11
  %12 = getelementptr inbounds %struct.drm_audio_component, ptr %2, i32 0, i32 1
  store ptr @nv50_audio_component_ops, ptr %12, align 4
  store ptr %0, ptr %2, align 4
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 31
  store ptr %2, ptr %13, align 8
  tail call void @drm_modeset_unlock_all(ptr noundef %5) #11
  br label %14

14:                                               ; preds = %11, %10
  %15 = phi i32 [ -12, %10 ], [ 0, %11 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_audio_component_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  tail call void @drm_modeset_lock_all(ptr noundef %5) #11
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 31
  store ptr null, ptr %8, align 8
  %9 = getelementptr inbounds %struct.drm_audio_component, ptr %2, i32 0, i32 1
  store ptr null, ptr %9, align 4
  store ptr null, ptr %2, align 4
  tail call void @drm_modeset_unlock_all(ptr noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_link_add(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_lock_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_unlock_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_audio_component_get_eld(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  store i8 0, ptr %3, align 1
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 31, i32 1
  tail call void @mutex_lock(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_device, ptr %13, i32 0, i32 30, i32 16
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %51, label %17

17:                                               ; preds = %48, %6
  %18 = phi ptr [ %49, %48 ], [ %15, %6 ]
  %19 = getelementptr i8, ptr %18, i32 32
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 7
  br i1 %21, label %48, label %22

22:                                               ; preds = %17
  %23 = getelementptr i8, ptr %18, i32 100
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %48, label %26

26:                                               ; preds = %22
  %27 = getelementptr i8, ptr %18, i32 84
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, %1
  br i1 %29, label %30, label %48

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.nouveau_crtc, ptr %24, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, %2
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = getelementptr i8, ptr %18, i32 108
  %36 = getelementptr i8, ptr %18, i32 112
  %37 = load ptr, ptr %36, align 4
  %38 = load i8, ptr %35, align 4, !range !14
  %39 = icmp eq i8 %38, 0
  store i8 %38, ptr %3, align 1
  br i1 %39, label %51, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.drm_connector, ptr %37, i32 0, i32 42
  %42 = getelementptr %struct.drm_connector, ptr %37, i32 0, i32 42, i32 2
  %43 = load i8, ptr %42, align 1
  %44 = zext i8 %43 to i32
  %45 = shl nuw nsw i32 %44, 2
  %46 = add nuw nsw i32 %45, 4
  %47 = tail call i32 @llvm.smin.i32(i32 %46, i32 %5)
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 1 %4, ptr align 8 %41, i32 %47, i1 false)
  br label %51

48:                                               ; preds = %30, %26, %22, %17
  %49 = load ptr, ptr %18, align 4
  %50 = icmp eq ptr %49, %14
  br i1 %50, label %51, label %17

51:                                               ; preds = %48, %40, %34, %6
  %52 = phi i32 [ 0, %34 ], [ %46, %40 ], [ 0, %6 ], [ 0, %48 ]
  tail call void @mutex_unlock(ptr noundef %11) #11
  ret i32 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_wndw_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_resume(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_hotplug_event(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_wndw_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_topology_mgr_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_user_framebuffer_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_fbcon_output_poll_changed(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_atomic_check(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nv50_disp, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nv50_core, ptr %9, i32 0, i32 2
  %11 = load i8, ptr %10, align 8, !range !14
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %40, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %9, align 8
  %15 = getelementptr inbounds %struct.nv50_core_func, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.nv50_head_func, ptr %16, i32 0, i32 20
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %40, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 20
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %21
  br i1 %23, label %40, label %24

24:                                               ; preds = %31, %20
  %25 = phi ptr [ %38, %31 ], [ %22, %20 ]
  %26 = getelementptr i8, ptr %25, i32 -8
  %27 = tail call ptr @drm_atomic_get_crtc_state(ptr noundef %1, ptr noundef %26) #11
  %28 = icmp ugt ptr %27, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = ptrtoint ptr %27 to i32
  br label %206

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %25, i32 -16
  %33 = load ptr, ptr %9, align 8
  %34 = getelementptr inbounds %struct.nv50_core_func, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.nv50_head_func, ptr %35, i32 0, i32 20
  %37 = load ptr, ptr %36, align 4
  tail call void %37(ptr noundef %32, ptr noundef %27) #11
  %38 = load ptr, ptr %25, align 4
  %39 = icmp eq ptr %38, %21
  br i1 %39, label %40, label %24

40:                                               ; preds = %31, %20, %13, %2
  %41 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.drm_device, ptr %42, i32 0, i32 30, i32 19
  %44 = load i32, ptr %43, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  br label %48

48:                                               ; preds = %67, %46
  %49 = phi ptr [ %42, %46 ], [ %68, %67 ]
  %50 = phi i32 [ 0, %46 ], [ %69, %67 ]
  %51 = load ptr, ptr %47, align 4
  %52 = getelementptr %struct.__drm_crtcs_state, ptr %51, i32 %50
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %67, label %55

55:                                               ; preds = %48
  %56 = getelementptr %struct.__drm_crtcs_state, ptr %51, i32 %50, i32 3
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.drm_crtc_state, ptr %57, i32 0, i32 3
  %59 = load i8, ptr %58, align 2
  %60 = and i8 %59, 32
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %55
  %63 = tail call i32 @drm_atomic_add_affected_planes(ptr noundef %1, ptr noundef nonnull %53) #11
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %206

65:                                               ; preds = %62
  %66 = load ptr, ptr %41, align 4
  br label %67

67:                                               ; preds = %65, %55, %48
  %68 = phi ptr [ %66, %65 ], [ %49, %48 ], [ %49, %55 ]
  %69 = add nuw nsw i32 %50, 1
  %70 = getelementptr inbounds %struct.drm_device, ptr %68, i32 0, i32 30, i32 19
  %71 = load i32, ptr %70, align 4
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %48, label %73

73:                                               ; preds = %67, %40
  %74 = tail call i32 @drm_atomic_helper_check(ptr noundef %0, ptr noundef %1) #11
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %206

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %196

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %82 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %83 = getelementptr inbounds %struct.nv50_atom, ptr %1, i32 0, i32 1
  %84 = getelementptr inbounds %struct.nv50_atom, ptr %1, i32 0, i32 3
  %85 = getelementptr inbounds %struct.nv50_atom, ptr %1, i32 0, i32 2
  br label %86

86:                                               ; preds = %192, %80
  %87 = phi i32 [ 0, %80 ], [ %193, %192 ]
  %88 = load ptr, ptr %81, align 4
  %89 = getelementptr %struct.__drm_connnectors_state, ptr %88, i32 %87
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %192, label %92

92:                                               ; preds = %86
  %93 = getelementptr %struct.__drm_connnectors_state, ptr %88, i32 %87, i32 2
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr %struct.__drm_connnectors_state, ptr %88, i32 %87, i32 3
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.drm_connector_state, ptr %94, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.drm_connector_state, ptr %94, i32 0, i32 1
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %148, label %102

102:                                              ; preds = %92
  %103 = load ptr, ptr %82, align 4
  %104 = getelementptr inbounds %struct.drm_crtc, ptr %100, i32 0, i32 8
  %105 = load i32, ptr %104, align 8
  %106 = getelementptr %struct.__drm_crtcs_state, ptr %103, i32 %105, i32 2
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.drm_crtc_state, ptr %107, i32 0, i32 2
  %109 = load i8, ptr %108, align 1, !range !14
  %110 = icmp eq i8 %109, 0
  br i1 %110, label %148, label %111

111:                                              ; preds = %102
  %112 = getelementptr %struct.__drm_crtcs_state, ptr %103, i32 %105, i32 3
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.drm_crtc_state, ptr %113, i32 0, i32 3
  %115 = load i8, ptr %114, align 2
  %116 = and i8 %115, 14
  %117 = icmp eq i8 %116, 0
  br i1 %117, label %148, label %118

118:                                              ; preds = %122, %111
  %119 = phi ptr [ %120, %122 ], [ %83, %111 ]
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, %83
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.nv50_outp_atom, ptr %120, i32 0, i32 1
  %124 = load ptr, ptr %123, align 4
  %125 = icmp eq ptr %124, %98
  br i1 %125, label %135, label %118

126:                                              ; preds = %118
  %127 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %128 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %127, i32 noundef 3520, i32 noundef 16) #13
  %129 = icmp eq ptr %128, null
  br i1 %129, label %200, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %83, align 4
  %132 = getelementptr inbounds %struct.list_head, ptr %131, i32 0, i32 1
  store ptr %128, ptr %132, align 4
  store ptr %131, ptr %128, align 8
  %133 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  store ptr %83, ptr %133, align 4
  store volatile ptr %128, ptr %83, align 4
  %134 = getelementptr inbounds %struct.nv50_outp_atom, ptr %128, i32 0, i32 1
  store ptr %98, ptr %134, align 8
  br label %135

135:                                              ; preds = %130, %122
  %136 = phi ptr [ %128, %130 ], [ %120, %122 ]
  %137 = icmp ugt ptr %136, inttoptr (i32 -4096 to ptr)
  br i1 %137, label %200, label %138

138:                                              ; preds = %135
  %139 = getelementptr inbounds %struct.drm_encoder, ptr %98, i32 0, i32 4
  %140 = load i32, ptr %139, align 4
  %141 = icmp eq i32 %140, 7
  br i1 %141, label %142, label %144

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.nv50_outp_atom, ptr %136, i32 0, i32 2
  store i8 1, ptr %143, align 4
  store i8 1, ptr %84, align 1
  br label %144

144:                                              ; preds = %142, %138
  %145 = getelementptr inbounds %struct.nv50_outp_atom, ptr %136, i32 0, i32 4
  %146 = load i8, ptr %145, align 2
  %147 = or i8 %146, 1
  store i8 %147, ptr %145, align 2
  store i8 1, ptr %85, align 4
  br label %148

148:                                              ; preds = %144, %111, %102, %92
  %149 = getelementptr inbounds %struct.drm_connector_state, ptr %96, i32 0, i32 2
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.drm_connector_state, ptr %96, i32 0, i32 1
  %152 = load ptr, ptr %151, align 4
  %153 = icmp eq ptr %152, null
  br i1 %153, label %192, label %154

154:                                              ; preds = %148
  %155 = load ptr, ptr %82, align 4
  %156 = getelementptr inbounds %struct.drm_crtc, ptr %152, i32 0, i32 8
  %157 = load i32, ptr %156, align 8
  %158 = getelementptr %struct.__drm_crtcs_state, ptr %155, i32 %157, i32 3
  %159 = load ptr, ptr %158, align 4
  %160 = getelementptr inbounds %struct.drm_crtc_state, ptr %159, i32 0, i32 2
  %161 = load i8, ptr %160, align 1, !range !14
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %192, label %163

163:                                              ; preds = %154
  %164 = getelementptr inbounds %struct.drm_crtc_state, ptr %159, i32 0, i32 3
  %165 = load i8, ptr %164, align 2
  %166 = and i8 %165, 14
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %192, label %168

168:                                              ; preds = %172, %163
  %169 = phi ptr [ %170, %172 ], [ %83, %163 ]
  %170 = load ptr, ptr %169, align 4
  %171 = icmp eq ptr %170, %83
  br i1 %171, label %176, label %172

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.nv50_outp_atom, ptr %170, i32 0, i32 1
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, %150
  br i1 %175, label %185, label %168

176:                                              ; preds = %168
  %177 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %178 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %177, i32 noundef 3520, i32 noundef 16) #13
  %179 = icmp eq ptr %178, null
  br i1 %179, label %203, label %180

180:                                              ; preds = %176
  %181 = load ptr, ptr %83, align 4
  %182 = getelementptr inbounds %struct.list_head, ptr %181, i32 0, i32 1
  store ptr %178, ptr %182, align 4
  store ptr %181, ptr %178, align 8
  %183 = getelementptr inbounds %struct.list_head, ptr %178, i32 0, i32 1
  store ptr %83, ptr %183, align 4
  store volatile ptr %178, ptr %83, align 4
  %184 = getelementptr inbounds %struct.nv50_outp_atom, ptr %178, i32 0, i32 1
  store ptr %150, ptr %184, align 8
  br label %185

185:                                              ; preds = %180, %172
  %186 = phi ptr [ %178, %180 ], [ %170, %172 ]
  %187 = icmp ugt ptr %186, inttoptr (i32 -4096 to ptr)
  br i1 %187, label %203, label %188

188:                                              ; preds = %185
  %189 = getelementptr inbounds %struct.nv50_outp_atom, ptr %186, i32 0, i32 3
  %190 = load i8, ptr %189, align 1
  %191 = or i8 %190, 1
  store i8 %191, ptr %189, align 1
  store i8 1, ptr %85, align 4
  br label %192

192:                                              ; preds = %188, %163, %154, %148, %86
  %193 = add nuw nsw i32 %87, 1
  %194 = load i32, ptr %77, align 4
  %195 = icmp slt i32 %193, %194
  br i1 %195, label %86, label %196

196:                                              ; preds = %192, %76
  %197 = tail call i32 @drm_dp_mst_atomic_check(ptr noundef %1) #11
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %206

199:                                              ; preds = %196
  tail call void @nv50_crc_atomic_check_outp(ptr noundef %1) #11
  br label %206

200:                                              ; preds = %135, %126
  %201 = phi ptr [ %136, %135 ], [ inttoptr (i32 -12 to ptr), %126 ]
  %202 = ptrtoint ptr %201 to i32
  br label %206

203:                                              ; preds = %185, %176
  %204 = phi ptr [ %186, %185 ], [ inttoptr (i32 -12 to ptr), %176 ]
  %205 = ptrtoint ptr %204 to i32
  br label %206

206:                                              ; preds = %203, %200, %199, %196, %73, %62, %29
  %207 = phi i32 [ %30, %29 ], [ 0, %199 ], [ %74, %73 ], [ %197, %196 ], [ %202, %200 ], [ %205, %203 ], [ %63, %62 ]
  ret i32 %207
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_disp_atomic_commit(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #11
  %7 = icmp slt i32 %6, 0
  %8 = icmp ne i32 %6, -13
  %9 = and i1 %7, %8
  br i1 %9, label %68, label %10

10:                                               ; preds = %3
  %11 = tail call i32 @drm_atomic_helper_setup_commit(ptr noundef %1, i1 noundef zeroext %2) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %68

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 11
  store i32 -32, ptr %14, align 4
  %15 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 11, i32 1
  store volatile ptr %15, ptr %15, align 4
  %16 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 11, i32 1, i32 1
  store ptr %15, ptr %16, align 4
  %17 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 11, i32 2
  store ptr @nv50_disp_atomic_commit_work, ptr %17, align 4
  %18 = tail call i32 @drm_atomic_helper_prepare_planes(ptr noundef %0, ptr noundef %1) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %68

20:                                               ; preds = %13
  br i1 %2, label %24, label %21

21:                                               ; preds = %20
  %22 = tail call i32 @drm_atomic_helper_wait_for_fences(ptr noundef %0, ptr noundef %1, i1 noundef zeroext true) #11
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %21, %20
  %25 = tail call i32 @drm_atomic_helper_swap_state(ptr noundef %1, i1 noundef zeroext true) #11
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %66

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30, i32 17
  %31 = load i32, ptr %30, align 4
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %58

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 3
  br label %35

35:                                               ; preds = %52, %33
  %36 = phi ptr [ %29, %33 ], [ %53, %52 ]
  %37 = phi i32 [ 0, %33 ], [ %54, %52 ]
  %38 = load ptr, ptr %34, align 4
  %39 = getelementptr %struct.__drm_planes_state, ptr %38, i32 %37
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %35
  %43 = getelementptr %struct.__drm_planes_state, ptr %38, i32 %37, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %44, i32 0, i32 12
  %46 = load i8, ptr %45, align 1
  %47 = and i8 %46, 16
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = getelementptr i8, ptr %40, i32 -40
  tail call void @nv50_wndw_ntfy_enable(ptr noundef %50, ptr noundef %44) #11
  %51 = load ptr, ptr %28, align 4
  br label %52

52:                                               ; preds = %49, %42, %35
  %53 = phi ptr [ %36, %42 ], [ %51, %49 ], [ %36, %35 ]
  %54 = add nuw nsw i32 %37, 1
  %55 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 30, i32 17
  %56 = load i32, ptr %55, align 4
  %57 = icmp slt i32 %54, %56
  br i1 %57, label %35, label %58

58:                                               ; preds = %52, %27
  tail call fastcc void @drm_atomic_state_get(ptr noundef %1)
  %59 = load ptr, ptr %4, align 4
  %60 = getelementptr inbounds %struct.device, ptr %59, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %60) #11, !srcloc !17
  %61 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %60, ptr %60, i32 1, ptr elementtype(i32) %60) #11, !srcloc !18
  br i1 %2, label %62, label %65

62:                                               ; preds = %58
  %63 = load ptr, ptr @system_unbound_wq, align 4
  %64 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %63, ptr noundef %14) #11
  br label %68

65:                                               ; preds = %58
  tail call fastcc void @nv50_disp_atomic_commit_tail(ptr noundef %1)
  br label %68

66:                                               ; preds = %24, %21
  %67 = phi i32 [ %25, %24 ], [ %22, %21 ]
  tail call void @drm_atomic_helper_cleanup_planes(ptr noundef %0, ptr noundef %1) #11
  br label %68

68:                                               ; preds = %66, %65, %62, %13, %10, %3
  %69 = phi i32 [ %6, %3 ], [ %11, %10 ], [ %18, %13 ], [ %67, %66 ], [ 0, %62 ], [ 0, %65 ]
  %70 = load ptr, ptr %4, align 4
  %71 = tail call i32 @__pm_runtime_suspend(ptr noundef %70, i32 noundef 13) #11
  ret i32 %69
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv50_disp_atomic_state_alloc(ptr noundef %0) #0 {
  %2 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %3 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 72) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @drm_atomic_state_init(ptr noundef %0, ptr noundef nonnull %3) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5, %1
  tail call void @kfree(ptr noundef %3) #11
  br label %12

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.nv50_atom, ptr %3, i32 0, i32 1
  store volatile ptr %10, ptr %10, align 4
  %11 = getelementptr inbounds %struct.nv50_atom, ptr %3, i32 0, i32 1, i32 1
  store ptr %10, ptr %11, align 8
  br label %12

12:                                               ; preds = %9, %8
  %13 = phi ptr [ null, %8 ], [ %3, %9 ]
  ret ptr %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_atomic_state_clear(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %7, %5 ], [ %3, %1 ]
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %9, ptr %10, align 4
  store volatile ptr %7, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  tail call void @kfree(ptr noundef %6) #11
  %11 = icmp eq ptr %7, %2
  br i1 %11, label %12, label %5

12:                                               ; preds = %5, %1
  tail call void @drm_atomic_state_default_clear(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_atomic_state_free(ptr noundef %0) #0 {
  tail call void @drm_atomic_state_default_release(ptr noundef %0) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_get_crtc_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_add_affected_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_check(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_atomic_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_check_outp(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_setup_commit(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_disp_atomic_commit_work(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -44
  tail call fastcc void @nv50_disp_atomic_commit_tail(ptr noundef %2)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_prepare_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_wait_for_fences(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_helper_swap_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_wndw_ntfy_enable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @drm_atomic_state_get(ptr noundef %0) unnamed_addr #9 {
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #11, !srcloc !17
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #11, !srcloc !19
  %3 = extractvalue { i32, i32, i32 } %2, 0
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5, !prof !9

5:                                                ; preds = %1
  %6 = add i32 %3, 1
  %7 = or i32 %6, %3
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %11, label %9, !prof !20

9:                                                ; preds = %5, %1
  %10 = phi i32 [ 2, %1 ], [ 1, %5 ]
  tail call void @refcount_warn_saturate(ptr noundef %0, i32 noundef %10) #11
  br label %11

11:                                               ; preds = %9, %5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_disp_atomic_commit_tail(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca [6 x i32], align 4
  %3 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  %12 = load i32, ptr @__drm_debug, align 4
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.drm_device, ptr %19, i32 0, i32 2
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %23 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 2
  %24 = load i8, ptr %23, align 4, !range !14
  %25 = zext i8 %24 to i32
  %26 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 3
  %27 = load i8, ptr %26, align 1, !range !14
  %28 = zext i8 %27 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.12, ptr noundef %22, i32 noundef %25, i32 noundef %28) #12
  br label %29

29:                                               ; preds = %15, %1
  tail call void @nv50_crc_atomic_stop_reporting(ptr noundef %0) #11
  %30 = tail call i32 @drm_atomic_helper_wait_for_fences(ptr noundef %4, ptr noundef %0, i1 noundef zeroext false) #11
  tail call void @drm_atomic_helper_wait_for_dependencies(ptr noundef %0) #11
  tail call void @drm_atomic_helper_update_legacy_modeset_state(ptr noundef %4, ptr noundef %0) #11
  tail call void @drm_atomic_helper_calc_timestamping_constants(ptr noundef %0) #11
  %31 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 2
  %32 = load i8, ptr %31, align 4, !range !14
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 4
  tail call void @mutex_lock(ptr noundef %35) #11
  br label %36

36:                                               ; preds = %34, %29
  %37 = load ptr, ptr %3, align 4
  %38 = getelementptr inbounds %struct.drm_device, ptr %37, i32 0, i32 30, i32 19
  %39 = load i32, ptr %38, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %45 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %46 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 3
  br label %57

47:                                               ; preds = %111, %36
  %48 = phi ptr [ %37, %36 ], [ %114, %111 ]
  %49 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 30, i32 17
  %50 = load i32, ptr %49, align 4
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %158

52:                                               ; preds = %47
  %53 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 3
  %54 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %56 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 3
  br label %118

57:                                               ; preds = %111, %41
  %58 = phi i32 [ 0, %41 ], [ %112, %111 ]
  %59 = phi i32 [ 0, %41 ], [ %113, %111 ]
  %60 = load ptr, ptr %42, align 4
  %61 = getelementptr %struct.__drm_crtcs_state, ptr %60, i32 %59
  %62 = load ptr, ptr %61, align 8
  %63 = icmp eq ptr %62, null
  br i1 %63, label %111, label %64

64:                                               ; preds = %57
  %65 = getelementptr %struct.__drm_crtcs_state, ptr %60, i32 %59, i32 2
  %66 = load ptr, ptr %65, align 8
  %67 = getelementptr %struct.__drm_crtcs_state, ptr %60, i32 %59, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %62, i32 -8
  %70 = load i32, ptr @__drm_debug, align 4
  %71 = and i32 %70, 16
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %64
  %74 = load ptr, ptr %43, align 8
  %75 = getelementptr inbounds %struct.nouveau_drm, ptr %74, i32 0, i32 3
  %76 = load ptr, ptr %75, align 8
  %77 = getelementptr inbounds %struct.drm_device, ptr %76, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr inbounds %struct.drm_crtc, ptr %62, i32 0, i32 3
  %80 = load ptr, ptr %79, align 8
  %81 = getelementptr inbounds %struct.nv50_head_atom, ptr %68, i32 0, i32 15
  %82 = load i16, ptr %81, align 2
  %83 = zext i16 %82 to i32
  %84 = getelementptr inbounds %struct.nv50_head_atom, ptr %68, i32 0, i32 14
  %85 = load i16, ptr %84, align 8
  %86 = zext i16 %85 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %78, ptr noundef nonnull @.str.13, ptr noundef %44, ptr noundef %80, i32 noundef %83, i32 noundef %86) #12
  br label %87

87:                                               ; preds = %73, %64
  %88 = getelementptr inbounds %struct.drm_crtc_state, ptr %66, i32 0, i32 2
  %89 = load i8, ptr %88, align 1, !range !14
  %90 = icmp eq i8 %89, 0
  br i1 %90, label %103, label %91

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.drm_crtc_state, ptr %68, i32 0, i32 2
  %93 = load i8, ptr %92, align 1, !range !14
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %91
  %96 = load ptr, ptr %45, align 4
  %97 = getelementptr inbounds %struct.device, ptr %96, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !21
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %97) #11, !srcloc !17
  %98 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %97, ptr %97, i32 0, i32 -1, ptr elementtype(i32) %97) #11, !srcloc !22
  %99 = extractvalue { i32, i32, i32 } %98, 0
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %95
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !23
  br label %102

102:                                              ; preds = %101, %95
  tail call void @drm_crtc_vblank_off(ptr noundef nonnull %62) #11
  br label %103

103:                                              ; preds = %102, %91, %87
  %104 = getelementptr inbounds %struct.nv50_head_atom, ptr %68, i32 0, i32 15
  %105 = load i16, ptr %104, align 2
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i8, ptr %46, align 1, !range !14
  %109 = icmp ne i8 %108, 0
  tail call void @nv50_head_flush_clr(ptr noundef %69, ptr noundef %68, i1 noundef zeroext %109) #11
  %110 = or i32 %58, 1
  store i32 %110, ptr %2, align 4
  br label %111

111:                                              ; preds = %107, %103, %57
  %112 = phi i32 [ %58, %103 ], [ %110, %107 ], [ %58, %57 ]
  %113 = add nuw nsw i32 %59, 1
  %114 = load ptr, ptr %3, align 4
  %115 = getelementptr inbounds %struct.drm_device, ptr %114, i32 0, i32 30, i32 19
  %116 = load i32, ptr %115, align 4
  %117 = icmp slt i32 %113, %116
  br i1 %117, label %57, label %47

118:                                              ; preds = %152, %52
  %119 = phi i32 [ 0, %52 ], [ %153, %152 ]
  %120 = load ptr, ptr %53, align 4
  %121 = getelementptr %struct.__drm_planes_state, ptr %120, i32 %119
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %152, label %124

124:                                              ; preds = %118
  %125 = getelementptr %struct.__drm_planes_state, ptr %120, i32 %119, i32 3
  %126 = load ptr, ptr %125, align 4
  %127 = getelementptr i8, ptr %122, i32 -40
  %128 = load i32, ptr @__drm_debug, align 4
  %129 = and i32 %128, 16
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %145, label %131

131:                                              ; preds = %124
  %132 = load ptr, ptr %54, align 8
  %133 = getelementptr inbounds %struct.nouveau_drm, ptr %132, i32 0, i32 3
  %134 = load ptr, ptr %133, align 8
  %135 = getelementptr inbounds %struct.drm_device, ptr %134, i32 0, i32 2
  %136 = load ptr, ptr %135, align 4
  %137 = getelementptr inbounds %struct.drm_plane, ptr %122, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %126, i32 0, i32 13
  %140 = load i8, ptr %139, align 4
  %141 = zext i8 %140 to i32
  %142 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %126, i32 0, i32 12
  %143 = load i8, ptr %142, align 1
  %144 = zext i8 %143 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %136, ptr noundef nonnull @.str.14, ptr noundef %55, ptr noundef %138, i32 noundef %141, i32 noundef %144) #12
  br label %145

145:                                              ; preds = %131, %124
  %146 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %126, i32 0, i32 13
  %147 = load i8, ptr %146, align 4
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %145
  %150 = load i8, ptr %56, align 1, !range !14
  %151 = icmp ne i8 %150, 0
  call void @nv50_wndw_flush_clr(ptr noundef %127, ptr noundef nonnull %2, i1 noundef zeroext %151, ptr noundef %126) #11
  br label %152

152:                                              ; preds = %149, %145, %118
  %153 = add nuw nsw i32 %119, 1
  %154 = load ptr, ptr %3, align 4
  %155 = getelementptr inbounds %struct.drm_device, ptr %154, i32 0, i32 30, i32 17
  %156 = load i32, ptr %155, align 4
  %157 = icmp slt i32 %153, %156
  br i1 %157, label %118, label %158

158:                                              ; preds = %152, %47
  %159 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 1
  %160 = load ptr, ptr %159, align 4
  %161 = icmp eq ptr %160, %159
  br i1 %161, label %243, label %162

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %164 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %165 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 3
  br label %166

166:                                              ; preds = %239, %162
  %167 = phi ptr [ %160, %162 ], [ %241, %239 ]
  %168 = phi i1 [ false, %162 ], [ %240, %239 ]
  %169 = getelementptr inbounds %struct.nv50_outp_atom, ptr %167, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.drm_encoder, ptr %170, i32 0, i32 11
  %172 = load ptr, ptr %171, align 4
  %173 = load i32, ptr @__drm_debug, align 4
  %174 = and i32 %173, 16
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %190, label %176

176:                                              ; preds = %166
  %177 = load ptr, ptr %163, align 8
  %178 = getelementptr inbounds %struct.nouveau_drm, ptr %177, i32 0, i32 3
  %179 = load ptr, ptr %178, align 8
  %180 = getelementptr inbounds %struct.drm_device, ptr %179, i32 0, i32 2
  %181 = load ptr, ptr %180, align 4
  %182 = getelementptr inbounds %struct.drm_encoder, ptr %170, i32 0, i32 3
  %183 = load ptr, ptr %182, align 4
  %184 = getelementptr inbounds %struct.nv50_outp_atom, ptr %167, i32 0, i32 4
  %185 = load i8, ptr %184, align 2
  %186 = zext i8 %185 to i32
  %187 = getelementptr inbounds %struct.nv50_outp_atom, ptr %167, i32 0, i32 3
  %188 = load i8, ptr %187, align 1
  %189 = zext i8 %188 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %181, ptr noundef nonnull @.str.14, ptr noundef %164, ptr noundef %183, i32 noundef %186, i32 noundef %189) #12
  br label %190

190:                                              ; preds = %176, %166
  %191 = getelementptr inbounds %struct.nv50_outp_atom, ptr %167, i32 0, i32 4
  %192 = load i8, ptr %191, align 2
  %193 = icmp eq i8 %192, 0
  br i1 %193, label %239, label %194

194:                                              ; preds = %190
  %195 = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %172, i32 0, i32 8
  %196 = load ptr, ptr %195, align 4
  call void %196(ptr noundef %170, ptr noundef %0) #11
  %197 = load i32, ptr %2, align 4
  %198 = or i32 %197, 1
  store i32 %198, ptr %2, align 4
  %199 = getelementptr inbounds %struct.nv50_outp_atom, ptr %167, i32 0, i32 2
  %200 = load i8, ptr %199, align 4, !range !14
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %239, label %202

202:                                              ; preds = %194
  %203 = load ptr, ptr %3, align 4
  %204 = getelementptr inbounds %struct.drm_device, ptr %203, i32 0, i32 30, i32 17
  %205 = load i32, ptr %204, align 4
  %206 = icmp sgt i32 %205, 0
  br i1 %206, label %207, label %238

207:                                              ; preds = %232, %202
  %208 = phi ptr [ %233, %232 ], [ %203, %202 ]
  %209 = phi i32 [ %234, %232 ], [ 0, %202 ]
  %210 = load ptr, ptr %165, align 4
  %211 = getelementptr %struct.__drm_planes_state, ptr %210, i32 %209
  %212 = load ptr, ptr %211, align 4
  %213 = icmp eq ptr %212, null
  br i1 %213, label %232, label %214

214:                                              ; preds = %207
  %215 = getelementptr i8, ptr %212, i32 -40
  %216 = getelementptr i8, ptr %212, i32 -28
  %217 = load i32, ptr %216, align 4
  %218 = getelementptr i32, ptr %2, i32 %217
  %219 = load i32, ptr %218, align 4
  %220 = getelementptr i8, ptr %212, i32 -24
  %221 = load i32, ptr %220, align 4
  %222 = and i32 %221, %219
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %232, label %224

224:                                              ; preds = %214
  %225 = load ptr, ptr %215, align 8
  %226 = getelementptr inbounds %struct.nv50_wndw_func, ptr %225, i32 0, i32 22
  %227 = load ptr, ptr %226, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %232, label %229

229:                                              ; preds = %224
  %230 = call i32 %227(ptr noundef %215, ptr noundef nonnull %2) #11
  %231 = load ptr, ptr %3, align 4
  br label %232

232:                                              ; preds = %229, %224, %214, %207
  %233 = phi ptr [ %208, %214 ], [ %231, %229 ], [ %208, %224 ], [ %208, %207 ]
  %234 = add nuw nsw i32 %209, 1
  %235 = getelementptr inbounds %struct.drm_device, ptr %233, i32 0, i32 30, i32 17
  %236 = load i32, ptr %235, align 4
  %237 = icmp slt i32 %234, %236
  br i1 %237, label %207, label %238

238:                                              ; preds = %232, %202
  call fastcc void @nv50_disp_atomic_commit_core(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  br label %239

239:                                              ; preds = %238, %194, %190
  %240 = phi i1 [ true, %238 ], [ %168, %194 ], [ %168, %190 ]
  %241 = load ptr, ptr %167, align 4
  %242 = icmp eq ptr %241, %159
  br i1 %242, label %243, label %166

243:                                              ; preds = %239, %158
  %244 = phi i1 [ false, %158 ], [ %240, %239 ]
  %245 = load i32, ptr %2, align 4
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %290, label %247

247:                                              ; preds = %243
  %248 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 3
  %249 = load i8, ptr %248, align 1, !range !14
  %250 = icmp eq i8 %249, 0
  br i1 %250, label %290, label %251

251:                                              ; preds = %247
  %252 = load ptr, ptr %3, align 4
  %253 = getelementptr inbounds %struct.drm_device, ptr %252, i32 0, i32 30, i32 17
  %254 = load i32, ptr %253, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %289

256:                                              ; preds = %251
  %257 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 3
  br label %258

258:                                              ; preds = %283, %256
  %259 = phi ptr [ %252, %256 ], [ %284, %283 ]
  %260 = phi i32 [ 0, %256 ], [ %285, %283 ]
  %261 = load ptr, ptr %257, align 4
  %262 = getelementptr %struct.__drm_planes_state, ptr %261, i32 %260
  %263 = load ptr, ptr %262, align 4
  %264 = icmp eq ptr %263, null
  br i1 %264, label %283, label %265

265:                                              ; preds = %258
  %266 = getelementptr i8, ptr %263, i32 -40
  %267 = getelementptr i8, ptr %263, i32 -28
  %268 = load i32, ptr %267, align 4
  %269 = getelementptr i32, ptr %2, i32 %268
  %270 = load i32, ptr %269, align 4
  %271 = getelementptr i8, ptr %263, i32 -24
  %272 = load i32, ptr %271, align 4
  %273 = and i32 %272, %270
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %283, label %275

275:                                              ; preds = %265
  %276 = load ptr, ptr %266, align 8
  %277 = getelementptr inbounds %struct.nv50_wndw_func, ptr %276, i32 0, i32 22
  %278 = load ptr, ptr %277, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %283, label %280

280:                                              ; preds = %275
  %281 = call i32 %278(ptr noundef %266, ptr noundef nonnull %2) #11
  %282 = load ptr, ptr %3, align 4
  br label %283

283:                                              ; preds = %280, %275, %265, %258
  %284 = phi ptr [ %259, %265 ], [ %282, %280 ], [ %259, %275 ], [ %259, %258 ]
  %285 = add nuw nsw i32 %260, 1
  %286 = getelementptr inbounds %struct.drm_device, ptr %284, i32 0, i32 30, i32 17
  %287 = load i32, ptr %286, align 4
  %288 = icmp slt i32 %285, %287
  br i1 %288, label %258, label %289

289:                                              ; preds = %283, %251
  call fastcc void @nv50_disp_atomic_commit_core(ptr noundef %0, ptr noundef nonnull %2)
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %2, i8 0, i32 24, i1 false)
  br label %291

290:                                              ; preds = %247, %243
  br i1 %244, label %291, label %292

291:                                              ; preds = %290, %289
  call void @nv50_crc_atomic_release_notifier_contexts(ptr noundef %0) #11
  br label %292

292:                                              ; preds = %291, %290
  %293 = phi i1 [ true, %291 ], [ false, %290 ]
  call void @nv50_crc_atomic_init_notifier_contexts(ptr noundef %0) #11
  %294 = load ptr, ptr %159, align 4
  %295 = icmp eq ptr %294, %159
  br i1 %295, label %299, label %296

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %298 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  br label %309

299:                                              ; preds = %340, %292
  %300 = load ptr, ptr %3, align 4
  %301 = getelementptr inbounds %struct.drm_device, ptr %300, i32 0, i32 30, i32 19
  %302 = load i32, ptr %301, align 4
  %303 = icmp sgt i32 %302, 0
  br i1 %303, label %304, label %404

304:                                              ; preds = %299
  %305 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  %306 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %307 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %308 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  br label %346

309:                                              ; preds = %340, %296
  %310 = phi ptr [ %294, %296 ], [ %311, %340 ]
  %311 = load ptr, ptr %310, align 4
  %312 = getelementptr inbounds %struct.nv50_outp_atom, ptr %310, i32 0, i32 1
  %313 = load ptr, ptr %312, align 4
  %314 = getelementptr inbounds %struct.drm_encoder, ptr %313, i32 0, i32 11
  %315 = load ptr, ptr %314, align 4
  %316 = load i32, ptr @__drm_debug, align 4
  %317 = and i32 %316, 16
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %333, label %319

319:                                              ; preds = %309
  %320 = load ptr, ptr %297, align 8
  %321 = getelementptr inbounds %struct.nouveau_drm, ptr %320, i32 0, i32 3
  %322 = load ptr, ptr %321, align 8
  %323 = getelementptr inbounds %struct.drm_device, ptr %322, i32 0, i32 2
  %324 = load ptr, ptr %323, align 4
  %325 = getelementptr inbounds %struct.drm_encoder, ptr %313, i32 0, i32 3
  %326 = load ptr, ptr %325, align 4
  %327 = getelementptr inbounds %struct.nv50_outp_atom, ptr %310, i32 0, i32 3
  %328 = load i8, ptr %327, align 1
  %329 = zext i8 %328 to i32
  %330 = getelementptr inbounds %struct.nv50_outp_atom, ptr %310, i32 0, i32 4
  %331 = load i8, ptr %330, align 2
  %332 = zext i8 %331 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %324, ptr noundef nonnull @.str.15, ptr noundef %298, ptr noundef %326, i32 noundef %329, i32 noundef %332) #12
  br label %333

333:                                              ; preds = %319, %309
  %334 = getelementptr inbounds %struct.nv50_outp_atom, ptr %310, i32 0, i32 3
  %335 = load i8, ptr %334, align 1
  %336 = icmp eq i8 %335, 0
  br i1 %336, label %340, label %337

337:                                              ; preds = %333
  %338 = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %315, i32 0, i32 9
  %339 = load ptr, ptr %338, align 4
  call void %339(ptr noundef %313, ptr noundef %0) #11
  store i32 1, ptr %2, align 4
  br label %340

340:                                              ; preds = %337, %333
  %341 = getelementptr inbounds %struct.list_head, ptr %310, i32 0, i32 1
  %342 = load ptr, ptr %341, align 4
  %343 = load ptr, ptr %310, align 4
  %344 = getelementptr inbounds %struct.list_head, ptr %343, i32 0, i32 1
  store ptr %342, ptr %344, align 4
  store volatile ptr %343, ptr %342, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %310, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %341, align 4
  call void @kfree(ptr noundef %310) #11
  %345 = icmp eq ptr %311, %159
  br i1 %345, label %299, label %309

346:                                              ; preds = %398, %304
  %347 = phi i32 [ 0, %304 ], [ %399, %398 ]
  %348 = load ptr, ptr %305, align 4
  %349 = getelementptr %struct.__drm_crtcs_state, ptr %348, i32 %347
  %350 = load ptr, ptr %349, align 8
  %351 = icmp eq ptr %350, null
  br i1 %351, label %398, label %352

352:                                              ; preds = %346
  %353 = getelementptr %struct.__drm_crtcs_state, ptr %348, i32 %347, i32 2
  %354 = load ptr, ptr %353, align 8
  %355 = getelementptr %struct.__drm_crtcs_state, ptr %348, i32 %347, i32 3
  %356 = load ptr, ptr %355, align 4
  %357 = getelementptr i8, ptr %350, i32 -8
  %358 = load i32, ptr @__drm_debug, align 4
  %359 = and i32 %358, 16
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %375, label %361

361:                                              ; preds = %352
  %362 = load ptr, ptr %306, align 8
  %363 = getelementptr inbounds %struct.nouveau_drm, ptr %362, i32 0, i32 3
  %364 = load ptr, ptr %363, align 8
  %365 = getelementptr inbounds %struct.drm_device, ptr %364, i32 0, i32 2
  %366 = load ptr, ptr %365, align 4
  %367 = getelementptr inbounds %struct.drm_crtc, ptr %350, i32 0, i32 3
  %368 = load ptr, ptr %367, align 8
  %369 = getelementptr inbounds %struct.nv50_head_atom, ptr %356, i32 0, i32 14
  %370 = load i16, ptr %369, align 8
  %371 = zext i16 %370 to i32
  %372 = getelementptr inbounds %struct.nv50_head_atom, ptr %356, i32 0, i32 15
  %373 = load i16, ptr %372, align 2
  %374 = zext i16 %373 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %366, ptr noundef nonnull @.str.16, ptr noundef %307, ptr noundef %368, i32 noundef %371, i32 noundef %374) #12
  br label %375

375:                                              ; preds = %361, %352
  %376 = getelementptr inbounds %struct.nv50_head_atom, ptr %356, i32 0, i32 14
  %377 = load i16, ptr %376, align 8
  %378 = icmp eq i16 %377, 0
  br i1 %378, label %380, label %379

379:                                              ; preds = %375
  call void @nv50_head_flush_set(ptr noundef %357, ptr noundef %356) #11
  store i32 1, ptr %2, align 4
  br label %380

380:                                              ; preds = %379, %375
  %381 = getelementptr inbounds %struct.drm_crtc_state, ptr %356, i32 0, i32 2
  %382 = load i8, ptr %381, align 1, !range !14
  %383 = icmp eq i8 %382, 0
  br i1 %383, label %398, label %384

384:                                              ; preds = %380
  %385 = getelementptr inbounds %struct.drm_crtc_state, ptr %354, i32 0, i32 2
  %386 = load i8, ptr %385, align 1, !range !14
  %387 = icmp eq i8 %386, 0
  br i1 %387, label %388, label %392

388:                                              ; preds = %384
  call void @drm_crtc_vblank_on(ptr noundef nonnull %350) #11
  %389 = load ptr, ptr %308, align 4
  %390 = getelementptr inbounds %struct.device, ptr %389, i32 0, i32 11, i32 13
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %390) #11, !srcloc !17
  %391 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %390, ptr %390, i32 1, ptr elementtype(i32) %390) #11, !srcloc !18
  br label %392

392:                                              ; preds = %388, %384
  %393 = getelementptr inbounds %struct.drm_crtc_state, ptr %356, i32 0, i32 18
  %394 = load ptr, ptr %393, align 4
  %395 = icmp eq ptr %394, null
  br i1 %395, label %398, label %396

396:                                              ; preds = %392
  %397 = call i32 @drm_crtc_vblank_get(ptr noundef nonnull %350) #11
  br label %398

398:                                              ; preds = %396, %392, %380, %346
  %399 = add nuw nsw i32 %347, 1
  %400 = load ptr, ptr %3, align 4
  %401 = getelementptr inbounds %struct.drm_device, ptr %400, i32 0, i32 30, i32 19
  %402 = load i32, ptr %401, align 4
  %403 = icmp slt i32 %399, %402
  br i1 %403, label %346, label %404

404:                                              ; preds = %398, %299
  %405 = phi ptr [ %300, %299 ], [ %400, %398 ]
  %406 = getelementptr inbounds %struct.nv50_core, ptr %11, i32 0, i32 2
  %407 = load i8, ptr %406, align 8, !range !14
  %408 = icmp eq i8 %407, 0
  br i1 %408, label %415, label %409

409:                                              ; preds = %404
  %410 = load ptr, ptr %11, align 8
  %411 = getelementptr inbounds %struct.nv50_core_func, ptr %410, i32 0, i32 5
  %412 = load ptr, ptr %411, align 4
  %413 = call i32 %412(ptr noundef %11) #11
  call fastcc void @nv50_disp_atomic_commit_core(ptr noundef %0, ptr noundef nonnull %2)
  store i8 0, ptr %406, align 8
  store i32 0, ptr %2, align 4
  %414 = load ptr, ptr %3, align 4
  br label %415

415:                                              ; preds = %409, %404
  %416 = phi ptr [ %414, %409 ], [ %405, %404 ]
  %417 = getelementptr inbounds %struct.drm_device, ptr %416, i32 0, i32 30, i32 19
  %418 = load i32, ptr %417, align 4
  %419 = icmp sgt i32 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %415
  %421 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  %422 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %423 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  br label %434

424:                                              ; preds = %466, %415
  %425 = phi ptr [ %416, %415 ], [ %468, %466 ]
  %426 = getelementptr inbounds %struct.drm_device, ptr %425, i32 0, i32 30, i32 17
  %427 = load i32, ptr %426, align 4
  %428 = icmp sgt i32 %427, 0
  br i1 %428, label %429, label %552

429:                                              ; preds = %424
  %430 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 3
  %431 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %432 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  %433 = getelementptr inbounds %struct.nv50_atom, ptr %0, i32 0, i32 3
  br label %472

434:                                              ; preds = %466, %420
  %435 = phi i32 [ 0, %420 ], [ %467, %466 ]
  %436 = load ptr, ptr %421, align 4
  %437 = getelementptr %struct.__drm_crtcs_state, ptr %436, i32 %435
  %438 = load ptr, ptr %437, align 8
  %439 = icmp eq ptr %438, null
  br i1 %439, label %466, label %440

440:                                              ; preds = %434
  %441 = getelementptr %struct.__drm_crtcs_state, ptr %436, i32 %435, i32 3
  %442 = load ptr, ptr %441, align 4
  %443 = getelementptr i8, ptr %438, i32 -8
  %444 = load i32, ptr @__drm_debug, align 4
  %445 = and i32 %444, 16
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %461, label %447

447:                                              ; preds = %440
  %448 = load ptr, ptr %422, align 8
  %449 = getelementptr inbounds %struct.nouveau_drm, ptr %448, i32 0, i32 3
  %450 = load ptr, ptr %449, align 8
  %451 = getelementptr inbounds %struct.drm_device, ptr %450, i32 0, i32 2
  %452 = load ptr, ptr %451, align 4
  %453 = getelementptr inbounds %struct.drm_crtc, ptr %438, i32 0, i32 3
  %454 = load ptr, ptr %453, align 8
  %455 = getelementptr inbounds %struct.nv50_head_atom, ptr %442, i32 0, i32 14
  %456 = load i16, ptr %455, align 8
  %457 = zext i16 %456 to i32
  %458 = getelementptr inbounds %struct.nv50_head_atom, ptr %442, i32 0, i32 15
  %459 = load i16, ptr %458, align 2
  %460 = zext i16 %459 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %452, ptr noundef nonnull @.str.16, ptr noundef %423, ptr noundef %454, i32 noundef %457, i32 noundef %460) #12
  br label %461

461:                                              ; preds = %447, %440
  %462 = getelementptr inbounds %struct.nv50_head_atom, ptr %442, i32 0, i32 14
  %463 = load i16, ptr %462, align 8
  %464 = icmp eq i16 %463, 0
  br i1 %464, label %466, label %465

465:                                              ; preds = %461
  call void @nv50_head_flush_set_wndw(ptr noundef %443, ptr noundef %442) #11
  store i32 1, ptr %2, align 4
  br label %466

466:                                              ; preds = %465, %461, %434
  %467 = add nuw nsw i32 %435, 1
  %468 = load ptr, ptr %3, align 4
  %469 = getelementptr inbounds %struct.drm_device, ptr %468, i32 0, i32 30, i32 19
  %470 = load i32, ptr %469, align 4
  %471 = icmp slt i32 %467, %470
  br i1 %471, label %434, label %424

472:                                              ; preds = %511, %429
  %473 = phi i32 [ 0, %429 ], [ %512, %511 ]
  %474 = load ptr, ptr %430, align 4
  %475 = getelementptr %struct.__drm_planes_state, ptr %474, i32 %473
  %476 = load ptr, ptr %475, align 4
  %477 = icmp eq ptr %476, null
  br i1 %477, label %511, label %478

478:                                              ; preds = %472
  %479 = getelementptr %struct.__drm_planes_state, ptr %474, i32 %473, i32 3
  %480 = load ptr, ptr %479, align 4
  %481 = getelementptr i8, ptr %476, i32 -40
  %482 = load i32, ptr @__drm_debug, align 4
  %483 = and i32 %482, 16
  %484 = icmp eq i32 %483, 0
  br i1 %484, label %499, label %485

485:                                              ; preds = %478
  %486 = load ptr, ptr %431, align 8
  %487 = getelementptr inbounds %struct.nouveau_drm, ptr %486, i32 0, i32 3
  %488 = load ptr, ptr %487, align 8
  %489 = getelementptr inbounds %struct.drm_device, ptr %488, i32 0, i32 2
  %490 = load ptr, ptr %489, align 4
  %491 = getelementptr inbounds %struct.drm_plane, ptr %476, i32 0, i32 2
  %492 = load ptr, ptr %491, align 4
  %493 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %480, i32 0, i32 12
  %494 = load i8, ptr %493, align 1
  %495 = zext i8 %494 to i32
  %496 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %480, i32 0, i32 13
  %497 = load i8, ptr %496, align 4
  %498 = zext i8 %497 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %490, ptr noundef nonnull @.str.15, ptr noundef %432, ptr noundef %492, i32 noundef %495, i32 noundef %498) #12
  br label %499

499:                                              ; preds = %485, %478
  %500 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %480, i32 0, i32 12
  %501 = load i8, ptr %500, align 1
  %502 = icmp eq i8 %501, 0
  br i1 %502, label %503, label %510

503:                                              ; preds = %499
  %504 = getelementptr inbounds %struct.nv50_wndw_atom, ptr %480, i32 0, i32 13
  %505 = load i8, ptr %504, align 4
  %506 = icmp eq i8 %505, 0
  br i1 %506, label %511, label %507

507:                                              ; preds = %503
  %508 = load i8, ptr %433, align 1, !range !14
  %509 = icmp eq i8 %508, 0
  br i1 %509, label %510, label %511

510:                                              ; preds = %507, %499
  call void @nv50_wndw_flush_set(ptr noundef %481, ptr noundef nonnull %2, ptr noundef %480) #11
  br label %511

511:                                              ; preds = %510, %507, %503, %472
  %512 = add nuw nsw i32 %473, 1
  %513 = load ptr, ptr %3, align 4
  %514 = getelementptr inbounds %struct.drm_device, ptr %513, i32 0, i32 30, i32 17
  %515 = load i32, ptr %514, align 4
  %516 = icmp slt i32 %512, %515
  br i1 %516, label %472, label %517

517:                                              ; preds = %511
  %518 = icmp sgt i32 %515, 0
  br i1 %518, label %519, label %552

519:                                              ; preds = %517
  %520 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 3
  br label %521

521:                                              ; preds = %546, %519
  %522 = phi ptr [ %513, %519 ], [ %547, %546 ]
  %523 = phi i32 [ 0, %519 ], [ %548, %546 ]
  %524 = load ptr, ptr %520, align 4
  %525 = getelementptr %struct.__drm_planes_state, ptr %524, i32 %523
  %526 = load ptr, ptr %525, align 4
  %527 = icmp eq ptr %526, null
  br i1 %527, label %546, label %528

528:                                              ; preds = %521
  %529 = getelementptr i8, ptr %526, i32 -40
  %530 = getelementptr i8, ptr %526, i32 -28
  %531 = load i32, ptr %530, align 4
  %532 = getelementptr i32, ptr %2, i32 %531
  %533 = load i32, ptr %532, align 4
  %534 = getelementptr i8, ptr %526, i32 -24
  %535 = load i32, ptr %534, align 4
  %536 = and i32 %535, %533
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %546, label %538

538:                                              ; preds = %528
  %539 = load ptr, ptr %529, align 8
  %540 = getelementptr inbounds %struct.nv50_wndw_func, ptr %539, i32 0, i32 22
  %541 = load ptr, ptr %540, align 4
  %542 = icmp eq ptr %541, null
  br i1 %542, label %546, label %543

543:                                              ; preds = %538
  %544 = call i32 %541(ptr noundef %529, ptr noundef nonnull %2) #11
  %545 = load ptr, ptr %3, align 4
  br label %546

546:                                              ; preds = %543, %538, %528, %521
  %547 = phi ptr [ %522, %528 ], [ %545, %543 ], [ %522, %538 ], [ %522, %521 ]
  %548 = add nuw nsw i32 %523, 1
  %549 = getelementptr inbounds %struct.drm_device, ptr %547, i32 0, i32 30, i32 17
  %550 = load i32, ptr %549, align 4
  %551 = icmp slt i32 %548, %550
  br i1 %551, label %521, label %552

552:                                              ; preds = %546, %517, %424
  %553 = load i32, ptr %2, align 4
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %579, label %555

555:                                              ; preds = %552
  %556 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 2
  %557 = load i32, ptr %556, align 4
  %558 = icmp ne i32 %557, 0
  %559 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 3
  %560 = load i32, ptr %559, align 4
  %561 = icmp ne i32 %560, 0
  %562 = select i1 %558, i1 true, i1 %561
  %563 = getelementptr inbounds [6 x i32], ptr %2, i32 0, i32 4
  %564 = load i32, ptr %563, align 4
  %565 = icmp ne i32 %564, 0
  %566 = select i1 %562, i1 true, i1 %565
  br i1 %566, label %572, label %567

567:                                              ; preds = %555
  %568 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 2
  %569 = load i8, ptr %568, align 4
  %570 = and i8 %569, 2
  %571 = icmp eq i8 %570, 0
  br i1 %571, label %572, label %573

572:                                              ; preds = %567, %555
  call fastcc void @nv50_disp_atomic_commit_core(ptr noundef %0, ptr noundef nonnull %2)
  br label %579

573:                                              ; preds = %567
  %574 = load ptr, ptr %10, align 4
  %575 = load ptr, ptr %574, align 8
  %576 = getelementptr inbounds %struct.nv50_core_func, ptr %575, i32 0, i32 4
  %577 = load ptr, ptr %576, align 4
  %578 = call i32 %577(ptr noundef %574, ptr noundef nonnull %2, i1 noundef zeroext false) #11
  br label %579

579:                                              ; preds = %573, %572, %552
  %580 = load i8, ptr %31, align 4, !range !14
  %581 = icmp eq i8 %580, 0
  br i1 %581, label %584, label %582

582:                                              ; preds = %579
  %583 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 4
  call void @mutex_unlock(ptr noundef %583) #11
  br label %584

584:                                              ; preds = %582, %579
  %585 = load ptr, ptr %3, align 4
  %586 = getelementptr inbounds %struct.drm_device, ptr %585, i32 0, i32 30, i32 17
  %587 = load i32, ptr %586, align 4
  %588 = icmp sgt i32 %587, 0
  br i1 %588, label %589, label %593

589:                                              ; preds = %584
  %590 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 3
  %591 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 1
  %592 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 12
  br label %600

593:                                              ; preds = %620, %584
  %594 = phi ptr [ %585, %584 ], [ %622, %620 ]
  %595 = getelementptr inbounds %struct.drm_device, ptr %594, i32 0, i32 30, i32 19
  %596 = load i32, ptr %595, align 4
  %597 = icmp sgt i32 %596, 0
  br i1 %597, label %598, label %660

598:                                              ; preds = %593
  %599 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 4
  br label %626

600:                                              ; preds = %620, %589
  %601 = phi i32 [ 0, %589 ], [ %621, %620 ]
  %602 = load ptr, ptr %590, align 4
  %603 = getelementptr %struct.__drm_planes_state, ptr %602, i32 %601
  %604 = load ptr, ptr %603, align 4
  %605 = icmp eq ptr %604, null
  br i1 %605, label %620, label %606

606:                                              ; preds = %600
  %607 = getelementptr %struct.__drm_planes_state, ptr %602, i32 %601, i32 3
  %608 = load ptr, ptr %607, align 4
  %609 = getelementptr i8, ptr %604, i32 -40
  %610 = call i32 @nv50_wndw_wait_armed(ptr noundef %609, ptr noundef %608) #11
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %620, label %612

612:                                              ; preds = %606
  %613 = load ptr, ptr %591, align 8
  %614 = getelementptr inbounds %struct.nouveau_drm, ptr %613, i32 0, i32 3
  %615 = load ptr, ptr %614, align 8
  %616 = getelementptr inbounds %struct.drm_device, ptr %615, i32 0, i32 2
  %617 = load ptr, ptr %616, align 4
  %618 = getelementptr inbounds %struct.drm_plane, ptr %604, i32 0, i32 2
  %619 = load ptr, ptr %618, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %617, ptr noundef nonnull @.str.17, ptr noundef %592, ptr noundef %619) #12
  br label %620

620:                                              ; preds = %612, %606, %600
  %621 = add nuw nsw i32 %601, 1
  %622 = load ptr, ptr %3, align 4
  %623 = getelementptr inbounds %struct.drm_device, ptr %622, i32 0, i32 30, i32 17
  %624 = load i32, ptr %623, align 4
  %625 = icmp slt i32 %621, %624
  br i1 %625, label %600, label %593

626:                                              ; preds = %654, %598
  %627 = phi i32 [ 0, %598 ], [ %655, %654 ]
  %628 = load ptr, ptr %599, align 4
  %629 = getelementptr %struct.__drm_crtcs_state, ptr %628, i32 %627
  %630 = load ptr, ptr %629, align 8
  %631 = icmp eq ptr %630, null
  br i1 %631, label %654, label %632

632:                                              ; preds = %626
  %633 = getelementptr %struct.__drm_crtcs_state, ptr %628, i32 %627, i32 3
  %634 = load ptr, ptr %633, align 4
  %635 = getelementptr inbounds %struct.drm_crtc_state, ptr %634, i32 0, i32 18
  %636 = load ptr, ptr %635, align 4
  %637 = icmp eq ptr %636, null
  br i1 %637, label %654, label %638

638:                                              ; preds = %632
  %639 = getelementptr inbounds %struct.drm_crtc_state, ptr %634, i32 0, i32 2
  %640 = load i8, ptr %639, align 1, !range !14
  %641 = icmp eq i8 %640, 0
  br i1 %641, label %644, label %642

642:                                              ; preds = %638
  %643 = call i64 @drm_crtc_accurate_vblank_count(ptr noundef nonnull %630) #11
  br label %644

644:                                              ; preds = %642, %638
  %645 = load ptr, ptr %630, align 8
  %646 = getelementptr inbounds %struct.drm_device, ptr %645, i32 0, i32 28
  %647 = call i32 @_raw_spin_lock_irqsave(ptr noundef %646) #11
  %648 = load ptr, ptr %635, align 4
  call void @drm_crtc_send_vblank_event(ptr noundef nonnull %630, ptr noundef %648) #11
  %649 = load ptr, ptr %630, align 8
  %650 = getelementptr inbounds %struct.drm_device, ptr %649, i32 0, i32 28
  call void @_raw_spin_unlock_irqrestore(ptr noundef %650, i32 noundef %647) #11
  store ptr null, ptr %635, align 4
  %651 = load i8, ptr %639, align 1, !range !14
  %652 = icmp eq i8 %651, 0
  br i1 %652, label %654, label %653

653:                                              ; preds = %644
  call void @drm_crtc_vblank_put(ptr noundef nonnull %630) #11
  br label %654

654:                                              ; preds = %653, %644, %632, %626
  %655 = add nuw nsw i32 %627, 1
  %656 = load ptr, ptr %3, align 4
  %657 = getelementptr inbounds %struct.drm_device, ptr %656, i32 0, i32 30, i32 19
  %658 = load i32, ptr %657, align 4
  %659 = icmp slt i32 %655, %658
  br i1 %659, label %626, label %660

660:                                              ; preds = %654, %593
  call void @nv50_crc_atomic_start_reporting(ptr noundef %0) #11
  br i1 %293, label %662, label %661

661:                                              ; preds = %660
  call void @nv50_crc_atomic_release_notifier_contexts(ptr noundef %0) #11
  br label %662

662:                                              ; preds = %661, %660
  call void @drm_atomic_helper_commit_hw_done(ptr noundef %0) #11
  call void @drm_atomic_helper_cleanup_planes(ptr noundef %4, ptr noundef %0) #11
  call void @drm_atomic_helper_commit_cleanup_done(ptr noundef %0) #11
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !24
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %0) #11, !srcloc !17
  %663 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %0, ptr %0, i32 1, ptr elementtype(i32) %0) #11, !srcloc !25
  %664 = extractvalue { i32, i32, i32 } %663, 0
  %665 = icmp eq i32 %664, 1
  br i1 %665, label %669, label %666

666:                                              ; preds = %662
  %667 = icmp sgt i32 %664, 0
  br i1 %667, label %670, label %668, !prof !20

668:                                              ; preds = %666
  call void @refcount_warn_saturate(ptr noundef %0, i32 noundef 3) #11
  br label %670

669:                                              ; preds = %662
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !26
  call void @__drm_atomic_state_free(ptr noundef %0) #11
  br label %670

670:                                              ; preds = %669, %668, %666
  %671 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %672 = load ptr, ptr %671, align 4
  %673 = call i64 @ktime_get_mono_fast_ns() #11
  %674 = getelementptr inbounds %struct.device, ptr %672, i32 0, i32 11, i32 22
  store volatile i64 %673, ptr %674, align 8
  %675 = load ptr, ptr %671, align 4
  %676 = call i32 @__pm_runtime_suspend(ptr noundef %675, i32 noundef 13) #11
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_cleanup_planes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_stop_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_wait_for_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_update_legacy_modeset_state(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_calc_timestamping_constants(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_head_flush_clr(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_wndw_flush_clr(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_disp_atomic_commit_core(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.anon.234, align 8
  %4 = alloca %struct.anon.233, align 2
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = getelementptr inbounds %struct.drm_device, ptr %10, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %12, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nv50_disp, ptr %15, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load i32, ptr @__drm_debug, align 4
  %19 = and i32 %18, 16
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %32, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %23, i32 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 12
  %29 = getelementptr i32, ptr %1, i32 2
  %30 = load i32, ptr %29, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.18, ptr noundef %28, i32 noundef %30) #12
  %31 = load ptr, ptr %9, align 8
  br label %32

32:                                               ; preds = %21, %2
  %33 = phi ptr [ %31, %21 ], [ %10, %2 ]
  %34 = getelementptr inbounds %struct.drm_device, ptr %33, i32 0, i32 30, i32 16
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %308, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 1
  %39 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 2
  %40 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 3
  %41 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 4
  %42 = getelementptr inbounds %struct.anon.233, ptr %4, i32 0, i32 1
  %43 = getelementptr inbounds %struct.anon.233, ptr %4, i32 0, i32 1, i32 2
  %44 = getelementptr inbounds %struct.anon.233, ptr %4, i32 0, i32 1, i32 3
  %45 = getelementptr inbounds %struct.anon.233, ptr %4, i32 0, i32 1, i32 4
  %46 = getelementptr inbounds %struct.anon.233, ptr %4, i32 0, i32 1, i32 5
  %47 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 2
  %48 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 3
  br label %49

49:                                               ; preds = %303, %37
  %50 = phi ptr [ %35, %37 ], [ %304, %303 ]
  %51 = getelementptr i8, ptr %50, i32 32
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 7
  br i1 %53, label %303, label %54

54:                                               ; preds = %49
  %55 = getelementptr i8, ptr %50, i32 240
  %56 = load ptr, ptr %55, align 4
  %57 = icmp eq ptr %56, null
  br i1 %57, label %303, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.nv50_mstm, ptr %56, i32 0, i32 5
  %60 = load i8, ptr %59, align 1, !range !14
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %303, label %62

62:                                               ; preds = %58
  %63 = load i32, ptr @__drm_debug, align 4
  %64 = and i32 %63, 16
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %80, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %56, align 4
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.drm_device, ptr %68, i32 0, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr inbounds %struct.nouveau_drm, ptr %70, i32 0, i32 2, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nouveau_drm, ptr %70, i32 0, i32 2, i32 12
  %78 = getelementptr inbounds %struct.drm_encoder, ptr %67, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %76, ptr noundef nonnull @.str.20, ptr noundef %77, ptr noundef %79) #12
  br label %80

80:                                               ; preds = %66, %62
  %81 = getelementptr inbounds %struct.nv50_mstm, ptr %56, i32 0, i32 1
  %82 = call i32 @drm_dp_update_payload_part1(ptr noundef %81, i32 noundef 1) #11
  %83 = load ptr, ptr %56, align 4
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.drm_device, ptr %84, i32 0, i32 30, i32 16
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %85
  br i1 %87, label %276, label %88

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.nv50_mstm, ptr %56, i32 0, i32 1, i32 21
  br label %90

90:                                               ; preds = %270, %88
  %91 = phi ptr [ %84, %88 ], [ %271, %270 ]
  %92 = phi ptr [ %83, %88 ], [ %272, %270 ]
  %93 = phi ptr [ %86, %88 ], [ %273, %270 ]
  %94 = getelementptr i8, ptr %93, i32 -4
  %95 = getelementptr i8, ptr %93, i32 32
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 7
  br i1 %97, label %98, label %270

98:                                               ; preds = %90
  %99 = getelementptr i8, ptr %93, i32 72
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %270, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %100, align 8
  %104 = icmp eq ptr %103, %56
  br i1 %104, label %105, label %270

105:                                              ; preds = %102
  %106 = load ptr, ptr %94, align 4
  %107 = getelementptr inbounds %struct.drm_device, ptr %106, i32 0, i32 5
  %108 = load ptr, ptr %107, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  store i8 1, ptr %4, align 2
  store i8 38, ptr %38, align 1
  %109 = load ptr, ptr %56, align 4
  %110 = getelementptr inbounds %struct.nouveau_encoder, ptr %109, i32 0, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.dcb_output, ptr %111, i32 0, i32 1
  %113 = load i16, ptr %112, align 4
  store i16 %113, ptr %39, align 2
  %114 = getelementptr inbounds %struct.dcb_output, ptr %111, i32 0, i32 2
  %115 = load i16, ptr %114, align 2
  %116 = and i16 %115, -3841
  %117 = getelementptr i8, ptr %93, i32 68
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nv50_head, ptr %118, i32 0, i32 1, i32 1
  %120 = load i32, ptr %119, align 8
  %121 = shl i32 256, %120
  %122 = trunc i32 %121 to i16
  %123 = or i16 %116, %122
  store i16 %123, ptr %40, align 2
  store i16 0, ptr %41, align 2
  store i64 0, ptr %42, align 2
  call void @mutex_lock(ptr noundef %89) #11
  %124 = load i32, ptr @__drm_debug, align 4
  %125 = and i32 %124, 16
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %137, label %127

127:                                              ; preds = %105
  %128 = getelementptr inbounds %struct.nouveau_drm, ptr %108, i32 0, i32 2, i32 1
  %129 = load ptr, ptr %128, align 8
  %130 = getelementptr inbounds %struct.nouveau_drm, ptr %129, i32 0, i32 3
  %131 = load ptr, ptr %130, align 8
  %132 = getelementptr inbounds %struct.drm_device, ptr %131, i32 0, i32 2
  %133 = load ptr, ptr %132, align 4
  %134 = getelementptr inbounds %struct.nouveau_drm, ptr %108, i32 0, i32 2, i32 12
  %135 = getelementptr i8, ptr %93, i32 28
  %136 = load ptr, ptr %135, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %133, ptr noundef nonnull @.str.21, ptr noundef %134, ptr noundef %136) #12
  br label %137

137:                                              ; preds = %127, %105
  %138 = getelementptr inbounds %struct.nv50_mstc, ptr %100, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.drm_dp_mst_port, ptr %139, i32 0, i32 16
  %141 = load i32, ptr %140, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %242

143:                                              ; preds = %137
  %144 = load ptr, ptr %94, align 4
  %145 = getelementptr inbounds %struct.drm_device, ptr %144, i32 0, i32 5
  %146 = load ptr, ptr %145, align 4
  %147 = load ptr, ptr %99, align 4
  %148 = load ptr, ptr %147, align 8
  %149 = getelementptr inbounds %struct.nv50_mstc, ptr %147, i32 0, i32 1
  %150 = load ptr, ptr %149, align 4
  %151 = getelementptr inbounds %struct.drm_dp_mst_port, ptr %150, i32 0, i32 16
  %152 = load i32, ptr %151, align 4
  %153 = getelementptr inbounds %struct.nv50_mstm, ptr %148, i32 0, i32 1, i32 21
  %154 = call zeroext i1 @mutex_is_locked(ptr noundef %153) #11
  br i1 %154, label %156, label %155, !prof !20

155:                                              ; preds = %143
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 963, i32 noundef 9, ptr noundef null) #11
  br label %156

156:                                              ; preds = %155, %143
  %157 = load i32, ptr @__drm_debug, align 4
  %158 = and i32 %157, 16
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %170, label %160

160:                                              ; preds = %156
  %161 = getelementptr inbounds %struct.nouveau_drm, ptr %146, i32 0, i32 2, i32 1
  %162 = load ptr, ptr %161, align 8
  %163 = getelementptr inbounds %struct.nouveau_drm, ptr %162, i32 0, i32 3
  %164 = load ptr, ptr %163, align 8
  %165 = getelementptr inbounds %struct.drm_device, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr inbounds %struct.nouveau_drm, ptr %146, i32 0, i32 2, i32 12
  %168 = getelementptr i8, ptr %93, i32 28
  %169 = load ptr, ptr %168, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %166, ptr noundef nonnull @.str.23, ptr noundef %167, ptr noundef %169, i32 noundef %152) #12
  br label %170

170:                                              ; preds = %160, %156
  %171 = getelementptr inbounds %struct.nv50_mstm, ptr %148, i32 0, i32 1, i32 5
  %172 = load i32, ptr %171, align 4
  %173 = icmp sgt i32 %172, 0
  br i1 %173, label %174, label %242

174:                                              ; preds = %170
  %175 = getelementptr inbounds %struct.nv50_mstm, ptr %148, i32 0, i32 1, i32 23
  %176 = getelementptr inbounds %struct.nouveau_drm, ptr %146, i32 0, i32 2, i32 1
  %177 = getelementptr inbounds %struct.nouveau_drm, ptr %146, i32 0, i32 2, i32 12
  %178 = load i32, ptr @__drm_debug, align 4
  br label %183

179:                                              ; preds = %207
  %180 = icmp sgt i32 %208, 0
  br i1 %180, label %181, label %242

181:                                              ; preds = %179
  %182 = load ptr, ptr %175, align 4
  br label %212

183:                                              ; preds = %207, %174
  %184 = phi i32 [ %172, %174 ], [ %208, %207 ]
  %185 = phi i32 [ %178, %174 ], [ %209, %207 ]
  %186 = phi i32 [ 0, %174 ], [ %210, %207 ]
  %187 = and i32 %185, 16
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %207, label %189

189:                                              ; preds = %183
  %190 = load ptr, ptr %175, align 4
  %191 = load ptr, ptr %176, align 8
  %192 = getelementptr inbounds %struct.nouveau_drm, ptr %191, i32 0, i32 3
  %193 = load ptr, ptr %192, align 8
  %194 = getelementptr inbounds %struct.drm_device, ptr %193, i32 0, i32 2
  %195 = load ptr, ptr %194, align 4
  %196 = load ptr, ptr %148, align 4
  %197 = getelementptr inbounds %struct.drm_encoder, ptr %196, i32 0, i32 3
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr %struct.drm_dp_payload, ptr %190, i32 %186, i32 3
  %200 = load i32, ptr %199, align 4
  %201 = getelementptr %struct.drm_dp_payload, ptr %190, i32 %186, i32 1
  %202 = load i32, ptr %201, align 4
  %203 = getelementptr %struct.drm_dp_payload, ptr %190, i32 %186, i32 2
  %204 = load i32, ptr %203, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %195, ptr noundef nonnull @.str.24, ptr noundef %177, ptr noundef %198, i32 noundef %186, i32 noundef %200, i32 noundef %202, i32 noundef %204) #12
  %205 = load i32, ptr @__drm_debug, align 4
  %206 = load i32, ptr %171, align 4
  br label %207

207:                                              ; preds = %189, %183
  %208 = phi i32 [ %206, %189 ], [ %184, %183 ]
  %209 = phi i32 [ %205, %189 ], [ %185, %183 ]
  %210 = add nuw nsw i32 %186, 1
  %211 = icmp slt i32 %210, %208
  br i1 %211, label %183, label %179

212:                                              ; preds = %217, %181
  %213 = phi i32 [ 0, %181 ], [ %218, %217 ]
  %214 = getelementptr %struct.drm_dp_payload, ptr %182, i32 %213, i32 3
  %215 = load i32, ptr %214, align 4
  %216 = icmp eq i32 %215, %152
  br i1 %216, label %220, label %217

217:                                              ; preds = %212
  %218 = add nuw nsw i32 %213, 1
  %219 = icmp eq i32 %218, %208
  br i1 %219, label %242, label %212

220:                                              ; preds = %212
  %221 = getelementptr %struct.drm_dp_payload, ptr %182, i32 %213
  %222 = icmp eq ptr %221, null
  br i1 %222, label %242, label %223

223:                                              ; preds = %220
  %224 = getelementptr %struct.drm_dp_payload, ptr %182, i32 %213, i32 1
  %225 = load i32, ptr %224, align 4
  %226 = trunc i32 %225 to i8
  store i8 %226, ptr %43, align 2
  %227 = getelementptr %struct.drm_dp_payload, ptr %182, i32 %213, i32 2
  %228 = load i32, ptr %227, align 4
  %229 = trunc i32 %228 to i8
  store i8 %229, ptr %44, align 1
  %230 = load ptr, ptr %138, align 4
  %231 = getelementptr inbounds %struct.drm_dp_mst_port, ptr %230, i32 0, i32 16, i32 1
  %232 = load i32, ptr %231, align 4
  %233 = trunc i32 %232 to i16
  store i16 %233, ptr %45, align 2
  %234 = load ptr, ptr %138, align 4
  %235 = getelementptr inbounds %struct.drm_dp_mst_port, ptr %234, i32 0, i32 16, i32 2
  %236 = load i32, ptr %235, align 4
  %237 = trunc i32 %236 to i16
  store i16 %237, ptr %46, align 2
  %238 = and i32 %225, 255
  %239 = and i32 %228, 255
  %240 = and i32 %232, 65535
  %241 = and i32 %236, 65535
  br label %242

242:                                              ; preds = %223, %220, %217, %179, %170, %137
  %243 = phi i32 [ 0, %170 ], [ 0, %179 ], [ 0, %220 ], [ %241, %223 ], [ 0, %137 ], [ 0, %217 ]
  %244 = phi i32 [ 0, %170 ], [ 0, %179 ], [ 0, %220 ], [ %240, %223 ], [ 0, %137 ], [ 0, %217 ]
  %245 = phi i32 [ 0, %170 ], [ 0, %179 ], [ 0, %220 ], [ %239, %223 ], [ 0, %137 ], [ 0, %217 ]
  %246 = phi i32 [ 0, %170 ], [ 0, %179 ], [ 0, %220 ], [ %238, %223 ], [ 0, %137 ], [ 0, %217 ]
  %247 = load i32, ptr @__drm_debug, align 4
  %248 = and i32 %247, 16
  %249 = icmp eq i32 %248, 0
  br i1 %249, label %263, label %250

250:                                              ; preds = %242
  %251 = getelementptr inbounds %struct.nouveau_drm, ptr %108, i32 0, i32 2, i32 1
  %252 = load ptr, ptr %251, align 8
  %253 = getelementptr inbounds %struct.nouveau_drm, ptr %252, i32 0, i32 3
  %254 = load ptr, ptr %253, align 8
  %255 = getelementptr inbounds %struct.drm_device, ptr %254, i32 0, i32 2
  %256 = load ptr, ptr %255, align 4
  %257 = getelementptr inbounds %struct.nouveau_drm, ptr %108, i32 0, i32 2, i32 12
  %258 = getelementptr i8, ptr %93, i32 28
  %259 = load ptr, ptr %258, align 4
  %260 = load ptr, ptr %117, align 4
  %261 = getelementptr inbounds %struct.nv50_head, ptr %260, i32 0, i32 1, i32 0, i32 3
  %262 = load ptr, ptr %261, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %256, ptr noundef nonnull @.str.22, ptr noundef %257, ptr noundef %259, ptr noundef %262, i32 noundef %246, i32 noundef %245, i32 noundef %244, i32 noundef %243) #12
  br label %263

263:                                              ; preds = %250, %242
  %264 = getelementptr inbounds %struct.nouveau_drm, ptr %108, i32 0, i32 19
  %265 = load ptr, ptr %264, align 4
  %266 = getelementptr inbounds %struct.nouveau_display, ptr %265, i32 0, i32 4
  %267 = call i32 @nvif_object_mthd(ptr noundef %266, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 16) #11
  call void @mutex_unlock(ptr noundef %89) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %268 = load ptr, ptr %56, align 4
  %269 = load ptr, ptr %268, align 4
  br label %270

270:                                              ; preds = %263, %102, %98, %90
  %271 = phi ptr [ %91, %98 ], [ %91, %102 ], [ %269, %263 ], [ %91, %90 ]
  %272 = phi ptr [ %92, %98 ], [ %92, %102 ], [ %268, %263 ], [ %92, %90 ]
  %273 = load ptr, ptr %93, align 4
  %274 = getelementptr inbounds %struct.drm_device, ptr %271, i32 0, i32 30, i32 16
  %275 = icmp eq ptr %273, %274
  br i1 %275, label %276, label %90

276:                                              ; preds = %270, %80
  %277 = phi ptr [ %83, %80 ], [ %272, %270 ]
  %278 = phi ptr [ %84, %80 ], [ %271, %270 ]
  %279 = getelementptr inbounds %struct.nv50_mstm, ptr %56, i32 0, i32 6
  %280 = load i8, ptr %279, align 4, !range !14
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %303, label %282

282:                                              ; preds = %276
  %283 = getelementptr inbounds %struct.nv50_mstm, ptr %56, i32 0, i32 7
  %284 = load i32, ptr %283, align 4
  %285 = icmp eq i32 %284, 0
  br i1 %285, label %286, label %302

286:                                              ; preds = %282
  %287 = getelementptr inbounds %struct.drm_device, ptr %278, i32 0, i32 5
  %288 = load ptr, ptr %287, align 4
  %289 = getelementptr inbounds %struct.nouveau_drm, ptr %288, i32 0, i32 19
  %290 = load ptr, ptr %289, align 4
  %291 = load ptr, ptr %290, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 513, ptr %3, align 8, !annotation !8
  %292 = getelementptr inbounds %struct.nouveau_encoder, ptr %277, i32 0, i32 1
  %293 = load ptr, ptr %292, align 4
  %294 = getelementptr inbounds %struct.dcb_output, ptr %293, i32 0, i32 1
  %295 = load i16, ptr %294, align 4
  store i16 %295, ptr %47, align 2
  %296 = getelementptr inbounds %struct.dcb_output, ptr %293, i32 0, i32 2
  %297 = load i16, ptr %296, align 2
  store i16 %297, ptr %48, align 4
  %298 = load ptr, ptr %291, align 8
  %299 = call i32 @nvif_object_mthd(ptr noundef %298, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 8) #11
  %300 = getelementptr inbounds %struct.nouveau_encoder, ptr %277, i32 0, i32 2
  store i32 -1, ptr %300, align 4
  %301 = getelementptr inbounds %struct.nouveau_encoder, ptr %277, i32 0, i32 3
  store i32 0, ptr %301, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  br label %302

302:                                              ; preds = %286, %282
  store i8 0, ptr %279, align 4
  br label %303

303:                                              ; preds = %302, %276, %58, %54, %49
  %304 = load ptr, ptr %50, align 4
  %305 = load ptr, ptr %9, align 8
  %306 = getelementptr inbounds %struct.drm_device, ptr %305, i32 0, i32 30, i32 16
  %307 = icmp eq ptr %304, %306
  br i1 %307, label %308, label %49

308:                                              ; preds = %303, %32
  %309 = load ptr, ptr %17, align 8
  %310 = getelementptr inbounds %struct.nv50_core_func, ptr %309, i32 0, i32 1
  %311 = load ptr, ptr %310, align 4
  %312 = getelementptr inbounds %struct.nv50_disp, ptr %15, i32 0, i32 3
  %313 = load ptr, ptr %312, align 8
  call void %311(ptr noundef %313, i32 noundef 0) #11
  %314 = load ptr, ptr %17, align 8
  %315 = getelementptr inbounds %struct.nv50_core_func, ptr %314, i32 0, i32 4
  %316 = load ptr, ptr %315, align 4
  %317 = call i32 %316(ptr noundef %17, ptr noundef %1, i1 noundef zeroext true) #11
  %318 = load ptr, ptr %17, align 8
  %319 = getelementptr inbounds %struct.nv50_core_func, ptr %318, i32 0, i32 3
  %320 = load ptr, ptr %319, align 4
  %321 = load ptr, ptr %312, align 8
  %322 = load ptr, ptr %16, align 4
  %323 = getelementptr inbounds %struct.nv50_core, ptr %322, i32 0, i32 1, i32 0, i32 1
  %324 = load ptr, ptr %323, align 8
  %325 = call i32 %320(ptr noundef %321, i32 noundef 0, ptr noundef %324) #11
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %335, label %327

327:                                              ; preds = %308
  %328 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 1
  %329 = load ptr, ptr %328, align 8
  %330 = getelementptr inbounds %struct.nouveau_drm, ptr %329, i32 0, i32 3
  %331 = load ptr, ptr %330, align 8
  %332 = getelementptr inbounds %struct.drm_device, ptr %331, i32 0, i32 2
  %333 = load ptr, ptr %332, align 4
  %334 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %333, ptr noundef nonnull @.str.19, ptr noundef %334) #12
  br label %335

335:                                              ; preds = %327, %308
  %336 = load ptr, ptr %9, align 8
  %337 = getelementptr inbounds %struct.drm_device, ptr %336, i32 0, i32 30, i32 16
  %338 = load ptr, ptr %337, align 4
  %339 = icmp eq ptr %338, %337
  br i1 %339, label %433, label %340

340:                                              ; preds = %428, %335
  %341 = phi ptr [ %429, %428 ], [ %336, %335 ]
  %342 = phi ptr [ %430, %428 ], [ %338, %335 ]
  %343 = getelementptr i8, ptr %342, i32 32
  %344 = load i32, ptr %343, align 4
  %345 = icmp eq i32 %344, 7
  br i1 %345, label %428, label %346

346:                                              ; preds = %340
  %347 = getelementptr i8, ptr %342, i32 240
  %348 = load ptr, ptr %347, align 4
  %349 = icmp eq ptr %348, null
  br i1 %349, label %428, label %350

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.nv50_mstm, ptr %348, i32 0, i32 5
  %352 = load i8, ptr %351, align 1, !range !14
  %353 = icmp eq i8 %352, 0
  br i1 %353, label %428, label %354

354:                                              ; preds = %350
  %355 = load i32, ptr @__drm_debug, align 4
  %356 = and i32 %355, 16
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %372, label %358

358:                                              ; preds = %354
  %359 = load ptr, ptr %348, align 4
  %360 = load ptr, ptr %359, align 4
  %361 = getelementptr inbounds %struct.drm_device, ptr %360, i32 0, i32 5
  %362 = load ptr, ptr %361, align 4
  %363 = getelementptr inbounds %struct.nouveau_drm, ptr %362, i32 0, i32 2, i32 1
  %364 = load ptr, ptr %363, align 8
  %365 = getelementptr inbounds %struct.nouveau_drm, ptr %364, i32 0, i32 3
  %366 = load ptr, ptr %365, align 8
  %367 = getelementptr inbounds %struct.drm_device, ptr %366, i32 0, i32 2
  %368 = load ptr, ptr %367, align 4
  %369 = getelementptr inbounds %struct.nouveau_drm, ptr %362, i32 0, i32 2, i32 12
  %370 = getelementptr inbounds %struct.drm_encoder, ptr %359, i32 0, i32 3
  %371 = load ptr, ptr %370, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %368, ptr noundef nonnull @.str.25, ptr noundef %369, ptr noundef %371) #12
  br label %372

372:                                              ; preds = %358, %354
  %373 = getelementptr inbounds %struct.nv50_mstm, ptr %348, i32 0, i32 1
  %374 = call i32 @drm_dp_check_act_status(ptr noundef %373) #11
  %375 = call i32 @drm_dp_update_payload_part2(ptr noundef %373) #11
  %376 = load ptr, ptr %348, align 4
  %377 = load ptr, ptr %376, align 4
  %378 = getelementptr inbounds %struct.drm_device, ptr %377, i32 0, i32 30, i32 16
  %379 = load ptr, ptr %378, align 4
  %380 = icmp eq ptr %379, %378
  br i1 %380, label %426, label %381

381:                                              ; preds = %421, %372
  %382 = phi ptr [ %422, %421 ], [ %377, %372 ]
  %383 = phi ptr [ %423, %421 ], [ %379, %372 ]
  %384 = getelementptr i8, ptr %383, i32 -4
  %385 = getelementptr i8, ptr %383, i32 32
  %386 = load i32, ptr %385, align 4
  %387 = icmp eq i32 %386, 7
  br i1 %387, label %388, label %421

388:                                              ; preds = %381
  %389 = getelementptr i8, ptr %383, i32 72
  %390 = load ptr, ptr %389, align 4
  %391 = icmp eq ptr %390, null
  br i1 %391, label %421, label %392

392:                                              ; preds = %388
  %393 = load ptr, ptr %390, align 8
  %394 = icmp eq ptr %393, %348
  br i1 %394, label %395, label %421

395:                                              ; preds = %392
  %396 = load ptr, ptr %384, align 4
  %397 = getelementptr inbounds %struct.drm_device, ptr %396, i32 0, i32 5
  %398 = load ptr, ptr %397, align 4
  %399 = getelementptr i8, ptr %383, i32 76
  %400 = load i8, ptr %399, align 4, !range !14
  %401 = icmp eq i8 %400, 0
  br i1 %401, label %421, label %402

402:                                              ; preds = %395
  %403 = load i32, ptr @__drm_debug, align 4
  %404 = and i32 %403, 16
  %405 = icmp eq i32 %404, 0
  br i1 %405, label %416, label %406

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.nouveau_drm, ptr %398, i32 0, i32 2, i32 1
  %408 = load ptr, ptr %407, align 8
  %409 = getelementptr inbounds %struct.nouveau_drm, ptr %408, i32 0, i32 3
  %410 = load ptr, ptr %409, align 8
  %411 = getelementptr inbounds %struct.drm_device, ptr %410, i32 0, i32 2
  %412 = load ptr, ptr %411, align 4
  %413 = getelementptr inbounds %struct.nouveau_drm, ptr %398, i32 0, i32 2, i32 12
  %414 = getelementptr i8, ptr %383, i32 28
  %415 = load ptr, ptr %414, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %412, ptr noundef nonnull @.str.26, ptr noundef %413, ptr noundef %415) #12
  br label %416

416:                                              ; preds = %406, %402
  %417 = getelementptr inbounds %struct.nv50_mstc, ptr %390, i32 0, i32 1
  %418 = load ptr, ptr %417, align 4
  call void @drm_dp_mst_deallocate_vcpi(ptr noundef %373, ptr noundef %418) #11
  store ptr null, ptr %389, align 4
  store i8 0, ptr %399, align 4
  %419 = load ptr, ptr %348, align 4
  %420 = load ptr, ptr %419, align 4
  br label %421

421:                                              ; preds = %416, %395, %392, %388, %381
  %422 = phi ptr [ %420, %416 ], [ %382, %395 ], [ %382, %388 ], [ %382, %392 ], [ %382, %381 ]
  %423 = load ptr, ptr %383, align 4
  %424 = getelementptr inbounds %struct.drm_device, ptr %422, i32 0, i32 30, i32 16
  %425 = icmp eq ptr %423, %424
  br i1 %425, label %426, label %381

426:                                              ; preds = %421, %372
  store i8 0, ptr %351, align 1
  %427 = load ptr, ptr %9, align 8
  br label %428

428:                                              ; preds = %426, %350, %346, %340
  %429 = phi ptr [ %341, %340 ], [ %427, %426 ], [ %341, %350 ], [ %341, %346 ]
  %430 = load ptr, ptr %342, align 4
  %431 = getelementptr inbounds %struct.drm_device, ptr %429, i32 0, i32 30, i32 16
  %432 = icmp eq ptr %430, %431
  br i1 %432, label %433, label %340

433:                                              ; preds = %428, %335
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_release_notifier_contexts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_init_notifier_contexts(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_head_flush_set(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_crtc_vblank_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_head_flush_set_wndw(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_wndw_flush_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_wndw_wait_armed(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @drm_crtc_accurate_vblank_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_send_vblank_event(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_crtc_vblank_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_crc_atomic_start_reporting(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_hw_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_commit_cleanup_done(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_update_payload_part1(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mutex_is_locked(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_check_act_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_update_payload_part2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_deallocate_vcpi(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_state_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_atomic_state_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_default_clear(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_state_default_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ttm_bo_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_msto_destroy(ptr noundef %0) #0 {
  tail call void @drm_encoder_cleanup(ptr noundef %0) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_msto_atomic_disable(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.nv50_msto, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nv50_mstm, ptr %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.nv50_mstc, ptr %4, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void @drm_dp_mst_reset_vcpi_slots(ptr noundef %6, ptr noundef %8) #11
  %9 = load ptr, ptr %5, align 4
  %10 = getelementptr inbounds %struct.nouveau_encoder, ptr %9, i32 0, i32 16
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.nv50_msto, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.nv50_head, ptr %13, i32 0, i32 1, i32 1
  %15 = load i32, ptr %14, align 8
  %16 = trunc i32 %15 to i8
  tail call void %11(ptr noundef %9, i8 noundef zeroext %16, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %17 = getelementptr inbounds %struct.nv50_mstm, ptr %5, i32 0, i32 5
  store i8 1, ptr %17, align 1
  %18 = getelementptr inbounds %struct.nv50_mstm, ptr %5, i32 0, i32 7
  %19 = load i32, ptr %18, align 4
  %20 = add i32 %19, -1
  store i32 %20, ptr %18, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = getelementptr inbounds %struct.nv50_mstm, ptr %5, i32 0, i32 6
  store i8 1, ptr %23, align 4
  br label %24

24:                                               ; preds = %22, %2
  %25 = getelementptr inbounds %struct.nv50_msto, ptr %0, i32 0, i32 3
  store i8 1, ptr %25, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_msto_atomic_enable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.anon.235, align 2
  %4 = alloca %struct.drm_connector_list_iter, align 8
  %5 = getelementptr inbounds %struct.nv50_msto, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nv50_head, ptr %6, i32 0, i32 1, i32 0, i32 8
  %10 = load i32, ptr %9, align 8
  %11 = getelementptr %struct.__drm_crtcs_state, ptr %8, i32 %10, i32 3
  %12 = load ptr, ptr %11, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #11
  store i64 0, ptr %4, align 8, !annotation !8
  %13 = load ptr, ptr %0, align 4
  call void @drm_connector_list_iter_begin(ptr noundef %13, ptr noundef nonnull %4) #11
  br label %14

14:                                               ; preds = %18, %2
  %15 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #11
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #11
  br label %28

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.drm_connector, ptr %15, i32 0, i32 52
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.drm_connector_state, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, %0
  br i1 %23, label %24, label %14

24:                                               ; preds = %18
  %25 = getelementptr i8, ptr %15, i32 -8
  %26 = load ptr, ptr %25, align 8
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #11
  %27 = icmp eq ptr %25, null
  br i1 %27, label %28, label %29, !prof !9

28:                                               ; preds = %24, %17
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1118, i32 noundef 9, ptr noundef null) #11
  br label %109

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.nv50_mstm, ptr %26, i32 0, i32 1
  %31 = getelementptr i8, ptr %15, i32 -4
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 13
  %34 = load i32, ptr %33, align 8
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 13, i32 1
  %36 = load i8, ptr %35, align 4
  %37 = and i8 %36, 63
  %38 = zext i8 %37 to i32
  %39 = call zeroext i1 @drm_dp_mst_allocate_vcpi(ptr noundef %30, ptr noundef %32, i32 noundef %34, i32 noundef %38) #11
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 4, ptr noundef nonnull @.str.28) #11
  br label %41

41:                                               ; preds = %40, %29
  %42 = getelementptr inbounds %struct.nv50_mstm, ptr %26, i32 0, i32 7
  %43 = load i32, ptr %42, align 4
  %44 = add i32 %43, 1
  store i32 %44, ptr %42, align 4
  %45 = icmp eq i32 %43, 0
  br i1 %45, label %46, label %89

46:                                               ; preds = %41
  %47 = load ptr, ptr %26, align 4
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 5
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %54, i32 0, i32 19
  %56 = load ptr, ptr %55, align 4
  %57 = load ptr, ptr %56, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  store i8 1, ptr %3, align 2
  %58 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 1
  store i8 1, ptr %58, align 1
  %59 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 2
  %60 = getelementptr inbounds %struct.nouveau_encoder, ptr %47, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dcb_output, ptr %61, i32 0, i32 1
  %63 = load i16, ptr %62, align 4
  store i16 %63, ptr %59, align 2
  %64 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 3
  %65 = getelementptr inbounds %struct.dcb_output, ptr %61, i32 0, i32 2
  %66 = load i16, ptr %65, align 2
  store i16 %66, ptr %64, align 2
  %67 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(10) %67, i8 0, i64 10, i1 false)
  %68 = load ptr, ptr %57, align 8
  %69 = call i32 @nvif_object_mthd(ptr noundef %68, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 16) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %46
  %72 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 1
  %73 = load ptr, ptr %72, align 8
  %74 = getelementptr inbounds %struct.nouveau_drm, ptr %73, i32 0, i32 3
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.drm_device, ptr %75, i32 0, i32 2
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %77, ptr noundef nonnull @.str.29, ptr noundef %78, i32 noundef %69) #12
  br label %88

79:                                               ; preds = %46
  %80 = getelementptr inbounds %struct.anon.235, ptr %3, i32 0, i32 1, i32 2
  %81 = getelementptr inbounds %struct.anon.235, ptr %3, i32 0, i32 1, i32 1
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds %struct.nouveau_encoder, ptr %47, i32 0, i32 2
  store i32 %83, ptr %84, align 4
  %85 = load i8, ptr %80, align 2
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds %struct.nouveau_encoder, ptr %47, i32 0, i32 3
  store i32 %86, ptr %87, align 4
  br label %88

88:                                               ; preds = %79, %71
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  br label %89

89:                                               ; preds = %88, %41
  %90 = load ptr, ptr %26, align 4
  %91 = getelementptr inbounds %struct.nouveau_encoder, ptr %90, i32 0, i32 3
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  %95 = select i1 %94, i8 9, i8 8
  %96 = getelementptr inbounds %struct.nouveau_encoder, ptr %90, i32 0, i32 16
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nv50_head, ptr %6, i32 0, i32 1, i32 1
  %99 = load i32, ptr %98, align 8
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds %struct.nv50_head_atom, ptr %12, i32 0, i32 11, i32 1
  %102 = load i8, ptr %101, align 1
  %103 = icmp eq i8 %102, 8
  %104 = select i1 %103, i8 5, i8 6
  %105 = icmp eq i8 %102, 6
  %106 = select i1 %105, i8 2, i8 %104
  call void %97(ptr noundef %90, i8 noundef zeroext %100, ptr noundef %12, i8 noundef zeroext %95, i8 noundef zeroext %106) #11
  %107 = getelementptr inbounds %struct.nv50_msto, ptr %0, i32 0, i32 2
  store ptr %25, ptr %107, align 4
  %108 = getelementptr inbounds %struct.nv50_mstm, ptr %26, i32 0, i32 5
  store i8 1, ptr %108, align 1
  br label %109

109:                                              ; preds = %89, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_msto_atomic_check(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 20
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 -8
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr i8, ptr %6, i32 968
  %10 = load ptr, ptr %9, align 8
  tail call fastcc void @nv50_outp_atomic_check_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %10)
  %11 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 3
  %12 = load i8, ptr %11, align 2
  %13 = and i8 %12, 10
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.drm_atomic_state, ptr %5, i32 0, i32 2
  %17 = load i8, ptr %16, align 4
  %18 = and i8 %17, 8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 13
  %22 = load i32, ptr %21, align 8
  br label %34

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 20, i32 2
  %27 = load i32, ptr %26, align 8
  %28 = trunc i32 %27 to i8
  %29 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 11, i32 1
  store i8 %28, ptr %29, align 1
  %30 = and i32 %27, 255
  %31 = mul nuw nsw i32 %30, 3
  %32 = tail call i32 @drm_dp_calc_pbn_mode(i32 noundef %25, i32 noundef %31, i1 noundef zeroext false) #11
  %33 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 13
  store i32 %32, ptr %33, align 8
  br label %34

34:                                               ; preds = %23, %20
  %35 = phi i32 [ %22, %20 ], [ %32, %23 ]
  %36 = getelementptr inbounds %struct.nv50_mstm, ptr %8, i32 0, i32 1
  %37 = getelementptr i8, ptr %6, i32 -4
  %38 = load ptr, ptr %37, align 4
  %39 = tail call i32 @drm_dp_atomic_find_vcpi_slots(ptr noundef %5, ptr noundef %36, ptr noundef %38, i32 noundef %35, i32 noundef 0) #11
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = trunc i32 %39 to i8
  %43 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 13, i32 1
  %44 = load i8, ptr %43, align 4
  %45 = and i8 %42, 63
  %46 = and i8 %44, -64
  %47 = or i8 %46, %45
  store i8 %47, ptr %43, align 4
  br label %48

48:                                               ; preds = %41, %34, %3
  %49 = phi i32 [ 0, %41 ], [ 0, %3 ], [ %39, %34 ]
  ret i32 %49
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_reset_vcpi_slots(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_mst_allocate_vcpi(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_outp_atomic_check_view(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2, ptr noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %6 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8
  %7 = load ptr, ptr %2, align 4
  %8 = load i32, ptr @__drm_debug, align 4
  %9 = and i32 %8, 16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %24, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 4
  %13 = getelementptr inbounds %struct.drm_device, ptr %12, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 2, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %16, i32 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = getelementptr inbounds %struct.drm_device, ptr %18, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 2, i32 12
  %22 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 3
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %20, ptr noundef nonnull @.str.30, ptr noundef %21, ptr noundef %23) #12
  br label %24

24:                                               ; preds = %11, %4
  %25 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %2, i32 0, i32 2, i32 2
  store i8 0, ptr %25, align 4
  %26 = icmp eq ptr %3, null
  br i1 %26, label %59, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %2, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.drm_connector, ptr %7, i32 0, i32 10
  %33 = load i32, ptr %32, align 8
  switch i32 %33, label %52 [
    i32 7, label %34
    i32 14, label %34
  ]

34:                                               ; preds = %31, %31
  %35 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 1
  %36 = load i16, ptr %35, align 4
  %37 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 1
  %38 = load i16, ptr %37, align 4
  %39 = icmp eq i16 %36, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 6
  %42 = load i16, ptr %41, align 2
  %43 = getelementptr inbounds %struct.drm_display_mode, ptr %3, i32 0, i32 6
  %44 = load i16, ptr %43, align 2
  %45 = icmp eq i16 %42, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 8, i32 28
  %48 = load i8, ptr %47, align 2
  %49 = and i8 %48, 64
  %50 = icmp eq i8 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %40, %34
  store i8 1, ptr %25, align 4
  br label %52

52:                                               ; preds = %51, %46, %31, %27
  %53 = phi ptr [ %6, %31 ], [ %6, %46 ], [ %3, %51 ], [ %3, %27 ]
  %54 = tail call zeroext i1 @drm_mode_equal(ptr noundef %5, ptr noundef %53) #11
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  tail call void @drm_mode_copy(ptr noundef %5, ptr noundef %53) #11
  %56 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 3
  %57 = load i8, ptr %56, align 2
  %58 = or i8 %57, 2
  store i8 %58, ptr %56, align 2
  br label %59

59:                                               ; preds = %55, %52, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_calc_pbn_mode(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_atomic_find_vcpi_slots(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_mode_equal(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_sor_update(ptr nocapture noundef %0, i8 noundef zeroext %1, ptr noundef %2, i8 noundef zeroext %3, i8 noundef zeroext %4) #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nv50_disp, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %2, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %5
  %16 = zext i8 %1 to i32
  %17 = shl nuw i32 1, %16
  %18 = xor i32 %17, -1
  %19 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 7
  %20 = load i32, ptr %19, align 4
  %21 = and i32 %20, %18
  %22 = and i32 %21, 15
  %23 = icmp eq i32 %22, 0
  %24 = select i1 %23, i32 0, i32 %21
  store i32 %24, ptr %19, align 4
  br label %42

25:                                               ; preds = %5
  %26 = and i8 %3, 15
  %27 = zext i8 %26 to i32
  %28 = shl nuw nsw i32 %27, 8
  %29 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 7
  %30 = load i32, ptr %29, align 4
  %31 = zext i8 %1 to i32
  %32 = shl nuw i32 1, %31
  %33 = or i32 %28, %32
  %34 = or i32 %33, %30
  store i32 %34, ptr %29, align 4
  %35 = getelementptr inbounds %struct.nv50_head_atom, ptr %2, i32 0, i32 11
  %36 = load i8, ptr %35, align 8
  %37 = shl i8 %4, 2
  %38 = and i8 %37, 60
  %39 = and i8 %36, -61
  %40 = or i8 %39, %38
  store i8 %40, ptr %35, align 8
  %41 = load i32, ptr %29, align 4
  br label %42

42:                                               ; preds = %25, %15
  %43 = phi i32 [ %24, %15 ], [ %41, %25 ]
  %44 = load ptr, ptr %13, align 8
  %45 = getelementptr inbounds %struct.nv50_core_func, ptr %44, i32 0, i32 10
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = tail call i32 %47(ptr noundef %13, i32 noundef %49, i32 noundef %43, ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_aux_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_sor_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nv50_mstm, ptr %3, i32 0, i32 1
  tail call void @drm_dp_mst_topology_mgr_destroy(ptr noundef %6) #11
  %7 = load ptr, ptr %2, align 4
  tail call void @kfree(ptr noundef %7) #11
  store ptr null, ptr %2, align 4
  br label %8

8:                                                ; preds = %5, %1
  tail call void @drm_encoder_cleanup(ptr noundef %0) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_topology_mgr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_sor_atomic_disable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.anon.234, align 8
  %4 = alloca %struct.anon.238, align 2
  %5 = alloca %struct.anon.237, align 2
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  br label %16

16:                                               ; preds = %27, %13
  %17 = phi i32 [ 0, %13 ], [ %28, %27 ]
  %18 = getelementptr %struct.__drm_connnectors_state, ptr %15, i32 %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %27, label %21

21:                                               ; preds = %16
  %22 = getelementptr %struct.__drm_connnectors_state, ptr %15, i32 %17, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_connector_state, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %30, label %27

27:                                               ; preds = %21, %16
  %28 = add nuw nsw i32 %17, 1
  %29 = icmp eq i32 %28, %11
  br i1 %29, label %30, label %16

30:                                               ; preds = %27, %21, %2
  %31 = phi ptr [ null, %2 ], [ null, %27 ], [ %19, %21 ]
  %32 = load ptr, ptr %0, align 4
  %33 = getelementptr inbounds %struct.drm_device, ptr %32, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.nouveau_connector, ptr %31, i32 0, i32 11
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.nouveau_connector, ptr %31, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !8
  %38 = icmp eq ptr %36, null
  br i1 %38, label %60, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.nouveau_backlight, ptr %36, i32 0, i32 2
  %41 = load i8, ptr %40, align 2
  %42 = and i8 %41, 1
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %60, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.nouveau_backlight, ptr %36, i32 0, i32 1
  %46 = tail call i32 @drm_edp_backlight_disable(ptr noundef %37, ptr noundef %45) #11
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 1
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 3
  %52 = load ptr, ptr %51, align 8
  %53 = getelementptr inbounds %struct.drm_device, ptr %52, i32 0, i32 2
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %34, i32 0, i32 2, i32 12
  %56 = getelementptr inbounds %struct.drm_connector, ptr %31, i32 0, i32 6
  %57 = load i32, ptr %56, align 8
  %58 = getelementptr inbounds %struct.drm_connector, ptr %31, i32 0, i32 7
  %59 = load ptr, ptr %58, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %54, ptr noundef nonnull @.str.33, ptr noundef %55, i32 noundef %57, ptr noundef %59, i32 noundef %46) #12
  br label %60

60:                                               ; preds = %48, %44, %39, %30
  %61 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dcb_output, ptr %62, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = icmp eq i32 %64, 6
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = call i32 @drm_dp_dpcd_read(ptr noundef %37, i32 noundef 1536, ptr noundef nonnull %7, i32 noundef 1) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load i8, ptr %7, align 1
  %71 = and i8 %70, -4
  %72 = or i8 %71, 2
  store i8 %72, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 %72, ptr %6, align 1
  %73 = call i32 @drm_dp_dpcd_write(ptr noundef %37, i32 noundef 1536, ptr noundef nonnull %6, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  br label %74

74:                                               ; preds = %69, %66, %60
  %75 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 16
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nouveau_crtc, ptr %9, i32 0, i32 1
  %78 = load i32, ptr %77, align 8
  %79 = trunc i32 %78 to i8
  call void %76(ptr noundef %0, i8 noundef zeroext %79, ptr noundef null, i8 noundef zeroext 0, i8 noundef zeroext 0) #11
  %80 = load ptr, ptr %0, align 4
  %81 = getelementptr inbounds %struct.drm_device, ptr %80, i32 0, i32 5
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 19
  %84 = load ptr, ptr %83, align 4
  %85 = load ptr, ptr %84, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #11
  store i8 1, ptr %5, align 2
  %86 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %5, i32 0, i32 1
  store i8 33, ptr %86, align 1
  %87 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %5, i32 0, i32 2
  %88 = load ptr, ptr %61, align 4
  %89 = getelementptr inbounds %struct.dcb_output, ptr %88, i32 0, i32 1
  %90 = load i16, ptr %89, align 4
  store i16 %90, ptr %87, align 2
  %91 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %5, i32 0, i32 3
  %92 = getelementptr inbounds %struct.dcb_output, ptr %88, i32 0, i32 2
  %93 = load i16, ptr %92, align 2
  %94 = and i16 %93, -3841
  %95 = load i32, ptr %77, align 8
  %96 = shl i32 256, %95
  %97 = trunc i32 %96 to i16
  %98 = or i16 %94, %97
  store i16 %98, ptr %91, align 2
  %99 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %5, i32 0, i32 4
  store i16 0, ptr %99, align 2
  %100 = getelementptr inbounds %struct.anon.237, ptr %5, i32 0, i32 1
  store i64 0, ptr %100, align 2
  %101 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 31, i32 1
  call void @mutex_lock(ptr noundef %101) #11
  %102 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 8
  %103 = load i8, ptr %102, align 4, !range !14
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %74
  store i8 0, ptr %102, align 4
  %106 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 8, i32 1
  store ptr null, ptr %106, align 4
  %107 = load ptr, ptr %85, align 8
  %108 = call i32 @nvif_object_mthd(ptr noundef %107, i32 noundef 0, ptr noundef nonnull %5, i32 noundef 16) #11
  br label %109

109:                                              ; preds = %105, %74
  %110 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 31
  call void @mutex_unlock(ptr noundef %101) #11
  %111 = load ptr, ptr %110, align 8
  %112 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = load i32, ptr %77, align 8
  %115 = icmp eq ptr %111, null
  br i1 %115, label %127, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.drm_audio_component, ptr %111, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = icmp eq ptr %118, null
  br i1 %119, label %127, label %120

120:                                              ; preds = %116
  %121 = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %118, i32 0, i32 1
  %122 = load ptr, ptr %121, align 4
  %123 = icmp eq ptr %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %120
  %125 = load ptr, ptr %118, align 4
  call void %122(ptr noundef %125, i32 noundef %113, i32 noundef %114) #11
  %126 = load i32, ptr %77, align 8
  br label %127

127:                                              ; preds = %124, %120, %116, %109
  %128 = phi i32 [ %114, %109 ], [ %114, %116 ], [ %114, %120 ], [ %126, %124 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #11
  %129 = load ptr, ptr %0, align 4
  %130 = getelementptr inbounds %struct.drm_device, ptr %129, i32 0, i32 5
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr inbounds %struct.nouveau_drm, ptr %131, i32 0, i32 19
  %133 = load ptr, ptr %132, align 4
  %134 = load ptr, ptr %133, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #11
  store i8 1, ptr %4, align 2
  %135 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 1
  store i8 34, ptr %135, align 1
  %136 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 2
  %137 = load ptr, ptr %61, align 4
  %138 = getelementptr inbounds %struct.dcb_output, ptr %137, i32 0, i32 1
  %139 = load i16, ptr %138, align 4
  store i16 %139, ptr %136, align 2
  %140 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 3
  %141 = getelementptr inbounds %struct.dcb_output, ptr %137, i32 0, i32 2
  %142 = load i16, ptr %141, align 2
  %143 = and i16 %142, -3841
  %144 = shl i32 256, %128
  %145 = trunc i32 %144 to i16
  %146 = or i16 %143, %145
  store i16 %146, ptr %140, align 2
  %147 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 4
  store i16 0, ptr %147, align 2
  %148 = getelementptr inbounds %struct.anon.238, ptr %4, i32 0, i32 1
  store i64 0, ptr %148, align 2
  %149 = load ptr, ptr %134, align 8
  %150 = call i32 @nvif_object_mthd(ptr noundef %149, i32 noundef 0, ptr noundef nonnull %4, i32 noundef 16) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #11
  %151 = load ptr, ptr %0, align 4
  %152 = getelementptr inbounds %struct.drm_device, ptr %151, i32 0, i32 5
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr inbounds %struct.nouveau_drm, ptr %153, i32 0, i32 19
  %155 = load ptr, ptr %154, align 4
  %156 = load ptr, ptr %155, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 513, ptr %3, align 8, !annotation !8
  %157 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 2
  %158 = load ptr, ptr %61, align 4
  %159 = getelementptr inbounds %struct.dcb_output, ptr %158, i32 0, i32 1
  %160 = load i16, ptr %159, align 4
  store i16 %160, ptr %157, align 2
  %161 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 3
  %162 = getelementptr inbounds %struct.dcb_output, ptr %158, i32 0, i32 2
  %163 = load i16, ptr %162, align 2
  store i16 %163, ptr %161, align 4
  %164 = load ptr, ptr %156, align 8
  %165 = call i32 @nvif_object_mthd(ptr noundef %164, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 8) #11
  store i32 -1, ptr %112, align 4
  %166 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 3
  store i32 0, ptr %166, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  store ptr null, ptr %8, align 4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_sor_atomic_enable(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.anon.240, align 2
  %5 = alloca %union.hdmi_infoframe, align 4
  %6 = alloca %union.hdmi_infoframe, align 4
  %7 = alloca i8, align 1
  %8 = alloca %struct.anon.235, align 2
  %9 = alloca %struct.anon.239, align 2
  %10 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = shl nuw i32 1, %11
  %13 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_device, ptr %14, i32 0, i32 30, i32 19
  %16 = load i32, ptr %15, align 4
  %17 = icmp sgt i32 %16, 0
  %18 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %19 = load ptr, ptr %18, align 4
  br i1 %17, label %20, label %35

20:                                               ; preds = %32, %2
  %21 = phi i32 [ %33, %32 ], [ 0, %2 ]
  %22 = getelementptr %struct.__drm_crtcs_state, ptr %19, i32 %21
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %20
  %26 = getelementptr %struct.__drm_crtcs_state, ptr %19, i32 %21, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.drm_crtc_state, ptr %27, i32 0, i32 6
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, %12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %25, %20
  %33 = add nuw nsw i32 %21, 1
  %34 = icmp eq i32 %33, %16
  br i1 %34, label %35, label %20

35:                                               ; preds = %32, %25, %2
  %36 = phi ptr [ null, %2 ], [ null, %32 ], [ %23, %25 ]
  %37 = getelementptr inbounds %struct.drm_crtc, ptr %36, i32 0, i32 8
  %38 = load i32, ptr %37, align 8
  %39 = getelementptr %struct.__drm_crtcs_state, ptr %19, i32 %38, i32 3
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #11
  store i8 1, ptr %9, align 2
  %42 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %9, i32 0, i32 1
  store i8 35, ptr %42, align 1
  %43 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %9, i32 0, i32 2
  %44 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.dcb_output, ptr %45, i32 0, i32 1
  %47 = load i16, ptr %46, align 4
  store i16 %47, ptr %43, align 2
  %48 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %9, i32 0, i32 3
  %49 = getelementptr inbounds %struct.dcb_output, ptr %45, i32 0, i32 2
  %50 = load i16, ptr %49, align 2
  store i16 %50, ptr %48, align 2
  %51 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %9, i32 0, i32 4
  store i16 0, ptr %51, align 2
  %52 = getelementptr inbounds %struct.anon.239, ptr %9, i32 0, i32 1
  store i64 0, ptr %52, align 2
  %53 = load ptr, ptr %0, align 4
  %54 = getelementptr inbounds %struct.drm_device, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 19
  %57 = load ptr, ptr %56, align 4
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %60 = load i32, ptr %59, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %79

62:                                               ; preds = %35
  %63 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %64 = load ptr, ptr %63, align 4
  br label %65

65:                                               ; preds = %76, %62
  %66 = phi i32 [ 0, %62 ], [ %77, %76 ]
  %67 = getelementptr %struct.__drm_connnectors_state, ptr %64, i32 %66
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = getelementptr %struct.__drm_connnectors_state, ptr %64, i32 %66, i32 3
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.drm_connector_state, ptr %72, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70, %65
  %77 = add nuw nsw i32 %66, 1
  %78 = icmp eq i32 %77, %60
  br i1 %78, label %79, label %65

79:                                               ; preds = %76, %70, %35
  %80 = phi ptr [ null, %35 ], [ null, %76 ], [ %68, %70 ]
  %81 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 6
  store ptr %36, ptr %81, align 4
  %82 = load ptr, ptr %58, align 8
  %83 = getelementptr inbounds %struct.nvif_object, ptr %82, i32 0, i32 4
  %84 = load i32, ptr %83, align 8
  %85 = icmp eq i32 %84, 34160
  %86 = icmp sgt i32 %84, 36975
  %87 = or i1 %85, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = getelementptr inbounds %struct.nouveau_connector, ptr %80, i32 0, i32 9
  %90 = load ptr, ptr %89, align 4
  %91 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %90) #11
  %92 = load ptr, ptr %0, align 4
  %93 = load ptr, ptr %44, align 4
  br label %94

94:                                               ; preds = %88, %79
  %95 = phi ptr [ %45, %79 ], [ %93, %88 ]
  %96 = phi ptr [ %53, %79 ], [ %92, %88 ]
  %97 = phi i1 [ false, %79 ], [ %91, %88 ]
  %98 = zext i1 %97 to i8
  %99 = getelementptr inbounds %struct.drm_device, ptr %96, i32 0, i32 5
  %100 = load ptr, ptr %99, align 4
  %101 = getelementptr inbounds %struct.nouveau_drm, ptr %100, i32 0, i32 3
  %102 = load ptr, ptr %101, align 8
  %103 = getelementptr inbounds %struct.drm_device, ptr %102, i32 0, i32 5
  %104 = load ptr, ptr %103, align 4
  %105 = getelementptr inbounds %struct.nouveau_drm, ptr %104, i32 0, i32 19
  %106 = load ptr, ptr %105, align 4
  %107 = load ptr, ptr %106, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #11
  store i8 1, ptr %8, align 2
  %108 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %8, i32 0, i32 1
  store i8 1, ptr %108, align 1
  %109 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %8, i32 0, i32 2
  %110 = getelementptr inbounds %struct.dcb_output, ptr %95, i32 0, i32 1
  %111 = load i16, ptr %110, align 4
  store i16 %111, ptr %109, align 2
  %112 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %8, i32 0, i32 3
  %113 = getelementptr inbounds %struct.dcb_output, ptr %95, i32 0, i32 2
  %114 = load i16, ptr %113, align 2
  store i16 %114, ptr %112, align 2
  %115 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %8, i32 0, i32 4
  %116 = getelementptr inbounds %struct.anon.235, ptr %8, i32 0, i32 1, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(5) %115, i8 0, i64 5, i1 false) #11
  store i8 %98, ptr %116, align 1
  %117 = getelementptr inbounds %struct.anon.235, ptr %8, i32 0, i32 1, i32 4
  store i32 0, ptr %117, align 2
  %118 = load ptr, ptr %107, align 8
  %119 = call i32 @nvif_object_mthd(ptr noundef %118, i32 noundef 0, ptr noundef nonnull %8, i32 noundef 16) #11
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %129, label %121

121:                                              ; preds = %94
  %122 = getelementptr inbounds %struct.nouveau_drm, ptr %100, i32 0, i32 2, i32 1
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nouveau_drm, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.drm_device, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nouveau_drm, ptr %100, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.29, ptr noundef %128, i32 noundef %119) #12
  br label %138

129:                                              ; preds = %94
  %130 = getelementptr inbounds %struct.anon.235, ptr %8, i32 0, i32 1, i32 2
  %131 = getelementptr inbounds %struct.anon.235, ptr %8, i32 0, i32 1, i32 1
  %132 = load i8, ptr %131, align 1
  %133 = zext i8 %132 to i32
  %134 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 2
  store i32 %133, ptr %134, align 4
  %135 = load i8, ptr %130, align 2
  %136 = zext i8 %135 to i32
  %137 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 3
  store i32 %136, ptr %137, align 4
  br label %138

138:                                              ; preds = %129, %121
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #11
  %139 = load ptr, ptr %44, align 4
  %140 = getelementptr inbounds %struct.dcb_output, ptr %139, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  switch i32 %141, label %366 [
    i32 2, label %142
    i32 3, label %280
    i32 6, label %339
  ]

142:                                              ; preds = %138
  %143 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 3
  %144 = load i32, ptr %143, align 4
  %145 = and i32 %144, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %160, label %147

147:                                              ; preds = %142
  %148 = load i32, ptr %41, align 4
  %149 = icmp sgt i32 %148, 164999
  br i1 %149, label %150, label %160

150:                                              ; preds = %147
  %151 = getelementptr inbounds %struct.dcb_output, ptr %139, i32 0, i32 11
  %152 = load i8, ptr %151, align 1, !range !14
  %153 = icmp eq i8 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.nouveau_connector, ptr %80, i32 0, i32 9
  %156 = load ptr, ptr %155, align 4
  %157 = call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %156) #11
  %158 = select i1 %157, i8 1, i8 5
  %159 = load ptr, ptr %44, align 4
  br label %160

160:                                              ; preds = %154, %150, %147, %142
  %161 = phi ptr [ %139, %150 ], [ %139, %147 ], [ %159, %154 ], [ %139, %142 ]
  %162 = phi i8 [ 1, %150 ], [ 1, %147 ], [ %158, %154 ], [ 2, %142 ]
  %163 = load ptr, ptr %0, align 4
  %164 = getelementptr inbounds %struct.drm_device, ptr %163, i32 0, i32 5
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 19
  %167 = load ptr, ptr %166, align 4
  %168 = load ptr, ptr %167, align 8
  call void @llvm.lifetime.start.p0(i64 50, ptr nonnull %4) #11
  %169 = getelementptr inbounds i8, ptr %4, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(44) %169, i8 0, i64 44, i1 false) #11
  store i8 1, ptr %4, align 2
  %170 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 1
  store i8 34, ptr %170, align 1
  %171 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 2
  %172 = getelementptr inbounds %struct.dcb_output, ptr %161, i32 0, i32 1
  %173 = load i16, ptr %172, align 4
  store i16 %173, ptr %171, align 2
  %174 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 3
  %175 = getelementptr inbounds %struct.dcb_output, ptr %161, i32 0, i32 2
  %176 = load i16, ptr %175, align 2
  %177 = and i16 %176, -3841
  %178 = getelementptr inbounds %struct.nouveau_crtc, ptr %36, i32 0, i32 1
  %179 = load i32, ptr %178, align 8
  %180 = shl i32 256, %179
  %181 = trunc i32 %180 to i16
  %182 = or i16 %177, %181
  store i16 %182, ptr %174, align 2
  %183 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 1, i32 1
  store i8 1, ptr %183, align 1
  %184 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 1, i32 3
  store i8 56, ptr %184, align 1
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %5, i8 0, i32 68, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 68, ptr nonnull %6) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(68) %6, i8 0, i32 68, i1 false) #11, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #11
  store i8 0, ptr %7, align 1, !annotation !8
  %185 = getelementptr inbounds %struct.nouveau_connector, ptr %80, i32 0, i32 9
  %186 = load ptr, ptr %185, align 4
  %187 = call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %186) #11
  br i1 %187, label %188, label %279

188:                                              ; preds = %160
  %189 = call i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef nonnull %5, ptr noundef %80, ptr noundef %41) #11
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  call void @drm_hdmi_avi_infoframe_quant_range(ptr noundef nonnull %5, ptr noundef %80, ptr noundef %41, i32 noundef 2) #11
  %192 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 2
  %193 = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %5, ptr noundef %192, i32 noundef 17) #11
  %194 = trunc i32 %193 to i8
  %195 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 1, i32 4
  store i8 %194, ptr %195, align 2
  br label %196

196:                                              ; preds = %191, %188
  %197 = call i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef nonnull %6, ptr noundef %80, ptr noundef %41) #11
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %208

199:                                              ; preds = %196
  %200 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 2
  %201 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 1, i32 4
  %202 = load i8, ptr %201, align 2
  %203 = zext i8 %202 to i32
  %204 = getelementptr i8, ptr %200, i32 %203
  %205 = call i32 @hdmi_infoframe_pack(ptr noundef nonnull %6, ptr noundef %204, i32 noundef 17) #11
  %206 = trunc i32 %205 to i8
  %207 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 1, i32 5
  store i8 %206, ptr %207, align 1
  br label %208

208:                                              ; preds = %199, %196
  %209 = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 4
  %210 = load i16, ptr %209, align 2
  %211 = zext i16 %210 to i32
  %212 = getelementptr inbounds %struct.drm_crtc_state, ptr %40, i32 0, i32 7, i32 1
  %213 = load i16, ptr %212, align 4
  %214 = zext i16 %213 to i32
  %215 = load i8, ptr %184, align 1
  %216 = zext i8 %215 to i32
  %217 = add nuw nsw i32 %211, 8174
  %218 = add nuw nsw i32 %214, %216
  %219 = sub nsw i32 %217, %218
  %220 = lshr i32 %219, 5
  %221 = trunc i32 %220 to i8
  %222 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 1, i32 2
  store i8 %221, ptr %222, align 2
  %223 = getelementptr inbounds %struct.drm_connector, ptr %80, i32 0, i32 20, i32 16, i32 0, i32 2
  %224 = load i8, ptr %223, align 2, !range !14
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %232, label %226

226:                                              ; preds = %208
  %227 = load i32, ptr %41, align 4
  %228 = icmp sgt i32 %227, 340000
  br i1 %228, label %232, label %229

229:                                              ; preds = %226
  %230 = getelementptr inbounds %struct.drm_connector, ptr %80, i32 0, i32 20, i32 16, i32 0, i32 2, i32 1
  %231 = load i8, ptr %230, align 1, !range !14
  br label %232

232:                                              ; preds = %229, %226, %208
  %233 = phi i8 [ 0, %208 ], [ 0, %229 ], [ 2, %226 ]
  %234 = phi i8 [ 0, %208 ], [ %231, %229 ], [ 1, %226 ]
  %235 = or i8 %234, %233
  %236 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 1, i32 6
  store i8 %235, ptr %236, align 2
  %237 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 1, i32 4
  %238 = load i8, ptr %237, align 2
  %239 = zext i8 %238 to i32
  %240 = add nuw nsw i32 %239, 16
  %241 = getelementptr inbounds %struct.anon.240, ptr %4, i32 0, i32 1, i32 5
  %242 = load i8, ptr %241, align 1
  %243 = zext i8 %242 to i32
  %244 = add nuw nsw i32 %240, %243
  %245 = load ptr, ptr %168, align 8
  %246 = call i32 @nvif_object_mthd(ptr noundef %245, i32 noundef 0, ptr noundef nonnull %4, i32 noundef %244) #11
  call fastcc void @nv50_audio_enable(ptr noundef %0, ptr noundef %36, ptr noundef %80) #11
  %247 = load i8, ptr %223, align 2, !range !14
  %248 = icmp eq i8 %247, 0
  br i1 %248, label %279, label %249

249:                                              ; preds = %232
  %250 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 4
  %251 = load ptr, ptr %250, align 4
  %252 = call i32 @drm_scdc_read(ptr noundef %251, i8 noundef zeroext 32, ptr noundef nonnull %7, i32 noundef 1) #11
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %262

254:                                              ; preds = %249
  %255 = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 1
  %256 = load ptr, ptr %255, align 8
  %257 = getelementptr inbounds %struct.nouveau_drm, ptr %256, i32 0, i32 3
  %258 = load ptr, ptr %257, align 8
  %259 = getelementptr inbounds %struct.drm_device, ptr %258, i32 0, i32 2
  %260 = load ptr, ptr %259, align 4
  %261 = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %260, ptr noundef nonnull @.str.34, ptr noundef %261, i32 noundef %252) #12
  br label %279

262:                                              ; preds = %249
  %263 = load i8, ptr %7, align 1
  %264 = and i8 %263, -4
  %265 = or i8 %264, %235
  store i8 %265, ptr %7, align 1
  %266 = load ptr, ptr %250, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #11
  store i8 %265, ptr %3, align 1
  %267 = call i32 @drm_scdc_write(ptr noundef %266, i8 noundef zeroext 32, ptr noundef nonnull %3, i32 noundef 1) #11
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #11
  %268 = icmp slt i32 %267, 0
  br i1 %268, label %269, label %279

269:                                              ; preds = %262
  %270 = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 1
  %271 = load ptr, ptr %270, align 8
  %272 = getelementptr inbounds %struct.nouveau_drm, ptr %271, i32 0, i32 3
  %273 = load ptr, ptr %272, align 8
  %274 = getelementptr inbounds %struct.drm_device, ptr %273, i32 0, i32 2
  %275 = load ptr, ptr %274, align 4
  %276 = getelementptr inbounds %struct.nouveau_drm, ptr %165, i32 0, i32 2, i32 12
  %277 = load i8, ptr %7, align 1
  %278 = zext i8 %277 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %275, ptr noundef nonnull @.str.35, ptr noundef %276, i32 noundef %278, i32 noundef %267) #12
  br label %279

279:                                              ; preds = %269, %262, %254, %232, %160
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(i64 68, ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(i64 50, ptr nonnull %4) #11
  br label %367

280:                                              ; preds = %138
  %281 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 18, i32 9
  %282 = load i8, ptr %281, align 1, !range !14
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %297, label %284

284:                                              ; preds = %280
  %285 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 18, i32 24, i32 9
  %286 = load i8, ptr %285, align 2, !range !14
  %287 = icmp eq i8 %286, 0
  br i1 %287, label %290, label %288

288:                                              ; preds = %284
  %289 = getelementptr inbounds %struct.anon.239, ptr %9, i32 0, i32 1, i32 2
  store i16 256, ptr %289, align 2
  br label %290

290:                                              ; preds = %288, %284
  %291 = phi i16 [ 768, %288 ], [ 512, %284 ]
  %292 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 18, i32 24, i32 11
  %293 = load i8, ptr %292, align 4, !range !14
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %336, label %295

295:                                              ; preds = %290
  %296 = getelementptr inbounds %struct.anon.239, ptr %9, i32 0, i32 1, i32 2
  store i16 %291, ptr %296, align 2
  br label %336

297:                                              ; preds = %280
  %298 = getelementptr inbounds %struct.nouveau_connector, ptr %80, i32 0, i32 1
  %299 = load i32, ptr %298, align 8
  %300 = icmp eq i32 %299, 65
  br i1 %300, label %301, label %307

301:                                              ; preds = %297
  %302 = getelementptr inbounds %struct.nouveau_connector, ptr %80, i32 0, i32 9
  %303 = load ptr, ptr %302, align 4
  %304 = getelementptr i8, ptr %303, i32 121
  %305 = load i8, ptr %304, align 1
  %306 = icmp eq i8 %305, 2
  br i1 %306, label %312, label %319

307:                                              ; preds = %297
  %308 = load i32, ptr %41, align 4
  %309 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 18, i32 24, i32 12
  %310 = load i32, ptr %309, align 4
  %311 = icmp slt i32 %308, %310
  br i1 %311, label %319, label %312

312:                                              ; preds = %307, %301
  %313 = getelementptr inbounds %struct.anon.239, ptr %9, i32 0, i32 1, i32 2
  store i16 256, ptr %313, align 2
  %314 = getelementptr inbounds %struct.anon.239, ptr %9, i32 0, i32 1, i32 2
  %315 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 18, i32 24, i32 13
  %316 = load i8, ptr %315, align 4
  %317 = and i8 %316, 2
  %318 = icmp eq i8 %317, 0
  br i1 %318, label %328, label %325

319:                                              ; preds = %307, %301
  %320 = getelementptr inbounds %struct.anon.239, ptr %9, i32 0, i32 1, i32 2
  %321 = getelementptr inbounds %struct.nouveau_drm, ptr %55, i32 0, i32 18, i32 24, i32 13
  %322 = load i8, ptr %321, align 4
  %323 = and i8 %322, 1
  %324 = icmp eq i8 %323, 0
  br i1 %324, label %328, label %325

325:                                              ; preds = %319, %312
  %326 = phi ptr [ %314, %312 ], [ %320, %319 ]
  %327 = phi i16 [ 768, %312 ], [ 512, %319 ]
  store i16 %327, ptr %326, align 2
  br label %328

328:                                              ; preds = %325, %319, %312
  %329 = phi ptr [ %320, %319 ], [ %314, %312 ], [ %326, %325 ]
  %330 = phi i16 [ 0, %319 ], [ 256, %312 ], [ %327, %325 ]
  %331 = getelementptr inbounds %struct.nv50_head_atom, ptr %40, i32 0, i32 11, i32 1
  %332 = load i8, ptr %331, align 1
  %333 = icmp eq i8 %332, 8
  br i1 %333, label %334, label %336

334:                                              ; preds = %328
  %335 = or i16 %330, 512
  store i16 %335, ptr %329, align 2
  br label %336

336:                                              ; preds = %334, %328, %295, %290
  %337 = load ptr, ptr %58, align 8
  %338 = call i32 @nvif_object_mthd(ptr noundef %337, i32 noundef 0, ptr noundef nonnull %9, i32 noundef 16) #11
  br label %367

339:                                              ; preds = %138
  %340 = getelementptr inbounds %struct.nv50_head_atom, ptr %40, i32 0, i32 11, i32 1
  %341 = load i8, ptr %340, align 1
  %342 = icmp eq i8 %341, 8
  %343 = select i1 %342, i8 5, i8 6
  %344 = icmp eq i8 %341, 6
  %345 = select i1 %344, i8 2, i8 %343
  %346 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 3
  %347 = load i32, ptr %346, align 4
  %348 = and i32 %347, 1
  %349 = icmp eq i32 %348, 0
  %350 = select i1 %349, i8 9, i8 8
  call fastcc void @nv50_audio_enable(ptr noundef %0, ptr noundef %36, ptr noundef %80)
  %351 = getelementptr inbounds %struct.nouveau_connector, ptr %80, i32 0, i32 11
  %352 = load ptr, ptr %351, align 4
  %353 = icmp eq ptr %352, null
  br i1 %353, label %367, label %354

354:                                              ; preds = %339
  %355 = getelementptr inbounds %struct.nouveau_backlight, ptr %352, i32 0, i32 2
  %356 = load i8, ptr %355, align 2
  %357 = and i8 %356, 1
  %358 = icmp eq i8 %357, 0
  br i1 %358, label %367, label %359

359:                                              ; preds = %354
  %360 = getelementptr inbounds %struct.nouveau_connector, ptr %80, i32 0, i32 5
  %361 = getelementptr inbounds %struct.nouveau_backlight, ptr %352, i32 0, i32 1
  %362 = load ptr, ptr %352, align 4
  %363 = load i32, ptr %362, align 8
  %364 = trunc i32 %363 to i16
  %365 = call i32 @drm_edp_backlight_enable(ptr noundef %360, ptr noundef %361, i16 noundef zeroext %364) #11
  br label %367

366:                                              ; preds = %138
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/dispnv50/disp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1807, 0\0A.popsection", ""() #11, !srcloc !27
  unreachable

367:                                              ; preds = %359, %354, %339, %336, %279
  %368 = phi i8 [ %350, %359 ], [ %350, %354 ], [ %350, %339 ], [ 0, %336 ], [ %162, %279 ]
  %369 = phi i8 [ %345, %359 ], [ %345, %354 ], [ %345, %339 ], [ 0, %336 ], [ 0, %279 ]
  %370 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 16
  %371 = load ptr, ptr %370, align 4
  %372 = getelementptr inbounds %struct.nouveau_crtc, ptr %36, i32 0, i32 1
  %373 = load i32, ptr %372, align 8
  %374 = trunc i32 %373 to i8
  call void %371(ptr noundef %0, i8 noundef zeroext %374, ptr noundef %40, i8 noundef zeroext %368, i8 noundef zeroext %369) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_outp_atomic_check(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nouveau_connector, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  tail call fastcc void @nv50_outp_atomic_check_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %6)
  %7 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 3
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 20, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 11, i32 1
  store i8 %14, ptr %15, align 1
  br label %16

16:                                               ; preds = %11, %3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edp_backlight_disable(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_monitor_audio(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv50_audio_enable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.anon.244, align 1
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #11
  %11 = getelementptr inbounds i8, ptr %4, i32 6
  call void @llvm.memset.p0.i64(ptr noundef align 1 dereferenceable(10) %11, i8 0, i64 10, i1 false)
  store i8 1, ptr %4, align 1
  %12 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 1
  store i8 33, ptr %12, align 1
  %13 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 2
  %14 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dcb_output, ptr %15, i32 0, i32 1
  %17 = load i16, ptr %16, align 4
  store i16 %17, ptr %13, align 1
  %18 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %4, i32 0, i32 3
  %19 = getelementptr inbounds %struct.dcb_output, ptr %15, i32 0, i32 2
  %20 = load i16, ptr %19, align 2
  %21 = and i16 %20, -3841
  %22 = getelementptr inbounds %struct.nouveau_crtc, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 8
  %24 = shl i32 256, %23
  %25 = trunc i32 %24 to i16
  %26 = or i16 %21, %25
  store i16 %26, ptr %18, align 1
  %27 = getelementptr inbounds %struct.nouveau_connector, ptr %2, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = tail call zeroext i1 @drm_detect_monitor_audio(ptr noundef %28) #11
  br i1 %29, label %30, label %59

30:                                               ; preds = %3
  %31 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 31
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 31, i32 1
  tail call void @mutex_lock(ptr noundef %32) #11
  %33 = getelementptr inbounds %struct.anon.244, ptr %4, i32 0, i32 1
  %34 = getelementptr inbounds %struct.drm_connector, ptr %2, i32 0, i32 42
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 1 dereferenceable(128) %33, ptr noundef align 8 dereferenceable(128) %34, i32 128, i1 false)
  %35 = load ptr, ptr %10, align 8
  %36 = getelementptr inbounds %struct.anon.244, ptr %4, i32 0, i32 1, i32 2
  %37 = load i8, ptr %36, align 1
  %38 = zext i8 %37 to i32
  %39 = shl nuw nsw i32 %38, 2
  %40 = add nuw nsw i32 %39, 20
  %41 = call i32 @nvif_object_mthd(ptr noundef %35, i32 noundef 0, ptr noundef nonnull %4, i32 noundef %40) #11
  %42 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 8
  store i8 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 8, i32 1
  store ptr %2, ptr %43, align 4
  call void @mutex_unlock(ptr noundef %32) #11
  %44 = load ptr, ptr %31, align 8
  %45 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 2
  %46 = load i32, ptr %45, align 4
  %47 = load i32, ptr %22, align 8
  %48 = icmp eq ptr %44, null
  br i1 %48, label %59, label %49

49:                                               ; preds = %30
  %50 = getelementptr inbounds %struct.drm_audio_component, ptr %44, i32 0, i32 2
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.drm_audio_component_audio_ops, ptr %51, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %51, align 4
  call void %55(ptr noundef %58, i32 noundef %46, i32 noundef %47) #11
  br label %59

59:                                               ; preds = %57, %53, %49, %30, %3
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edp_backlight_enable(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_avi_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_hdmi_avi_infoframe_quant_range(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hdmi_infoframe_pack(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_hdmi_vendor_infoframe_from_display_mode(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_scdc_read(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_scdc_write(ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_topology_mgr_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_bw_code_to_link_rate(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight8(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @nv50_mstm_add_connector(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %8 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 984) #13
  %9 = icmp eq ptr %8, null
  br i1 %9, label %52, label %10

10:                                               ; preds = %3
  store ptr %4, ptr %8, align 8
  %11 = getelementptr inbounds %struct.nv50_mstc, ptr %8, i32 0, i32 1
  store ptr %1, ptr %11, align 4
  %12 = getelementptr inbounds %struct.nv50_mstc, ptr %8, i32 0, i32 2
  %13 = tail call i32 @drm_connector_init(ptr noundef %6, ptr noundef %12, ptr noundef nonnull @nv50_mstc, i32 noundef 10) #11
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %10
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %52

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.nv50_mstc, ptr %8, i32 0, i32 2, i32 35
  store ptr @nv50_mstc_help, ptr %17, align 4
  %18 = getelementptr inbounds %struct.nv50_mstc, ptr %8, i32 0, i32 2, i32 21
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.drm_connector_funcs, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  tail call void %21(ptr noundef %12) #11
  tail call void @nouveau_conn_attach_properties(ptr noundef %12) #11
  %22 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 20
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %45, label %25

25:                                               ; preds = %42, %16
  %26 = phi ptr [ %43, %42 ], [ %23, %16 ]
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr inbounds %struct.nouveau_encoder, ptr %27, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.dcb_output, ptr %29, i32 0, i32 5
  %31 = load i8, ptr %30, align 1
  %32 = zext i8 %31 to i32
  %33 = getelementptr i8, ptr %26, i32 72
  %34 = load i32, ptr %33, align 8
  %35 = shl nuw i32 1, %34
  %36 = and i32 %35, %32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %25
  %39 = getelementptr i8, ptr %26, i32 1296
  %40 = load ptr, ptr %39, align 8
  %41 = tail call i32 @drm_connector_attach_encoder(ptr noundef %12, ptr noundef %40) #11
  br label %42

42:                                               ; preds = %38, %25
  %43 = load ptr, ptr %26, align 4
  %44 = icmp eq ptr %43, %22
  br i1 %44, label %45, label %25

45:                                               ; preds = %42, %16
  %46 = getelementptr inbounds %struct.nv50_mstc, ptr %8, i32 0, i32 2, i32 6
  %47 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 37
  %48 = load ptr, ptr %47, align 4
  tail call void @drm_object_attach_property(ptr noundef %46, ptr noundef %48, i64 noundef 0) #11
  %49 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 30, i32 38
  %50 = load ptr, ptr %49, align 4
  tail call void @drm_object_attach_property(ptr noundef %46, ptr noundef %50, i64 noundef 0) #11
  %51 = tail call i32 @drm_connector_set_path_property(ptr noundef %12, ptr noundef %2) #11
  tail call void @drm_dp_mst_get_port_malloc(ptr noundef %1) #11
  br label %52

52:                                               ; preds = %45, %15, %3
  %53 = phi ptr [ %12, %45 ], [ null, %15 ], [ null, %3 ]
  ret ptr %53
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_conn_attach_properties(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_set_path_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_get_port_malloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_conn_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_mstc_destroy(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -8
  tail call void @drm_connector_cleanup(ptr noundef %0) #11
  %3 = getelementptr i8, ptr %0, i32 -4
  %4 = load ptr, ptr %3, align 4
  tail call void @drm_dp_mst_put_port_malloc(ptr noundef %4) #11
  tail call void @kfree(ptr noundef %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_conn_atomic_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_conn_atomic_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_conn_atomic_set_property(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_conn_atomic_get_property(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_mst_put_port_malloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_mstc_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_dp_mst_port, ptr %3, i32 0, i32 18
  %5 = load ptr, ptr %4, align 8
  %6 = tail call ptr @drm_dp_mst_get_edid(ptr noundef %0, ptr noundef %5, ptr noundef %3) #11
  %7 = getelementptr i8, ptr %0, i32 972
  store ptr %6, ptr %7, align 4
  %8 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef %6) #11
  %9 = load ptr, ptr %7, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  %12 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %9) #11
  br label %13

13:                                               ; preds = %11, %1
  %14 = phi i32 [ %12, %11 ], [ 0, %1 ]
  %15 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20, i32 2
  %16 = load i32, ptr %15, align 8
  %17 = icmp eq i32 %16, 0
  %18 = tail call i32 @llvm.umax.i32(i32 %16, i32 6)
  %19 = tail call i32 @llvm.umin.i32(i32 %18, i32 8)
  %20 = select i1 %17, i32 8, i32 %19
  store i32 %20, ptr %15, align 8
  %21 = getelementptr i8, ptr %0, i32 968
  %22 = load ptr, ptr %21, align 8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %13
  %25 = load ptr, ptr %0, align 8
  tail call void @drm_mode_destroy(ptr noundef %25, ptr noundef nonnull %22) #11
  br label %26

26:                                               ; preds = %24, %13
  %27 = tail call ptr @nouveau_conn_native_mode(ptr noundef %0) #11
  store ptr %27, ptr %21, align 8
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_mstc_detect(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #0 {
  %4 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 16
  %5 = load volatile i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %32, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %10, i32 noundef 4) #11
  %12 = icmp slt i32 %11, 0
  %13 = icmp ne i32 %11, -13
  %14 = and i1 %12, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %7
  %16 = getelementptr i8, ptr %0, i32 -4
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_dp_mst_port, ptr %17, i32 0, i32 18
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @drm_dp_mst_detect_port(ptr noundef %0, ptr noundef %1, ptr noundef %19, ptr noundef %17) #11
  %21 = load ptr, ptr %0, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = tail call i64 @ktime_get_mono_fast_ns() #11
  %25 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 11, i32 22
  store volatile i64 %24, ptr %25, align 8
  br label %26

26:                                               ; preds = %15, %7
  %27 = phi i32 [ %20, %15 ], [ 2, %7 ]
  %28 = load ptr, ptr %0, align 8
  %29 = getelementptr inbounds %struct.drm_device, ptr %28, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @__pm_runtime_suspend(ptr noundef %30, i32 noundef 13) #11
  br label %32

32:                                               ; preds = %26, %3
  %33 = phi i32 [ 2, %3 ], [ %27, %26 ]
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_mstc_mode_valid(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @nv50_dp_mode_valid(ptr noundef %0, ptr noundef %5, ptr noundef %1, ptr noundef null) #11
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @nv50_mstc_atomic_best_encoder(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 9
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.__drm_connnectors_state, ptr %10, i32 %4, i32 3
  %12 = load ptr, ptr %11, align 4
  br label %13

13:                                               ; preds = %8, %2
  %14 = phi ptr [ %12, %8 ], [ null, %2 ]
  %15 = getelementptr i8, ptr %0, i32 -8
  %16 = getelementptr inbounds %struct.drm_connector_state, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = load ptr, ptr %15, align 8
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nouveau_encoder, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dcb_output, ptr %21, i32 0, i32 5
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.drm_crtc, ptr %17, i32 0, i32 8
  %26 = load i32, ptr %25, align 8
  %27 = shl nuw i32 1, %26
  %28 = and i32 %27, %24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %13
  %31 = getelementptr i8, ptr %17, i32 1304
  %32 = load ptr, ptr %31, align 8
  br label %33

33:                                               ; preds = %30, %13
  %34 = phi ptr [ %32, %30 ], [ null, %13 ]
  ret ptr %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_mstc_atomic_check(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr i8, ptr %0, i32 -8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.nv50_mstm, ptr %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 9
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp slt i32 %7, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr %struct.__drm_connnectors_state, ptr %13, i32 %7, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr %struct.__drm_connnectors_state, ptr %13, i32 %7, i32 2
  %17 = load ptr, ptr %16, align 4
  br label %18

18:                                               ; preds = %11, %2
  %19 = phi ptr [ %15, %11 ], [ null, %2 ]
  %20 = phi ptr [ %17, %11 ], [ null, %2 ]
  %21 = getelementptr inbounds %struct.drm_connector_state, ptr %19, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.drm_connector_state, ptr %20, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %49, label %26

26:                                               ; preds = %18
  %27 = icmp eq ptr %22, null
  br i1 %27, label %45, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.drm_crtc, ptr %22, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr %struct.__drm_crtcs_state, ptr %30, i32 %32, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %49, label %36

36:                                               ; preds = %28
  %37 = getelementptr inbounds %struct.drm_crtc_state, ptr %34, i32 0, i32 3
  %38 = load i8, ptr %37, align 2
  %39 = and i8 %38, 14
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %49, label %41

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.drm_crtc_state, ptr %34, i32 0, i32 1
  %43 = load i8, ptr %42, align 4, !range !14
  %44 = icmp eq i8 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %26
  %46 = getelementptr i8, ptr %0, i32 -4
  %47 = load ptr, ptr %46, align 4
  %48 = tail call i32 @drm_dp_atomic_release_vcpi_slots(ptr noundef %1, ptr noundef %5, ptr noundef %47) #11
  br label %49

49:                                               ; preds = %45, %41, %36, %28, %18
  %50 = phi i32 [ %48, %45 ], [ 0, %18 ], [ 0, %41 ], [ 0, %36 ], [ 0, %28 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dp_mst_get_edid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_conn_native_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_mst_detect_port(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dp_mode_valid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_atomic_release_vcpi_slots(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_dac_destroy(ptr noundef %0) #0 {
  tail call void @drm_encoder_cleanup(ptr noundef %0) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_dac_detect(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.anon.247, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  store i8 1, ptr %3, align 4
  %10 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 1
  store i8 17, ptr %10, align 1
  %11 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dcb_output, ptr %13, i32 0, i32 1
  %15 = load i16, ptr %14, align 4
  store i16 %15, ptr %11, align 2
  %16 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 3
  %17 = getelementptr inbounds %struct.dcb_output, ptr %13, i32 0, i32 2
  %18 = load i16, ptr %17, align 2
  store i16 %18, ptr %16, align 4
  %19 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 4
  store i16 0, ptr %19, align 2
  %20 = getelementptr inbounds %struct.anon.247, ptr %3, i32 0, i32 1
  store i64 0, ptr %20, align 4
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 18, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.anon.247, ptr %3, i32 0, i32 1, i32 3
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %24, i32 340, i32 %22
  store i32 %25, ptr %23, align 4
  %26 = load ptr, ptr %9, align 8
  %27 = call i32 @nvif_object_mthd(ptr noundef %26, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 16) #11
  %28 = icmp ne i32 %27, 0
  %29 = getelementptr inbounds %struct.anon.247, ptr %3, i32 0, i32 1, i32 1
  %30 = load i8, ptr %29, align 1
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %28, i1 true, i1 %31
  %33 = select i1 %32, i32 2, i32 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  ret i32 %33
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_dac_atomic_disable(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.anon.234, align 8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nv50_core_func, ptr %12, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 %15(ptr noundef %11, i32 noundef %17, i32 noundef 0, ptr noundef null) #11
  %19 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 6
  store ptr null, ptr %19, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 513, ptr %3, align 8, !annotation !8
  %26 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 2
  %27 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dcb_output, ptr %28, i32 0, i32 1
  %30 = load i16, ptr %29, align 4
  store i16 %30, ptr %26, align 2
  %31 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 3
  %32 = getelementptr inbounds %struct.dcb_output, ptr %28, i32 0, i32 2
  %33 = load i16, ptr %32, align 2
  store i16 %33, ptr %31, align 4
  %34 = load ptr, ptr %25, align 8
  %35 = call i32 @nvif_object_mthd(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 8) #11
  store i32 -1, ptr %16, align 4
  %36 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 3
  store i32 0, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_dac_atomic_enable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.anon.235, align 2
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  br i1 %11, label %14, label %29

14:                                               ; preds = %26, %2
  %15 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %16 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, %6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %14
  %27 = add nuw nsw i32 %15, 1
  %28 = icmp eq i32 %27, %10
  br i1 %28, label %29, label %14

29:                                               ; preds = %26, %19, %2
  %30 = phi ptr [ null, %2 ], [ null, %26 ], [ %17, %19 ]
  %31 = getelementptr inbounds %struct.drm_crtc, ptr %30, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %32, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 19
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nv50_disp, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_crtc, ptr %30, i32 0, i32 1
  %44 = load i32, ptr %43, align 8
  switch i32 %44, label %48 [
    i32 0, label %52
    i32 1, label %45
    i32 2, label %46
    i32 3, label %47
  ]

45:                                               ; preds = %29
  br label %52

46:                                               ; preds = %29
  br label %52

47:                                               ; preds = %29
  br label %52

48:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 514, i32 noundef 9, ptr noundef null) #11
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr inbounds %struct.drm_device, ptr %49, i32 0, i32 5
  %51 = load ptr, ptr %50, align 4
  br label %52

52:                                               ; preds = %48, %47, %46, %45, %29
  %53 = phi ptr [ %51, %48 ], [ %37, %47 ], [ %37, %46 ], [ %37, %45 ], [ %37, %29 ]
  %54 = phi i32 [ 0, %48 ], [ 8, %47 ], [ 4, %46 ], [ 2, %45 ], [ 1, %29 ]
  %55 = getelementptr inbounds %struct.nouveau_drm, ptr %53, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr inbounds %struct.drm_device, ptr %56, i32 0, i32 5
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.nouveau_drm, ptr %58, i32 0, i32 19
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %60, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  store i8 1, ptr %3, align 2
  %62 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 1
  store i8 1, ptr %62, align 1
  %63 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 2
  %64 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.dcb_output, ptr %65, i32 0, i32 1
  %67 = load i16, ptr %66, align 4
  store i16 %67, ptr %63, align 2
  %68 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 3
  %69 = getelementptr inbounds %struct.dcb_output, ptr %65, i32 0, i32 2
  %70 = load i16, ptr %69, align 2
  store i16 %70, ptr %68, align 2
  %71 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(10) %71, i8 0, i64 10, i1 false)
  %72 = load ptr, ptr %61, align 8
  %73 = call i32 @nvif_object_mthd(ptr noundef %72, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 16) #11
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %52
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %53, i32 0, i32 2, i32 1
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.nouveau_drm, ptr %77, i32 0, i32 3
  %79 = load ptr, ptr %78, align 8
  %80 = getelementptr inbounds %struct.drm_device, ptr %79, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr inbounds %struct.nouveau_drm, ptr %53, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.29, ptr noundef %82, i32 noundef %73) #12
  %83 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  br label %94

85:                                               ; preds = %52
  %86 = getelementptr inbounds %struct.anon.235, ptr %3, i32 0, i32 1, i32 2
  %87 = getelementptr inbounds %struct.anon.235, ptr %3, i32 0, i32 1, i32 1
  %88 = load i8, ptr %87, align 1
  %89 = zext i8 %88 to i32
  %90 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 2
  store i32 %89, ptr %90, align 4
  %91 = load i8, ptr %86, align 2
  %92 = zext i8 %91 to i32
  %93 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 3
  store i32 %92, ptr %93, align 4
  br label %94

94:                                               ; preds = %85, %75
  %95 = phi i32 [ %84, %75 ], [ %89, %85 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %96 = load ptr, ptr %42, align 8
  %97 = getelementptr inbounds %struct.nv50_core_func, ptr %96, i32 0, i32 8
  %98 = load ptr, ptr %97, align 4
  %99 = load ptr, ptr %98, align 4
  %100 = call i32 %99(ptr noundef %42, i32 noundef %95, i32 noundef %54, ptr noundef %34) #11
  %101 = getelementptr inbounds %struct.nv50_head_atom, ptr %34, i32 0, i32 11
  %102 = load i8, ptr %101, align 8
  %103 = and i8 %102, -61
  store i8 %103, ptr %101, align 8
  %104 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 6
  store ptr %30, ptr %104, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_pior_destroy(ptr noundef %0) #0 {
  tail call void @drm_encoder_cleanup(ptr noundef %0) #11
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_pior_atomic_disable(ptr nocapture noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = alloca %struct.anon.234, align 8
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 19
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nv50_disp, ptr %9, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nv50_core_func, ptr %12, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 %15(ptr noundef %11, i32 noundef %17, i32 noundef 0, ptr noundef null) #11
  %19 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 6
  store ptr null, ptr %19, align 4
  %20 = load ptr, ptr %0, align 4
  %21 = getelementptr inbounds %struct.drm_device, ptr %20, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #11
  store i64 513, ptr %3, align 8, !annotation !8
  %26 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 2
  %27 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.dcb_output, ptr %28, i32 0, i32 1
  %30 = load i16, ptr %29, align 4
  store i16 %30, ptr %26, align 2
  %31 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 3
  %32 = getelementptr inbounds %struct.dcb_output, ptr %28, i32 0, i32 2
  %33 = load i16, ptr %32, align 2
  store i16 %33, ptr %31, align 4
  %34 = load ptr, ptr %25, align 8
  %35 = call i32 @nvif_object_mthd(ptr noundef %34, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 8) #11
  store i32 -1, ptr %16, align 4
  %36 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 3
  store i32 0, ptr %36, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv50_pior_atomic_enable(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.anon.235, align 2
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 5
  %5 = load i32, ptr %4, align 4
  %6 = shl nuw i32 1, %5
  %7 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 19
  %10 = load i32, ptr %9, align 4
  %11 = icmp sgt i32 %10, 0
  %12 = getelementptr inbounds %struct.drm_atomic_state, ptr %1, i32 0, i32 4
  %13 = load ptr, ptr %12, align 4
  br i1 %11, label %14, label %29

14:                                               ; preds = %26, %2
  %15 = phi i32 [ %27, %26 ], [ 0, %2 ]
  %16 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %15, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.drm_crtc_state, ptr %21, i32 0, i32 6
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, %6
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19, %14
  %27 = add nuw nsw i32 %15, 1
  %28 = icmp eq i32 %27, %10
  br i1 %28, label %29, label %14

29:                                               ; preds = %26, %19, %2
  %30 = phi ptr [ null, %2 ], [ null, %26 ], [ %17, %19 ]
  %31 = getelementptr inbounds %struct.drm_crtc, ptr %30, i32 0, i32 8
  %32 = load i32, ptr %31, align 8
  %33 = getelementptr %struct.__drm_crtcs_state, ptr %13, i32 %32, i32 3
  %34 = load ptr, ptr %33, align 4
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.drm_device, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %37, i32 0, i32 19
  %39 = load ptr, ptr %38, align 4
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.nv50_disp, ptr %40, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_crtc, ptr %30, i32 0, i32 1
  %44 = load i32, ptr %43, align 8
  switch i32 %44, label %46 [
    i32 0, label %50
    i32 1, label %45
  ]

45:                                               ; preds = %29
  br label %50

46:                                               ; preds = %29
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 1965, i32 noundef 9, ptr noundef null) #11
  %47 = load ptr, ptr %0, align 4
  %48 = getelementptr inbounds %struct.drm_device, ptr %47, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  br label %50

50:                                               ; preds = %46, %45, %29
  %51 = phi ptr [ %49, %46 ], [ %37, %45 ], [ %37, %29 ]
  %52 = phi i32 [ 0, %46 ], [ 2, %45 ], [ 1, %29 ]
  %53 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8
  %55 = getelementptr inbounds %struct.drm_device, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.nouveau_drm, ptr %56, i32 0, i32 19
  %58 = load ptr, ptr %57, align 4
  %59 = load ptr, ptr %58, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #11
  store i8 1, ptr %3, align 2
  %60 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 1
  store i8 1, ptr %60, align 1
  %61 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 2
  %62 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.dcb_output, ptr %63, i32 0, i32 1
  %65 = load i16, ptr %64, align 4
  store i16 %65, ptr %61, align 2
  %66 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 3
  %67 = getelementptr inbounds %struct.dcb_output, ptr %63, i32 0, i32 2
  %68 = load i16, ptr %67, align 2
  store i16 %68, ptr %66, align 2
  %69 = getelementptr inbounds %struct.nv50_disp_mthd_v1, ptr %3, i32 0, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 2 dereferenceable(10) %69, i8 0, i64 10, i1 false)
  %70 = load ptr, ptr %59, align 8
  %71 = call i32 @nvif_object_mthd(ptr noundef %70, i32 noundef 0, ptr noundef nonnull %3, i32 noundef 16) #11
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %81, label %73

73:                                               ; preds = %50
  %74 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = getelementptr inbounds %struct.nouveau_drm, ptr %75, i32 0, i32 3
  %77 = load ptr, ptr %76, align 8
  %78 = getelementptr inbounds %struct.drm_device, ptr %77, i32 0, i32 2
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.nouveau_drm, ptr %51, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.29, ptr noundef %80, i32 noundef %71) #12
  br label %90

81:                                               ; preds = %50
  %82 = getelementptr inbounds %struct.anon.235, ptr %3, i32 0, i32 1, i32 2
  %83 = getelementptr inbounds %struct.anon.235, ptr %3, i32 0, i32 1, i32 1
  %84 = load i8, ptr %83, align 1
  %85 = zext i8 %84 to i32
  %86 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 2
  store i32 %85, ptr %86, align 4
  %87 = load i8, ptr %82, align 2
  %88 = zext i8 %87 to i32
  %89 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 3
  store i32 %88, ptr %89, align 4
  br label %90

90:                                               ; preds = %81, %73
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #11
  %91 = getelementptr inbounds %struct.nv50_head_atom, ptr %34, i32 0, i32 11
  %92 = getelementptr inbounds %struct.nv50_head_atom, ptr %34, i32 0, i32 11, i32 1
  %93 = load i8, ptr %92, align 1
  switch i8 %93, label %106 [
    i8 10, label %94
    i8 8, label %98
    i8 6, label %102
  ]

94:                                               ; preds = %90
  %95 = load i8, ptr %91, align 8
  %96 = and i8 %95, -61
  %97 = or i8 %96, 24
  br label %109

98:                                               ; preds = %90
  %99 = load i8, ptr %91, align 8
  %100 = and i8 %99, -61
  %101 = or i8 %100, 20
  br label %109

102:                                              ; preds = %90
  %103 = load i8, ptr %91, align 8
  %104 = and i8 %103, -61
  %105 = or i8 %104, 8
  br label %109

106:                                              ; preds = %90
  %107 = load i8, ptr %91, align 8
  %108 = and i8 %107, -61
  br label %109

109:                                              ; preds = %106, %102, %98, %94
  %110 = phi i8 [ %108, %106 ], [ %105, %102 ], [ %101, %98 ], [ %97, %94 ]
  store i8 %110, ptr %91, align 8
  %111 = load ptr, ptr %62, align 4
  %112 = getelementptr inbounds %struct.dcb_output, ptr %111, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  switch i32 %113, label %123 [
    i32 2, label %114
    i32 6, label %114
  ]

114:                                              ; preds = %109, %109
  %115 = load ptr, ptr %42, align 8
  %116 = getelementptr inbounds %struct.nv50_core_func, ptr %115, i32 0, i32 9
  %117 = load ptr, ptr %116, align 4
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = call i32 %118(ptr noundef %42, i32 noundef %120, i32 noundef %52, ptr noundef %34) #11
  %122 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 6
  store ptr %30, ptr %122, align 4
  ret void

123:                                              ; preds = %109
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/dispnv50/disp.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1984, 0\0A.popsection", ""() #11, !srcloc !28
  unreachable
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_pior_atomic_check(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef %2) #0 {
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr inbounds %struct.nouveau_connector, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  tail call fastcc void @nv50_outp_atomic_check_view(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %6) #11
  %7 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 3
  %8 = load i8, ptr %7, align 2
  %9 = and i8 %8, 10
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.drm_connector, ptr %4, i32 0, i32 20, i32 2
  %13 = load i32, ptr %12, align 8
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.nv50_head_atom, ptr %1, i32 0, i32 11, i32 1
  store i8 %14, ptr %15, align 1
  br label %16

16:                                               ; preds = %11, %3
  %17 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 1
  store i32 %19, ptr %17, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

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
!10 = !{i64 4021787}
!11 = !{i64 2151561240}
!12 = !{i64 2151562462}
!13 = !{i64 4021369}
!14 = !{i8 0, i8 2}
!15 = !{i32 0, i32 33}
!16 = !{i8 0, i8 9}
!17 = !{i64 626034, i64 2148116005, i64 2148116031, i64 2148116078, i64 2148116100, i64 2148116128, i64 2148116148}
!18 = !{i64 2148127420, i64 2148127446, i64 2148127475, i64 2148127509, i64 2148127540, i64 2148127563}
!19 = !{i64 2148128878, i64 2148128910, i64 2148128939, i64 2148128973, i64 2148129004, i64 2148129027}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{i64 2148126927}
!22 = !{i64 612603, i64 612628, i64 612650, i64 612666, i64 612678, i64 612698, i64 612722, i64 612738, i64 612750}
!23 = !{i64 2148127053}
!24 = !{i64 2148229100}
!25 = !{i64 2148131235, i64 2148131267, i64 2148131296, i64 2148131330, i64 2148131361, i64 2148131384}
!26 = !{i64 2149532053}
!27 = !{i64 2156721897, i64 2156722402, i64 2156721934, i64 2156721990, i64 2156722024, i64 2156722048, i64 2156722089, i64 2156722110, i64 2156722138, i64 2156722172}
!28 = !{i64 2156732964, i64 2156733469, i64 2156733001, i64 2156733057, i64 2156733091, i64 2156733115, i64 2156733156, i64 2156733177, i64 2156733205, i64 2156733239}
