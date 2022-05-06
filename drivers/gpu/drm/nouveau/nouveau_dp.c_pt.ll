; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_dp.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_dp.c"
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
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.74, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
%struct.anon.74 = type { %struct.list_head, ptr, %struct.spinlock }
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
%struct.anon.78 = type { i32, ptr }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.87, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.88, %struct.anon.95, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.anon.87 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.88 = type { %struct.anon.89 }
%struct.anon.89 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.95 = type { i8 }
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
%struct.drm_connector_tv_margins = type { i32, i32, i32, i32 }
%struct.llist_node = type { ptr }
%struct.hdr_sink_metadata = type { i32, %union.anon.79 }
%union.anon.79 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.nv50_mstm = type { ptr, %struct.drm_dp_mst_topology_mgr, i8, i8, i8, i8, i8, i32 }
%struct.drm_dp_mst_topology_mgr = type { %struct.drm_private_obj, ptr, ptr, i32, ptr, i32, i32, i32, i32, %struct.drm_dp_sideband_msg_rx, %struct.drm_dp_sideband_msg_rx, %struct.mutex, %struct.mutex, i8, ptr, [15 x i8], i8, i32, ptr, %struct.mutex, %struct.list_head, %struct.mutex, ptr, ptr, i32, i32, %struct.wait_queue_head, %struct.work_struct, %struct.work_struct, %struct.list_head, %struct.list_head, %struct.mutex, ptr, %struct.work_struct, %struct.list_head, %struct.mutex, %struct.work_struct }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_dp_sideband_msg_rx = type { [48 x i8], [256 x i8], i8, i8, i8, i8, i8, i8, %struct.drm_dp_sideband_msg_hdr }
%struct.drm_dp_sideband_msg_hdr = type { i8, i8, [8 x i8], i8, i8, i8, i8, i8, i8 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
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
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.97, %struct.anon.98, %struct.anon.100, %union.anon.101 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.97 = type { i32, i32 }
%struct.anon.98 = type { i32, %struct.anon.99, i8 }
%struct.anon.99 = type { i32, i32, i32 }
%struct.anon.100 = type { i32, i32 }
%union.anon.101 = type { %struct.anon.102 }
%struct.anon.102 = type { i8 }
%struct.nouveau_drm = type { %struct.nvif_parent, %struct.nouveau_cli, %struct.nouveau_cli, ptr, %struct.list_head, %struct.mutex, i8, %struct.anon.106, %struct.anon.107, %struct.anon.109, ptr, %struct.anon.110, ptr, ptr, ptr, ptr, %struct.nvif_object, %struct.anon.111, %struct.nvbios, ptr, %struct.work_struct, %struct.mutex, i32, %struct.work_struct, i32, ptr, ptr, ptr, %struct.dev_pm_domain, ptr, ptr, %struct.anon.117 }
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
%struct.anon.109 = type { i64, i64 }
%struct.anon.110 = type { i32, i64 }
%struct.nvif_object = type { ptr, ptr, ptr, i32, i32, ptr, %struct.anon.80 }
%struct.anon.80 = type { ptr, i64 }
%struct.anon.111 = type { [15 x %struct.nouveau_drm_tile], %struct.spinlock }
%struct.nouveau_drm_tile = type { ptr, i8 }
%struct.nvbios = type { ptr, i32, i16, i32, ptr, i8, i32, i32, i8, i8, %struct.spinlock, i8, i8, i8, i8, i32, i32, i8, i16, i16, i16, i8, %struct.dcb_table, %struct.anon.112, %struct.anon.113, %struct.anon.114, %struct.anon.115 }
%struct.dcb_table = type { i8, i32, [16 x %struct.dcb_output] }
%struct.dcb_output = type { i32, i16, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, %union.anon.81, i8 }
%union.anon.81 = type { %struct.anon.85 }
%struct.anon.85 = type { %struct.sor_conf, i32, i32 }
%struct.sor_conf = type { i32 }
%struct.anon.112 = type { i32 }
%struct.anon.113 = type { i16, i16, i32, i16, i16, i16, i16, i8, i8, i8, i8, i8, i32, i8, ptr, i32, i8 }
%struct.anon.114 = type { i16, i16 }
%struct.anon.115 = type { i16, i16, i16, %struct.anon.116, i16 }
%struct.anon.116 = type { i8, i8, i8 }
%struct.dev_pm_domain = type { %struct.dev_pm_ops, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon.117 = type { ptr, %struct.mutex, i8 }

@__UNIQUE_ID_mst281 = internal constant [60 x i8] c"parm=mst:Enable DisplayPort multi-stream (default: enabled)\00", section ".modinfo", align 1
@__param_str_mst = internal constant [4 x i8] c"mst\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@nouveau_mst = internal global i32 1, align 4
@__param_mst = internal constant %struct.kernel_param { ptr @__param_str_mst, ptr @__this_module, ptr @param_ops_int, i16 256, i8 -1, i8 0, %union.anon.64 { ptr @nouveau_mst } }, section "__param", align 4
@__UNIQUE_ID_msttype282 = internal constant [17 x i8] c"parmtype=mst:int\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [32 x i8] c"%s: display: %dx%d dpcd 0x%02x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"%s: encoder: %dx%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"%s: maximum: %dx%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"%s: service %s\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_mst281, ptr @__UNIQUE_ID_msttype282, ptr @__param_mst], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_dp_detect(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 4
  %9 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %10 = load i32, ptr %9, align 8
  %11 = icmp eq i32 %10, 14
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i8, ptr %8, align 1
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %165

15:                                               ; preds = %12, %2
  %16 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %16) #3
  %17 = icmp eq ptr %7, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.nv50_mstm, ptr %7, i32 0, i32 4
  %20 = load i8, ptr %19, align 2, !range !8
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %31, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.nv50_mstm, ptr %7, i32 0, i32 3
  %24 = load i8, ptr %23, align 1, !range !8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %163

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 18
  %28 = load i32, ptr %27, align 8
  %29 = icmp eq i32 %28, 1
  %30 = zext i1 %29 to i32
  br label %155

31:                                               ; preds = %18, %15
  %32 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 5
  %33 = tail call i32 @drm_dp_read_dpcd_caps(ptr noundef %32, ptr noundef %8) #3
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %66, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 6
  %37 = getelementptr %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 4, i32 5
  %38 = load i8, ptr %37, align 1
  %39 = and i8 %38, 1
  %40 = icmp ne i8 %39, 0
  %41 = tail call i32 @drm_dp_read_desc(ptr noundef %32, ptr noundef %36, i1 noundef zeroext %40) #3
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %66, label %43

43:                                               ; preds = %35
  %44 = load i32, ptr @nouveau_mst, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %6, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = tail call zeroext i1 @drm_dp_read_mst_cap(ptr noundef %32, ptr noundef %8) #3
  %51 = getelementptr inbounds %struct.nv50_mstm, ptr %47, i32 0, i32 2
  %52 = zext i1 %50 to i8
  store i8 %52, ptr %51, align 4
  br label %53

53:                                               ; preds = %49, %46, %43
  %54 = tail call zeroext i1 @drm_dp_read_sink_count_cap(ptr noundef %0, ptr noundef %8, ptr noundef %36) #3
  br i1 %54, label %55, label %62

55:                                               ; preds = %53
  %56 = tail call i32 @drm_dp_read_sink_count(ptr noundef %32) #3
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %55
  %59 = trunc i32 %56 to i8
  %60 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 7
  store i8 %59, ptr %60, align 4
  %61 = icmp eq i8 %59, 0
  br i1 %61, label %154, label %62

62:                                               ; preds = %58, %53
  %63 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 5
  %64 = tail call i32 @drm_dp_read_downstream_info(ptr noundef %32, ptr noundef %8, ptr noundef %63) #3
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %62, %55, %35, %31
  %67 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 7
  store i8 0, ptr %67, align 4
  br label %154

68:                                               ; preds = %62
  br i1 %17, label %77, label %69

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.nv50_mstm, ptr %7, i32 0, i32 2
  %71 = load i8, ptr %70, align 4, !range !8
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.nv50_mstm, ptr %7, i32 0, i32 3
  %75 = load i8, ptr %74, align 1, !range !8
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %163

77:                                               ; preds = %73, %69, %68
  %78 = getelementptr %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 4, i32 1
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i32
  %81 = mul nuw nsw i32 %80, 27000
  %82 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 2
  store i32 %81, ptr %82, align 4
  %83 = getelementptr %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 4, i32 2
  %84 = load i8, ptr %83, align 1
  %85 = and i8 %84, 31
  %86 = zext i8 %85 to i32
  %87 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 1
  store i32 %86, ptr %87, align 4
  %88 = load i32, ptr @__drm_debug, align 4
  %89 = and i32 %88, 2
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %118, label %91

91:                                               ; preds = %77
  %92 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %93 = load ptr, ptr %92, align 8
  %94 = getelementptr inbounds %struct.nouveau_drm, ptr %93, i32 0, i32 3
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.drm_device, ptr %95, i32 0, i32 2
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %99 = load i8, ptr %8, align 1
  %100 = zext i8 %99 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %97, ptr noundef nonnull @.str, ptr noundef %98, i32 noundef %86, i32 noundef %81, i32 noundef %100) #4
  %101 = load i32, ptr @__drm_debug, align 4
  %102 = and i32 %101, 2
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %118, label %104

