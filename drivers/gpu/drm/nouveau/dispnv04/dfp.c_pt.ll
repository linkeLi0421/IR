; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/dfp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/dfp.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.80, i8 }
%union.anon.80 = type { %struct.anon.84 }
%struct.anon.84 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.77, ptr, i32, ptr, i8, i32 }
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
%struct.anon.77 = type { i32, ptr }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.105, %struct.anon.106, %struct.anon.108, ptr, %struct.anon.109, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.110, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.116 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.105 = type { ptr, i32, i32, i8 }
%struct.anon.106 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.107] }
%struct.anon.107 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.108 = type { i64, i64 }
%struct.anon.109 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.89 }
%struct.anon.89 = type { ptr, i64 }
%struct.anon.110 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.111, %struct.anon.112, %struct.anon.113, %struct.anon.114 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.anon.111 = type { i32 }
%struct.anon.112 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.113 = type { i16, i16 }
%struct.anon.114 = type { i16, i16, i16, %struct.anon.115, i16 }
%struct.anon.115 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.116 = type { ptr, %struct.mutex, i8 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.86, i32, i32 }
%union.anon.86 = type { %struct.anon.88 }
%struct.anon.88 = type { i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.90, %struct.anon.91, %struct.anon.92, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.90 = type { i32, i8, i32, i32 }
%struct.anon.91 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.92 = type { i32 }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.93, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.94, %struct.anon.101, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.anon.93 = type { i8, ptr }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.101 = type { i8 }
%struct.nvkm_i2c_bus_probe = type { %struct.i2c_board_info, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.sil164_encoder_params = type { i32, i32, i32, i32, i32, i32 }
%struct.anon.199 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.175, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.175 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.nouveau_connector = type { %struct.drm_connector, i32, i8, ptr, %struct.nvif_notify, %struct.drm_dp_aux, i32, i32, ptr, ptr, ptr, ptr, %struct.nouveau_conn_atom }
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_display_info = type { i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i8, %struct.drm_hdmi_info, i8, %struct.drm_monitor_range_info, i8, i8 }
%struct.drm_hdmi_info = type { %struct.drm_scdc, [8 x i32], [8 x i32], i64, i8, i8, i8, %struct.drm_hdmi_dsc_cap }
%struct.drm_scdc = type { i8, i8, %struct.drm_scrambling }
%struct.drm_scrambling = type { i8, i8 }
%struct.drm_hdmi_dsc_cap = type { i8, i8, i8, i8, i8, i32, i8, i8, i8 }
%struct.drm_monitor_range_info = type { i8, i8 }
%struct.drm_cmdline_mode = type { [32 x i8], i8, i8, i8, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, %struct.drm_connector_tv_margins }
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.118, %struct.anon.119, %struct.anon.121, %union.anon.122 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.118 = type { i32, i32 }
%struct.anon.119 = type { i32, %struct.anon.120, i8 }
%struct.anon.120 = type { i32, i32, i32 }
%struct.anon.121 = type { i32, i32 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i8 }
%struct.nv04_display = type { %struct.nv04_mode_state, %struct.nv04_mode_state, [4 x [16384 x i32]], [4 x i32], [2 x ptr], %struct.nvif_notify }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_framebuffer = type { ptr, %struct.list_head, %struct.drm_mode_object, [16 x i8], ptr, ptr, [4 x i32], [4 x i32], i64, i32, i32, i32, i32, i32, %struct.list_head, [4 x ptr] }
%struct.drm_format_info = type { i32, i8, i8, %union.anon.75, [4 x i8], [4 x i8], i8, i8, i8, i8 }
%union.anon.75 = type { [4 x i8] }
%struct.anon.82 = type { %struct.sor_conf, i8, i8, i8 }

@nv04_tmds_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr @nv04_tmds_dpms, ptr null, ptr @nv04_dfp_mode_fixup, ptr @nv04_dfp_prepare, ptr @nv04_dfp_commit, ptr @nv04_dfp_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@nv04_lvds_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr @nv04_lvds_dpms, ptr null, ptr @nv04_dfp_mode_fixup, ptr @nv04_dfp_prepare, ptr @nv04_dfp_commit, ptr @nv04_dfp_mode_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@nv04_dfp_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @nv04_dfp_destroy, ptr null, ptr null }, align 4
@.str = private unnamed_addr constant [54 x i8] c"%s: Setting dpms mode %d on tmds encoder (output %d)\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"%s: Output %s is running on CRTC %d using output %c\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"%s: Output mode on CRTC %d:\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"%s: Setting dpms mode %d on lvds encoder (output %d)\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"sil164\00\00\00\00\00\00\00\00\00\00\00\00\00\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"TMDS transmitter\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_dfp_get_bound_head(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 9
  %4 = load i8, ptr %3, align 1
  %5 = lshr i8 %4, 2
  %6 = and i8 %5, 1
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq i8 %6, 0
  %10 = select i1 %9, i32 6817968, i32 6826160
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14, !prof !8

14:                                               ; preds = %2
  %15 = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 65540) #8, !srcloc !10
  br label %19

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 3
  %18 = zext i32 %10 to i64
  tail call void @nvif_object_wr(ptr noundef %17, i32 noundef 4, i64 noundef %18, i32 noundef 65540) #8
  br label %19

19:                                               ; preds = %16, %14
  %20 = load ptr, ptr %7, align 4
  %21 = select i1 %9, i32 6817972, i32 6826164
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3, i32 0, i32 6
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25, !prof !8

25:                                               ; preds = %19
  %26 = getelementptr i8, ptr %23, i32 %21
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %32

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 2, i32 3
  %30 = zext i32 %21 to i64
  %31 = tail call i32 @nvif_object_rd(ptr noundef %29, i32 noundef 4, i64 noundef %30) #8
  br label %32

32:                                               ; preds = %28, %25
  %33 = phi i32 [ %27, %25 ], [ %31, %28 ]
  %34 = zext i8 %6 to i32
  %35 = lshr i32 %33, 3
  %36 = and i32 %35, 1
  %37 = xor i32 %36, %34
  ret i32 %37
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_dfp_bind_head(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 9
  %6 = load i8, ptr %5, align 1
  %7 = lshr i8 %6, 2
  %8 = and i8 %7, 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, %2
  %11 = select i1 %10, i8 -128, i8 -120
  %12 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 3
  %15 = zext i1 %14 to i8
  %16 = or i8 %11, %15
  %17 = zext i8 %16 to i32
  %18 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = and i8 %6, 4
  %21 = icmp eq i8 %20, 0
  %22 = select i1 %21, i32 6817972, i32 6826164
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3, i32 0, i32 6
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26, !prof !8

26:                                               ; preds = %4
  %27 = getelementptr i8, ptr %24, i32 %22
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %17) #8, !srcloc !10
  br label %31

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 2, i32 3
  %30 = zext i32 %22 to i64
  tail call void @nvif_object_wr(ptr noundef %29, i32 noundef 4, i64 noundef %30, i32 noundef %17) #8
  br label %31

31:                                               ; preds = %28, %26
  %32 = load ptr, ptr %18, align 4
  %33 = select i1 %21, i32 6817968, i32 6826160
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3, i32 0, i32 6
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, null
  br i1 %36, label %39, label %37, !prof !8

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %35, i32 %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 4) #8, !srcloc !10
  br label %42

39:                                               ; preds = %31
  %40 = getelementptr inbounds %struct.nouveau_drm, ptr %32, i32 0, i32 2, i32 3
  %41 = zext i32 %33 to i64
  tail call void @nvif_object_wr(ptr noundef %40, i32 noundef 4, i64 noundef %41, i32 noundef 4) #8
  br label %42

42:                                               ; preds = %39, %37
  br i1 %3, label %43, label %70

43:                                               ; preds = %42
  %44 = load i8, ptr %5, align 1
  %45 = xor i8 %16, 8
  %46 = zext i8 %45 to i32
  %47 = load ptr, ptr %18, align 4
  %48 = and i8 %44, 4
  %49 = icmp eq i8 %48, 0
  %50 = select i1 %49, i32 6817980, i32 6826172
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3, i32 0, i32 6
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, null
  br i1 %53, label %56, label %54, !prof !8

54:                                               ; preds = %43
  %55 = getelementptr i8, ptr %52, i32 %50
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %46) #8, !srcloc !10
  br label %59

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3
  %58 = zext i32 %50 to i64
  tail call void @nvif_object_wr(ptr noundef %57, i32 noundef 4, i64 noundef %58, i32 noundef %46) #8
  br label %59

59:                                               ; preds = %56, %54
  %60 = load ptr, ptr %18, align 4
  %61 = select i1 %49, i32 6817976, i32 6826168
  %62 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3, i32 0, i32 6
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65, !prof !8

65:                                               ; preds = %59
  %66 = getelementptr i8, ptr %63, i32 %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 4) #8, !srcloc !10
  br label %70

