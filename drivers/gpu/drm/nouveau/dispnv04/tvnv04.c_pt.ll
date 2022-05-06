; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/dispnv04/tvnv04.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/dispnv04/tvnv04.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_i2c_bus_probe = type { %struct.i2c_board_info, i8 }
%struct.i2c_board_info = type { [20 x i8], i16, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.drm_encoder_funcs = type { ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ch7006_encoder_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
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
%struct.anon.180 = type { %struct.nvkm_object, ptr }
%struct.nvkm_object = type { ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.list_head, i8, i64, i64, %struct.rb_node }
%struct.rb_node = type { i32, ptr, ptr }
%struct.nvkm_device = type { ptr, ptr, ptr, i32, i64, ptr, ptr, ptr, %struct.list_head, %struct.mutex, i32, ptr, %struct.nvkm_event, i32, ptr, i32, i32, i8, i32, %struct.anon.153, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [3 x ptr], ptr, ptr, [10 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [5 x ptr], [3 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.nvkm_event = type { ptr, i32, i32, %struct.spinlock, %struct.spinlock, %struct.list_head, ptr }
%struct.anon.153 = type { %struct.notifier_block }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.anon.192 = type { %struct.nvkm_object, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.183, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.184, %struct.anon.191, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.anon.183 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.191 = type { i8 }
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
%struct.drm_encoder_slave_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nv04_mode_state = type { [2 x %struct.nv04_crtc_reg], i32, i32 }
%struct.nv04_crtc_reg = type { i8, [160 x i8], [16 x i8], [5 x i8], [9 x i8], [21 x i8], [768 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.nvkm_pll_vals, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [7 x i32], [7 x i32], i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i32, [38 x i32] }
%struct.nvkm_pll_vals = type { %union.anon.158, i32, i32 }
%union.anon.158 = type { %struct.anon.160 }
%struct.anon.160 = type { i16, i16 }
%struct.nouveau_crtc = type { %struct.drm_crtc, i32, %struct.nvif_notify, i32, i32, i32, i32, i32, i32, i32, %struct.anon.193, %struct.anon.194, %struct.anon.195, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.anon.193 = type { i32, i8, i32, i32 }
%struct.anon.194 = type { ptr, i32, ptr, ptr, ptr, ptr }
%struct.anon.195 = type { i32 }
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

@.str = private unnamed_addr constant [11 x i8] c"TV encoder\00", align 1
@nv04_tv_encoder_info = internal global [2 x %struct.nvkm_i2c_bus_probe] [%struct.nvkm_i2c_bus_probe { %struct.i2c_board_info { [20 x i8] c"ch7006\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i16 0, i16 117, ptr null, ptr @.compoundliteral, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0 }, i8 0 }, %struct.nvkm_i2c_bus_probe zeroinitializer], align 4
@nv04_tv_funcs = internal constant %struct.drm_encoder_funcs { ptr null, ptr @nv04_tv_destroy, ptr null, ptr null }, align 4
@nv04_tv_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr @nv04_tv_dpms, ptr null, ptr @drm_i2c_encoder_mode_fixup, ptr @nv04_tv_prepare, ptr @nv04_tv_commit, ptr @nv04_tv_mode_set, ptr null, ptr @drm_i2c_encoder_detect, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.compoundliteral = internal global %struct.ch7006_encoder_params { i32 5, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 0 }, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"%s: Setting dpms mode %d on TV encoder (output %d)\0A\00", align 1
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"%s: Output %s is running on CRTC %d using output %c\0A\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_tv_identify(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 3, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.anon.180, ptr %6, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr inbounds %struct.nvkm_device, ptr %8, i32 0, i32 26
  %10 = load ptr, ptr %9, align 4
  %11 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %10, i32 noundef %1) #5
  %12 = icmp eq ptr %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %2
  %14 = tail call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %11, ptr noundef nonnull @.str, ptr noundef nonnull @nv04_tv_encoder_info, ptr noundef null, ptr noundef null) #5
  br label %15

15:                                               ; preds = %13, %2
  %16 = phi i32 [ %14, %13 ], [ -19, %2 ]
  ret i32 %16
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nvkm_i2c_bus_find(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvkm_i2c_bus_probe(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nv04_tv_create(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 8
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 3, i32 0, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.anon.192, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.nvkm_device, ptr %9, i32 0, i32 26
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %11, i32 noundef %14) #5
  %16 = load i8, ptr %12, align 4
  %17 = zext i8 %16 to i32
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %18, i32 0, i32 2, i32 3, i32 0, i32 5
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.anon.180, ptr %20, i32 0, i32 1
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.nvkm_device, ptr %22, i32 0, i32 26
  %24 = load ptr, ptr %23, align 4
  %25 = tail call ptr @nvkm_i2c_bus_find(ptr noundef %24, i32 noundef %17) #5
  %26 = icmp eq ptr %25, null
  br i1 %26, label %64, label %27

27:                                               ; preds = %2
  %28 = tail call i32 @nvkm_i2c_bus_probe(ptr noundef nonnull %25, ptr noundef nonnull @.str, ptr noundef nonnull @nv04_tv_encoder_info, ptr noundef null, ptr noundef null) #5
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %64, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %32 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %31, i32 noundef 3520, i32 noundef 344) #6
  %33 = icmp eq ptr %32, null
  br i1 %33, label %64, label %34

34:                                               ; preds = %30
  %35 = tail call i32 (ptr, ptr, ptr, i32, ptr, ...) @drm_encoder_init(ptr noundef %3, ptr noundef nonnull %32, ptr noundef nonnull @nv04_tv_funcs, i32 noundef 4, ptr noundef null) #5
  %36 = getelementptr inbounds %struct.drm_encoder, ptr %32, i32 0, i32 11
  store ptr @nv04_tv_helper_funcs, ptr %36, align 4
  %37 = getelementptr inbounds %struct.nouveau_encoder, ptr %32, i32 0, i32 14
  store ptr @drm_i2c_encoder_save, ptr %37, align 4
  %38 = getelementptr inbounds %struct.nouveau_encoder, ptr %32, i32 0, i32 15
  store ptr @drm_i2c_encoder_restore, ptr %38, align 8
  %39 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 5
  %40 = load i8, ptr %39, align 1
  %41 = zext i8 %40 to i32
  %42 = getelementptr inbounds %struct.drm_encoder, ptr %32, i32 0, i32 6
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.drm_encoder, ptr %32, i32 0, i32 7
  store i32 0, ptr %43, align 8
  %44 = getelementptr inbounds %struct.nouveau_encoder, ptr %32, i32 0, i32 1
  store ptr %1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dcb_output, ptr %1, i32 0, i32 9
  %46 = load i8, ptr %45, align 1
  %47 = tail call i8 @llvm.cttz.i8(i8 %46, i1 true), !range !8
  %48 = zext i8 %47 to i32
  %49 = icmp eq i8 %46, 0
  %50 = select i1 %49, i32 -1, i32 %48
  %51 = getelementptr inbounds %struct.nouveau_encoder, ptr %32, i32 0, i32 2
  store i32 %50, ptr %51, align 8
  %52 = getelementptr inbounds %struct.nvkm_i2c_bus, ptr %15, i32 0, i32 5
  %53 = getelementptr [2 x %struct.nvkm_i2c_bus_probe], ptr @nv04_tv_encoder_info, i32 0, i32 %28
  %54 = tail call i32 @drm_i2c_encoder_init(ptr noundef %3, ptr noundef nonnull %32, ptr noundef %52, ptr noundef %53) #5
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %63, label %56

56:                                               ; preds = %34
  %57 = getelementptr inbounds %struct.drm_encoder_slave, ptr %32, i32 0, i32 1
  %58 = load ptr, ptr %57, align 8
  %59 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %58, i32 0, i32 10
  %60 = load ptr, ptr %59, align 4
  %61 = tail call i32 %60(ptr noundef nonnull %32, ptr noundef %0) #5
  %62 = tail call i32 @drm_connector_attach_encoder(ptr noundef %0, ptr noundef nonnull %32) #5
  br label %64

63:                                               ; preds = %34
  tail call void @drm_encoder_cleanup(ptr noundef nonnull %32) #5
  tail call void @kfree(ptr noundef nonnull %32) #5
  br label %64

64:                                               ; preds = %63, %56, %30, %27, %2
  %65 = phi i32 [ %54, %63 ], [ 0, %56 ], [ %28, %27 ], [ -12, %30 ], [ -19, %2 ]
  ret i32 %65
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_encoder_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_i2c_encoder_save(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_i2c_encoder_restore(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_i2c_encoder_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_encoder_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_tv_destroy(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  tail call void %5(ptr noundef %0) #5
  tail call void @drm_encoder_cleanup(ptr noundef %0) #5
  %6 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 11
  %7 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %7) #5
  tail call void @kfree(ptr noundef %0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_tv_dpms(ptr noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = load i32, ptr @__drm_debug, align 4
  %10 = and i32 %9, 2
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 1
  %14 = load ptr, ptr %13, align 8
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.drm_device, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 2, i32 12
  %20 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %18, ptr noundef nonnull @.str.1, ptr noundef %19, i32 noundef %1, i32 noundef %22) #7
  br label %23

23:                                               ; preds = %12, %2
  %24 = getelementptr inbounds %struct.nv04_mode_state, ptr %8, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = and i32 %25, -983041
  store i32 %26, ptr %24, align 4
  %27 = icmp eq i32 %1, 0
  br i1 %27, label %28, label %80

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.nouveau_crtc, ptr %30, i32 0, i32 1
  %32 = load i32, ptr %31, align 8
  %33 = load ptr, ptr %4, align 4
  %34 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %33, i32 0, i32 2, i32 3, i32 0, i32 6
  %36 = load ptr, ptr %35, align 8
  %37 = icmp eq ptr %36, null
  %38 = shl i32 %32, 13
  %39 = add i32 %38, 6296532
  br i1 %37, label %42, label %40, !prof !9

40:                                               ; preds = %28
  %41 = getelementptr i8, ptr %36, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %41, i8 26) #5, !srcloc !11
  br label %44

42:                                               ; preds = %28
  %43 = sext i32 %39 to i64
  tail call void @nvif_object_wr(ptr noundef %34, i32 noundef 1, i64 noundef %43, i32 noundef 26) #5
  br label %44

44:                                               ; preds = %42, %40
  %45 = load ptr, ptr %35, align 8
  %46 = icmp eq ptr %45, null
  %47 = add i32 %38, 6296533
  br i1 %46, label %52, label %48, !prof !9

48:                                               ; preds = %44
  %49 = getelementptr i8, ptr %45, i32 %47
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %49) #5, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !13
  %51 = zext i8 %50 to i32
  br label %55

52:                                               ; preds = %44
  %53 = sext i32 %47 to i64
  %54 = tail call i32 @nvif_object_rd(ptr noundef %34, i32 noundef 1, i64 noundef %53) #5
  br label %55

55:                                               ; preds = %52, %48
  %56 = phi i32 [ %51, %48 ], [ %54, %52 ]
  %57 = trunc i32 %56 to i8
  %58 = icmp eq i32 %32, 0
  %59 = select i1 %58, i32 196608, i32 786432
  %60 = load i32, ptr %24, align 4
  %61 = or i32 %60, %59
  store i32 %61, ptr %24, align 4
  %62 = or i8 %57, -128
  %63 = load ptr, ptr %4, align 4
  %64 = getelementptr inbounds %struct.nouveau_drm, ptr %63, i32 0, i32 2, i32 3
  %65 = getelementptr inbounds %struct.nouveau_drm, ptr %63, i32 0, i32 2, i32 3, i32 0, i32 6
  %66 = load ptr, ptr %65, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %70, label %68, !prof !9

68:                                               ; preds = %55
  %69 = getelementptr i8, ptr %66, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %69, i8 26) #5, !srcloc !11
  br label %72

70:                                               ; preds = %55
  %71 = sext i32 %39 to i64
  tail call void @nvif_object_wr(ptr noundef %64, i32 noundef 1, i64 noundef %71, i32 noundef 26) #5
  br label %72

72:                                               ; preds = %70, %68
  %73 = load ptr, ptr %65, align 8
  %74 = icmp eq ptr %73, null
  br i1 %74, label %77, label %75, !prof !9

75:                                               ; preds = %72
  %76 = getelementptr i8, ptr %73, i32 %47
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %76, i8 %62) #5, !srcloc !11
  br label %80

77:                                               ; preds = %72
  %78 = sext i32 %47 to i64
  %79 = zext i8 %62 to i32
  tail call void @nvif_object_wr(ptr noundef %64, i32 noundef 1, i64 noundef %78, i32 noundef %79) #5
  br label %80

80:                                               ; preds = %77, %75, %23
  %81 = load i32, ptr %24, align 4
  %82 = load ptr, ptr %4, align 4
  %83 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 2, i32 3, i32 0, i32 6
  %84 = load ptr, ptr %83, align 8
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86, !prof !9

86:                                               ; preds = %80
  %87 = getelementptr i8, ptr %84, i32 6817036
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %81) #5, !srcloc !15
  br label %90

88:                                               ; preds = %80
  %89 = getelementptr inbounds %struct.nouveau_drm, ptr %82, i32 0, i32 2, i32 3
  tail call void @nvif_object_wr(ptr noundef %89, i32 noundef 4, i64 noundef 6817036, i32 noundef %81) #5
  br label %90

90:                                               ; preds = %88, %86
  %91 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %92, i32 0, i32 2
  %94 = load ptr, ptr %93, align 4
  tail call void %94(ptr noundef %0, i32 noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_i2c_encoder_mode_fixup(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_tv_prepare(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.nouveau_crtc, ptr %4, i32 0, i32 1
  %6 = load i32, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, i32 noundef 3) #5
  tail call void @nv04_dfp_disable(ptr noundef %2, i32 noundef %6) #5
  %10 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 -102
  %15 = load i16, ptr %14, align 2
  %16 = and i16 %15, 4080
  %17 = getelementptr inbounds %struct.nouveau_drm, ptr %11, i32 0, i32 2, i32 3, i32 1, i32 4
  %18 = load i8, ptr %17, align 1
  %19 = icmp ugt i8 %18, 1
  %20 = icmp ne i16 %16, 256
  %21 = select i1 %19, i1 %20, i1 false
  %22 = icmp ne i16 %16, 336
  %23 = select i1 %21, i1 %22, i1 false
  %24 = icmp ne i16 %16, 416
  %25 = select i1 %23, i1 %24, i1 false
  %26 = icmp ne i16 %16, 512
  %27 = select i1 %25, i1 %26, i1 false
  br i1 %27, label %28, label %30

28:                                               ; preds = %1
  %29 = xor i32 %6, 1
  tail call fastcc void @nv04_tv_bind(ptr noundef %2, i32 noundef %29, i1 noundef zeroext false)
  br label %30

30:                                               ; preds = %28, %1
  tail call fastcc void @nv04_tv_bind(ptr noundef %2, i32 noundef %6, i1 noundef zeroext true)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_tv_commit(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 11
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %8, align 4
  tail call void %9(ptr noundef %0, i32 noundef 0) #5
  %10 = load i32, ptr @__drm_debug, align 4
  %11 = and i32 %10, 2
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %35, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %15, i32 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = getelementptr inbounds %struct.drm_device, ptr %17, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.nouveau_drm, ptr %4, i32 0, i32 2, i32 12
  %21 = tail call ptr @nv04_encoder_get_connector(ptr noundef %0) #5
  %22 = getelementptr inbounds %struct.drm_connector, ptr %21, i32 0, i32 7
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr inbounds %struct.nouveau_crtc, ptr %6, i32 0, i32 1
  %25 = load i32, ptr %24, align 8
  %26 = getelementptr inbounds %struct.nouveau_encoder, ptr %0, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.dcb_output, ptr %27, i32 0, i32 9
  %29 = load i8, ptr %28, align 1
  %30 = tail call i8 @llvm.cttz.i8(i8 %29, i1 true), !range !8
  %31 = icmp eq i8 %29, 0
  %32 = add nuw nsw i8 %30, 65
  %33 = select i1 %31, i8 64, i8 %32
  %34 = zext i8 %33 to i32
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %19, ptr noundef nonnull @.str.2, ptr noundef %20, ptr noundef %23, i32 noundef %25, i32 noundef %34) #7
  br label %35

35:                                               ; preds = %13, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @nv04_tv_mode_set(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.drm_encoder, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %8, i32 0, i32 19
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.nouveau_crtc, ptr %6, i32 0, i32 1
  %13 = load i32, ptr %12, align 8
  %14 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 4
  %15 = load i16, ptr %14, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %13, i32 24
  store i32 %16, ptr %17, align 4
  %18 = getelementptr inbounds %struct.drm_display_mode, ptr %2, i32 0, i32 9
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %13, i32 21
  store i32 %20, ptr %21, align 4
  %22 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %13, i32 25
  store i32 1, ptr %22, align 4
  %23 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %13, i32 26
  store i32 1, ptr %23, align 4
  %24 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %13, i32 27
  store i32 64, ptr %24, align 4
  %25 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %13, i32 22
  store i32 1, ptr %25, align 4
  %26 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %11, i32 0, i32 %13, i32 23
  store i32 1, ptr %26, align 4
  %27 = getelementptr inbounds %struct.drm_encoder_slave, ptr %0, i32 0, i32 1
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_encoder_slave_funcs, ptr %28, i32 0, i32 7
  %30 = load ptr, ptr %29, align 4
  tail call void %30(ptr noundef %0, ptr noundef %1, ptr noundef %2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_i2c_encoder_detect(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nv04_dfp_disable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @nv04_tv_bind(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.nouveau_drm, ptr %5, i32 0, i32 19
  %7 = load ptr, ptr %6, align 4
  %8 = load ptr, ptr %7, align 8
  %9 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %8, i32 0, i32 %1, i32 20
  store i32 0, ptr %9, align 4
  %10 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %8, i32 0, i32 %1, i32 1, i32 73
  %11 = load i8, ptr %10, align 1
  %12 = and i8 %11, -17
  %13 = select i1 %2, i8 16, i8 0
  %14 = or i8 %12, %13
  store i8 %14, ptr %10, align 1
  %15 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %8, i32 0, i32 %1, i32 1, i32 51
  %16 = load i8, ptr %15, align 1
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3
  %19 = getelementptr inbounds %struct.nouveau_drm, ptr %17, i32 0, i32 2, i32 3, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  %22 = shl i32 %1, 13
  %23 = add i32 %22, 6296532
  br i1 %21, label %26, label %24, !prof !9

24:                                               ; preds = %3
  %25 = getelementptr i8, ptr %20, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %25, i8 51) #5, !srcloc !11
  br label %28

26:                                               ; preds = %3
  %27 = sext i32 %23 to i64
  tail call void @nvif_object_wr(ptr noundef %18, i32 noundef 1, i64 noundef %27, i32 noundef 51) #5
  br label %28

28:                                               ; preds = %26, %24
  %29 = load ptr, ptr %19, align 8
  %30 = icmp eq ptr %29, null
  %31 = add i32 %22, 6296533
  br i1 %30, label %34, label %32, !prof !9

32:                                               ; preds = %28
  %33 = getelementptr i8, ptr %29, i32 %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %33, i8 %16) #5, !srcloc !11
  br label %37

34:                                               ; preds = %28
  %35 = sext i32 %31 to i64
  %36 = zext i8 %16 to i32
  tail call void @nvif_object_wr(ptr noundef %18, i32 noundef 1, i64 noundef %35, i32 noundef %36) #5
  br label %37

37:                                               ; preds = %34, %32
  %38 = getelementptr [2 x %struct.nv04_crtc_reg], ptr %8, i32 0, i32 %1, i32 1, i32 73
  %39 = load i8, ptr %38, align 1
  %40 = load ptr, ptr %4, align 4
  %41 = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 2, i32 3
  %42 = getelementptr inbounds %struct.nouveau_drm, ptr %40, i32 0, i32 2, i32 3, i32 0, i32 6
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45, !prof !9

45:                                               ; preds = %37
  %46 = getelementptr i8, ptr %43, i32 %23
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %46, i8 73) #5, !srcloc !11
  br label %49

47:                                               ; preds = %37
  %48 = sext i32 %23 to i64
  tail call void @nvif_object_wr(ptr noundef %41, i32 noundef 1, i64 noundef %48, i32 noundef 73) #5
  br label %49

49:                                               ; preds = %47, %45
  %50 = load ptr, ptr %42, align 8
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52, !prof !9

52:                                               ; preds = %49
  %53 = getelementptr i8, ptr %50, i32 %31
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !10
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %53, i8 %39) #5, !srcloc !11
  br label %57

54:                                               ; preds = %49
  %55 = sext i32 %31 to i64
  %56 = zext i8 %39 to i32
  tail call void @nvif_object_wr(ptr noundef %41, i32 noundef 1, i64 noundef %55, i32 noundef %56) #5
  br label %57

57:                                               ; preds = %54, %52
  %58 = load i32, ptr %9, align 4
  %59 = load ptr, ptr %4, align 4
  %60 = icmp eq i32 %1, 0
  %61 = select i1 %60, i32 6817536, i32 6825728
  %62 = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 2, i32 3, i32 0, i32 6
  %63 = load ptr, ptr %62, align 8
  %64 = icmp eq ptr %63, null
  br i1 %64, label %67, label %65, !prof !9

65:                                               ; preds = %57
  %66 = getelementptr i8, ptr %63, i32 %61
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %58) #5, !srcloc !15
  br label %70

67:                                               ; preds = %57
  %68 = getelementptr inbounds %struct.nouveau_drm, ptr %59, i32 0, i32 2, i32 3
  %69 = zext i32 %61 to i64
  tail call void @nvif_object_wr(ptr noundef %68, i32 noundef 4, i64 noundef %69, i32 noundef %58) #5
  br label %70

70:                                               ; preds = %67, %65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nv04_encoder_get_connector(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #4

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(2) }
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
!8 = !{i8 0, i8 9}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2151489472}
!11 = !{i64 3949052}
!12 = !{i64 3949447}
!13 = !{i64 2151488174}
!14 = !{i64 2151490342}
!15 = !{i64 3949249}