104:                                              ; preds = %91
  %105 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %106 = load ptr, ptr %105, align 8
  %107 = getelementptr inbounds %struct.nouveau_drm, ptr %106, i32 0, i32 3
  %108 = load ptr, ptr %107, align 8
  %109 = getelementptr inbounds %struct.drm_device, ptr %108, i32 0, i32 2
  %110 = load ptr, ptr %109, align 4
  %111 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %112 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 1
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr inbounds %struct.dcb_output, ptr %113, i32 0, i32 13, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = getelementptr inbounds %struct.dcb_output, ptr %113, i32 0, i32 13, i32 0, i32 2
  %117 = load i32, ptr %116, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %110, ptr noundef nonnull @.str.1, ptr noundef %111, i32 noundef %115, i32 noundef %117) #4
  br label %118

118:                                              ; preds = %104, %91, %77
  %119 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 1
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.dcb_output, ptr %120, i32 0, i32 13, i32 0, i32 1
  %122 = load i32, ptr %121, align 4
  %123 = load i32, ptr %87, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %118
  store i32 %122, ptr %87, align 4
  br label %126

126:                                              ; preds = %125, %118
  %127 = phi i32 [ %122, %125 ], [ %123, %118 ]
  %128 = getelementptr inbounds %struct.dcb_output, ptr %120, i32 0, i32 13, i32 0, i32 2
  %129 = load i32, ptr %128, align 4
  %130 = load i32, ptr %82, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %133

