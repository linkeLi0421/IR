; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_connector.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_connector.c"
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
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.64 }
%union.anon.64 = type { ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.moderec = type { i32, i32 }
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
%struct.drm_connector = type { ptr, ptr, ptr, ptr, %struct.list_head, %struct.list_head, %struct.drm_mode_object, ptr, %struct.mutex, i32, i32, i32, i8, i8, i8, i8, i32, %struct.list_head, i32, %struct.list_head, %struct.drm_display_info, ptr, ptr, %struct.drm_object_properties, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, ptr, ptr, i8, i32, ptr, %struct.drm_cmdline_mode, i32, i8, i64, i32, ptr, [128 x i8], [2 x i8], [2 x i32], [2 x i32], ptr, i32, i32, i8, i8, ptr, ptr, ptr, i8, ptr, i8, i8, i8, i8, i8, i16, i16, %struct.llist_node, %struct.hdr_sink_metadata }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
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
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.84, %struct.anon.85, %struct.anon.87, ptr, %struct.anon.88, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.89, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.101 }
%struct.nvif_parent = type { ptr }
%struct.nouveau_cli = type { %struct.nvif_client, ptr, %struct.mutex, %struct.nvif_device, %struct.nvif_mmu, %struct.nouveau_vmm, %struct.nouveau_vmm, ptr, %struct.list_head, ptr, %struct.list_head, %struct.list_head, [32 x i8], %struct.work_struct, %struct.list_head, %struct.mutex }
%struct.nvif_client = type { %struct.nvif_object, ptr, i64, i8 }
%struct.nvif_device = type { %struct.nvif_object, %struct.nv_device_info_v0, ptr, i32, %struct.nvif_user }
%struct.nv_device_info_v0 = type { i8, i8, i16, i8, i8, [2 x i8], i64, i64, [16 x i8], [64 x i8] }
%struct.nvif_user = type { ptr, %struct.nvif_object }
%struct.nvif_mmu = type { %struct.nvif_object, i8, i8, i8, i8, i16, i32, ptr, ptr, ptr }
%struct.nouveau_vmm = type { ptr, %struct.nvif_vmm, ptr }
%struct.nvif_vmm = type { %struct.nvif_object, i64, i64, ptr, i32 }
%struct.anon.84 = type { ptr, i32, i32, i8 }
%struct.anon.85 = type { %struct.ttm_device, %struct.atomic_t, ptr, ptr, %struct.nvif_object, i32, i32, [2 x i32], [2 x i32], %struct.mutex, %struct.list_head }
%struct.ttm_device = type { %struct.list_head, ptr, %struct.ttm_resource_manager, [8 x ptr], ptr, %struct.ttm_pool, %struct.spinlock, %struct.list_head, %struct.list_head, ptr, %struct.delayed_work }
%struct.ttm_resource_manager = type { i8, i8, i64, ptr, %struct.spinlock, [4 x %struct.list_head], ptr }
%struct.ttm_pool = type { ptr, i8, i8, [3 x %struct.anon.86] }
%struct.anon.86 = type { [12 x %struct.ttm_pool_type] }
%struct.ttm_pool_type = type { ptr, i32, i32, %struct.list_head, %struct.spinlock, %struct.list_head }
%struct.anon.87 = type { i64, i64 }
%struct.anon.88 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.80 }
%struct.anon.80 = type { ptr, i64 }
%struct.anon.89 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.96, %struct.anon.97, %struct.anon.98, %struct.anon.99 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.90, i8 }
%union.anon.90 = type { %struct.anon.94 }
%struct.anon.94 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.96 = type { i32 }
%struct.anon.97 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.98 = type { i16, i16 }
%struct.anon.99 = type { i16, i16, i16, %struct.anon.100, i16 }
%struct.anon.100 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.101 = type { ptr, %struct.mutex, i8 }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.102, %struct.anon.103, %struct.anon.105, %union.anon.106 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.102 = type { i32, i32 }
%struct.anon.103 = type { i32, %struct.anon.104, i8 }
%struct.anon.104 = type { i32, i32, i32 }
%struct.anon.105 = type { i32, i32 }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i8 }
%struct.nouveau_display = type { ptr, ptr, ptr, ptr, %struct.nvif_disp, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nvif_disp = type { %struct.nvif_object }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.drm_mode_config_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nouveau_connector = type { %struct.drm_connector, i32, i8, ptr, %struct.nvif_notify, %struct.drm_dp_aux, i32, i32, ptr, ptr, ptr, ptr, %struct.nouveau_conn_atom }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.drm_connector_list_iter = type { ptr, ptr }
%struct.nvif_notify_conn_req_v0 = type { i8, i8, i8, [5 x i8] }
%struct.drm_dp_aux_msg = type { i32, i8, i8, ptr, i32 }
%struct.nvif_notify_conn_rep_v0 = type { i8, i8, [6 x i8] }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.108, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.109, %struct.anon.116, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.anon.108 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.109 = type { %struct.anon.110 }
%struct.anon.110 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.116 = type { i8 }
%struct.edid = type { [8 x i8], [2 x i8], [2 x i8], i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.est_timings, [8 x %struct.std_timing], [4 x %struct.detailed_timing], i8, i8 }
%struct.est_timings = type { i8, i8, i8 }
%struct.std_timing = type { i8, i8 }
%struct.detailed_timing = type { i16, %union.anon.111 }
%union.anon.111 = type { %struct.detailed_pixel_timing }
%struct.detailed_pixel_timing = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }

@.str = private unnamed_addr constant [32 x i8] c"%s: native mode from preferred\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"%s: native mode from largest: %dx%d@%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"drivers/gpu/drm/nouveau/nouveau_connector.c\00", align 1
@__UNIQUE_ID_tv_disable281 = internal constant [41 x i8] c"parm=tv_disable:Disable TV-out detection\00", section ".modinfo", align 1
@nouveau_tv_disable = dso_local global i32 0, align 4
@__param_str_tv_disable = internal constant [11 x i8] c"tv_disable\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_tv_disable = internal constant %struct.kernel_param { ptr @__param_str_tv_disable, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_tv_disable } }, section "__param", align 4
@__UNIQUE_ID_tv_disabletype282 = internal constant [24 x i8] c"parmtype=tv_disable:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ignorelid283 = internal constant [38 x i8] c"parm=ignorelid:Ignore ACPI lid status\00", section ".modinfo", align 1
@nouveau_ignorelid = dso_local global i32 0, align 4
@__param_str_ignorelid = internal constant [10 x i8] c"ignorelid\00", align 1
@__param_ignorelid = internal constant %struct.kernel_param { ptr @__param_str_ignorelid, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_ignorelid } }, section "__param", align 4
@__UNIQUE_ID_ignorelidtype284 = internal constant [23 x i8] c"parmtype=ignorelid:int\00", section ".modinfo", align 1
@__UNIQUE_ID_duallink285 = internal constant [54 x i8] c"parm=duallink:Allow dual-link TMDS (default: enabled)\00", section ".modinfo", align 1
@nouveau_duallink = dso_local global i32 1, align 4
@__param_str_duallink = internal constant [9 x i8] c"duallink\00", align 1
@__param_duallink = internal constant %struct.kernel_param { ptr @__param_str_duallink, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_duallink } }, section "__param", align 4
@__UNIQUE_ID_duallinktype286 = internal constant [22 x i8] c"parmtype=duallink:int\00", section ".modinfo", align 1
@__UNIQUE_ID_hdmimhz287 = internal constant [55 x i8] c"parm=hdmimhz:Force a maximum HDMI pixel clock (in MHz)\00", section ".modinfo", align 1
@nouveau_hdmimhz = dso_local global i32 0, align 4
@__param_str_hdmimhz = internal constant [8 x i8] c"hdmimhz\00", align 1
@__param_hdmimhz = internal constant %struct.kernel_param { ptr @__param_str_hdmimhz, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_hdmimhz } }, section "__param", align 4
@__UNIQUE_ID_hdmimhztype288 = internal constant [21 x i8] c"parmtype=hdmimhz:int\00", section ".modinfo", align 1
@nouveau_connector_funcs = internal constant %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr @nouveau_conn_reset, ptr @nouveau_connector_detect, ptr @nouveau_connector_force, ptr @drm_helper_probe_single_connector_modes, ptr @nouveau_connector_set_property, ptr @nouveau_connector_late_register, ptr @nouveau_connector_early_unregister, ptr @nouveau_connector_destroy, ptr @nouveau_conn_atomic_duplicate_state, ptr @nouveau_conn_atomic_destroy_state, ptr @nouveau_conn_atomic_set_property, ptr @nouveau_conn_atomic_get_property, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"%s: unknown connector type %02x\0A\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"%s: Error parsing LVDS table, disabling\0A\00", align 1
@nouveau_connector_funcs_lvds = internal constant %struct.drm_connector_funcs { ptr @drm_helper_connector_dpms, ptr @nouveau_conn_reset, ptr @nouveau_connector_detect_lvds, ptr @nouveau_connector_force, ptr @drm_helper_probe_single_connector_modes, ptr @nouveau_connector_set_property, ptr @nouveau_connector_late_register, ptr @nouveau_connector_early_unregister, ptr @nouveau_connector_destroy, ptr @nouveau_conn_atomic_duplicate_state, ptr @nouveau_conn_atomic_destroy_state, ptr @nouveau_conn_atomic_set_property, ptr @nouveau_conn_atomic_get_property, ptr null, ptr null }, align 4
@.str.5 = private unnamed_addr constant [14 x i8] c"sor-%04x-%04x\00", align 1
@nouveau_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @nouveau_connector_get_modes, ptr null, ptr @nouveau_connector_mode_valid, ptr null, ptr @nouveau_connector_best_encoder, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c"kmsHotplug\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.8 = private unnamed_addr constant [39 x i8] c"%s: DDC responded, but no EDID for %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"%s: can't find encoder to force %s on!\0A\00", align 1
@scaler_modes = internal unnamed_addr constant [15 x %struct.moderec] [%struct.moderec { i32 1920, i32 1200 }, %struct.moderec { i32 1920, i32 1080 }, %struct.moderec { i32 1680, i32 1050 }, %struct.moderec { i32 1600, i32 1200 }, %struct.moderec { i32 1400, i32 1050 }, %struct.moderec { i32 1280, i32 1024 }, %struct.moderec { i32 1280, i32 960 }, %struct.moderec { i32 1152, i32 864 }, %struct.moderec { i32 1024, i32 768 }, %struct.moderec { i32 800, i32 600 }, %struct.moderec { i32 720, i32 400 }, %struct.moderec { i32 640, i32 480 }, %struct.moderec { i32 640, i32 400 }, %struct.moderec { i32 640, i32 350 }, %struct.moderec zeroinitializer], align 4
@.str.10 = private unnamed_addr constant [18 x i8] c"%s: %splugged %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"un\00", align 1
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_duallink285, ptr @__UNIQUE_ID_duallinktype286, ptr @__UNIQUE_ID_hdmimhz287, ptr @__UNIQUE_ID_hdmimhztype288, ptr @__UNIQUE_ID_ignorelid283, ptr @__UNIQUE_ID_ignorelidtype284, ptr @__UNIQUE_ID_tv_disable281, ptr @__UNIQUE_ID_tv_disabletype282, ptr @__param_duallink, ptr @__param_hdmimhz, ptr @__param_ignorelid, ptr @__param_tv_disable], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_conn_native_mode(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %79, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 35
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_connector_helper_funcs, ptr %10, i32 0, i32 2
  br label %12

12:                                               ; preds = %72, %8
  %13 = phi ptr [ %6, %8 ], [ %77, %72 ]
  %14 = phi ptr [ null, %8 ], [ %76, %72 ]
  %15 = phi i32 [ 0, %8 ], [ %75, %72 ]
  %16 = phi i32 [ 0, %8 ], [ %74, %72 ]
  %17 = phi i32 [ 0, %8 ], [ %73, %72 ]
  %18 = getelementptr i8, ptr %13, i32 -64
  %19 = load ptr, ptr %11, align 4
  %20 = tail call i32 %19(ptr noundef %0, ptr noundef %18) #13
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %72

22:                                               ; preds = %12
  %23 = getelementptr i8, ptr %13, i32 -40
  %24 = load i32, ptr %23, align 4
  %25 = and i32 %24, 16
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %72

27:                                               ; preds = %22
  %28 = getelementptr i8, ptr %13, i32 -2
  %29 = load i8, ptr %28, align 2
  %30 = and i8 %29, 8
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %27
  %33 = load i32, ptr @__drm_debug, align 4
  %34 = and i32 %33, 2
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %38 = load ptr, ptr %37, align 8
  %39 = getelementptr inbounds %struct.nouveau_drm, ptr %38, i32 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = getelementptr inbounds %struct.drm_device, ptr %40, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %42, ptr noundef nonnull @.str, ptr noundef %43) #14
  br label %44