67:                                               ; preds = %59
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %60, i32 0, i32 2, i32 3
  %69 = zext i32 %61 to i64
  tail call void @nvif_object_wr(ptr noundef %68, i32 noundef 4, i64 noundef %69, i32 noundef 4) #8
  br label %70

70:                                               ; preds = %67, %65, %42
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_dfp_disable(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq i32 %1, 0
  %9 = select i1 %8, i32 6817864, i32 6826056
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13, !prof !8

13:                                               ; preds = %2
  %14 = getelementptr i8, ptr %11, i32 %9
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %20

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3
  %18 = zext i32 %9 to i64
  %19 = tail call i32 @nvif_object_rd(ptr noundef %17, i32 noundef 4, i64 noundef %18) #8
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i32 [ %15, %13 ], [ %19, %16 ]
  %22 = and i32 %21, 268435473
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %35, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3, i32 0, i32 6
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %31, label %29, !prof !8

29:                                               ; preds = %24
  %30 = getelementptr i8, ptr %27, i32 %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 536870946) #8, !srcloc !10
  br label %34

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.nouveau_drm, ptr %25, i32 0, i32 2, i32 3
  %33 = zext i32 %9 to i64
  tail call void @nvif_object_wr(ptr noundef %32, i32 noundef 4, i64 noundef %33, i32 noundef 536870946) #8
  br label %34

34:                                               ; preds = %31, %29
  tail call void @msleep(i32 noundef 50) #8
  br label %35

35:                                               ; preds = %34, %20
  %36 = getelementptr %struct.nv04_crtc_reg, ptr %7, i32 %1, i32 31
  store i32 536870946, ptr %36, align 4
  %37 = getelementptr %struct.nv04_crtc_reg, ptr %7, i32 %1, i32 1, i32 51
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, -60
  store i8 %39, ptr %37, align 1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nv04_dfp_update_fp_control(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %5, label %44

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 19
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.nouveau_crtc, ptr %7, i32 0, i32 1
  %14 = load i32, ptr %13, align 8
  %15 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %12, i32 0, i32 %14, i32 31
  %16 = load i32, ptr %15, align 4
  %17 = and i32 %16, 805306419
  %18 = icmp eq i32 %17, 536870946
  br i1 %18, label %19, label %23

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.nouveau_crtc, ptr %7, i32 0, i32 3
  %21 = load i32, ptr %20, align 8
  store i32 %21, ptr %15, align 4
  %22 = load i32, ptr %13, align 8
  br label %23

23:                                               ; preds = %19, %5
  %24 = phi i32 [ %22, %19 ], [ %14, %5 ]
  %25 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  %28 = shl nuw i32 1, %27
  %29 = getelementptr inbounds %struct.nouveau_crtc, ptr %7, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = or i32 %30, %28
  store i32 %31, ptr %29, align 4
  %32 = load i32, ptr %15, align 4
  %33 = load ptr, ptr %8, align 4
  %34 = icmp eq i32 %24, 0
  %35 = select i1 %34, i32 6817864, i32 6826056
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39, !prof !8

39:                                               ; preds = %23
  %40 = getelementptr i8, ptr %37, i32 %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %32) #8, !srcloc !10
  br label %92

41:                                               ; preds = %23
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3
  %43 = zext i32 %35 to i64
  tail call void @nvif_object_wr(ptr noundef %42, i32 noundef 4, i64 noundef %43, i32 noundef %32) #8
  br label %92

44:                                               ; preds = %2
  %45 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 20
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %92, label %48

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %50 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  br label %51

51:                                               ; preds = %89, %48
  %52 = phi ptr [ %46, %48 ], [ %90, %89 ]
  %53 = load ptr, ptr %49, align 4
  %54 = getelementptr inbounds %struct.nouveau_drm, ptr %53, i32 0, i32 19
  %55 = load ptr, ptr %54, align 4
  %56 = load ptr, ptr %55, align 8
  %57 = getelementptr i8, ptr %52, i32 744
  %58 = load i32, ptr %57, align 8
  %59 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %56, i32 0, i32 %58, i32 31
  %60 = load ptr, ptr %50, align 4
  %61 = load i32, ptr %60, align 4
  %62 = shl nuw i32 1, %61
  %63 = xor i32 %62, -1
  %64 = getelementptr i8, ptr %52, i32 804
  %65 = load i32, ptr %64, align 4
  %66 = and i32 %65, %63
  store i32 %66, ptr %64, align 4
  %67 = load i32, ptr %59, align 4
  %68 = and i32 %67, 805306419
  %69 = icmp ne i32 %68, 536870946
  %70 = icmp eq i32 %66, 0
  %71 = select i1 %69, i1 %70, i1 false
  br i1 %71, label %72, label %89

72:                                               ; preds = %51
  %73 = getelementptr i8, ptr %52, i32 800
  store i32 %67, ptr %73, align 8
  %74 = load i32, ptr %59, align 4
  %75 = and i32 %74, -805306420
  %76 = or i32 %75, 536870946
  store i32 %76, ptr %59, align 4
  %77 = load i32, ptr %57, align 8
  %78 = load ptr, ptr %49, align 4
  %79 = icmp eq i32 %77, 0
  %80 = select i1 %79, i32 6817864, i32 6826056
  %81 = getelementptr inbounds %struct.nouveau_drm, ptr %78, i32 0, i32 2, i32 3, i32 0, i32 6
  %82 = load ptr, ptr %81, align 8
  %83 = icmp eq ptr %82, null
  br i1 %83, label %86, label %84, !prof !8

84:                                               ; preds = %72
  %85 = getelementptr i8, ptr %82, i32 %80
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %76) #8, !srcloc !10
  br label %89

86:                                               ; preds = %72
  %87 = getelementptr inbounds %struct.nouveau_drm, ptr %78, i32 0, i32 2, i32 3
  %88 = zext i32 %80 to i64
  tail call void @nvif_object_wr(ptr noundef %87, i32 noundef 4, i64 noundef %88, i32 noundef %76) #8
  br label %89

89:                                               ; preds = %86, %84, %51
  %90 = load ptr, ptr %52, align 4
  %91 = icmp eq ptr %90, %45
  br i1 %91, label %92, label %51

92:                                               ; preds = %89, %44, %41, %39
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_dfp_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [2 x %struct.nvkm_i2c_bus_probe], align 4
  %4 = alloca %struct.sil164_encoder_params, align 4
  %5 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %127 [
    i32 2, label %8
    i32 3, label %7
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %2
  %9 = phi ptr [ @nv04_lvds_helper_funcs, %7 ], [ @nv04_tmds_helper_funcs, %2 ]
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 344) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %127, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.nouveau_encoder, ptr %11, i32 0, i32 14
  store ptr @nv04_dfp_save, ptr %14, align 4
  %15 = getelementptr inbounds %struct.nouveau_encoder, ptr %11, i32 0, i32 15
  store ptr @nv04_dfp_restore, ptr %15, align 8
  %16 = getelementptr inbounds %struct.nouveau_encoder, ptr %11, i32 0, i32 1
  store ptr %1, ptr %16, align 4
  %17 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 9
  %18 = load i8, ptr %17, align 1
  %19 = tail call i8 @llvm.cttz.i8(i8 %18, i1 true), !range !13
  %20 = zext i8 %19 to i32
  %21 = icmp eq i8 %18, 0
  %22 = select i1 %21, i32 -1, i32 %20
  %23 = getelementptr inbounds %struct.nouveau_encoder, ptr %11, i32 0, i32 2
  store i32 %22, ptr %23, align 8
  %24 = load ptr, ptr %0, align 8
  %25 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %24, ptr noundef nonnull %11, ptr noundef nonnull @nv04_dfp_funcs, i32 noundef %6, ptr noundef null) #8
  %26 = getelementptr inbounds %struct.drm_encoder, ptr %11, i32 0, i32 11
  store ptr %9, ptr %26, align 4
  %27 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 5
  %28 = load i8, ptr %27, align 1
  %29 = zext i8 %28 to i32
  %30 = getelementptr inbounds %struct.drm_encoder, ptr %11, i32 0, i32 6
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.drm_encoder, ptr %11, i32 0, i32 7
  store i32 0, ptr %31, align 8
  %32 = load i32, ptr %5, align 4
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %125

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 8
  %36 = load i8, ptr %35, align 4
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %125, label %38

38:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4)
  %39 = load ptr, ptr %11, align 8
  %40 = load ptr, ptr %16, align 4
  %41 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %42, i32 0, i32 2, i32 3, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.anon.199, ptr %44, i32 0, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nvkm_device, ptr %46, i32 0, i32 26
  %48 = load ptr, ptr %47, align 4
  %49 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %48, i32 noundef -1) #8
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %3) #8
  %50 = getelementptr inbounds i8, ptr %3, i32 20
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(100) %50, i8 0, i64 100, i1 false) #8
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %3, ptr noundef nonnull align 1 dereferenceable(20) @.str.4, i32 20, i1 false) #8
  %51 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 2
  %52 = getelementptr inbounds %struct.dcb_output, ptr %40, i32 0, i32 13, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = icmp eq i32 %53, 7
  %55 = select i1 %54, i16 58, i16 56
  store i16 %55, ptr %51, align 2
  %56 = getelementptr inbounds %struct.i2c_board_info, ptr %3, i32 0, i32 4
  %57 = getelementptr inbounds i8, ptr %4, i32 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %57, i8 0, i64 20, i1 false) #8
  store i32 1, ptr %4, align 4
  store ptr %4, ptr %56, align 4
  %58 = load ptr, ptr %41, align 4
  %59 = getelementptr inbounds %struct.drm_device, ptr %39, i32 0, i32 2
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr i8, ptr %60, i32 -102
  %62 = load i16, ptr %61, align 2
  %63 = and i16 %62, 4080
  %64 = getelementptr inbounds %struct.nouveau_drm, ptr %58, i32 0, i32 2, i32 3, i32 1, i32 4
  %65 = load i8, ptr %64, align 1
  %66 = icmp ugt i8 %65, 1
  %67 = icmp ne i16 %63, 256
  %68 = select i1 %66, i1 %67, i1 false
  %69 = icmp ne i16 %63, 336
  %70 = select i1 %68, i1 %69, i1 false
  %71 = icmp ne i16 %63, 416
  %72 = select i1 %70, i1 %71, i1 false
  %73 = icmp ne i16 %63, 512
  %74 = select i1 %72, i1 %73, i1 false
  %75 = icmp ne i16 %63, 272
  %76 = select i1 %74, i1 %75, i1 false
  %77 = icmp ne ptr %49, null
  %78 = select i1 %76, i1 %77, i1 false
  br i1 %78, label %79, label %124

79:                                               ; preds = %38
  %80 = load ptr, ptr %11, align 8
  %81 = load ptr, ptr %16, align 4
  %82 = getelementptr inbounds %struct.dcb_output, ptr %81, i32 0, i32 3
  %83 = load i32, ptr %82, align 4
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %117

85:                                               ; preds = %79
  %86 = getelementptr inbounds %struct.dcb_output, ptr %81, i32 0, i32 8
  %87 = load i8, ptr %86, align 4
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %117, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds %struct.drm_device, ptr %80, i32 0, i32 30, i32 16
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, %90
  br i1 %92, label %117, label %93

93:                                               ; preds = %89
  %94 = getelementptr inbounds %struct.dcb_output, ptr %81, i32 0, i32 13, i32 0, i32 1
  br label %95

95:                                               ; preds = %111, %93
  %96 = phi ptr [ %91, %93 ], [ %112, %111 ]
  %97 = getelementptr i8, ptr %96, i32 80
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.dcb_output, ptr %98, i32 0, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = getelementptr i8, ptr %96, i32 68
  %104 = load ptr, ptr %103, align 4
  %105 = icmp eq ptr %104, null
  br i1 %105, label %111, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.dcb_output, ptr %98, i32 0, i32 13, i32 0, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = load i32, ptr %94, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %114, label %111

111:                                              ; preds = %106, %102, %95
  %112 = load ptr, ptr %96, align 4
  %113 = icmp eq ptr %112, %90
  br i1 %113, label %117, label %95

114:                                              ; preds = %106
  %115 = getelementptr i8, ptr %96, i32 -4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %114, %111, %89, %85, %79
  %118 = call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %49, ptr noundef nonnull @.str.5, ptr noundef nonnull %3, ptr noundef null, ptr noundef null) #8
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %117
  %121 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %49, i32 0, i32 5
  %122 = getelementptr [2 x %struct.nvkm_i2c_bus_probe], ptr %3, i32 0, i32 %118
  %123 = call i32 @drm_i2c_encoder_init(ptr noundef %39, ptr noundef nonnull %11, ptr noundef %121, ptr noundef %122) #8
  br label %124

124:                                              ; preds = %120, %117, %114, %38
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4)
  br label %125

125:                                              ; preds = %124, %34, %13
  %126 = call i32 @drm_connector_attach_encoder(ptr noundef %0, ptr noundef nonnull %11) #8
  br label %127

127:                                              ; preds = %125, %8, %2
  %128 = phi i32 [ 0, %125 ], [ -22, %2 ], [ -12, %8 ]
  ret i32 %128
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dfp_save(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
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
  br i1 %20, label %21, label %58

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dcb_output, ptr %23, i32 0, i32 9
  %25 = load i8, ptr %24, align 1
  %26 = lshr i8 %25, 2
  %27 = and i8 %26, 1
  %28 = icmp eq i8 %27, 0
  %29 = select i1 %28, i32 6817968, i32 6826160
  %30 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 6
  %31 = load ptr, ptr %30, align 8
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !8

33:                                               ; preds = %21
  %34 = getelementptr i8, ptr %31, i32 %29
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 65540) #8, !srcloc !10
  br label %38

35:                                               ; preds = %21
  %36 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3
  %37 = zext i32 %29 to i64
  tail call void @nvif_object_wr(ptr noundef %36, i32 noundef 4, i64 noundef %37, i32 noundef 65540) #8
  br label %38

38:                                               ; preds = %35, %33
  %39 = load ptr, ptr %3, align 4
  %40 = select i1 %28, i32 6817972, i32 6826164
  %41 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 3, i32 0, i32 6
  %42 = load ptr, ptr %41, align 8
  %43 = icmp eq ptr %42, null
  br i1 %43, label %47, label %44, !prof !8

44:                                               ; preds = %38
  %45 = getelementptr i8, ptr %42, i32 %40
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %51

47:                                               ; preds = %38
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 2, i32 3
  %49 = zext i32 %40 to i64
  %50 = tail call i32 @nvif_object_rd(ptr noundef %48, i32 noundef 4, i64 noundef %49) #8
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i32 [ %46, %44 ], [ %50, %47 ]
  %53 = zext i8 %27 to i32
  %54 = lshr i32 %52, 3
  %55 = and i32 %54, 1
  %56 = xor i32 %55, %53
  %57 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 11, i32 1
  store i32 %56, ptr %57, align 4
  br label %58

58:                                               ; preds = %51, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dfp_restore(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 11, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dcb_output, ptr %6, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  switch i32 %8, label %31 [
    i32 3, label %9
    i32 2, label %20
  ]

9:                                                ; preds = %1
  %10 = tail call ptr @nv04_encoder_get_connector(ptr noundef %0) #8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.nouveau_connector, ptr %10, i32 0, i32 10
  %14 = load ptr, ptr %13, align 8
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 4
  %18 = load i32, ptr %14, align 4
  %19 = tail call i32 @call_lvds_script(ptr noundef %2, ptr noundef %17, i32 noundef %4, i32 noundef 5, i32 noundef %18) #8
  br label %31

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.nouveau_drm, ptr %22, i32 0, i32 19
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nv04_display, ptr %25, i32 0, i32 1
  %27 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %26, i32 0, i32 %4, i32 16
  %28 = tail call i32 @nouveau_hw_pllvals_to_clk(ptr noundef %27) #8
  %29 = load ptr, ptr %5, align 4
  %30 = tail call i32 @run_tmds_table(ptr noundef %2, ptr noundef %29, i32 noundef %4, i32 noundef %28) #8
  br label %31

31:                                               ; preds = %20, %16, %12, %9, %1
  %32 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 10
  store i32 128, ptr %32, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_tmds_dpms(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 10
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, %1
  br i1 %8, label %25, label %9

9:                                                ; preds = %2
  store i32 %1, ptr %6, align 4
  %10 = load i32, ptr @__drm_debug, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %21 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i32, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str, ptr noundef %20, i32 noundef %1, i32 noundef %23) #10
  br label %24

24:                                               ; preds = %13, %9
  tail call void @nv04_dfp_update_fp_control(ptr noundef %0, i32 noundef %1)
  br label %25

25:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @nv04_dfp_mode_fixup(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) #0 {
  %4 = tail call ptr @nv04_encoder_get_connector(ptr noundef %0) #8
  %5 = getelementptr inbounds %struct.nouveau_connector, ptr %4, i32 0, i32 10
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.nouveau_connector, ptr %4, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %24, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = icmp ugt i16 %14, %16
  br i1 %17, label %24, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %20 = load i16, ptr %19, align 2
  %21 = getelementptr inbounds %struct.drm_display_mode, ptr %6, i32 0, i32 6
  %22 = load i16, ptr %21, align 2
  %23 = icmp ugt i16 %20, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %12, %8, %3
  %25 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %25, ptr noundef align 4 dereferenceable(112) %2, i32 112, i1 false)
  br label %30

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %27, ptr noundef nonnull align 4 dereferenceable(112) %6, i32 112, i1 false)
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %28, align 4
  store i32 %29, ptr %2, align 4
  br label %30