132:                                              ; preds = %126
  store i32 %129, ptr %82, align 4
  br label %133

133:                                              ; preds = %132, %126
  %134 = phi i32 [ %130, %126 ], [ %129, %132 ]
  %135 = load i32, ptr @__drm_debug, align 4
  %136 = and i32 %135, 2
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %146, label %138

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %140 = load ptr, ptr %139, align 8
  %141 = getelementptr inbounds %struct.nouveau_drm, ptr %140, i32 0, i32 3
  %142 = load ptr, ptr %141, align 8
  %143 = getelementptr inbounds %struct.drm_device, ptr %142, i32 0, i32 2
  %144 = load ptr, ptr %143, align 4
  %145 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %144, ptr noundef nonnull @.str.2, ptr noundef %145, i32 noundef %127, i32 noundef %134) #4
  br label %146

146:                                              ; preds = %138, %133
  br i1 %17, label %163, label %147

147:                                              ; preds = %146
  %148 = getelementptr inbounds %struct.nv50_mstm, ptr %7, i32 0, i32 2
  %149 = load i8, ptr %148, align 4, !range !8
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %153, label %151

151:                                              ; preds = %147
  %152 = tail call i32 @nv50_mstm_detect(ptr noundef %1) #3
  switch i32 %152, label %155 [
    i32 1, label %163
    i32 0, label %153
  ]

153:                                              ; preds = %151, %147
  br label %155

154:                                              ; preds = %66, %58
  br i1 %17, label %163, label %155

155:                                              ; preds = %154, %153, %151, %26
  %156 = phi i32 [ 0, %154 ], [ %30, %26 ], [ 1, %153 ], [ %152, %151 ]
  %157 = getelementptr inbounds %struct.nv50_mstm, ptr %7, i32 0, i32 4
  %158 = load i8, ptr %157, align 2, !range !8
  %159 = icmp eq i8 %158, 0
  %160 = icmp ne i32 %156, 2
  %161 = select i1 %159, i1 %160, i1 false
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  tail call void @nv50_mstm_remove(ptr noundef nonnull %7) #3
  br label %163

163:                                              ; preds = %162, %155, %154, %151, %146, %73, %22
  %164 = phi i32 [ %156, %162 ], [ %156, %155 ], [ 0, %154 ], [ 1, %146 ], [ 2, %151 ], [ 2, %73 ], [ 2, %22 ]
  tail call void @mutex_unlock(ptr noundef %16) #3
  br label %165

165:                                              ; preds = %163, %12
  %166 = phi i32 [ %164, %163 ], [ 1, %12 ]
  ret i32 %166
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv50_mstm_detect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv50_mstm_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_dp_irq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call ptr @find_encoder(ptr noundef %1, i32 noundef 6) #3
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.nouveau_encoder, ptr %3, i32 0, i32 12
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr @__drm_debug, align 4
  %9 = and i32 %8, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %21, label %11

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 1
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %13, i32 0, i32 3
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.drm_device, ptr %15, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %0, i32 0, i32 2, i32 12
  %19 = getelementptr inbounds %struct.drm_connector, ptr %1, i32 0, i32 7
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.3, ptr noundef %18, ptr noundef %20) #4
  br label %21