44:                                               ; preds = %36, %32
  %45 = tail call ptr @drm_mode_duplicate(ptr noundef %2, ptr noundef %18) #13
  br label %99

46:                                               ; preds = %27
  %47 = getelementptr i8, ptr %13, i32 -60
  %48 = load i16, ptr %47, align 4
  %49 = zext i16 %48 to i32
  %50 = icmp sgt i32 %17, %49
  br i1 %50, label %72, label %51

51:                                               ; preds = %46
  %52 = icmp eq i32 %17, %49
  br i1 %52, label %53, label %66

53:                                               ; preds = %51
  %54 = getelementptr i8, ptr %13, i32 -50
  %55 = load i16, ptr %54, align 2
  %56 = zext i16 %55 to i32
  %57 = icmp sgt i32 %16, %56
  br i1 %57, label %72, label %58

58:                                               ; preds = %53
  %59 = icmp eq i32 %16, %56
  br i1 %59, label %60, label %66

60:                                               ; preds = %58
  %61 = tail call i32 @drm_mode_vrefresh(ptr noundef %18) #13
  %62 = icmp slt i32 %61, %15
  br i1 %62, label %72, label %63

63:                                               ; preds = %60
  %64 = load i16, ptr %47, align 4
  %65 = zext i16 %64 to i32
  br label %66

66:                                               ; preds = %63, %58, %51
  %67 = phi i32 [ %65, %63 ], [ %49, %51 ], [ %49, %58 ]
  %68 = getelementptr i8, ptr %13, i32 -50
  %69 = load i16, ptr %68, align 2
  %70 = zext i16 %69 to i32
  %71 = tail call i32 @drm_mode_vrefresh(ptr noundef %18) #13
  br label %72

72:                                               ; preds = %66, %60, %53, %46, %22, %12
  %73 = phi i32 [ %17, %12 ], [ %17, %22 ], [ %17, %46 ], [ %17, %53 ], [ %17, %60 ], [ %67, %66 ]
  %74 = phi i32 [ %16, %12 ], [ %16, %22 ], [ %16, %46 ], [ %16, %53 ], [ %16, %60 ], [ %70, %66 ]
  %75 = phi i32 [ %15, %12 ], [ %15, %22 ], [ %15, %46 ], [ %15, %53 ], [ %15, %60 ], [ %71, %66 ]
  %76 = phi ptr [ %14, %12 ], [ %14, %22 ], [ %14, %46 ], [ %14, %53 ], [ %14, %60 ], [ %18, %66 ]
  %77 = load ptr, ptr %13, align 4
  %78 = icmp eq ptr %77, %5
  br i1 %78, label %79, label %12

79:                                               ; preds = %72, %1
  %80 = phi i32 [ 0, %1 ], [ %73, %72 ]
  %81 = phi i32 [ 0, %1 ], [ %74, %72 ]
  %82 = phi i32 [ 0, %1 ], [ %75, %72 ]
  %83 = phi ptr [ null, %1 ], [ %76, %72 ]
  %84 = load i32, ptr @__drm_debug, align 4
  %85 = and i32 %84, 2
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %79
  %88 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %89 = load ptr, ptr %88, align 8
  %90 = getelementptr inbounds %struct.nouveau_drm, ptr %89, i32 0, i32 3
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.drm_device, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.1, ptr noundef %94, i32 noundef %80, i32 noundef %81, i32 noundef %82) #14
  br label %95

95:                                               ; preds = %87, %79
  %96 = icmp eq ptr %83, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %95
  %98 = tail call ptr @drm_mode_duplicate(ptr noundef %2, ptr noundef nonnull %83) #13
  br label %99