30:                                               ; preds = %26, %24
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dfp_prepare(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_crtc, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_drm, ptr %10, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr %struct.nv04_crtc_reg, ptr %13, i32 %8, i32 1, i32 51
  %15 = xor i32 %8, 1
  %16 = getelementptr %struct.nv04_crtc_reg, ptr %13, i32 %15, i32 1, i32 51
  %17 = load ptr, ptr %3, align 4
  tail call void %17(ptr noundef %0, i32 noundef 3) #8
  %18 = load ptr, ptr %9, align 4
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 19
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.dcb_output, ptr %23, i32 0, i32 9
  %25 = load i8, ptr %24, align 1
  %26 = and i8 %25, 1
  %27 = icmp eq i8 %26, 0
  %28 = select i1 %27, i32 262144, i32 65536
  %29 = getelementptr inbounds %struct.dcb_output, ptr %23, i32 0, i32 8
  %30 = load i8, ptr %29, align 4
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %32, label %67

32:                                               ; preds = %1
  %33 = icmp eq i32 %8, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.nv04_mode_state, ptr %21, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  %37 = or i32 %36, %28
  store i32 %37, ptr %35, align 4
  br label %43

38:                                               ; preds = %32
  %39 = xor i32 %28, -1
  %40 = getelementptr inbounds %struct.nv04_mode_state, ptr %21, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = and i32 %41, %39
  store i32 %42, ptr %40, align 4
  br label %43

43:                                               ; preds = %38, %34
  %44 = phi i32 [ %42, %38 ], [ %37, %34 ]
  %45 = load ptr, ptr %22, align 4
  %46 = getelementptr inbounds %struct.dcb_output, ptr %45, i32 0, i32 3
  %47 = load i32, ptr %46, align 4
  %48 = icmp eq i32 %47, 3
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load ptr, ptr %9, align 4
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %50, i32 0, i32 19
  %52 = load ptr, ptr %51, align 4
  %53 = load ptr, ptr %52, align 8
  %54 = getelementptr inbounds %struct.nv04_display, ptr %53, i32 0, i32 1, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = and i32 %55, 240
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %49
  %59 = and i32 %55, 80
  %60 = icmp eq i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.nv04_mode_state, ptr %21, i32 0, i32 2
  %63 = and i32 %44, -241
  %64 = select i1 %33, i32 16, i32 64
  %65 = shl nuw nsw i32 %64, %61
  %66 = or i32 %65, %63
  store i32 %66, ptr %62, align 4
  br label %67

67:                                               ; preds = %58, %49, %43, %1
  %68 = load i8, ptr %14, align 1
  %69 = and i8 %68, -60
  %70 = or i8 %69, 3
  store i8 %70, ptr %14, align 1
  %71 = load ptr, ptr %9, align 4
  %72 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 2
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 -102
  %75 = load i16, ptr %74, align 2
  %76 = and i16 %75, 4080
  %77 = getelementptr inbounds %struct.nouveau_drm, ptr %71, i32 0, i32 2, i32 3, i32 1, i32 4
  %78 = load i8, ptr %77, align 1
  %79 = icmp ugt i8 %78, 1
  %80 = icmp ne i16 %76, 256
  %81 = select i1 %79, i1 %80, i1 false
  %82 = icmp ne i16 %76, 336
  %83 = select i1 %81, i1 %82, i1 false
  %84 = icmp ne i16 %76, 416
  %85 = select i1 %83, i1 %84, i1 false
  %86 = icmp ne i16 %76, 512
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %88, label %137

88:                                               ; preds = %67
  %89 = load ptr, ptr %22, align 4
  %90 = getelementptr inbounds %struct.dcb_output, ptr %89, i32 0, i32 8
  %91 = load i8, ptr %90, align 4
  %92 = icmp eq i8 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = icmp eq i32 %8, 0
  %95 = select i1 %94, i8 8, i8 0
  %96 = or i8 %70, %95
  store i8 %96, ptr %14, align 1
  br label %137

97:                                               ; preds = %88
  %98 = getelementptr inbounds %struct.dcb_output, ptr %89, i32 0, i32 9
  %99 = load i8, ptr %98, align 1
  %100 = shl i8 %99, 4
  %101 = and i8 %100, 48
  %102 = or i8 %101, %70
  store i8 %102, ptr %14, align 1
  %103 = load ptr, ptr %22, align 4
  %104 = getelementptr inbounds %struct.dcb_output, ptr %103, i32 0, i32 3
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %107, label %109

107:                                              ; preds = %97
  %108 = or i8 %69, 51
  store i8 %108, ptr %14, align 1
  br label %109

109:                                              ; preds = %107, %97
  %110 = phi i8 [ %108, %107 ], [ %102, %97 ]
  %111 = load i8, ptr %16, align 1
  %112 = xor i8 %111, %110
  %113 = and i8 %112, 48
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %115, label %137

115:                                              ; preds = %109
  %116 = and i8 %111, -49
  store i8 %116, ptr %16, align 1
  %117 = load ptr, ptr %9, align 4
  %118 = getelementptr inbounds %struct.nouveau_drm, ptr %117, i32 0, i32 2, i32 3
  %119 = getelementptr inbounds %struct.nouveau_drm, ptr %117, i32 0, i32 2, i32 3, i32 0, i32 6
  %120 = load ptr, ptr %119, align 8
  %121 = icmp eq ptr %120, null
  %122 = shl i32 %15, 13
  %123 = add i32 %122, 6296532
  br i1 %121, label %126, label %124, !prof !8

124:                                              ; preds = %115
  %125 = getelementptr i8, ptr %120, i32 %123
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %125, i8 51) #8, !srcloc !15
  br label %128

126:                                              ; preds = %115
  %127 = sext i32 %123 to i64
  tail call void @nvif_object_wr(ptr noundef %118, i32 noundef 1, i64 noundef %127, i32 noundef 51) #8
  br label %128

128:                                              ; preds = %126, %124
  %129 = load ptr, ptr %119, align 8
  %130 = icmp eq ptr %129, null
  %131 = add i32 %122, 6296533
  br i1 %130, label %134, label %132, !prof !8

132:                                              ; preds = %128
  %133 = getelementptr i8, ptr %129, i32 %131
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %133, i8 %116) #8, !srcloc !15
  br label %137

134:                                              ; preds = %128
  %135 = sext i32 %131 to i64
  %136 = zext i8 %116 to i32
  tail call void @nvif_object_wr(ptr noundef %118, i32 noundef 1, i64 noundef %135, i32 noundef %136) #8
  br label %137

137:                                              ; preds = %134, %132, %109, %93, %67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dfp_commit(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 11
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.nouveau_crtc, ptr %8, i32 0, i32 1
  %12 = load i32, ptr %11, align 8
  %13 = getelementptr inbounds %struct.dcb_output, ptr %10, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  switch i32 %14, label %23 [
    i32 2, label %15
    i32 3, label %19
  ]

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = tail call i32 @run_tmds_table(ptr noundef %2, ptr noundef %10, i32 noundef %12, i32 noundef %17) #8
  br label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = tail call i32 @call_lvds_script(ptr noundef %2, ptr noundef %10, i32 noundef %12, i32 noundef 2, i32 noundef %21) #8
  br label %23

23:                                               ; preds = %19, %15, %1
  %24 = load ptr, ptr %3, align 4
  %25 = icmp eq i32 %12, 0
  %26 = select i1 %25, i32 6817864, i32 6826056
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3, i32 0, i32 6
  %28 = load ptr, ptr %27, align 8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %33, label %30, !prof !8

30:                                               ; preds = %23
  %31 = getelementptr i8, ptr %28, i32 %26
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %37

33:                                               ; preds = %23
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %24, i32 0, i32 2, i32 3
  %35 = zext i32 %26 to i64
  %36 = tail call i32 @nvif_object_rd(ptr noundef %34, i32 noundef 4, i64 noundef %35) #8
  br label %37

37:                                               ; preds = %33, %30
  %38 = phi i32 [ %32, %30 ], [ %36, %33 ]
  %39 = load ptr, ptr %3, align 4
  %40 = getelementptr inbounds %struct.nouveau_drm, ptr %39, i32 0, i32 19
  %41 = load ptr, ptr %40, align 4
  %42 = load ptr, ptr %41, align 8
  %43 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %42, i32 0, i32 %12, i32 31
  store i32 %38, ptr %43, align 4
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 1, i32 2
  %45 = load i16, ptr %44, align 2
  %46 = icmp ult i16 %45, 68
  %47 = tail call i32 @nv04_dac_output_offset(ptr noundef %0) #8
  %48 = add i32 %47, 6817288
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr inbounds %struct.nouveau_drm, ptr %49, i32 0, i32 2, i32 3, i32 0, i32 6
  %51 = load ptr, ptr %50, align 8
  %52 = icmp eq ptr %51, null
  br i1 %46, label %53, label %59

53:                                               ; preds = %37
  br i1 %52, label %56, label %54, !prof !8

54:                                               ; preds = %53
  %55 = getelementptr i8, ptr %51, i32 %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 -268435456) #8, !srcloc !10
  br label %65

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.nouveau_drm, ptr %49, i32 0, i32 2, i32 3
  %58 = zext i32 %48 to i64
  tail call void @nvif_object_wr(ptr noundef %57, i32 noundef 4, i64 noundef %58, i32 noundef -268435456) #8
  br label %65