21:                                               ; preds = %11, %5
  %22 = getelementptr inbounds %struct.nouveau_encoder, ptr %3, i32 0, i32 12, i32 0, i32 3
  tail call void @mutex_lock(ptr noundef %22) #3
  %23 = icmp eq ptr %7, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.nv50_mstm, ptr %7, i32 0, i32 3
  %26 = load i8, ptr %25, align 1, !range !8
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = tail call zeroext i1 @nv50_mstm_service(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7) #3
  tail call void @mutex_unlock(ptr noundef %22) #3
  br i1 %29, label %47, label %45

30:                                               ; preds = %24, %21
  %31 = getelementptr inbounds %struct.nouveau_encoder, ptr %3, i32 0, i32 12, i32 0, i32 4
  %32 = getelementptr inbounds %struct.nouveau_encoder, ptr %3, i32 0, i32 12, i32 0, i32 6
  %33 = tail call zeroext i1 @drm_dp_read_sink_count_cap(ptr noundef %1, ptr noundef %31, ptr noundef %32) #3
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.nouveau_connector, ptr %1, i32 0, i32 5
  %36 = tail call i32 @drm_dp_read_sink_count(ptr noundef %35) #3
  %37 = getelementptr inbounds %struct.nouveau_encoder, ptr %3, i32 0, i32 12, i32 0, i32 7
  %38 = load i8, ptr %37, align 4
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %36, %39
  %41 = icmp sgt i32 %36, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = trunc i32 %36 to i8
  store i8 %43, ptr %37, align 4
  tail call void @mutex_unlock(ptr noundef %22) #3
  br i1 %40, label %47, label %45

44:                                               ; preds = %34
  tail call void @mutex_unlock(ptr noundef %22) #3
  br i1 %40, label %47, label %45

45:                                               ; preds = %44, %42, %28
  tail call void @nouveau_connector_hpd(ptr noundef %1) #3
  br label %47

46:                                               ; preds = %30
  tail call void @mutex_unlock(ptr noundef %22) #3
  br label %47

47:                                               ; preds = %46, %45, %44, %42, %28, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_encoder(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nv50_mstm_service(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_sink_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nouveau_connector_hpd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv50_dp_mode_valid(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef writeonly %3) local_unnamed_addr #0 {
  %5 = load i32, ptr %2, align 4
  %6 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 20, i32 2
  %7 = load i32, ptr %6, align 8
  %8 = mul i32 %7, 3
  %9 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %4
  %14 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 13
  %15 = load i8, ptr %14, align 4
  %16 = and i8 %15, 1
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %13, %4
  %19 = and i32 %10, 507904
  %20 = icmp eq i32 %19, 16384
  %21 = zext i1 %20 to i32
  %22 = shl i32 %5, %21
  %23 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 1
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = mul i32 %26, %24
  %28 = and i32 %8, 255
  %29 = mul i32 %22, %28
  %30 = add i32 %29, 7
  %31 = lshr i32 %30, 3
  %32 = icmp ugt i32 %31, %27
  br i1 %32, label %45, label %33

33:                                               ; preds = %18
  %34 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 4
  %35 = getelementptr inbounds %struct.nouveau_encoder, ptr %1, i32 0, i32 12, i32 0, i32 5
  %36 = tail call i32 @drm_dp_downstream_max_dotclock(ptr noundef %34, ptr noundef %35) #3
  %37 = icmp ne i32 %36, 0
  %38 = icmp ugt i32 %22, %36
  %39 = select i1 %37, i1 %38, i1 false
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = icmp ult i32 %22, 25000
  br i1 %41, label %45, label %42

42:                                               ; preds = %40
  %43 = icmp eq ptr %3, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %42
  store i32 %22, ptr %3, align 4
  br label %45

45:                                               ; preds = %44, %42, %40, %33, %18, %13
  %46 = phi i32 [ 7, %13 ], [ 15, %18 ], [ 15, %33 ], [ 16, %40 ], [ 0, %44 ], [ 0, %42 ]
  ret i32 %46
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_downstream_max_dotclock(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_dpcd_caps(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_desc(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_read_mst_cap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_read_downstream_info(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_dp_read_sink_count_cap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
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
!8 = !{i8 0, i8 2}