99:                                               ; preds = %97, %95, %44
  %100 = phi ptr [ %45, %44 ], [ %98, %97 ], [ null, %95 ]
  ret ptr %100
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_duplicate(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_vrefresh(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nouveau_conn_atomic_get_property(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readnone %2, ptr nocapture noundef writeonly %3) #4 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 73
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %17

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 2
  %15 = load i32, ptr %14, align 4
  %16 = sext i32 %15 to i64
  br label %73

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 7
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, %2
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = zext i32 %23 to i64
  br label %73

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 8
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %2
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 2, i32 1, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = zext i32 %31 to i64
  br label %73

33:                                               ; preds = %25
  %34 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 9
  %35 = load ptr, ptr %34, align 8
  %36 = icmp eq ptr %35, %2
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 2, i32 1, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = zext i32 %39 to i64
  br label %73

41:                                               ; preds = %33
  %42 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 5
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, %2
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 1
  %47 = load i32, ptr %46, align 4
  %48 = zext i32 %47 to i64
  br label %73

49:                                               ; preds = %41
  %50 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 6
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %2
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 1, i32 1
  %55 = load i32, ptr %54, align 4
  %56 = zext i32 %55 to i64
  br label %73

57:                                               ; preds = %49
  %58 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 10
  %59 = load ptr, ptr %58, align 4
  %60 = icmp eq ptr %59, %2
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 3, i32 1
  %63 = load i32, ptr %62, align 4
  %64 = sext i32 %63 to i64
  br label %73

65:                                               ; preds = %57
  %66 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 11
  %67 = load ptr, ptr %66, align 8
  %68 = icmp eq ptr %67, %2
  br i1 %68, label %69, label %75

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 3
  %71 = load i32, ptr %70, align 4
  %72 = sext i32 %71 to i64
  br label %73

73:                                               ; preds = %69, %61, %53, %45, %37, %29, %21, %13
  %74 = phi i64 [ %16, %13 ], [ %32, %29 ], [ %48, %45 ], [ %64, %61 ], [ %72, %69 ], [ %56, %53 ], [ %40, %37 ], [ %24, %21 ]
  store i64 %74, ptr %3, align 8
  br label %75

75:                                               ; preds = %73, %65
  %76 = phi i32 [ -22, %65 ], [ 0, %73 ]
  ret i32 %76
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define dso_local i32 @nouveau_conn_atomic_set_property(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readnone %2, i64 noundef %3) #4 {
  %5 = load ptr, ptr %0, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %7, i32 0, i32 19
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 30, i32 73
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %2
  br i1 %12, label %13, label %28

13:                                               ; preds = %4
  switch i64 %3, label %111 [
    i64 0, label %14
    i64 1, label %21
    i64 2, label %21
    i64 3, label %21
  ]

14:                                               ; preds = %13
  %15 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %16 = load i32, ptr %15, align 8
  switch i32 %16, label %21 [
    i32 7, label %17
    i32 14, label %17
  ]

17:                                               ; preds = %14, %14
  %18 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 4, i32 0, i32 4
  %19 = load i32, ptr %18, align 8
  %20 = icmp slt i32 %19, 20592
  br i1 %20, label %111, label %21

21:                                               ; preds = %17, %14, %13, %13, %13
  %22 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 2
  %23 = load i32, ptr %22, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp eq i64 %24, %3
  br i1 %25, label %111, label %26

26:                                               ; preds = %21
  %27 = trunc i64 %3 to i32
  store i32 %27, ptr %22, align 4
  br label %106

28:                                               ; preds = %4
  %29 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 7
  %30 = load ptr, ptr %29, align 8
  %31 = icmp eq ptr %30, %2
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 2, i32 1
  %34 = load i32, ptr %33, align 4
  %35 = zext i32 %34 to i64
  %36 = icmp eq i64 %35, %3
  br i1 %36, label %111, label %37

37:                                               ; preds = %32
  %38 = trunc i64 %3 to i32
  store i32 %38, ptr %33, align 4
  br label %106

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 8
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %2
  br i1 %42, label %43, label %50

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 2, i32 1, i32 1
  %45 = load i32, ptr %44, align 4
  %46 = zext i32 %45 to i64
  %47 = icmp eq i64 %46, %3
  br i1 %47, label %111, label %48

48:                                               ; preds = %43
  %49 = trunc i64 %3 to i32
  store i32 %49, ptr %44, align 4
  br label %106

50:                                               ; preds = %39
  %51 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 9
  %52 = load ptr, ptr %51, align 8
  %53 = icmp eq ptr %52, %2
  br i1 %53, label %54, label %61

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 2, i32 1, i32 2
  %56 = load i32, ptr %55, align 4
  %57 = zext i32 %56 to i64
  %58 = icmp eq i64 %57, %3
  br i1 %58, label %111, label %59

59:                                               ; preds = %54
  %60 = trunc i64 %3 to i32
  store i32 %60, ptr %55, align 4
  br label %106

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 5
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, %2
  br i1 %64, label %65, label %72

65:                                               ; preds = %61
  %66 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp eq i64 %68, %3
  br i1 %69, label %111, label %70

70:                                               ; preds = %65
  %71 = trunc i64 %3 to i32
  store i32 %71, ptr %66, align 4
  br label %106

72:                                               ; preds = %61
  %73 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 6
  %74 = load ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %2
  br i1 %75, label %76, label %84

76:                                               ; preds = %72
  %77 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = zext i32 %78 to i64
  %80 = icmp eq i64 %79, %3
  br i1 %80, label %111, label %81

81:                                               ; preds = %76
  %82 = trunc i64 %3 to i32
  %83 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 1, i32 1
  store i32 %82, ptr %83, align 4
  br label %106

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 10
  %86 = load ptr, ptr %85, align 4
  %87 = icmp eq ptr %86, %2
  br i1 %87, label %88, label %95

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 3, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = sext i32 %90 to i64
  %92 = icmp eq i64 %91, %3
  br i1 %92, label %111, label %93

93:                                               ; preds = %88
  %94 = trunc i64 %3 to i32
  store i32 %94, ptr %89, align 4
  br label %106

95:                                               ; preds = %84
  %96 = getelementptr inbounds %struct.nouveau_display, ptr %9, i32 0, i32 11
  %97 = load ptr, ptr %96, align 8
  %98 = icmp eq ptr %97, %2
  br i1 %98, label %99, label %111

99:                                               ; preds = %95
  %100 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 3
  %101 = load i32, ptr %100, align 4
  %102 = sext i32 %101 to i64
  %103 = icmp eq i64 %102, %3
  br i1 %103, label %111, label %104

104:                                              ; preds = %99
  %105 = trunc i64 %3 to i32
  store i32 %105, ptr %100, align 4
  br label %106

106:                                              ; preds = %104, %93, %81, %70, %59, %48, %37, %26
  %107 = phi i8 [ 2, %26 ], [ 2, %48 ], [ 1, %70 ], [ 4, %93 ], [ 4, %104 ], [ 1, %81 ], [ 2, %59 ], [ 2, %37 ]
  %108 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %1, i32 0, i32 4
  %109 = load i8, ptr %108, align 4
  %110 = or i8 %109, %107
  store i8 %110, ptr %108, align 4
  br label %111

111:                                              ; preds = %106, %99, %95, %88, %76, %65, %54, %43, %32, %21, %17, %13
  %112 = phi i32 [ -22, %17 ], [ -22, %13 ], [ -22, %95 ], [ 0, %32 ], [ 0, %54 ], [ 0, %76 ], [ 0, %99 ], [ 0, %88 ], [ 0, %65 ], [ 0, %43 ], [ 0, %21 ], [ 0, %106 ]
  ret i32 %112
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_conn_atomic_destroy_state(ptr nocapture readnone %0, ptr noundef %1) #0 {
  tail call void @__drm_atomic_helper_connector_destroy_state(ptr noundef %1) #13
  tail call void @kfree(ptr noundef %1) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_destroy_state(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_conn_atomic_duplicate_state(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %5 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3264, i32 noundef 156) #15
  %6 = icmp eq ptr %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  tail call void @__drm_atomic_helper_connector_duplicate_state(ptr noundef %0, ptr noundef nonnull %5) #13
  %8 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %5, i32 0, i32 1
  %9 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %3, i32 0, i32 1
  %10 = load i64, ptr %9, align 4
  store i64 %10, ptr %8, align 4
  %11 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %5, i32 0, i32 2
  %12 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %3, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(20) %11, ptr noundef align 4 dereferenceable(20) %12, i32 20, i1 false)
  %13 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %5, i32 0, i32 3
  %14 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %3, i32 0, i32 3
  %15 = load i64, ptr %14, align 4
  store i64 %15, ptr %13, align 8
  %16 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %5, i32 0, i32 4
  store i8 0, ptr %16, align 8
  br label %17

17:                                               ; preds = %7, %1
  ret ptr %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_duplicate_state(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_conn_reset(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_driver, ptr %4, i32 0, i32 24
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 10
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %6, 16
  %10 = and i32 %9, %8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 27
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %31, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %14, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %31, label %20

20:                                               ; preds = %16, %1
  %21 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %22 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 156) #15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %25, !prof !8

24:                                               ; preds = %20
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 253, i32 noundef 9, ptr noundef null) #13
  br label %54

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @__drm_atomic_helper_connector_destroy_state(ptr noundef nonnull %27) #13
  tail call void @kfree(ptr noundef nonnull %27) #13
  br label %30

30:                                               ; preds = %29, %25
  tail call void @__drm_atomic_helper_connector_reset(ptr noundef %0, ptr noundef nonnull %22) #13
  br label %33

31:                                               ; preds = %16, %12
  %32 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 12
  br label %33

33:                                               ; preds = %31, %30
  %34 = phi ptr [ %22, %30 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %34, i32 0, i32 1
  store i32 34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %34, i32 0, i32 1, i32 1
  store i32 3, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %34, i32 0, i32 2
  store i32 0, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %34, i32 0, i32 2, i32 1
  store i32 0, ptr %38, align 4
  %39 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %34, i32 0, i32 3
  store i32 150, ptr %39, align 4
  %40 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %34, i32 0, i32 3, i32 1
  store i32 90, ptr %40, align 4
  %41 = load ptr, ptr %0, align 8
  %42 = getelementptr inbounds %struct.drm_device, ptr %41, i32 0, i32 5
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %43, i32 0, i32 19
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.nouveau_display, ptr %45, i32 0, i32 4, i32 0, i32 4
  %47 = load i32, ptr %46, align 8
  %48 = icmp slt i32 %47, 20592
  br i1 %48, label %49, label %54

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %51 = load i32, ptr %50, align 8
  %52 = icmp eq i32 %51, 7
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 1, ptr %37, align 4
  br label %54

54:                                               ; preds = %53, %49, %33, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_atomic_helper_connector_reset(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_conn_attach_properties(ptr noundef %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 19
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.drm_driver, ptr %8, i32 0, i32 24
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 10
  %12 = load i32, ptr %11, align 4
  %13 = and i32 %10, 16
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 27
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.drm_mode_config_funcs, ptr %18, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %1
  %25 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 52
  %26 = load ptr, ptr %25, align 8
  br label %29

27:                                               ; preds = %20, %16
  %28 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 12
  br label %29

29:                                               ; preds = %27, %24
  %30 = phi ptr [ %26, %24 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %32 = load i32, ptr %31, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 57
  %37 = load ptr, ptr %36, align 4
  tail call void @drm_object_attach_property(ptr noundef %35, ptr noundef %37, i64 noundef 0) #13
  br label %38

38:                                               ; preds = %34, %29
  %39 = getelementptr inbounds %struct.nouveau_display, ptr %6, i32 0, i32 7
  %40 = load ptr, ptr %39, align 8
  %41 = icmp eq ptr %40, null
  br i1 %41, label %50, label %42

42:                                               ; preds = %38
  %43 = load i32, ptr %31, align 8
  switch i32 %43, label %50 [
    i32 3, label %44
    i32 2, label %44
    i32 11, label %44
    i32 10, label %44
  ]

44:                                               ; preds = %42, %42, %42, %42
  %45 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 6
  tail call void @drm_object_attach_property(ptr noundef %45, ptr noundef nonnull %40, i64 noundef 0) #13
  %46 = getelementptr inbounds %struct.nouveau_display, ptr %6, i32 0, i32 8
  %47 = load ptr, ptr %46, align 4
  tail call void @drm_object_attach_property(ptr noundef %45, ptr noundef %47, i64 noundef 0) #13
  %48 = getelementptr inbounds %struct.nouveau_display, ptr %6, i32 0, i32 9
  %49 = load ptr, ptr %48, align 8
  tail call void @drm_object_attach_property(ptr noundef %45, ptr noundef %49, i64 noundef 0) #13
  br label %50

50:                                               ; preds = %44, %42, %38
  %51 = getelementptr inbounds %struct.nouveau_display, ptr %6, i32 0, i32 10
  %52 = load ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %30, i32 0, i32 3, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = sext i32 %57 to i64
  tail call void @drm_object_attach_property(ptr noundef %55, ptr noundef nonnull %52, i64 noundef %58) #13
  br label %59

59:                                               ; preds = %54, %50
  %60 = getelementptr inbounds %struct.nouveau_display, ptr %6, i32 0, i32 11
  %61 = load ptr, ptr %60, align 8
  %62 = icmp eq ptr %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 6
  %65 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %30, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = sext i32 %66 to i64
  tail call void @drm_object_attach_property(ptr noundef %64, ptr noundef nonnull %61, i64 noundef %67) #13
  br label %68

68:                                               ; preds = %63, %59
  %69 = load i32, ptr %31, align 8
  switch i32 %69, label %74 [
    i32 13, label %98
    i32 1, label %70
  ]

70:                                               ; preds = %68
  %71 = getelementptr inbounds %struct.nouveau_display, ptr %6, i32 0, i32 4, i32 0, i32 4
  %72 = load i32, ptr %71, align 8
  %73 = icmp slt i32 %72, 20592
  br i1 %73, label %98, label %74

74:                                               ; preds = %70, %68
  %75 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 73
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %30, i32 0, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = sext i32 %79 to i64
  tail call void @drm_object_attach_property(ptr noundef %75, ptr noundef %77, i64 noundef %80) #13
  %81 = load i32, ptr %31, align 8
  switch i32 %81, label %82 [
    i32 13, label %98
    i32 1, label %98
  ]

82:                                               ; preds = %74
  %83 = getelementptr inbounds %struct.nouveau_display, ptr %6, i32 0, i32 5
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %30, i32 0, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = zext i32 %88 to i64
  tail call void @drm_object_attach_property(ptr noundef %75, ptr noundef nonnull %84, i64 noundef %89) #13
  br label %90

90:                                               ; preds = %86, %82
  %91 = getelementptr inbounds %struct.nouveau_display, ptr %6, i32 0, i32 6
  %92 = load ptr, ptr %91, align 4
  %93 = icmp eq ptr %92, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.nouveau_conn_atom, ptr %30, i32 0, i32 1, i32 1
  %96 = load i32, ptr %95, align 4
  %97 = zext i32 %96 to i64
  tail call void @drm_object_attach_property(ptr noundef %75, ptr noundef nonnull %92, i64 noundef %97) #13
  br label %98

98:                                               ; preds = %94, %90, %74, %74, %70, %68
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_object_attach_property(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define dso_local ptr @find_encoder(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #6 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 40
  %9 = load i32, ptr %8, align 8
  %10 = icmp eq i32 %1, -1
  br label %11

11:                                               ; preds = %27, %7
  %12 = phi ptr [ %5, %7 ], [ %28, %27 ]
  %13 = getelementptr i8, ptr %12, i32 36
  %14 = load i32, ptr %13, align 4
  %15 = shl nuw i32 1, %14
  %16 = and i32 %15, %9
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %11
  br i1 %10, label %30, label %19

19:                                               ; preds = %18
  %20 = getelementptr i8, ptr %12, i32 80
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dcb_output, ptr %21, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, %1
  br i1 %26, label %32, label %27

27:                                               ; preds = %23, %19, %11
  %28 = load ptr, ptr %12, align 4
  %29 = icmp eq ptr %28, %4
  br i1 %29, label %34, label %11

30:                                               ; preds = %18
  %31 = getelementptr i8, ptr %12, i32 -4
  br label %34

32:                                               ; preds = %23
  %33 = getelementptr i8, ptr %12, i32 -4
  br label %34

34:                                               ; preds = %32, %30, %27, %2
  %35 = phi ptr [ %31, %30 ], [ %33, %32 ], [ null, %2 ], [ null, %27 ]
  ret ptr %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_connector_hpd(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 9
  %6 = load i32, ptr %5, align 4
  %7 = shl nuw i32 1, %6
  %8 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %8) #13
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 22
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, %7
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = or i32 %10, %7
  store i32 %14, ptr %9, align 4
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 20
  %16 = load ptr, ptr @system_wq, align 4
  %17 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %16, ptr noundef %15) #13
  br label %18

18:                                               ; preds = %13, %1
  tail call void @mutex_unlock(ptr noundef %8) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local ptr @nouveau_connector_create(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.drm_connector_list_iter, align 8
  %4 = alloca [48 x i8], align 1
  %5 = alloca i8, align 1
  %6 = alloca %struct.nvif_notify_conn_req_v0, align 1
  %7 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  store i64 0, ptr %3, align 8, !annotation !9
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(48) %4, i8 0, i32 48, i1 false)
  %11 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 6
  %12 = load i8, ptr %11, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #13
  store i8 0, ptr %5, align 1, !annotation !9
  call void @drm_connector_list_iter_begin(ptr noundef %0, ptr noundef nonnull %3) #13
  %13 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %3) #13
  %14 = icmp eq ptr %13, null
  br i1 %14, label %53, label %15

15:                                               ; preds = %50, %2
  %16 = phi ptr [ %51, %50 ], [ %13, %2 ]
  %17 = getelementptr inbounds %struct.drm_connector, ptr %16, i32 0, i32 10
  %18 = load i32, ptr %17, align 8
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %45

20:                                               ; preds = %15
  %21 = load ptr, ptr %16, align 8
  %22 = getelementptr inbounds %struct.drm_device, ptr %21, i32 0, i32 30, i32 16
  %23 = load ptr, ptr %22, align 4
  %24 = icmp eq ptr %23, %22
  br i1 %24, label %45, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.drm_connector, ptr %16, i32 0, i32 40
  %27 = load i32, ptr %26, align 8
  br label %28

28:                                               ; preds = %35, %25
  %29 = phi ptr [ %23, %25 ], [ %36, %35 ]
  %30 = getelementptr i8, ptr %29, i32 36
  %31 = load i32, ptr %30, align 4
  %32 = shl nuw i32 1, %31
  %33 = and i32 %32, %27
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load ptr, ptr %29, align 4
  %37 = icmp eq ptr %36, %22
  br i1 %37, label %45, label %28

38:                                               ; preds = %28
  %39 = getelementptr i8, ptr %29, i32 -4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = getelementptr i8, ptr %29, i32 32
  %43 = load i32, ptr %42, align 4
  %44 = icmp eq i32 %43, 7
  br i1 %44, label %50, label %45

45:                                               ; preds = %41, %38, %35, %20, %15
  %46 = getelementptr inbounds %struct.nouveau_connector, ptr %16, i32 0, i32 2
  %47 = load i8, ptr %46, align 4
  %48 = icmp eq i8 %47, %12
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  call void @drm_connector_list_iter_end(ptr noundef nonnull %3) #13
  br label %236

50:                                               ; preds = %45, %41
  %51 = call ptr @drm_connector_list_iter_next(ptr noundef nonnull %3) #13
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %15

53:                                               ; preds = %50, %2
  call void @drm_connector_list_iter_end(ptr noundef nonnull %3) #13
  %54 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %55 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %54, i32 noundef 3520, i32 noundef 2024) #15
  %56 = icmp eq ptr %55, null
  br i1 %56, label %236, label %57

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 2
  store i8 %12, ptr %58, align 4
  %59 = call ptr @olddcb_conn(ptr noundef %0, i8 noundef zeroext %12) #13
  %60 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 3
  store ptr %59, ptr %60, align 8
  %61 = icmp eq ptr %59, null
  br i1 %61, label %113, label %62

62:                                               ; preds = %57
  %63 = call ptr @olddcb_conntab(ptr noundef %0) #13
  %64 = load ptr, ptr %60, align 8
  %65 = load i8, ptr %64, align 1
  %66 = zext i8 %65 to i32
  %67 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 1
  store i32 %66, ptr %67, align 8
  %68 = call fastcc i32 @drm_conntype_from_dcb(i32 noundef %66)
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = getelementptr inbounds %struct.nouveau_drm, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  %75 = getelementptr inbounds %struct.drm_device, ptr %74, i32 0, i32 2
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.3, ptr noundef %77, i32 noundef %66) #14
  store i32 255, ptr %67, align 8
  br label %78

78:                                               ; preds = %70, %62
  %79 = phi i32 [ 255, %70 ], [ %66, %62 ]
  %80 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %81 = load ptr, ptr %80, align 4
  %82 = getelementptr i8, ptr %81, i32 -102
  %83 = load i16, ptr %82, align 2
  %84 = icmp eq i16 %83, 1057
  br i1 %84, label %85, label %97

85:                                               ; preds = %78
  %86 = getelementptr i8, ptr %81, i32 -100
  %87 = load i16, ptr %86, align 4
  %88 = icmp eq i16 %87, 5208
  br i1 %88, label %89, label %116

89:                                               ; preds = %85
  %90 = getelementptr i8, ptr %81, i32 -98
  %91 = load i16, ptr %90, align 2
  %92 = icmp eq i16 %91, 13388
  %93 = icmp eq i32 %79, 97
  %94 = and i1 %92, %93
  br i1 %94, label %95, label %116

95:                                               ; preds = %89
  store i32 48, ptr %67, align 8
  %96 = load i16, ptr %82, align 2
  br label %97

97:                                               ; preds = %95, %78
  %98 = phi i32 [ %79, %78 ], [ 48, %95 ]
  %99 = phi i16 [ %83, %78 ], [ %96, %95 ]
  %100 = icmp eq i16 %99, 1026
  br i1 %100, label %101, label %116

101:                                              ; preds = %97
  %102 = getelementptr i8, ptr %81, i32 -100
  %103 = load i16, ptr %102, align 4
  %104 = icmp eq i16 %103, 5208
  br i1 %104, label %105, label %116

105:                                              ; preds = %101
  %106 = getelementptr i8, ptr %81, i32 -98
  %107 = load i16, ptr %106, align 2
  %108 = icmp eq i16 %107, 13397
  %109 = icmp eq i32 %98, 97
  %110 = and i1 %108, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %105
  store i32 48, ptr %67, align 8
  %112 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 1
  br label %167

113:                                              ; preds = %57
  %114 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 1
  store i32 255, ptr %114, align 8
  %115 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 1
  br label %120

116:                                              ; preds = %105, %101, %97, %89, %85
  %117 = phi i32 [ %98, %97 ], [ %98, %101 ], [ %98, %105 ], [ %79, %85 ], [ %79, %89 ]
  %118 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 1
  %119 = icmp eq i32 %117, 255
  br i1 %119, label %120, label %167

120:                                              ; preds = %116, %113
  %121 = phi ptr [ %115, %113 ], [ %118, %116 ]
  %122 = load ptr, ptr %7, align 4
  %123 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 18, i32 22, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = icmp sgt i32 %124, 0
  br i1 %125, label %126, label %167

126:                                              ; preds = %120
  %127 = load i8, ptr %58, align 4
  br label %128

128:                                              ; preds = %139, %126
  %129 = phi i32 [ 0, %126 ], [ %141, %139 ]
  %130 = phi i32 [ 0, %126 ], [ %140, %139 ]
  %131 = getelementptr %struct.nouveau_drm, ptr %122, i32 0, i32 18, i32 22, i32 2, i32 %129, i32 6
  %132 = load i8, ptr %131, align 2
  %133 = icmp eq i8 %132, %127
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = getelementptr %struct.nouveau_drm, ptr %122, i32 0, i32 18, i32 22, i32 2, i32 %129, i32 3
  %136 = load i32, ptr %135, align 4
  %137 = shl nuw i32 1, %136
  %138 = or i32 %137, %130
  br label %139

139:                                              ; preds = %134, %128
  %140 = phi i32 [ %138, %134 ], [ %130, %128 ]
  %141 = add nuw nsw i32 %129, 1
  %142 = icmp eq i32 %141, %124
  br i1 %142, label %143, label %128

143:                                              ; preds = %139
  %144 = and i32 %140, 64
  %145 = icmp eq i32 %144, 0
  %146 = and i32 %140, 4
  %147 = icmp eq i32 %146, 0
  br i1 %145, label %151, label %148

148:                                              ; preds = %143
  br i1 %147, label %150, label %149

149:                                              ; preds = %148
  store i32 70, ptr %121, align 8
  br label %167

150:                                              ; preds = %148
  store i32 71, ptr %121, align 8
  br label %167

151:                                              ; preds = %143
  %152 = and i32 %140, 1
  %153 = icmp eq i32 %152, 0
  br i1 %147, label %157, label %154

154:                                              ; preds = %151
  br i1 %153, label %156, label %155

155:                                              ; preds = %154
  store i32 48, ptr %121, align 8
  br label %167

156:                                              ; preds = %154
  store i32 49, ptr %121, align 8
  br label %167

157:                                              ; preds = %151
  br i1 %153, label %159, label %158

158:                                              ; preds = %157
  store i32 0, ptr %121, align 8
  br label %167

159:                                              ; preds = %157
  %160 = and i32 %140, 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  store i32 64, ptr %121, align 8
  br label %167

163:                                              ; preds = %159
  %164 = and i32 %140, 2
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %163
  store i32 16, ptr %121, align 8
  br label %167

167:                                              ; preds = %166, %163, %162, %158, %156, %155, %150, %149, %120, %116, %111
  %168 = phi ptr [ %121, %150 ], [ %121, %149 ], [ %121, %158 ], [ %121, %163 ], [ %121, %166 ], [ %121, %162 ], [ %121, %155 ], [ %121, %156 ], [ %118, %116 ], [ %112, %111 ], [ %121, %120 ]
  %169 = phi i32 [ 71, %150 ], [ 70, %149 ], [ 0, %158 ], [ 255, %163 ], [ 16, %166 ], [ 64, %162 ], [ 48, %155 ], [ 49, %156 ], [ %117, %116 ], [ 48, %111 ], [ 255, %120 ]
  %170 = call fastcc i32 @drm_conntype_from_dcb(i32 noundef %169)
  switch i32 %170, label %198 [
    i32 7, label %171
    i32 10, label %183
    i32 14, label %183
  ]

171:                                              ; preds = %167
  %172 = call i32 @nouveau_bios_parse_lvds_table(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %5, ptr noundef nonnull %5) #13
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %198, label %174

174:                                              ; preds = %171
  %175 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 1
  %176 = load ptr, ptr %175, align 8
  %177 = getelementptr inbounds %struct.nouveau_drm, ptr %176, i32 0, i32 3
  %178 = load ptr, ptr %177, align 8
  %179 = getelementptr inbounds %struct.drm_device, ptr %178, i32 0, i32 2
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %180, ptr noundef nonnull @.str.4, ptr noundef %181) #14
  call void @kfree(ptr noundef nonnull %55) #13
  %182 = inttoptr i32 %172 to ptr
  br label %236

183:                                              ; preds = %167, %167
  %184 = getelementptr inbounds %struct.drm_connector, ptr %55, i32 0, i32 1
  %185 = load ptr, ptr %184, align 4
  %186 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 5
  %187 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 5, i32 2
  store ptr %185, ptr %187, align 8
  %188 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 5, i32 3
  store ptr %0, ptr %188, align 4
  %189 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 5, i32 8
  store ptr @nouveau_connector_aux_xfer, ptr %189, align 4
  %190 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 1
  %191 = load i16, ptr %190, align 4
  %192 = zext i16 %191 to i32
  %193 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 2
  %194 = load i16, ptr %193, align 2
  %195 = zext i16 %194 to i32
  %196 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 48, ptr noundef nonnull @.str.5, i32 noundef %192, i32 noundef %195)
  %197 = call noalias ptr @kstrdup(ptr noundef nonnull %4, i32 noundef 3264) #13
  store ptr %197, ptr %186, align 8
  call void @drm_dp_aux_init(ptr noundef %186) #13
  br label %198

198:                                              ; preds = %183, %171, %167
  %199 = phi ptr [ @nouveau_connector_funcs_lvds, %171 ], [ @nouveau_connector_funcs, %183 ], [ @nouveau_connector_funcs, %167 ]
  %200 = getelementptr inbounds %struct.nouveau_display, ptr %10, i32 0, i32 4
  %201 = getelementptr inbounds %struct.nouveau_display, ptr %10, i32 0, i32 4, i32 0, i32 4
  %202 = load i32, ptr %201, align 8
  %203 = icmp sgt i32 %202, 33391
  br i1 %203, label %204, label %207

204:                                              ; preds = %198
  switch i32 %170, label %207 [
    i32 14, label %205
    i32 11, label %205
    i32 10, label %205
  ]

205:                                              ; preds = %204, %204, %204
  %206 = getelementptr inbounds %struct.drm_connector, ptr %55, i32 0, i32 14
  store i8 1, ptr %206, align 2
  br label %207

207:                                              ; preds = %205, %204, %198
  %208 = getelementptr inbounds %struct.drm_connector, ptr %55, i32 0, i32 12
  store i8 0, ptr %208, align 8
  %209 = getelementptr inbounds %struct.drm_connector, ptr %55, i32 0, i32 13
  store i8 0, ptr %209, align 1
  %210 = call i32 @drm_connector_init(ptr noundef %0, ptr noundef nonnull %55, ptr noundef nonnull %199, i32 noundef %170) #13
  %211 = getelementptr inbounds %struct.drm_connector, ptr %55, i32 0, i32 35
  store ptr @nouveau_connector_helper_funcs, ptr %211, align 4
  %212 = getelementptr inbounds %struct.drm_connector, ptr %55, i32 0, i32 21
  %213 = load ptr, ptr %212, align 8
  %214 = getelementptr inbounds %struct.drm_connector_funcs, ptr %213, i32 0, i32 1
  %215 = load ptr, ptr %214, align 4
  call void %215(ptr noundef nonnull %55) #13
  call void @nouveau_conn_attach_properties(ptr noundef nonnull %55)
  %216 = load i32, ptr %168, align 8
  switch i32 %216, label %221 [
    i32 64, label %217
    i32 65, label %217
    i32 71, label %217
  ]

217:                                              ; preds = %207, %207, %207
  %218 = load i32, ptr %201, align 8
  %219 = icmp slt i32 %218, 20592
  %220 = zext i1 %219 to i32
  br label %221

221:                                              ; preds = %217, %207
  %222 = phi i32 [ %220, %217 ], [ 0, %207 ]
  %223 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 7
  store i32 %222, ptr %223, align 4
  switch i32 %216, label %224 [
    i32 16, label %226
    i32 17, label %226
    i32 19, label %226
    i32 0, label %226
  ]

224:                                              ; preds = %221
  %225 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 6
  store i32 34, ptr %225, align 8
  br label %226

226:                                              ; preds = %224, %221, %221, %221, %221
  store i8 0, ptr %6, align 1
  %227 = getelementptr inbounds %struct.nvif_notify_conn_req_v0, ptr %6, i32 0, i32 1
  store i8 7, ptr %227, align 1
  %228 = getelementptr inbounds %struct.nvif_notify_conn_req_v0, ptr %6, i32 0, i32 2
  store i8 %12, ptr %228, align 1
  %229 = getelementptr inbounds %struct.nvif_notify_conn_req_v0, ptr %6, i32 0, i32 3
  call void @llvm.memset.p0.i32(ptr noundef align 1 dereferenceable(5) %229, i8 0, i32 5, i1 false)
  %230 = getelementptr inbounds %struct.nouveau_connector, ptr %55, i32 0, i32 4
  %231 = call i32 @nvif_notify_ctor(ptr noundef %200, ptr noundef nonnull @.str.7, ptr noundef nonnull @nouveau_connector_hotplug, i1 noundef zeroext true, i8 noundef zeroext 1, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 8, ptr noundef %230) #13
  %232 = icmp eq i32 %231, 0
  %233 = select i1 %232, i8 1, i8 2
  %234 = getelementptr inbounds %struct.drm_connector, ptr %55, i32 0, i32 33
  store i8 %233, ptr %234, align 4
  %235 = call i32 @drm_connector_register(ptr noundef nonnull %55) #13
  br label %236

236:                                              ; preds = %226, %174, %53, %49
  %237 = phi ptr [ %16, %49 ], [ %55, %226 ], [ %182, %174 ], [ inttoptr (i32 -12 to ptr), %53 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr %237
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_begin(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_connector_list_iter_next(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_list_iter_end(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @olddcb_conn(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @olddcb_conntab(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal fastcc i32 @drm_conntype_from_dcb(i32 noundef %0) unnamed_addr #8 {
  switch i32 %0, label %10 [
    i32 0, label %11
    i32 16, label %2
    i32 17, label %2
    i32 19, label %2
    i32 56, label %3
    i32 57, label %3
    i32 48, label %3
    i32 49, label %4
    i32 64, label %5
    i32 65, label %5
    i32 100, label %6
    i32 101, label %6
    i32 70, label %6
    i32 72, label %6
    i32 113, label %6
    i32 71, label %7
    i32 96, label %8
    i32 97, label %8
    i32 99, label %8
    i32 112, label %9
  ]

2:                                                ; preds = %1, %1, %1
  br label %11

3:                                                ; preds = %1, %1, %1
  br label %11

4:                                                ; preds = %1
  br label %11

5:                                                ; preds = %1, %1
  br label %11

6:                                                ; preds = %1, %1, %1, %1, %1
  br label %11

7:                                                ; preds = %1
  br label %11

8:                                                ; preds = %1, %1, %1
  br label %11

9:                                                ; preds = %1
  br label %11

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %10, %9, %8, %7, %6, %5, %4, %3, %2, %1
  %12 = phi i32 [ 0, %10 ], [ 15, %9 ], [ 11, %8 ], [ 14, %7 ], [ 10, %6 ], [ 7, %5 ], [ 3, %4 ], [ 2, %3 ], [ 13, %2 ], [ 1, %1 ]
  ret i32 %12
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_bios_parse_lvds_table(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_connector_aux_xfer(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #0 {
  %3 = alloca i8, align 1
  %4 = getelementptr i8, ptr %0, i32 -1032
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  %5 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  store i8 %7, ptr %3, align 1
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.drm_device, ptr %8, i32 0, i32 30, i32 16
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %9
  br i1 %11, label %59, label %12

12:                                               ; preds = %2
  %13 = getelementptr i8, ptr %0, i32 -288
  %14 = load i32, ptr %13, align 8
  br label %15

15:                                               ; preds = %30, %12
  %16 = phi ptr [ %10, %12 ], [ %31, %30 ]
  %17 = getelementptr i8, ptr %16, i32 36
  %18 = load i32, ptr %17, align 4
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %14
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %15
  %23 = getelementptr i8, ptr %16, i32 80
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.dcb_output, ptr %24, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %28, 6
  br i1 %29, label %33, label %30

30:                                               ; preds = %26, %22, %15
  %31 = load ptr, ptr %16, align 4
  %32 = icmp eq ptr %31, %9
  br i1 %32, label %59, label %15

33:                                               ; preds = %26
  %34 = getelementptr i8, ptr %16, i32 -4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %59, label %36

36:                                               ; preds = %33
  %37 = getelementptr i8, ptr %16, i32 96
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, null
  br i1 %39, label %59, label %40

40:                                               ; preds = %36
  %41 = icmp ugt i32 %6, 16
  br i1 %41, label %42, label %43, !prof !8

42:                                               ; preds = %40
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1197, i32 noundef 9, ptr noundef null) #13
  br label %59

43:                                               ; preds = %40
  %44 = tail call i32 @nvkm_i2c_aux_acquire(ptr noundef nonnull %38) #13
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 1
  %48 = load i8, ptr %47, align 4
  %49 = load i32, ptr %1, align 4
  %50 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = call i32 @nvkm_i2c_aux_xfer(ptr noundef nonnull %38, i1 noundef zeroext false, i8 noundef zeroext %48, i32 noundef %49, ptr noundef %51, ptr noundef nonnull %3) #13
  call void @nvkm_i2c_aux_release(ptr noundef nonnull %38) #13
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = trunc i32 %52 to i8
  %56 = getelementptr inbounds %struct.drm_dp_aux_msg, ptr %1, i32 0, i32 2
  store i8 %55, ptr %56, align 1
  %57 = load i8, ptr %3, align 1
  %58 = zext i8 %57 to i32
  br label %59

59:                                               ; preds = %54, %46, %43, %42, %36, %33, %30, %2
  %60 = phi i32 [ -7, %42 ], [ %58, %54 ], [ -19, %36 ], [ -19, %33 ], [ %44, %43 ], [ %52, %46 ], [ -19, %2 ], [ -19, %30 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  ret i32 %60
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_ctor(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_connector_hotplug(ptr noundef %0) #0 {
  %2 = getelementptr i8, ptr %0, i32 -980
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nvif_notify, ptr %0, i32 0, i32 7
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nvif_notify_conn_rep_v0, ptr %7, i32 0, i32 1
  %9 = load i8, ptr %8, align 1
  %10 = icmp eq i8 %9, 2
  %11 = and i8 %9, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  tail call void @nouveau_dp_irq(ptr noundef %5, ptr noundef %2) #13
  br label %48

14:                                               ; preds = %1
  %15 = load i32, ptr @__drm_debug, align 4
  %16 = and i32 %15, 2
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %32, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %20 = load ptr, ptr %19, align 8
  %21 = getelementptr inbounds %struct.nouveau_drm, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.drm_device, ptr %22, i32 0, i32 2
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %26 = select i1 %10, ptr @.str.12, ptr @.str.11
  %27 = getelementptr i8, ptr %0, i32 -928
  %28 = load ptr, ptr %27, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %24, ptr noundef nonnull @.str.10, ptr noundef %25, ptr noundef nonnull %26, ptr noundef %28) #14
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 5
  %31 = load ptr, ptr %30, align 4
  br label %32

32:                                               ; preds = %18, %14
  %33 = phi ptr [ %31, %18 ], [ %5, %14 ]
  %34 = getelementptr i8, ptr %0, i32 -904
  %35 = load i32, ptr %34, align 4
  %36 = shl nuw i32 1, %35
  %37 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 21
  tail call void @mutex_lock(ptr noundef %37) #13
  %38 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 22
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, %36
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = or i32 %39, %36
  store i32 %43, ptr %38, align 4
  %44 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 20
  %45 = load ptr, ptr @system_wq, align 4
  %46 = tail call zeroext i1 @queue_work_on(i32 noundef 16, ptr noundef %45, ptr noundef %44) #13
  br label %47

47:                                               ; preds = %42, %32
  tail call void @mutex_unlock(ptr noundef %37) #13
  br label %48

48:                                               ; preds = %47, %13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_connector_dpms(ptr noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_connector_detect(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [2 x %struct.i2c_msg], align 4
  %6 = load ptr, ptr %0, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = tail call zeroext i1 @drm_kms_helper_is_poll_worker() #13
  %10 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  br i1 %9, label %12, label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %13) #13, !srcloc !10
  %14 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %13, ptr %13, i32 1, ptr elementtype(i32) %13) #13, !srcloc !11
  br label %28

15:                                               ; preds = %2
  %16 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #13
  %17 = icmp slt i32 %16, 0
  %18 = icmp ne i32 %16, -13
  %19 = and i1 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load ptr, ptr %10, align 4
  %22 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #13
  %23 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 9
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %293, label %26

26:                                               ; preds = %20
  %27 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef null) #13
  tail call void @kfree(ptr noundef nonnull %24) #13
  store ptr null, ptr %23, align 4
  br label %293

28:                                               ; preds = %15, %12
  %29 = load ptr, ptr %0, align 8
  %30 = getelementptr inbounds %struct.drm_device, ptr %29, i32 0, i32 30, i32 16
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %213, label %33

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 40
  %35 = getelementptr inbounds i8, ptr %5, i32 4
  %36 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 1
  %37 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 0, i32 3
  %38 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1
  %39 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 1
  %40 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 2
  %41 = getelementptr inbounds %struct.i2c_msg, ptr %5, i32 1, i32 3
  br label %42

42:                                               ; preds = %70, %33
  %43 = phi ptr [ %31, %33 ], [ %71, %70 ]
  %44 = getelementptr i8, ptr %43, i32 -4
  %45 = load i32, ptr %34, align 8
  %46 = getelementptr i8, ptr %43, i32 36
  %47 = load i32, ptr %46, align 4
  %48 = shl nuw i32 1, %47
  %49 = and i32 %48, %45
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %70, label %51

51:                                               ; preds = %42
  %52 = getelementptr i8, ptr %43, i32 80
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dcb_output, ptr %53, i32 0, i32 3
  %55 = load i32, ptr %54, align 4
  %56 = icmp eq i32 %55, 6
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 @nouveau_dp_detect(ptr noundef %0, ptr noundef %44) #13
  switch i32 %58, label %70 [
    i32 2, label %213
    i32 1, label %68
  ]

59:                                               ; preds = %51
  %60 = getelementptr i8, ptr %43, i32 92
  %61 = load ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, null
  br i1 %62, label %70, label %63

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #13
  store i8 0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #13
  store i8 0, ptr %4, align 1, !annotation !9
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(24) %35, i8 0, i32 16, i1 false) #13, !annotation !9
  store i16 80, ptr %5, align 4
  store i16 0, ptr %36, align 2
  store i16 1, ptr %35, align 4
  store ptr %3, ptr %37, align 4
  store i16 80, ptr %38, align 4
  store i16 1, ptr %39, align 2
  store i16 1, ptr %40, align 4
  store ptr %4, ptr %41, align 4
  %64 = call i32 @i2c_transfer(ptr noundef nonnull %61, ptr noundef nonnull %5, i32 noundef 2) #13
  %65 = icmp ne i32 %64, 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #13
  %66 = icmp eq ptr %44, null
  %67 = select i1 %65, i1 true, i1 %66
  br i1 %67, label %70, label %75

68:                                               ; preds = %57
  %69 = icmp eq ptr %44, null
  br i1 %69, label %70, label %75

70:                                               ; preds = %68, %63, %59, %57, %42
  %71 = load ptr, ptr %43, align 4
  %72 = load ptr, ptr %0, align 8
  %73 = getelementptr inbounds %struct.drm_device, ptr %72, i32 0, i32 30, i32 16
  %74 = icmp eq ptr %71, %73
  br i1 %74, label %213, label %42

75:                                               ; preds = %68, %63
  %76 = getelementptr i8, ptr %43, i32 80
  %77 = getelementptr i8, ptr %43, i32 92
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %213, label %80

80:                                               ; preds = %75
  %81 = call ptr @drm_get_edid(ptr noundef %0, ptr noundef nonnull %78) #13
  %82 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 9
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %81
  br i1 %84, label %87, label %85

85:                                               ; preds = %80
  %86 = call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef %81) #13
  call void @kfree(ptr noundef %83) #13
  store ptr %81, ptr %82, align 4
  br label %87

87:                                               ; preds = %85, %80
  %88 = icmp eq ptr %81, null
  br i1 %88, label %89, label %99

89:                                               ; preds = %87
  %90 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 1
  %91 = load ptr, ptr %90, align 8
  %92 = getelementptr inbounds %struct.nouveau_drm, ptr %91, i32 0, i32 3
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.drm_device, ptr %93, i32 0, i32 2
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 2, i32 12
  %97 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 7
  %98 = load ptr, ptr %97, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %95, ptr noundef nonnull @.str.8, ptr noundef %96, ptr noundef %98) #14
  br label %219

99:                                               ; preds = %87
  %100 = load ptr, ptr %76, align 4
  %101 = getelementptr inbounds %struct.dcb_output, ptr %100, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 2
  br i1 %103, label %104, label %131

104:                                              ; preds = %99
  %105 = load ptr, ptr %0, align 8
  %106 = getelementptr inbounds %struct.drm_device, ptr %105, i32 0, i32 30, i32 16
  %107 = load ptr, ptr %106, align 4
  %108 = icmp eq ptr %107, %106
  br i1 %108, label %211, label %109

109:                                              ; preds = %104
  %110 = load i32, ptr %34, align 8
  br label %111

111:                                              ; preds = %126, %109
  %112 = phi ptr [ %107, %109 ], [ %127, %126 ]
  %113 = getelementptr i8, ptr %112, i32 36
  %114 = load i32, ptr %113, align 4
  %115 = shl nuw i32 1, %114
  %116 = and i32 %115, %110
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %111
  %119 = getelementptr i8, ptr %112, i32 80
  %120 = load ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, null
  br i1 %121, label %126, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.dcb_output, ptr %120, i32 0, i32 3
  %124 = load i32, ptr %123, align 4
  %125 = icmp eq i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %122, %118, %111
  %127 = load ptr, ptr %112, align 4
  %128 = icmp eq ptr %127, %106
  br i1 %128, label %131, label %111

129:                                              ; preds = %122
  %130 = getelementptr i8, ptr %112, i32 -4
  br label %131

131:                                              ; preds = %129, %126, %99
  %132 = phi ptr [ null, %99 ], [ %130, %129 ], [ null, %126 ]
  %133 = icmp eq i32 %102, 0
  br i1 %133, label %134, label %162

134:                                              ; preds = %131
  %135 = load ptr, ptr %0, align 8
  %136 = getelementptr inbounds %struct.drm_device, ptr %135, i32 0, i32 30, i32 16
  %137 = load ptr, ptr %136, align 4
  %138 = icmp eq ptr %137, %136
  br i1 %138, label %211, label %139

139:                                              ; preds = %134
  %140 = load i32, ptr %34, align 8
  br label %141

141:                                              ; preds = %156, %139
  %142 = phi ptr [ %137, %139 ], [ %157, %156 ]
  %143 = getelementptr i8, ptr %142, i32 36
  %144 = load i32, ptr %143, align 4
  %145 = shl nuw i32 1, %144
  %146 = and i32 %145, %140
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %156, label %148

148:                                              ; preds = %141
  %149 = getelementptr i8, ptr %142, i32 80
  %150 = load ptr, ptr %149, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %156, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.dcb_output, ptr %150, i32 0, i32 3
  %154 = load i32, ptr %153, align 4
  %155 = icmp eq i32 %154, 2
  br i1 %155, label %159, label %156

156:                                              ; preds = %152, %148, %141
  %157 = load ptr, ptr %142, align 4
  %158 = icmp eq ptr %157, %136
  br i1 %158, label %211, label %141

159:                                              ; preds = %152
  %160 = getelementptr i8, ptr %142, i32 -4
  %161 = icmp eq ptr %160, null
  br i1 %161, label %211, label %164

162:                                              ; preds = %131
  %163 = icmp eq ptr %132, null
  br i1 %163, label %211, label %171

164:                                              ; preds = %159
  br i1 %133, label %165, label %171

165:                                              ; preds = %164
  %166 = getelementptr i8, ptr %142, i32 80
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.dcb_output, ptr %167, i32 0, i32 3
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, 2
  br i1 %170, label %179, label %171

171:                                              ; preds = %165, %164, %162
  %172 = phi ptr [ %160, %165 ], [ %160, %164 ], [ %132, %162 ]
  br i1 %103, label %173, label %211

173:                                              ; preds = %171
  %174 = getelementptr inbounds %struct.nouveau_encoder, ptr %172, i32 0, i32 1
  %175 = load ptr, ptr %174, align 4
  %176 = getelementptr inbounds %struct.dcb_output, ptr %175, i32 0, i32 3
  %177 = load i32, ptr %176, align 4
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %211

179:                                              ; preds = %173, %165
  %180 = getelementptr inbounds %struct.edid, ptr %81, i32 0, i32 8
  %181 = load i8, ptr %180, align 1
  %182 = lshr i8 %181, 6
  %183 = and i8 %182, 2
  %184 = zext i8 %183 to i32
  %185 = load ptr, ptr %0, align 8
  %186 = getelementptr inbounds %struct.drm_device, ptr %185, i32 0, i32 30, i32 16
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, %186
  br i1 %188, label %211, label %189

189:                                              ; preds = %179
  %190 = load i32, ptr %34, align 8
  br label %191

191:                                              ; preds = %206, %189
  %192 = phi ptr [ %187, %189 ], [ %207, %206 ]
  %193 = getelementptr i8, ptr %192, i32 36
  %194 = load i32, ptr %193, align 4
  %195 = shl nuw i32 1, %194
  %196 = and i32 %195, %190
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %206, label %198

198:                                              ; preds = %191
  %199 = getelementptr i8, ptr %192, i32 80
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %206, label %202

202:                                              ; preds = %198
  %203 = getelementptr inbounds %struct.dcb_output, ptr %200, i32 0, i32 3
  %204 = load i32, ptr %203, align 4
  %205 = icmp eq i32 %204, %184
  br i1 %205, label %209, label %206

206:                                              ; preds = %202, %198, %191
  %207 = load ptr, ptr %192, align 4
  %208 = icmp eq ptr %207, %186
  br i1 %208, label %211, label %191

209:                                              ; preds = %202
  %210 = getelementptr i8, ptr %192, i32 -4
  br label %211

211:                                              ; preds = %209, %206, %179, %173, %171, %162, %159, %156, %134, %104
  %212 = phi ptr [ %44, %173 ], [ %44, %171 ], [ %44, %159 ], [ %210, %209 ], [ null, %179 ], [ %44, %134 ], [ %44, %104 ], [ %44, %162 ], [ null, %206 ], [ %44, %156 ]
  call fastcc void @nouveau_connector_set_encoder(ptr noundef %0, ptr noundef %212)
  br label %285

213:                                              ; preds = %75, %70, %57, %28
  %214 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 9
  %215 = load ptr, ptr %214, align 4
  %216 = icmp eq ptr %215, null
  br i1 %216, label %219, label %217

217:                                              ; preds = %213
  %218 = call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef null) #13
  call void @kfree(ptr noundef nonnull %215) #13
  store ptr null, ptr %214, align 4
  br label %219

219:                                              ; preds = %217, %213, %89
  %220 = load ptr, ptr %0, align 8
  %221 = getelementptr inbounds %struct.drm_device, ptr %220, i32 0, i32 30, i32 16
  %222 = load ptr, ptr %221, align 4
  %223 = icmp eq ptr %222, %221
  br i1 %223, label %285, label %224

224:                                              ; preds = %219
  %225 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 40
  %226 = load i32, ptr %225, align 8
  br label %227

227:                                              ; preds = %242, %224
  %228 = phi ptr [ %222, %224 ], [ %243, %242 ]
  %229 = getelementptr i8, ptr %228, i32 36
  %230 = load i32, ptr %229, align 4
  %231 = shl nuw i32 1, %230
  %232 = and i32 %231, %226
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %242, label %234

234:                                              ; preds = %227
  %235 = getelementptr i8, ptr %228, i32 80
  %236 = load ptr, ptr %235, align 4
  %237 = icmp eq ptr %236, null
  br i1 %237, label %242, label %238

238:                                              ; preds = %234
  %239 = getelementptr inbounds %struct.dcb_output, ptr %236, i32 0, i32 3
  %240 = load i32, ptr %239, align 4
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %245, label %242

242:                                              ; preds = %238, %234, %227
  %243 = load ptr, ptr %228, align 4
  %244 = icmp eq ptr %243, %221
  br i1 %244, label %247, label %227

245:                                              ; preds = %238
  %246 = getelementptr i8, ptr %228, i32 -4
  br label %247

247:                                              ; preds = %245, %242
  %248 = phi ptr [ %246, %245 ], [ null, %242 ]
  %249 = icmp ne ptr %248, null
  %250 = load i32, ptr @nouveau_tv_disable, align 4
  %251 = icmp ne i32 %250, 0
  %252 = select i1 %249, i1 true, i1 %251
  br i1 %252, label %273, label %253

253:                                              ; preds = %268, %247
  %254 = phi ptr [ %269, %268 ], [ %222, %247 ]
  %255 = getelementptr i8, ptr %254, i32 36
  %256 = load i32, ptr %255, align 4
  %257 = shl nuw i32 1, %256
  %258 = and i32 %257, %226
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %253
  %261 = getelementptr i8, ptr %254, i32 80
  %262 = load ptr, ptr %261, align 4
  %263 = icmp eq ptr %262, null
  br i1 %263, label %268, label %264

264:                                              ; preds = %260
  %265 = getelementptr inbounds %struct.dcb_output, ptr %262, i32 0, i32 3
  %266 = load i32, ptr %265, align 4
  %267 = icmp eq i32 %266, 1
  br i1 %267, label %271, label %268

268:                                              ; preds = %264, %260, %253
  %269 = load ptr, ptr %254, align 4
  %270 = icmp eq ptr %269, %221
  br i1 %270, label %285, label %253

271:                                              ; preds = %264
  %272 = getelementptr i8, ptr %254, i32 -4
  br label %273

273:                                              ; preds = %271, %247
  %274 = phi ptr [ %248, %247 ], [ %272, %271 ]
  %275 = icmp ne ptr %274, null
  %276 = and i1 %275, %1
  br i1 %276, label %277, label %285

277:                                              ; preds = %273
  %278 = getelementptr inbounds %struct.drm_encoder, ptr %274, i32 0, i32 11
  %279 = load ptr, ptr %278, align 4
  %280 = getelementptr inbounds %struct.drm_encoder_helper_funcs, ptr %279, i32 0, i32 7
  %281 = load ptr, ptr %280, align 4
  %282 = call i32 %281(ptr noundef nonnull %274, ptr noundef %0) #13
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %285

284:                                              ; preds = %277
  call fastcc void @nouveau_connector_set_encoder(ptr noundef %0, ptr noundef nonnull %274)
  br label %285

285:                                              ; preds = %284, %277, %273, %268, %219, %211
  %286 = phi i32 [ 1, %211 ], [ 2, %273 ], [ 1, %284 ], [ 2, %277 ], [ 2, %219 ], [ 2, %268 ]
  %287 = getelementptr inbounds %struct.drm_device, ptr %6, i32 0, i32 2
  %288 = load ptr, ptr %287, align 4
  %289 = call i64 @ktime_get_mono_fast_ns() #13
  %290 = getelementptr inbounds %struct.device, ptr %288, i32 0, i32 11, i32 22
  store volatile i64 %289, ptr %290, align 8
  %291 = load ptr, ptr %287, align 4
  %292 = call i32 @__pm_runtime_suspend(ptr noundef %291, i32 noundef 13) #13
  br label %293

293:                                              ; preds = %285, %26, %20
  %294 = phi i32 [ %286, %285 ], [ 2, %20 ], [ 2, %26 ]
  ret i32 %294
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_connector_force(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = icmp eq i32 %6, 48
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 37
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 3
  %12 = select i1 %11, i32 2, i32 0
  br label %13

13:                                               ; preds = %8, %1
  %14 = phi i32 [ %12, %8 ], [ -1, %1 ]
  %15 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 16
  %16 = load ptr, ptr %15, align 4
  %17 = icmp eq ptr %16, %15
  br i1 %17, label %44, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 40
  %20 = load i32, ptr %19, align 8
  %21 = icmp eq i32 %14, -1
  br label %22

22:                                               ; preds = %38, %18
  %23 = phi ptr [ %16, %18 ], [ %39, %38 ]
  %24 = getelementptr i8, ptr %23, i32 36
  %25 = load i32, ptr %24, align 4
  %26 = shl nuw i32 1, %25
  %27 = and i32 %26, %20
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  br i1 %21, label %41, label %30

30:                                               ; preds = %29
  %31 = getelementptr i8, ptr %23, i32 80
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.dcb_output, ptr %32, i32 0, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, %14
  br i1 %37, label %41, label %38

38:                                               ; preds = %34, %30, %22
  %39 = load ptr, ptr %23, align 4
  %40 = icmp eq ptr %39, %15
  br i1 %40, label %44, label %22

41:                                               ; preds = %34, %29
  %42 = getelementptr i8, ptr %23, i32 -4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %41, %38, %13
  %45 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %46 = load ptr, ptr %45, align 8
  %47 = getelementptr inbounds %struct.nouveau_drm, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = getelementptr inbounds %struct.drm_device, ptr %48, i32 0, i32 2
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  %52 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 7
  %53 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.9, ptr noundef %51, ptr noundef %53) #14
  %54 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 18
  store i32 2, ptr %54, align 8
  br label %56

55:                                               ; preds = %41
  tail call fastcc void @nouveau_connector_set_encoder(ptr noundef %0, ptr noundef nonnull %42)
  br label %56

56:                                               ; preds = %55, %44
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_connector_set_property(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 12
  %7 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 21
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.drm_connector_funcs, ptr %8, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 %10(ptr noundef %0, ptr noundef %6, ptr noundef %1, i64 noundef %2) #13
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %27, label %13

13:                                               ; preds = %3
  %14 = icmp eq ptr %5, null
  br i1 %14, label %49, label %15

15:                                               ; preds = %13
  %16 = getelementptr inbounds %struct.nouveau_encoder, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dcb_output, ptr %17, i32 0, i32 3
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %49

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct.drm_encoder_slave, ptr %5, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %23, i32 0, i32 11
  %25 = load ptr, ptr %24, align 4
  %26 = tail call i32 %25(ptr noundef nonnull %5, ptr noundef %0, ptr noundef %1, i64 noundef %2) #13
  br label %49

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 12, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 7
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 12, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 6
  store i32 %32, ptr %33, align 8
  %34 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 41
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %48, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds %struct.drm_encoder, ptr %35, i32 0, i32 8
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.drm_crtc, ptr %39, i32 0, i32 12
  %43 = getelementptr inbounds %struct.drm_crtc, ptr %39, i32 0, i32 14
  %44 = load i32, ptr %43, align 8
  %45 = getelementptr inbounds %struct.drm_crtc, ptr %39, i32 0, i32 15
  %46 = load i32, ptr %45, align 4
  %47 = tail call zeroext i1 @drm_crtc_helper_set_mode(ptr noundef nonnull %39, ptr noundef %42, i32 noundef %44, i32 noundef %46, ptr noundef null) #13
  br i1 %47, label %48, label %49

48:                                               ; preds = %41, %37, %27
  br label %49

49:                                               ; preds = %48, %41, %21, %15, %13
  %50 = phi i32 [ %26, %21 ], [ 0, %48 ], [ %11, %15 ], [ %11, %13 ], [ -22, %41 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_connector_late_register(ptr noundef %0) #0 {
  %2 = tail call i32 @nouveau_backlight_init(ptr noundef %0) #13
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %5, align 8
  switch i32 %6, label %12 [
    i32 14, label %7
    i32 10, label %7
  ]

7:                                                ; preds = %4, %4
  %8 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 5
  %9 = tail call i32 @drm_dp_aux_register(ptr noundef %8) #13
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @nouveau_backlight_fini(ptr noundef %0) #13
  br label %12

12:                                               ; preds = %11, %7, %4, %1
  %13 = phi i32 [ %9, %11 ], [ %2, %1 ], [ 0, %4 ], [ 0, %7 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_connector_early_unregister(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %3 = load i32, ptr %2, align 8
  switch i32 %3, label %6 [
    i32 14, label %4
    i32 10, label %4
  ]

4:                                                ; preds = %1, %1
  %5 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 5
  tail call void @drm_dp_aux_unregister(ptr noundef %5) #13
  br label %6

6:                                                ; preds = %4, %1
  tail call void @nouveau_backlight_fini(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nouveau_connector_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 4
  %3 = tail call i32 @nvif_notify_dtor(ptr noundef %2) #13
  %4 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #13
  tail call void @drm_connector_unregister(ptr noundef %0) #13
  tail call void @drm_connector_cleanup(ptr noundef %0) #13
  %6 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 5, i32 8
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 8
  tail call void @kfree(ptr noundef %11) #13
  br label %12

12:                                               ; preds = %9, %1
  tail call void @kfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_kms_helper_is_poll_worker() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nouveau_connector_set_encoder(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, %1
  br i1 %8, label %62, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  store ptr %1, ptr %6, align 8
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 1, i32 4
  %13 = load i8, ptr %12, align 1
  %14 = icmp ugt i8 %13, 5
  %15 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dcb_output, ptr %16, i32 0, i32 3
  %18 = load i32, ptr %17, align 4
  br i1 %14, label %19, label %29

19:                                               ; preds = %9
  %20 = icmp eq i32 %18, 6
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 13
  %23 = load i8, ptr %22, align 4
  %24 = and i8 %23, 1
  br label %25

25:                                               ; preds = %21, %19
  %26 = phi i8 [ %24, %21 ], [ 1, %19 ]
  %27 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 12
  store i8 %26, ptr %27, align 8
  %28 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 13
  store i8 1, ptr %28, align 1
  br label %46

29:                                               ; preds = %9
  %30 = and i32 %18, -2
  %31 = icmp eq i32 %30, 2
  %32 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 13
  br i1 %31, label %33, label %35

33:                                               ; preds = %29
  store i8 0, ptr %32, align 1
  %34 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 12
  store i8 0, ptr %34, align 8
  br label %46

35:                                               ; preds = %29
  store i8 1, ptr %32, align 1
  %36 = load i8, ptr %12, align 1
  switch i8 %36, label %44 [
    i8 3, label %42
    i8 2, label %37
  ]

37:                                               ; preds = %35
  %38 = getelementptr i8, ptr %5, i32 -102
  %39 = load i16, ptr %38, align 2
  %40 = trunc i16 %39 to i12
  %41 = and i12 %40, -16
  switch i12 %41, label %42 [
    i12 256, label %44
    i12 336, label %44
  ]

42:                                               ; preds = %37, %35
  %43 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 12
  store i8 0, ptr %43, align 8
  br label %46

44:                                               ; preds = %37, %37, %35
  %45 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 12
  store i8 1, ptr %45, align 8
  br label %46

46:                                               ; preds = %44, %42, %33, %25
  %47 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 1
  %48 = load i32, ptr %47, align 8
  %49 = icmp eq i32 %48, 48
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 6
  %52 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 57
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.dcb_output, ptr %55, i32 0, i32 3
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 2
  %59 = select i1 %58, i32 3, i32 4
  %60 = zext i32 %59 to i64
  %61 = tail call i32 @drm_object_property_set_value(ptr noundef %51, ptr noundef %53, i64 noundef %60) #13
  br label %62

62:                                               ; preds = %50, %46, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_dp_detect(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_object_property_set_value(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_crtc_helper_set_mode(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nouveau_backlight_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_aux_register(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_backlight_fini(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dp_aux_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_notify_dtor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_unregister(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_connector_detect_lvds(ptr noundef %0, i1 noundef zeroext %1) #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 30, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %62, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 40
  %11 = load i32, ptr %10, align 8
  br label %12

12:                                               ; preds = %27, %9
  %13 = phi ptr [ %7, %9 ], [ %28, %27 ]
  %14 = getelementptr i8, ptr %13, i32 36
  %15 = load i32, ptr %14, align 4
  %16 = shl nuw i32 1, %15
  %17 = and i32 %16, %11
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %12
  %20 = getelementptr i8, ptr %13, i32 80
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.dcb_output, ptr %21, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 3
  br i1 %26, label %30, label %27

27:                                               ; preds = %23, %19, %12
  %28 = load ptr, ptr %13, align 4
  %29 = icmp eq ptr %28, %6
  br i1 %29, label %62, label %12

30:                                               ; preds = %23
  %31 = getelementptr i8, ptr %13, i32 80
  %32 = getelementptr i8, ptr %13, i32 -4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %62, label %34

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 9
  %36 = load i8, ptr %35, align 1, !range !12
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = tail call i32 @nouveau_connector_detect(ptr noundef %0, i1 noundef zeroext %1)
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 9
  %43 = load ptr, ptr %42, align 4
  br label %62

44:                                               ; preds = %38, %34
  %45 = tail call zeroext i1 @nouveau_bios_fp_mode(ptr noundef %3, ptr noundef null) #13
  %46 = load i8, ptr %35, align 1, !range !12
  %47 = icmp eq i8 %46, 0
  br i1 %45, label %48, label %54

48:                                               ; preds = %44
  br i1 %47, label %49, label %62

49:                                               ; preds = %48
  %50 = load ptr, ptr %31, align 4
  %51 = getelementptr inbounds %struct.dcb_output, ptr %50, i32 0, i32 13, i32 0, i32 1
  %52 = load i8, ptr %51, align 4, !range !12
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %55, label %62

54:                                               ; preds = %44
  br i1 %47, label %55, label %62

55:                                               ; preds = %54, %49
  %56 = tail call ptr @nouveau_bios_embedded_edid(ptr noundef %3) #13
  %57 = icmp eq ptr %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %55
  %59 = tail call ptr @kmemdup(ptr noundef nonnull %56, i32 noundef 128, i32 noundef 3264) #13
  %60 = icmp eq ptr %59, null
  %61 = select i1 %60, i32 2, i32 1
  br label %62

62:                                               ; preds = %58, %55, %54, %49, %48, %41, %30, %27, %2
  %63 = phi ptr [ %32, %54 ], [ %32, %55 ], [ %32, %41 ], [ null, %30 ], [ %32, %49 ], [ %32, %48 ], [ %32, %58 ], [ null, %2 ], [ null, %27 ]
  %64 = phi ptr [ null, %54 ], [ null, %55 ], [ %43, %41 ], [ null, %30 ], [ null, %49 ], [ null, %48 ], [ %59, %58 ], [ null, %2 ], [ null, %27 ]
  %65 = phi i32 [ 2, %54 ], [ 2, %55 ], [ 1, %41 ], [ 2, %30 ], [ 1, %49 ], [ 1, %48 ], [ %61, %58 ], [ 2, %2 ], [ 2, %27 ]
  %66 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 9
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %64
  br i1 %68, label %71, label %69

69:                                               ; preds = %62
  %70 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef %64) #13
  tail call void @kfree(ptr noundef %67) #13
  store ptr %64, ptr %66, align 4
  br label %71

71:                                               ; preds = %69, %62
  tail call fastcc void @nouveau_connector_set_encoder(ptr noundef %0, ptr noundef %63)
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nouveau_bios_fp_mode(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nouveau_bios_embedded_edid(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_acquire(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_aux_xfer(ptr noundef, i1 noundef zeroext, i8 noundef zeroext, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvkm_i2c_aux_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_connector_get_modes(ptr noundef %0) #0 {
  %2 = alloca %struct.drm_display_mode, align 4
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  tail call void @drm_mode_destroy(ptr noundef %3, ptr noundef nonnull %9) #13
  store ptr null, ptr %8, align 8
  br label %12

12:                                               ; preds = %11, %1
  %13 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 9
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %14) #13
  br label %37

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.nouveau_encoder, ptr %7, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dcb_output, ptr %20, i32 0, i32 3
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, 3
  br i1 %23, label %24, label %37

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.dcb_output, ptr %20, i32 0, i32 13, i32 0, i32 1
  %26 = load i8, ptr %25, align 4, !range !12
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 18, i32 9
  %30 = load i8, ptr %29, align 1, !range !12
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %28, %24
  %33 = tail call zeroext i1 @nouveau_bios_fp_mode(ptr noundef %3, ptr noundef null) #13
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %2) #13
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(112) %2, i8 0, i32 112, i1 false), !annotation !9
  %35 = call zeroext i1 @nouveau_bios_fp_mode(ptr noundef %3, ptr noundef nonnull %2) #13
  %36 = call ptr @drm_mode_duplicate(ptr noundef %3, ptr noundef nonnull %2) #13
  store ptr %36, ptr %8, align 8
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %2) #13
  br label %37

37:                                               ; preds = %34, %32, %28, %18, %16
  %38 = phi i32 [ %17, %16 ], [ 0, %34 ], [ 0, %32 ], [ 0, %28 ], [ 0, %18 ]
  %39 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %40 = load i32, ptr %39, align 8
  %41 = icmp eq i32 %40, 7
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load ptr, ptr %8, align 8
  br label %103

44:                                               ; preds = %37
  %45 = load ptr, ptr %0, align 8
  %46 = getelementptr inbounds %struct.drm_device, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %6, align 8
  %49 = load ptr, ptr %8, align 8
  %50 = load ptr, ptr %13, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %44
  %53 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20, i32 2
  %54 = load i32, ptr %53, align 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %103

56:                                               ; preds = %52, %44
  %57 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 1
  %58 = load i32, ptr %57, align 8
  %59 = icmp eq i32 %58, 71
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20, i32 2
  store i32 6, ptr %61, align 8
  br label %103

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.nouveau_encoder, ptr %48, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.dcb_output, ptr %64, i32 0, i32 3
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 3
  %68 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20, i32 2
  br i1 %67, label %70, label %69

69:                                               ; preds = %62
  store i32 8, ptr %68, align 8
  br label %103

70:                                               ; preds = %62
  store i32 6, ptr %68, align 8
  %71 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 18, i32 9
  %72 = load i8, ptr %71, align 1, !range !12
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 18, i32 24, i32 11
  %76 = load i8, ptr %75, align 4, !range !12
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %103, label %78

78:                                               ; preds = %74
  store i32 8, ptr %68, align 8
  br label %103

79:                                               ; preds = %70
  %80 = xor i1 %51, true
  %81 = icmp eq i32 %58, 65
  %82 = select i1 %80, i1 %81, i1 false
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr i8, ptr %50, i32 121
  %85 = load i8, ptr %84, align 1
  %86 = icmp eq i8 %85, 2
  br i1 %86, label %97, label %92

87:                                               ; preds = %79
  %88 = load i32, ptr %49, align 4
  %89 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 18, i32 24, i32 12
  %90 = load i32, ptr %89, align 4
  %91 = icmp slt i32 %88, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %87, %83
  %93 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 18, i32 24, i32 13
  %94 = load i8, ptr %93, align 4
  %95 = and i8 %94, 1
  %96 = icmp eq i8 %95, 0
  br i1 %96, label %103, label %102

97:                                               ; preds = %87, %83
  %98 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 18, i32 24, i32 13
  %99 = load i8, ptr %98, align 4
  %100 = and i8 %99, 2
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %97, %92
  store i32 8, ptr %68, align 8
  br label %103

103:                                              ; preds = %102, %97, %92, %78, %74, %69, %60, %52, %42
  %104 = phi ptr [ %43, %42 ], [ %49, %102 ], [ %49, %97 ], [ %49, %92 ], [ %49, %78 ], [ %49, %74 ], [ %49, %69 ], [ %49, %60 ], [ %49, %52 ]
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %108

106:                                              ; preds = %103
  %107 = call ptr @nouveau_conn_native_mode(ptr noundef %0)
  store ptr %107, ptr %8, align 8
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi ptr [ %107, %106 ], [ %104, %103 ]
  %110 = icmp eq i32 %38, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %108
  %112 = icmp eq ptr %109, null
  br i1 %112, label %115, label %113

113:                                              ; preds = %111
  %114 = call ptr @drm_mode_duplicate(ptr noundef %3, ptr noundef nonnull %109) #13
  call void @drm_mode_probed_add(ptr noundef %0, ptr noundef %114) #13
  br label %115

115:                                              ; preds = %113, %111, %108
  %116 = phi i32 [ 1, %113 ], [ 0, %111 ], [ %38, %108 ]
  %117 = load i32, ptr %39, align 8
  %118 = icmp eq i32 %117, 7
  br i1 %118, label %119, label %178

119:                                              ; preds = %115
  %120 = load ptr, ptr %0, align 8
  %121 = getelementptr inbounds %struct.drm_device, ptr %120, i32 0, i32 5
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %6, align 8
  %124 = load ptr, ptr %8, align 8
  %125 = load ptr, ptr %13, align 4
  %126 = icmp eq ptr %125, null
  br i1 %126, label %131, label %127

127:                                              ; preds = %119
  %128 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20, i32 2
  %129 = load i32, ptr %128, align 8
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %178

131:                                              ; preds = %127, %119
  %132 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 1
  %133 = load i32, ptr %132, align 8
  %134 = icmp eq i32 %133, 71
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20, i32 2
  store i32 6, ptr %136, align 8
  br label %178

137:                                              ; preds = %131
  %138 = getelementptr inbounds %struct.nouveau_encoder, ptr %123, i32 0, i32 1
  %139 = load ptr, ptr %138, align 4
  %140 = getelementptr inbounds %struct.dcb_output, ptr %139, i32 0, i32 3
  %141 = load i32, ptr %140, align 4
  %142 = icmp eq i32 %141, 3
  %143 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20, i32 2
  br i1 %142, label %145, label %144

144:                                              ; preds = %137
  store i32 8, ptr %143, align 8
  br label %178

145:                                              ; preds = %137
  store i32 6, ptr %143, align 8
  %146 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 18, i32 9
  %147 = load i8, ptr %146, align 1, !range !12
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %154, label %149

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 18, i32 24, i32 11
  %151 = load i8, ptr %150, align 4, !range !12
  %152 = icmp eq i8 %151, 0
  br i1 %152, label %178, label %153

153:                                              ; preds = %149
  store i32 8, ptr %143, align 8
  br label %178

154:                                              ; preds = %145
  %155 = xor i1 %126, true
  %156 = icmp eq i32 %133, 65
  %157 = select i1 %155, i1 %156, i1 false
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = getelementptr i8, ptr %125, i32 121
  %160 = load i8, ptr %159, align 1
  %161 = icmp eq i8 %160, 2
  br i1 %161, label %172, label %167

162:                                              ; preds = %154
  %163 = load i32, ptr %124, align 4
  %164 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 18, i32 24, i32 12
  %165 = load i32, ptr %164, align 4
  %166 = icmp slt i32 %163, %165
  br i1 %166, label %167, label %172

167:                                              ; preds = %162, %158
  %168 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 18, i32 24, i32 13
  %169 = load i8, ptr %168, align 4
  %170 = and i8 %169, 1
  %171 = icmp eq i8 %170, 0
  br i1 %171, label %178, label %177

172:                                              ; preds = %162, %158
  %173 = getelementptr inbounds %struct.nouveau_drm, ptr %122, i32 0, i32 18, i32 24, i32 13
  %174 = load i8, ptr %173, align 4
  %175 = and i8 %174, 2
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %172, %167
  store i32 8, ptr %143, align 8
  br label %178

178:                                              ; preds = %177, %172, %167, %153, %149, %144, %135, %127, %115
  %179 = getelementptr inbounds %struct.nouveau_encoder, ptr %7, i32 0, i32 1
  %180 = load ptr, ptr %179, align 4
  %181 = getelementptr inbounds %struct.dcb_output, ptr %180, i32 0, i32 3
  %182 = load i32, ptr %181, align 4
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = getelementptr inbounds %struct.drm_encoder_slave, ptr %7, i32 0, i32 1
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %186, i32 0, i32 9
  %188 = load ptr, ptr %187, align 4
  %189 = call i32 %188(ptr noundef %7, ptr noundef %0) #13
  br label %190

190:                                              ; preds = %184, %178
  %191 = phi i32 [ %189, %184 ], [ %116, %178 ]
  %192 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 1
  %193 = load i32, ptr %192, align 8
  switch i32 %193, label %233 [
    i32 64, label %194
    i32 65, label %194
    i32 71, label %194
  ]

194:                                              ; preds = %190, %190, %190
  %195 = load ptr, ptr %8, align 8
  %196 = load ptr, ptr %0, align 8
  %197 = icmp eq ptr %195, null
  br i1 %197, label %230, label %198

198:                                              ; preds = %194
  %199 = getelementptr inbounds %struct.drm_display_mode, ptr %195, i32 0, i32 1
  %200 = getelementptr inbounds %struct.drm_display_mode, ptr %195, i32 0, i32 6
  br label %201

201:                                              ; preds = %227, %198
  %202 = phi ptr [ @scaler_modes, %198 ], [ %229, %227 ]
  %203 = phi i32 [ 0, %198 ], [ %228, %227 ]
  %204 = getelementptr inbounds %struct.moderec, ptr %202, i32 0, i32 1
  br label %205

205:                                              ; preds = %221, %201
  %206 = load i32, ptr %202, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %230, label %208

208:                                              ; preds = %205
  %209 = load i16, ptr %199, align 4
  %210 = zext i16 %209 to i32
  %211 = icmp sgt i32 %206, %210
  br i1 %211, label %227, label %212

212:                                              ; preds = %208
  %213 = load i32, ptr %204, align 4
  %214 = load i16, ptr %200, align 2
  %215 = zext i16 %214 to i32
  %216 = icmp sgt i32 %213, %215
  br i1 %216, label %227, label %217

217:                                              ; preds = %212
  %218 = icmp eq i32 %206, %210
  %219 = icmp eq i32 %213, %215
  %220 = select i1 %218, i1 %219, i1 false
  br i1 %220, label %227, label %221

221:                                              ; preds = %217
  %222 = call i32 @drm_mode_vrefresh(ptr noundef nonnull %195) #13
  %223 = call ptr @drm_cvt_mode(ptr noundef %196, i32 noundef %206, i32 noundef %213, i32 noundef %222, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false) #13
  %224 = icmp eq ptr %223, null
  br i1 %224, label %205, label %225

225:                                              ; preds = %221
  call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %223) #13
  %226 = add i32 %203, 1
  br label %227

227:                                              ; preds = %225, %217, %212, %208
  %228 = phi i32 [ %226, %225 ], [ %203, %208 ], [ %203, %212 ], [ %203, %217 ]
  %229 = getelementptr %struct.moderec, ptr %202, i32 1
  br label %201

230:                                              ; preds = %205, %194
  %231 = phi i32 [ 0, %194 ], [ %203, %205 ]
  %232 = add i32 %231, %191
  br label %233

233:                                              ; preds = %230, %190
  %234 = phi i32 [ %232, %230 ], [ %191, %190 ]
  ret i32 %234
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nouveau_connector_mode_valid(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load i32, ptr %1, align 4
  %6 = getelementptr inbounds %struct.nouveau_encoder, ptr %4, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  switch i32 %9, label %101 [
    i32 3, label %10
    i32 2, label %26
    i32 0, label %88
    i32 1, label %93
    i32 6, label %99
  ]

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 10
  %12 = load ptr, ptr %11, align 8
  %13 = icmp eq ptr %12, null
  br i1 %13, label %102, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %16 = load i16, ptr %15, align 4
  %17 = getelementptr inbounds %struct.drm_display_mode, ptr %12, i32 0, i32 1
  %18 = load i16, ptr %17, align 4
  %19 = icmp ugt i16 %16, %18
  br i1 %19, label %123, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %22 = load i16, ptr %21, align 2
  %23 = getelementptr inbounds %struct.drm_display_mode, ptr %12, i32 0, i32 6
  %24 = load i16, ptr %23, align 2
  %25 = icmp ugt i16 %22, %24
  br i1 %25, label %123, label %102

26:                                               ; preds = %2
  %27 = load ptr, ptr %0, align 8
  %28 = getelementptr inbounds %struct.drm_device, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = load i32, ptr @nouveau_duallink, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %26
  %33 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 11
  %34 = load i8, ptr %33, align 1, !range !12
  %35 = icmp eq i8 %34, 0
  %36 = select i1 %35, i32 1, i32 2
  br label %37

37:                                               ; preds = %32, %26
  %38 = phi i32 [ 1, %26 ], [ %36, %32 ]
  %39 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 9
  %40 = load ptr, ptr %39, align 4
  %41 = tail call zeroext i1 @drm_detect_hdmi_monitor(ptr noundef %40) #13
  %42 = select i1 %41, i32 1, i32 %38
  br i1 %41, label %43, label %68

43:                                               ; preds = %37
  %44 = load i32, ptr @nouveau_hdmimhz, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = mul i32 %44, 1000
  br label %109

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.nouveau_drm, ptr %29, i32 0, i32 2, i32 3, i32 1, i32 2
  %50 = load i16, ptr %49, align 2
  %51 = icmp ugt i16 %50, 287
  br i1 %51, label %52, label %62

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20, i32 16, i32 0, i32 2
  %54 = load i8, ptr %53, align 2, !range !12
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %55, i32 340000, i32 594000
  %57 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20, i32 9
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 0
  %60 = tail call i32 @llvm.smin.i32(i32 %58, i32 %56) #13
  %61 = select i1 %59, i32 %56, i32 %60
  br label %109

62:                                               ; preds = %48
  %63 = getelementptr inbounds %struct.nouveau_drm, ptr %29, i32 0, i32 2, i32 3, i32 1, i32 4
  %64 = load i8, ptr %63, align 1
  %65 = icmp ugt i8 %64, 7
  br i1 %65, label %109, label %66

66:                                               ; preds = %62
  %67 = icmp eq i8 %64, 7
  br i1 %67, label %109, label %68

68:                                               ; preds = %66, %37
  %69 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 8
  %70 = load i8, ptr %69, align 4
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.nouveau_drm, ptr %29, i32 0, i32 2, i32 3, i32 1, i32 2
  %74 = load i16, ptr %73, align 2
  %75 = icmp ugt i16 %74, 69
  br i1 %75, label %76, label %78

76:                                               ; preds = %72, %68
  %77 = mul nuw nsw i32 %42, 165000
  br label %109

78:                                               ; preds = %72
  %79 = icmp ugt i16 %74, 63
  br i1 %79, label %80, label %82

80:                                               ; preds = %78
  %81 = mul nuw nsw i32 %42, 155000
  br label %109

82:                                               ; preds = %78
  %83 = icmp ugt i16 %74, 23
  br i1 %83, label %84, label %86

84:                                               ; preds = %82
  %85 = mul nuw nsw i32 %42, 135000
  br label %109

86:                                               ; preds = %82
  %87 = mul nuw nsw i32 %42, 112000
  br label %109

88:                                               ; preds = %2
  %89 = getelementptr inbounds %struct.dcb_output, ptr %7, i32 0, i32 13
  %90 = load i32, ptr %89, align 4
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, i32 350000, i32 %90
  br label %109

93:                                               ; preds = %2
  %94 = getelementptr inbounds %struct.drm_encoder_slave, ptr %4, i32 0, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %95, i32 0, i32 6
  %97 = load ptr, ptr %96, align 4
  %98 = tail call i32 %97(ptr noundef %4, ptr noundef %1) #13
  br label %123

99:                                               ; preds = %2
  %100 = tail call i32 @nv50_dp_mode_valid(ptr noundef %0, ptr noundef %4, ptr noundef %1, ptr noundef null) #13
  br label %123

101:                                              ; preds = %2
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/nouveau/nouveau_connector.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1081, 0\0A.popsection", ""() #13, !srcloc !13
  unreachable

102:                                              ; preds = %20, %10
  %103 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 507904
  %106 = icmp eq i32 %105, 16384
  %107 = zext i1 %106 to i32
  %108 = shl i32 %5, %107
  br label %118

109:                                              ; preds = %88, %86, %84, %80, %76, %66, %62, %52, %46
  %110 = phi i32 [ %92, %88 ], [ %47, %46 ], [ %61, %52 ], [ %77, %76 ], [ %81, %80 ], [ %85, %84 ], [ %87, %86 ], [ 297000, %62 ], [ 225000, %66 ]
  %111 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 11
  %112 = load i32, ptr %111, align 4
  %113 = and i32 %112, 507904
  %114 = icmp eq i32 %113, 16384
  %115 = zext i1 %114 to i32
  %116 = shl i32 %5, %115
  %117 = icmp ult i32 %116, 25000
  br i1 %117, label %123, label %118

118:                                              ; preds = %109, %102
  %119 = phi i32 [ %108, %102 ], [ %116, %109 ]
  %120 = phi i32 [ 400000, %102 ], [ %110, %109 ]
  %121 = icmp ugt i32 %119, %120
  %122 = select i1 %121, i32 15, i32 0
  br label %123

123:                                              ; preds = %118, %109, %99, %93, %20, %14
  %124 = phi i32 [ %100, %99 ], [ %98, %93 ], [ 29, %20 ], [ 29, %14 ], [ 16, %109 ], [ %122, %118 ]
  ret i32 %124
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal ptr @nouveau_connector_best_encoder(ptr nocapture noundef readonly %0) #11 {
  %2 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_destroy(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_cvt_mode(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_dp_mode_valid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_detect_hdmi_monitor(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_dp_irq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #12

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!9 = !{!"auto-init"}
!10 = !{i64 635371, i64 2148136937, i64 2148136963, i64 2148137010, i64 2148137032, i64 2148137060, i64 2148137080}
!11 = !{i64 2148200199, i64 2148200225, i64 2148200254, i64 2148200288, i64 2148200319, i64 2148200342}
!12 = !{i8 0, i8 2}
!13 = !{i64 2156571922, i64 2156572431, i64 2156571959, i64 2156572015, i64 2156572049, i64 2156572073, i64 2156572114, i64 2156572135, i64 2156572163, i64 2156572197}