59:                                               ; preds = %37
  br i1 %52, label %62, label %60, !prof !8

60:                                               ; preds = %59
  %61 = getelementptr i8, ptr %51, i32 %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 1048576) #8, !srcloc !10
  br label %65

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.nouveau_drm, ptr %49, i32 0, i32 2, i32 3
  %64 = zext i32 %48 to i64
  tail call void @nvif_object_wr(ptr noundef %63, i32 noundef 4, i64 noundef %64, i32 noundef 1048576) #8
  br label %65

65:                                               ; preds = %62, %60, %56, %54
  %66 = load ptr, ptr %0, align 4
  %67 = load ptr, ptr %9, align 4
  %68 = getelementptr inbounds %struct.dcb_output, ptr %67, i32 0, i32 3
  %69 = load i32, ptr %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %107

71:                                               ; preds = %65
  %72 = getelementptr inbounds %struct.dcb_output, ptr %67, i32 0, i32 8
  %73 = load i8, ptr %72, align 4
  %74 = icmp eq i8 %73, 0
  br i1 %74, label %107, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.drm_device, ptr %66, i32 0, i32 30, i32 16
  %77 = load ptr, ptr %76, align 4
  %78 = icmp eq ptr %77, %76
  br i1 %78, label %107, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.dcb_output, ptr %67, i32 0, i32 13, i32 0, i32 1
  br label %81

81:                                               ; preds = %97, %79
  %82 = phi ptr [ %77, %79 ], [ %98, %97 ]
  %83 = getelementptr i8, ptr %82, i32 80
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dcb_output, ptr %84, i32 0, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 2
  br i1 %87, label %88, label %97

88:                                               ; preds = %81
  %89 = getelementptr i8, ptr %82, i32 68
  %90 = load ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, null
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = getelementptr inbounds %struct.dcb_output, ptr %84, i32 0, i32 13, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %80, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %92, %88, %81
  %98 = load ptr, ptr %82, align 4
  %99 = icmp eq ptr %98, %76
  br i1 %99, label %107, label %81

100:                                              ; preds = %92
  %101 = getelementptr i8, ptr %82, i32 -4
  %102 = icmp eq ptr %101, null
  br i1 %102, label %107, label %103

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %90, i32 0, i32 7
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9
  tail call void %105(ptr noundef nonnull %101, ptr noundef %106, ptr noundef %106) #8
  br label %107

107:                                              ; preds = %103, %100, %97, %75, %71, %65
  %108 = load ptr, ptr %6, align 4
  tail call void %108(ptr noundef %0, i32 noundef 0) #8
  %109 = load i32, ptr @__drm_debug, align 4
  %110 = and i32 %109, 2
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %132, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %114 = load ptr, ptr %113, align 8
  %115 = getelementptr inbounds %struct.nouveau_drm, ptr %114, i32 0, i32 3
  %116 = load ptr, ptr %115, align 8
  %117 = getelementptr inbounds %struct.drm_device, ptr %116, i32 0, i32 2
  %118 = load ptr, ptr %117, align 4
  %119 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  %120 = tail call ptr @nv04_encoder_get_connector(ptr noundef %0) #8
  %121 = getelementptr inbounds %struct.drm_connector, ptr %120, i32 0, i32 7
  %122 = load ptr, ptr %121, align 4
  %123 = load i32, ptr %11, align 8
  %124 = load ptr, ptr %9, align 4
  %125 = getelementptr inbounds %struct.dcb_output, ptr %124, i32 0, i32 9
  %126 = load i8, ptr %125, align 1
  %127 = tail call i8 @llvm.cttz.i8(i8 %126, i1 true), !range !13
  %128 = icmp eq i8 %126, 0
  %129 = add nuw nsw i8 %127, 65
  %130 = select i1 %128, i8 64, i8 %129
  %131 = zext i8 %130 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %118, ptr noundef nonnull @.str.1, ptr noundef %119, ptr noundef %122, i32 noundef %123, i32 noundef %131) #10
  br label %132

132:                                              ; preds = %112, %107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dfp_mode_set(ptr noundef %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #0 {
  %4 = alloca %struct.drm_connector_list_iter, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3
  %11 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 19
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nouveau_crtc, ptr %12, i32 0, i32 1
  %17 = load i32, ptr %16, align 8
  %18 = getelementptr inbounds %struct.nv04_display, ptr %15, i32 0, i32 1
  %19 = load ptr, ptr %12, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #8
  store i64 0, ptr %4, align 8, !annotation !16
  call void @drm_connector_list_iter_begin(ptr noundef %19, ptr noundef nonnull %4) #8
  %20 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %45, label %22

22:                                               ; preds = %42, %3
  %23 = phi ptr [ %43, %42 ], [ %20, %3 ]
  %24 = getelementptr inbounds %struct.drm_connector, ptr %23, i32 0, i32 10
  %25 = load i32, ptr %24, align 8
  %26 = icmp eq i32 %25, 10
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = call ptr @find_encoder(ptr noundef nonnull %23, i32 noundef -1) #8
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct.drm_encoder, ptr %28, i32 0, i32 4
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 7
  br i1 %33, label %42, label %34

34:                                               ; preds = %30, %27, %22
  %35 = getelementptr inbounds %struct.drm_connector, ptr %23, i32 0, i32 41
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.drm_encoder, ptr %36, i32 0, i32 8
  %40 = load ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %12
  br i1 %41, label %45, label %42

42:                                               ; preds = %38, %34, %30
  %43 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %4) #8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %22

45:                                               ; preds = %42, %38, %3
  %46 = phi ptr [ null, %3 ], [ null, %42 ], [ %23, %38 ]
  call void @drm_connector_list_iter_end(ptr noundef nonnull %4) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #8
  %47 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9
  %48 = load ptr, ptr %11, align 4
  %49 = getelementptr inbounds %struct.drm_crtc, ptr %48, i32 0, i32 6
  %50 = load ptr, ptr %49, align 8
  %51 = getelementptr inbounds %struct.drm_plane, ptr %50, i32 0, i32 12
  %52 = load ptr, ptr %51, align 8
  %53 = load i32, ptr @__drm_debug, align 4
  %54 = and i32 %53, 2
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %45
  %57 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.nouveau_drm, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  %61 = getelementptr inbounds %struct.drm_device, ptr %60, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 12
  %64 = load i32, ptr %16, align 8
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %62, ptr noundef nonnull @.str.2, ptr noundef %63, i32 noundef %64) #10
  br label %65

65:                                               ; preds = %56, %45
  call void @drm_mode_debug_printmodeline(ptr noundef %47) #8
  %66 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 1
  %67 = load i16, ptr %66, align 4
  %68 = zext i16 %67 to i32
  %69 = add nsw i32 %68, -1
  %70 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 28
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 4
  %72 = load i16, ptr %71, align 2
  %73 = zext i16 %72 to i32
  %74 = add nsw i32 %73, -1
  %75 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 28, i32 1
  store i32 %74, ptr %75, align 4
  %76 = load ptr, ptr %8, align 4
  %77 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 -102
  %80 = load i16, ptr %79, align 2
  %81 = and i16 %80, 4080
  %82 = getelementptr inbounds %struct.nouveau_drm, ptr %76, i32 0, i32 2, i32 3, i32 1, i32 4
  %83 = load i8, ptr %82, align 1
  %84 = icmp ugt i8 %83, 1
  %85 = icmp ne i16 %81, 256
  %86 = select i1 %84, i1 %85, i1 false
  %87 = icmp ne i16 %81, 336
  %88 = select i1 %86, i1 %87, i1 false
  %89 = icmp ne i16 %81, 416
  %90 = select i1 %88, i1 %89, i1 false
  %91 = icmp ne i16 %81, 512
  %92 = select i1 %90, i1 %91, i1 false
  %93 = icmp ne i16 %81, 272
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %98, label %95

95:                                               ; preds = %65
  %96 = load i16, ptr %66, align 4
  %97 = zext i16 %96 to i32
  br label %112

98:                                               ; preds = %65
  %99 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 2
  %100 = load i16, ptr %99, align 2
  %101 = zext i16 %100 to i32
  %102 = load i16, ptr %66, align 4
  %103 = zext i16 %102 to i32
  %104 = sub nsw i32 %101, %103
  %105 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 18, i32 8
  %106 = load i8, ptr %105, align 4
  %107 = zext i8 %106 to i32
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %98
  %110 = xor i32 %107, -1
  %111 = add nsw i32 %110, %101
  br label %112

112:                                              ; preds = %109, %98, %95
  %113 = phi i32 [ %111, %109 ], [ %97, %95 ], [ %103, %98 ]
  %114 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 28, i32 2
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 2
  %116 = load i16, ptr %115, align 2
  %117 = zext i16 %116 to i32
  %118 = add nsw i32 %117, -1
  %119 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 28, i32 3
  store i32 %118, ptr %119, align 4
  %120 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 3
  %121 = load i16, ptr %120, align 4
  %122 = zext i16 %121 to i32
  %123 = add nsw i32 %122, -1
  %124 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 28, i32 4
  store i32 %123, ptr %124, align 4
  %125 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 5
  %126 = load i16, ptr %125, align 4
  %127 = zext i16 %126 to i32
  %128 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 28, i32 5
  store i32 %127, ptr %128, align 4
  %129 = load i16, ptr %66, align 4
  %130 = zext i16 %129 to i32
  %131 = add nsw i32 %130, -1
  %132 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 28, i32 6
  store i32 %131, ptr %132, align 4
  %133 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 6
  %134 = load i16, ptr %133, align 2
  %135 = zext i16 %134 to i32
  %136 = add nsw i32 %135, -1
  %137 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 29
  store i32 %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 9
  %139 = load i16, ptr %138, align 4
  %140 = zext i16 %139 to i32
  %141 = add nsw i32 %140, -1
  %142 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 29, i32 1
  store i32 %141, ptr %142, align 4
  %143 = load i16, ptr %138, align 4
  %144 = zext i16 %143 to i32
  %145 = add nsw i32 %144, -6
  %146 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 29, i32 2
  store i32 %145, ptr %146, align 4
  %147 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 7
  %148 = load i16, ptr %147, align 4
  %149 = zext i16 %148 to i32
  %150 = add nsw i32 %149, -1
  %151 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 29, i32 3
  store i32 %150, ptr %151, align 4
  %152 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 8
  %153 = load i16, ptr %152, align 2
  %154 = zext i16 %153 to i32
  %155 = add nsw i32 %154, -1
  %156 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 29, i32 4
  store i32 %155, ptr %156, align 4
  %157 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 29, i32 5
  store i32 0, ptr %157, align 4
  %158 = load i16, ptr %133, align 2
  %159 = zext i16 %158 to i32
  %160 = add nsw i32 %159, -1
  %161 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 29, i32 6
  store i32 %160, ptr %161, align 4
  %162 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %18, i32 0, i32 %17, i32 31
  %163 = load i32, ptr %162, align 4
  %164 = and i32 %163, 68157440
  %165 = or i32 %164, 268435456
  %166 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 31
  store i32 %165, ptr %166, align 4
  %167 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9, i32 11
  %168 = load i32, ptr %167, align 4
  %169 = and i32 %168, 4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %112
  %172 = or i32 %164, 268435457
  store i32 %172, ptr %166, align 4
  %173 = load i32, ptr %167, align 4
  br label %174

174:                                              ; preds = %171, %112
  %175 = phi i32 [ %172, %171 ], [ %165, %112 ]
  %176 = phi i32 [ %173, %171 ], [ %168, %112 ]
  %177 = and i32 %176, 1
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %181, label %179

179:                                              ; preds = %174
  %180 = or i32 %175, 16
  store i32 %180, ptr %166, align 4
  br label %181

181:                                              ; preds = %179, %174
  %182 = phi i32 [ %180, %179 ], [ %175, %174 ]
  %183 = getelementptr inbounds %struct.nouveau_connector, ptr %46, i32 0, i32 7
  %184 = load i32, ptr %183, align 4
  switch i32 %184, label %185 [
    i32 0, label %195
    i32 2, label %195
  ]

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %187 = load i16, ptr %186, align 4
  %188 = load i16, ptr %66, align 4
  %189 = icmp eq i16 %187, %188
  br i1 %189, label %190, label %198

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %192 = load i16, ptr %191, align 2
  %193 = load i16, ptr %133, align 2
  %194 = icmp eq i16 %192, %193
  br i1 %194, label %195, label %198

195:                                              ; preds = %190, %181, %181
  %196 = phi i32 [ 256, %181 ], [ 256, %181 ], [ 512, %190 ]
  %197 = or i32 %182, %196
  store i32 %197, ptr %166, align 4
  br label %198

198:                                              ; preds = %195, %190, %185
  %199 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 0, i32 6
  %200 = load ptr, ptr %199, align 8
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202, !prof !8

202:                                              ; preds = %198
  %203 = getelementptr i8, ptr %200, i32 1052672
  %204 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %203) #8, !srcloc !11
  call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %207

205:                                              ; preds = %198
  %206 = call i32 @nvif_object_rd(ptr noundef %10, i32 noundef 4, i64 noundef 1052672) #8
  br label %207

207:                                              ; preds = %205, %202
  %208 = phi i32 [ %204, %202 ], [ %206, %205 ]
  %209 = and i32 %208, 32768
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %214, label %211

211:                                              ; preds = %207
  %212 = load i32, ptr %166, align 4
  %213 = or i32 %212, 16777216
  store i32 %213, ptr %166, align 4
  br label %214

214:                                              ; preds = %211, %207
  %215 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %216 = load ptr, ptr %215, align 4
  %217 = getelementptr inbounds %struct.dcb_output, ptr %216, i32 0, i32 8
  %218 = load i8, ptr %217, align 4
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %227, label %220

220:                                              ; preds = %214
  %221 = load i32, ptr %47, align 4
  %222 = icmp sgt i32 %221, 165000
  br i1 %222, label %223, label %227

223:                                              ; preds = %220
  %224 = load i32, ptr %166, align 4
  %225 = or i32 %224, 33554432
  store i32 %225, ptr %166, align 4
  %226 = load ptr, ptr %215, align 4
  br label %227

227:                                              ; preds = %223, %220, %214
  %228 = phi ptr [ %226, %223 ], [ %216, %220 ], [ %216, %214 ]
  %229 = getelementptr inbounds %struct.dcb_output, ptr %228, i32 0, i32 3
  %230 = load i32, ptr %229, align 4
  %231 = icmp eq i32 %230, 3
  br i1 %231, label %232, label %256

232:                                              ; preds = %227
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #8
  store i8 0, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #8
  store i8 0, ptr %6, align 1, !annotation !16
  %233 = getelementptr inbounds %struct.nouveau_connector, ptr %46, i32 0, i32 9
  %234 = load ptr, ptr %233, align 4
  %235 = icmp eq ptr %234, null
  br i1 %235, label %245, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %struct.nouveau_connector, ptr %46, i32 0, i32 1
  %238 = load i32, ptr %237, align 8
  %239 = icmp eq i32 %238, 65
  br i1 %239, label %240, label %245

240:                                              ; preds = %236
  %241 = getelementptr i8, ptr %234, i32 121
  %242 = load i8, ptr %241, align 1
  %243 = icmp eq i8 %242, 2
  %244 = zext i1 %243 to i8
  br label %249

245:                                              ; preds = %236, %232
  %246 = load i32, ptr %47, align 4
  %247 = call i32 @nouveau_bios_parse_lvds_table(ptr noundef %7, i32 noundef %246, ptr noundef nonnull %5, ptr noundef nonnull %6) #8
  %248 = load i8, ptr %5, align 1
  br label %249

249:                                              ; preds = %245, %240
  %250 = phi i8 [ %248, %245 ], [ %244, %240 ]
  %251 = icmp eq i8 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %249
  %253 = load i32, ptr %166, align 4
  %254 = or i32 %253, -2147483648
  store i32 %254, ptr %166, align 4
  br label %255

255:                                              ; preds = %252, %249
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #8
  br label %262

256:                                              ; preds = %227
  %257 = load i32, ptr %47, align 4
  %258 = icmp sgt i32 %257, 165000
  br i1 %258, label %259, label %262

259:                                              ; preds = %256
  %260 = load i32, ptr %166, align 4
  %261 = or i32 %260, -2147483648
  store i32 %261, ptr %166, align 4
  br label %262

262:                                              ; preds = %259, %256, %255
  %263 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 33
  store i32 17830289, ptr %263, align 4
  %264 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 34
  store i32 0, ptr %264, align 4
  %265 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 35
  store i32 0, ptr %265, align 4
  %266 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 1
  %267 = load i16, ptr %266, align 4
  %268 = zext i16 %267 to i32
  %269 = shl nuw nsw i32 %268, 12
  %270 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 6
  %271 = load i16, ptr %270, align 2
  %272 = zext i16 %271 to i32
  %273 = udiv i32 %269, %272
  %274 = load i16, ptr %66, align 4
  %275 = zext i16 %274 to i32
  %276 = shl nuw nsw i32 %275, 12
  %277 = load i16, ptr %133, align 2
  %278 = zext i16 %277 to i32
  %279 = udiv i32 %276, %278
  %280 = load i32, ptr %183, align 4
  %281 = icmp ne i32 %280, 3
  %282 = icmp eq i32 %273, %279
  %283 = select i1 %281, i1 true, i1 %282
  br i1 %283, label %349, label %284

284:                                              ; preds = %262
  %285 = load ptr, ptr %8, align 4
  %286 = load ptr, ptr %77, align 4
  %287 = getelementptr i8, ptr %286, i32 -102
  %288 = load i16, ptr %287, align 2
  %289 = and i16 %288, 4080
  %290 = getelementptr inbounds %struct.nouveau_drm, ptr %285, i32 0, i32 2, i32 3, i32 1, i32 4
  %291 = load i8, ptr %290, align 1
  %292 = icmp ugt i8 %291, 1
  %293 = icmp ne i16 %289, 256
  %294 = select i1 %292, i1 %293, i1 false
  %295 = icmp ne i16 %289, 336
  %296 = select i1 %294, i1 %295, i1 false
  %297 = icmp ne i16 %289, 416
  %298 = select i1 %296, i1 %297, i1 false
  %299 = icmp ne i16 %289, 512
  %300 = select i1 %298, i1 %299, i1 false
  %301 = icmp ne i16 %289, 272
  %302 = select i1 %300, i1 %301, i1 false
  %303 = icmp ult i32 %273, %279
  br i1 %303, label %304, label %323

304:                                              ; preds = %284
  %305 = shl nuw nsw i32 %272, 12
  %306 = udiv i32 %305, %278
  %307 = zext i1 %302 to i32
  %308 = lshr i32 %306, %307
  %309 = and i32 %308, 4095
  %310 = or i32 %309, 4096
  store i32 %310, ptr %264, align 4
  %311 = load i16, ptr %66, align 4
  %312 = zext i16 %311 to i32
  %313 = load i16, ptr %133, align 2
  %314 = zext i16 %313 to i32
  %315 = mul i32 %273, %314
  %316 = lshr i32 %315, 12
  %317 = sub nsw i32 %312, %316
  %318 = lshr i32 %317, 1
  %319 = load i32, ptr %128, align 4
  %320 = add i32 %318, %319
  store i32 %320, ptr %128, align 4
  %321 = load i32, ptr %132, align 4
  %322 = sub i32 %321, %318
  store i32 %322, ptr %132, align 4
  br label %323

323:                                              ; preds = %304, %284
  %324 = icmp ugt i32 %273, %279
  br i1 %324, label %325, label %349

325:                                              ; preds = %323
  %326 = load i16, ptr %266, align 4
  %327 = zext i16 %326 to i32
  %328 = shl nuw nsw i32 %327, 12
  %329 = load i16, ptr %66, align 4
  %330 = zext i16 %329 to i32
  %331 = udiv i32 %328, %330
  %332 = zext i1 %302 to i32
  %333 = lshr i32 %331, %332
  %334 = shl i32 %333, 16
  %335 = and i32 %334, 268369920
  %336 = or i32 %335, 268435456
  store i32 %336, ptr %264, align 4
  %337 = load i16, ptr %133, align 2
  %338 = zext i16 %337 to i32
  %339 = load i16, ptr %66, align 4
  %340 = zext i16 %339 to i32
  %341 = shl nuw nsw i32 %340, 12
  %342 = udiv i32 %341, %273
  %343 = sub nsw i32 %338, %342
  %344 = lshr i32 %343, 1
  %345 = load i32, ptr %157, align 4
  %346 = add i32 %344, %345
  store i32 %346, ptr %157, align 4
  %347 = load i32, ptr %161, align 4
  %348 = sub i32 %347, %344
  store i32 %348, ptr %161, align 4
  br label %349

349:                                              ; preds = %325, %323, %262
  %350 = getelementptr inbounds %struct.nouveau_connector, ptr %46, i32 0, i32 6
  %351 = load i32, ptr %350, align 8
  switch i32 %351, label %380 [
    i32 1, label %362
    i32 34, label %352
  ]

352:                                              ; preds = %349
  %353 = getelementptr inbounds %struct.drm_framebuffer, ptr %52, i32 0, i32 4
  %354 = load ptr, ptr %353, align 8
  %355 = getelementptr inbounds %struct.drm_format_info, ptr %354, i32 0, i32 1
  %356 = load i8, ptr %355, align 4
  %357 = zext i8 %356 to i32
  %358 = getelementptr inbounds %struct.drm_connector, ptr %46, i32 0, i32 20, i32 2
  %359 = load i32, ptr %358, align 8
  %360 = mul i32 %359, 3
  %361 = icmp ult i32 %360, %357
  br i1 %361, label %362, label %380

362:                                              ; preds = %352, %349
  %363 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 1, i32 2
  %364 = load i16, ptr %363, align 2
  %365 = icmp eq i16 %364, 17
  %366 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %18, i32 0, i32 %17, i32 30
  %367 = load i32, ptr %366, align 4
  br i1 %365, label %368, label %371

368:                                              ; preds = %362
  %369 = or i32 %367, 65536
  %370 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 30
  store i32 %369, ptr %370, align 4
  br label %407

371:                                              ; preds = %362
  %372 = or i32 %367, 1
  %373 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 30
  store i32 %372, ptr %373, align 4
  %374 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 0
  store i32 -454761244, ptr %374, align 4
  %375 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 3
  store i32 1145324612, ptr %375, align 4
  %376 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 1
  store i32 -454761244, ptr %376, align 4
  %377 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 4
  store i32 1145324612, ptr %377, align 4
  %378 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 2
  store i32 -454761244, ptr %378, align 4
  %379 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 5
  store i32 1145324612, ptr %379, align 4
  br label %407

380:                                              ; preds = %352, %349
  %381 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 1, i32 2
  %382 = load i16, ptr %381, align 2
  %383 = icmp eq i16 %382, 17
  br i1 %383, label %403, label %384

384:                                              ; preds = %380
  %385 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %18, i32 0, i32 %17, i32 32, i32 0
  %386 = load i32, ptr %385, align 4
  %387 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 0
  store i32 %386, ptr %387, align 4
  %388 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %18, i32 0, i32 %17, i32 32, i32 3
  %389 = load i32, ptr %388, align 4
  %390 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 3
  store i32 %389, ptr %390, align 4
  %391 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %18, i32 0, i32 %17, i32 32, i32 1
  %392 = load i32, ptr %391, align 4
  %393 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 1
  store i32 %392, ptr %393, align 4
  %394 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %18, i32 0, i32 %17, i32 32, i32 4
  %395 = load i32, ptr %394, align 4
  %396 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 4
  store i32 %395, ptr %396, align 4
  %397 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %18, i32 0, i32 %17, i32 32, i32 2
  %398 = load i32, ptr %397, align 4
  %399 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 2
  store i32 %398, ptr %399, align 4
  %400 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %18, i32 0, i32 %17, i32 32, i32 5
  %401 = load i32, ptr %400, align 4
  %402 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 32, i32 5
  store i32 %401, ptr %402, align 4
  br label %403

403:                                              ; preds = %384, %380
  %404 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %18, i32 0, i32 %17, i32 30
  %405 = load i32, ptr %404, align 4
  %406 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 30
  store i32 %405, ptr %406, align 4
  br label %407

407:                                              ; preds = %403, %371, %368
  %408 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %15, i32 0, i32 %17, i32 36
  store i32 0, ptr %408, align 4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_encoder_get_connector(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @run_tmds_table(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_lvds_script(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv04_dac_output_offset(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_debug_printmodeline(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bios_parse_lvds_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_encoder(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_lvds_dpms(ptr nocapture noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 10
  %9 = load i32, ptr %8, align 4
  %10 = and i32 %9, -129
  %11 = icmp ne i32 %10, 0
  %12 = icmp eq i32 %9, %1
  br i1 %12, label %181, label %13

13:                                               ; preds = %2
  store i32 %1, ptr %8, align 4
  %14 = load i32, ptr @__drm_debug, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 8
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 2, i32 12
  %25 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %23, ptr noundef nonnull @.str.3, ptr noundef %24, i32 noundef %1, i32 noundef %27) #10
  br label %28

28:                                               ; preds = %17, %13
  %29 = and i32 %1, -129
  %30 = icmp ne i32 %29, 0
  %31 = and i1 %30, %11
  br i1 %31, label %181, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.dcb_output, ptr %34, i32 0, i32 13
  %36 = getelementptr inbounds %struct.anon.82, ptr %35, i32 0, i32 3
  %37 = load i8, ptr %36, align 2, !range !17
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %89, label %39

39:                                               ; preds = %32
  %40 = icmp eq ptr %5, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.nouveau_crtc, ptr %5, i32 0, i32 1
  %43 = load i32, ptr %42, align 8
  br label %79

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct.dcb_output, ptr %34, i32 0, i32 9
  %46 = load i8, ptr %45, align 1
  %47 = lshr i8 %46, 2
  %48 = and i8 %47, 1
  %49 = load ptr, ptr %6, align 4
  %50 = icmp eq i8 %48, 0
  %51 = select i1 %50, i32 6817968, i32 6826160
  %52 = getelementptr inbounds %struct.nouveau_drm, ptr %49, i32 0, i32 2, i32 3, i32 0, i32 6
  %53 = load ptr, ptr %52, align 8
  %54 = icmp eq ptr %53, null
  br i1 %54, label %57, label %55, !prof !8

55:                                               ; preds = %44
  %56 = getelementptr i8, ptr %53, i32 %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 65540) #8, !srcloc !10
  br label %60

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.nouveau_drm, ptr %49, i32 0, i32 2, i32 3
  %59 = zext i32 %51 to i64
  tail call void @nvif_object_wr(ptr noundef %58, i32 noundef 4, i64 noundef %59, i32 noundef 65540) #8
  br label %60

60:                                               ; preds = %57, %55
  %61 = load ptr, ptr %6, align 4
  %62 = select i1 %50, i32 6817972, i32 6826164
  %63 = getelementptr inbounds %struct.nouveau_drm, ptr %61, i32 0, i32 2, i32 3, i32 0, i32 6
  %64 = load ptr, ptr %63, align 8
  %65 = icmp eq ptr %64, null
  br i1 %65, label %69, label %66, !prof !8

66:                                               ; preds = %60
  %67 = getelementptr i8, ptr %64, i32 %62
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %73

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.nouveau_drm, ptr %61, i32 0, i32 2, i32 3
  %71 = zext i32 %62 to i64
  %72 = tail call i32 @nvif_object_rd(ptr noundef %70, i32 noundef 4, i64 noundef %71) #8
  br label %73

73:                                               ; preds = %69, %66
  %74 = phi i32 [ %68, %66 ], [ %72, %69 ]
  %75 = zext i8 %48 to i32
  %76 = lshr i32 %74, 3
  %77 = and i32 %76, 1
  %78 = xor i32 %77, %75
  br label %79

79:                                               ; preds = %73, %41
  %80 = phi i32 [ %43, %41 ], [ %78, %73 ]
  %81 = icmp eq i32 %1, 0
  %82 = load ptr, ptr %33, align 4
  br i1 %81, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 9
  %85 = load i32, ptr %84, align 4
  %86 = tail call i32 @call_lvds_script(ptr noundef %3, ptr noundef %82, i32 noundef %80, i32 noundef 5, i32 noundef %85) #8
  tail call void @nv04_dfp_update_fp_control(ptr noundef %0, i32 noundef 0)
  br label %91

87:                                               ; preds = %79
  %88 = tail call i32 @call_lvds_script(ptr noundef %3, ptr noundef %82, i32 noundef %80, i32 noundef 6, i32 noundef 0) #8
  tail call void @nv04_dfp_update_fp_control(ptr noundef %0, i32 noundef %1)
  br label %142

89:                                               ; preds = %32
  tail call void @nv04_dfp_update_fp_control(ptr noundef %0, i32 noundef %1)
  %90 = icmp eq i32 %1, 0
  br i1 %90, label %91, label %142

91:                                               ; preds = %89, %83
  %92 = load ptr, ptr %6, align 4
  %93 = getelementptr inbounds %struct.nouveau_drm, ptr %92, i32 0, i32 19
  %94 = load ptr, ptr %93, align 4
  %95 = load ptr, ptr %94, align 8
  %96 = load ptr, ptr %33, align 4
  %97 = getelementptr inbounds %struct.dcb_output, ptr %96, i32 0, i32 9
  %98 = load i8, ptr %97, align 1
  %99 = and i8 %98, 1
  %100 = icmp eq i8 %99, 0
  %101 = select i1 %100, i32 262144, i32 65536
  %102 = getelementptr inbounds %struct.dcb_output, ptr %96, i32 0, i32 8
  %103 = load i8, ptr %102, align 4
  %104 = icmp eq i8 %103, 0
  br i1 %104, label %105, label %167

105:                                              ; preds = %91
  %106 = getelementptr inbounds %struct.nouveau_crtc, ptr %5, i32 0, i32 1
  %107 = load i32, ptr %106, align 8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.nv04_mode_state, ptr %95, i32 0, i32 2
  %111 = load i32, ptr %110, align 4
  %112 = or i32 %111, %101
  store i32 %112, ptr %110, align 4
  br label %118

113:                                              ; preds = %105
  %114 = xor i32 %101, -1
  %115 = getelementptr inbounds %struct.nv04_mode_state, ptr %95, i32 0, i32 2
  %116 = load i32, ptr %115, align 4
  %117 = and i32 %116, %114
  store i32 %117, ptr %115, align 4
  br label %118

118:                                              ; preds = %113, %109
  %119 = phi i32 [ %117, %113 ], [ %112, %109 ]
  %120 = load ptr, ptr %33, align 4
  %121 = getelementptr inbounds %struct.dcb_output, ptr %120, i32 0, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 3
  br i1 %123, label %124, label %167

124:                                              ; preds = %118
  %125 = load ptr, ptr %6, align 4
  %126 = getelementptr inbounds %struct.nouveau_drm, ptr %125, i32 0, i32 19
  %127 = load ptr, ptr %126, align 4
  %128 = load ptr, ptr %127, align 8
  %129 = getelementptr inbounds %struct.nv04_display, ptr %128, i32 0, i32 1, i32 2
  %130 = load i32, ptr %129, align 4
  %131 = and i32 %130, 240
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %167, label %133

133:                                              ; preds = %124
  %134 = and i32 %130, 80
  %135 = icmp eq i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = getelementptr inbounds %struct.nv04_mode_state, ptr %95, i32 0, i32 2
  %138 = and i32 %119, -241
  %139 = select i1 %108, i32 16, i32 64
  %140 = shl nuw nsw i32 %139, %136
  %141 = or i32 %140, %138
  store i32 %141, ptr %137, align 4
  br label %167

142:                                              ; preds = %89, %87
  %143 = load ptr, ptr %6, align 4
  %144 = getelementptr inbounds %struct.nouveau_drm, ptr %143, i32 0, i32 2, i32 3, i32 0, i32 6
  %145 = load ptr, ptr %144, align 8
  %146 = icmp eq ptr %145, null
  br i1 %146, label %150, label %147, !prof !8

147:                                              ; preds = %142
  %148 = getelementptr i8, ptr %145, i32 6817060
  %149 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %148) #8, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %153

150:                                              ; preds = %142
  %151 = getelementptr inbounds %struct.nouveau_drm, ptr %143, i32 0, i32 2, i32 3
  %152 = tail call i32 @nvif_object_rd(ptr noundef %151, i32 noundef 4, i64 noundef 6817060) #8
  br label %153

153:                                              ; preds = %150, %147
  %154 = phi i32 [ %149, %147 ], [ %152, %150 ]
  %155 = load ptr, ptr %6, align 4
  %156 = getelementptr inbounds %struct.nouveau_drm, ptr %155, i32 0, i32 19
  %157 = load ptr, ptr %156, align 4
  %158 = load ptr, ptr %157, align 8
  %159 = getelementptr inbounds %struct.nv04_mode_state, ptr %158, i32 0, i32 2
  store i32 %154, ptr %159, align 4
  %160 = load ptr, ptr %6, align 4
  %161 = getelementptr inbounds %struct.nouveau_drm, ptr %160, i32 0, i32 19
  %162 = load ptr, ptr %161, align 4
  %163 = load ptr, ptr %162, align 8
  %164 = getelementptr inbounds %struct.nv04_mode_state, ptr %163, i32 0, i32 2
  %165 = load i32, ptr %164, align 4
  %166 = and i32 %165, -241
  store i32 %166, ptr %164, align 4
  br label %167

167:                                              ; preds = %153, %133, %124, %118, %91
  %168 = load ptr, ptr %6, align 4
  %169 = getelementptr inbounds %struct.nouveau_drm, ptr %168, i32 0, i32 19
  %170 = load ptr, ptr %169, align 4
  %171 = load ptr, ptr %170, align 8
  %172 = getelementptr inbounds %struct.nv04_mode_state, ptr %171, i32 0, i32 2
  %173 = load i32, ptr %172, align 4
  %174 = getelementptr inbounds %struct.nouveau_drm, ptr %168, i32 0, i32 2, i32 3, i32 0, i32 6
  %175 = load ptr, ptr %174, align 8
  %176 = icmp eq ptr %175, null
  br i1 %176, label %179, label %177, !prof !8

177:                                              ; preds = %167
  %178 = getelementptr i8, ptr %175, i32 6817060
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !9
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %173) #8, !srcloc !10
  br label %181

179:                                              ; preds = %167
  %180 = getelementptr inbounds %struct.nouveau_drm, ptr %168, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %180, i32 noundef 4, i64 noundef 6817060, i32 noundef %173) #8
  br label %181

181:                                              ; preds = %179, %177, %28, %2
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_hw_pllvals_to_clk(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_dfp_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void %7(ptr noundef %0) #8
  br label %8

8:                                                ; preds = %5, %1
  tail call void @drm_encoder_cleanup(ptr noundef %0) #8
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bus_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_i2c_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #7

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

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
!9 = !{i64 2150888423}
!10 = !{i64 3347330}
!11 = !{i64 3347748}
!12 = !{i64 2150887201}
!13 = !{i8 0, i8 9}
!14 = !{i64 2150887553}
!15 = !{i64 3347133}
!16 = !{!"auto-init"}
!17 = !{i8 0, i8 2}
