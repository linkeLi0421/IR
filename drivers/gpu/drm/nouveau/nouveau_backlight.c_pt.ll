; ModuleID = '/llk/IR/drivers/gpu/drm/nouveau/nouveau_backlight.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nouveau_backlight.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.backlight_ops = type { i32, ptr, ptr, ptr }
%struct.backlight_properties = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.68, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.76, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.68 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.nouveau_encoder = type { %struct.drm_encoder_slave, ptr, i32, i32, ptr, ptr, ptr, i32, %struct.anon.103, %struct.drm_display_mode, i32, %struct.nv04_output_reg, %union.anon.104, %struct.anon.111, ptr, ptr, ptr }
%struct.drm_encoder_slave = type { %struct.drm_encoder, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.anon.103 = type { i8, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.nv04_output_reg = type { i32, i32 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { ptr, i32, i32, %struct.mutex, [15 x i8], [16 x i8], %struct.drm_dp_desc, i8 }
%struct.drm_dp_desc = type { %struct.drm_dp_dpcd_ident, i32 }
%struct.drm_dp_dpcd_ident = type { [3 x i8], [6 x i8], i8, i8, i8 }
%struct.anon.111 = type { i8 }
%struct.nouveau_connector = type { %struct.drm_connector, i32, i8, ptr, %struct.nvif_notify, %struct.drm_dp_aux, i32, i32, ptr, ptr, ptr, ptr, %struct.nouveau_conn_atom }
%struct.nvif_notify = type { ptr, ptr, i32, i32, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.work_struct }
%struct.drm_dp_aux = type { ptr, %struct.i2c_adapter, ptr, ptr, ptr, %struct.mutex, %struct.work_struct, i8, ptr, i32, i32, %struct.drm_dp_aux_cec, i8 }
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
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.drm_dp_aux_cec = type { %struct.mutex, ptr, ptr, %struct.delayed_work }
%struct.nouveau_conn_atom = type { %struct.drm_connector_state, %struct.anon.112, %struct.anon.113, %struct.anon.115, %union.anon.116 }
%struct.drm_connector_state = type { ptr, ptr, ptr, i32, ptr, ptr, %struct.drm_tv_connector_state, i8, i32, i32, i32, i32, i32, i32, ptr, i8, i8, i32, ptr }
%struct.drm_tv_connector_state = type { i32, %struct.drm_connector_tv_margins, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.112 = type { i32, i32 }
%struct.anon.113 = type { i32, %struct.anon.114, i8 }
%struct.anon.114 = type { i32, i32, i32 }
%struct.anon.115 = type { i32, i32 }
%union.anon.116 = type { %struct.anon.117 }
%struct.anon.117 = type { i8 }
%struct.nouveau_backlight = type { ptr, %struct.drm_edp_backlight_info, i8, i32 }
%struct.drm_edp_backlight_info = type { i8, i8, i16, i8 }
%struct.backlight_device = type { %struct.backlight_properties, %struct.mutex, %struct.mutex, ptr, %struct.notifier_block, %struct.list_head, %struct.device, [32 x i8], i32 }
%struct.drm_modeset_acquire_ctx = type { %struct.ww_acquire_ctx, ptr, i32, %struct.list_head, i8, i8 }
%struct.ww_acquire_ctx = type { ptr, i32, i32, i16, i16 }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }

@.str.1 = private unnamed_addr constant [66 x i8] c"%s: Failed to retrieve a unique name for the backlight interface\0A\00", align 1
@bl_ida = internal global %struct.ida zeroinitializer, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@nv40_bl_ops = internal constant %struct.backlight_ops { i32 1, ptr @nv40_set_intensity, ptr @nv40_get_intensity, ptr null }, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"%s: DPCD backlight controls supported on %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%s: Failed to enable backlight on %s: %d\0A\00", align 1
@nv50_edp_bl_ops = internal constant %struct.backlight_ops { i32 0, ptr @nv50_edp_set_brightness, ptr @nv50_edp_get_brightness, ptr null }, align 4
@nv50_bl_ops = internal constant %struct.backlight_ops { i32 1, ptr @nv50_set_intensity, ptr @nv50_get_intensity, ptr null }, align 4
@nva3_bl_ops = internal constant %struct.backlight_ops { i32 1, ptr @nva3_set_intensity, ptr @nva3_get_intensity, ptr null }, align 4
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [15 x i8] c"nv_backlight%d\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"nv_backlight\00", align 1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local i32 @nouveau_backlight_init(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i16, align 2
  %3 = alloca [3 x i8], align 1
  %4 = alloca i8, align 1
  %5 = alloca [15 x i8], align 1
  %6 = alloca %struct.backlight_properties, align 4
  %7 = load ptr, ptr %0, align 8
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %5) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(15) %5, i8 0, i32 15, i1 false), !annotation !8
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %6) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %6, i8 0, i32 28, i1 false)
  %10 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 10
  %11 = load i32, ptr %10, align 8
  switch i32 %11, label %215 [
    i32 7, label %13
    i32 14, label %12
  ]

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %1
  %14 = phi i32 [ 6, %12 ], [ 3, %1 ]
  %15 = tail call ptr @find_encoder(ptr noundef %0, i32 noundef %14) #10
  %16 = icmp eq ptr %15, null
  br i1 %16, label %215, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %19 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 16) #11
  %20 = icmp eq ptr %19, null
  br i1 %20, label %215, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 3, i32 1, i32 4
  %23 = load i8, ptr %22, align 1
  switch i8 %23, label %213 [
    i8 5, label %24
    i8 6, label %44
    i8 7, label %44
    i8 8, label %44
    i8 9, label %44
    i8 10, label %44
    i8 11, label %44
    i8 12, label %44
    i8 13, label %44
  ]

24:                                               ; preds = %21
  %25 = load ptr, ptr %15, align 4
  %26 = getelementptr inbounds %struct.drm_device, ptr %25, i32 0, i32 5
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 2, i32 3, i32 0, i32 6
  %29 = load ptr, ptr %28, align 8
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31, !prof !9

31:                                               ; preds = %24
  %32 = getelementptr i8, ptr %29, i32 5616
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %37

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.nouveau_drm, ptr %27, i32 0, i32 2, i32 3
  %36 = tail call i32 @nvif_object_rd(ptr noundef %35, i32 noundef 4, i64 noundef 5616) #10
  br label %37

37:                                               ; preds = %34, %31
  %38 = phi i32 [ %33, %31 ], [ %36, %34 ]
  %39 = and i32 %38, 2031616
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %156, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.backlight_properties, ptr %6, i32 0, i32 4
  store i32 1, ptr %42, align 4
  %43 = getelementptr inbounds %struct.backlight_properties, ptr %6, i32 0, i32 1
  store i32 31, ptr %43, align 4
  br label %157

44:                                               ; preds = %21, %21, %21, %21, %21, %21, %21, %21
  %45 = load ptr, ptr %15, align 4
  %46 = getelementptr inbounds %struct.drm_device, ptr %45, i32 0, i32 5
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3, i32 0, i32 6
  %49 = load ptr, ptr %48, align 8
  %50 = icmp eq ptr %49, null
  br i1 %50, label %64, label %51, !prof !9

51:                                               ; preds = %44
  %52 = getelementptr inbounds %struct.nouveau_encoder, ptr %15, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.dcb_output, ptr %53, i32 0, i32 9
  %55 = load i8, ptr %54, align 1
  %56 = tail call i8 @llvm.cttz.i8(i8 %55, i1 true) #10, !range !12
  %57 = zext i8 %56 to i32
  %58 = icmp eq i8 %55, 0
  %59 = shl nuw nsw i32 %57, 11
  %60 = or i32 %59, 6406276
  %61 = select i1 %58, i32 6404228, i32 %60
  %62 = getelementptr i8, ptr %49, i32 %61
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %78

64:                                               ; preds = %44
  %65 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3
  %66 = getelementptr inbounds %struct.nouveau_encoder, ptr %15, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dcb_output, ptr %67, i32 0, i32 9
  %69 = load i8, ptr %68, align 1
  %70 = tail call i8 @llvm.cttz.i8(i8 %69, i1 true) #10, !range !12
  %71 = zext i8 %70 to i32
  %72 = icmp eq i8 %69, 0
  %73 = shl nuw nsw i32 %71, 11
  %74 = or i32 %73, 6406276
  %75 = zext i32 %74 to i64
  %76 = select i1 %72, i64 6404228, i64 %75
  %77 = tail call i32 @nvif_object_rd(ptr noundef %65, i32 noundef 4, i64 noundef %76) #10
  br label %78

78:                                               ; preds = %64, %51
  %79 = phi i32 [ %63, %51 ], [ %77, %64 ]
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %156, label %81

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 1
  %83 = load i32, ptr %82, align 8
  %84 = icmp eq i32 %83, 71
  br i1 %84, label %85, label %132

85:                                               ; preds = %81
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #10
  store i16 0, ptr %2, align 2, !annotation !8
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(3) %3, i8 0, i32 3, i1 false) #10, !annotation !8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #10
  store i8 0, ptr %4, align 1, !annotation !8
  %86 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 5
  %87 = call i32 @drm_dp_dpcd_read(ptr noundef %86, i32 noundef 1792, ptr noundef nonnull %3, i32 noundef 3) #10
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %153, label %89

89:                                               ; preds = %85
  %90 = getelementptr inbounds i8, ptr %3, i32 1
  %91 = load i8, ptr %90, align 1
  %92 = and i8 %91, 5
  %93 = icmp eq i8 %92, 5
  br i1 %93, label %94, label %131

94:                                               ; preds = %89
  %95 = getelementptr inbounds [3 x i8], ptr %3, i32 0, i32 2
  %96 = load i8, ptr %95, align 1
  %97 = and i8 %96, 2
  %98 = icmp eq i8 %97, 0
  br i1 %98, label %131, label %99

99:                                               ; preds = %94
  %100 = load i32, ptr @__drm_debug, align 4
  %101 = and i32 %100, 2
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %113, label %103

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 1
  %105 = load ptr, ptr %104, align 8
  %106 = getelementptr inbounds %struct.nouveau_drm, ptr %105, i32 0, i32 3
  %107 = load ptr, ptr %106, align 8
  %108 = getelementptr inbounds %struct.drm_device, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 12
  %111 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 7
  %112 = load ptr, ptr %111, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %109, ptr noundef nonnull @.str.2, ptr noundef %110, ptr noundef %112) #12
  br label %113

113:                                              ; preds = %103, %99
  %114 = getelementptr inbounds %struct.nouveau_backlight, ptr %19, i32 0, i32 1
  %115 = call i32 @drm_edp_backlight_init(ptr noundef %86, ptr noundef %114, i16 noundef zeroext 0, ptr noundef nonnull %3, ptr noundef nonnull %2, ptr noundef nonnull %4) #10
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %153, label %117

117:                                              ; preds = %113
  %118 = load i16, ptr %2, align 2
  %119 = call i32 @drm_edp_backlight_enable(ptr noundef %86, ptr noundef %114, i16 noundef zeroext %118) #10
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %143

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 1
  %123 = load ptr, ptr %122, align 8
  %124 = getelementptr inbounds %struct.nouveau_drm, ptr %123, i32 0, i32 3
  %125 = load ptr, ptr %124, align 8
  %126 = getelementptr inbounds %struct.drm_device, ptr %125, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 12
  %129 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 7
  %130 = load ptr, ptr %129, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %127, ptr noundef nonnull @.str.3, ptr noundef %128, ptr noundef %130, i32 noundef %119) #12
  br label %153

131:                                              ; preds = %94, %89
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %132

132:                                              ; preds = %131, %81
  %133 = getelementptr inbounds %struct.nouveau_drm, ptr %47, i32 0, i32 2, i32 3, i32 1, i32 2
  %134 = load i16, ptr %133, align 2
  %135 = icmp ult i16 %134, 161
  %136 = icmp eq i16 %134, 170
  %137 = or i1 %135, %136
  %138 = icmp eq i16 %134, 172
  %139 = or i1 %138, %137
  %140 = select i1 %139, ptr @nv50_bl_ops, ptr @nva3_bl_ops
  %141 = getelementptr inbounds %struct.backlight_properties, ptr %6, i32 0, i32 4
  store i32 1, ptr %141, align 4
  %142 = getelementptr inbounds %struct.backlight_properties, ptr %6, i32 0, i32 1
  store i32 100, ptr %142, align 4
  br label %157

143:                                              ; preds = %117
  %144 = load i16, ptr %2, align 2
  %145 = zext i16 %144 to i32
  store i32 %145, ptr %6, align 4
  %146 = getelementptr inbounds %struct.nouveau_backlight, ptr %19, i32 0, i32 1, i32 2
  %147 = load i16, ptr %146, align 2
  %148 = zext i16 %147 to i32
  %149 = getelementptr inbounds %struct.backlight_properties, ptr %6, i32 0, i32 1
  store i32 %148, ptr %149, align 4
  %150 = getelementptr inbounds %struct.nouveau_backlight, ptr %19, i32 0, i32 2
  %151 = load i8, ptr %150, align 2
  %152 = or i8 %151, 1
  store i8 %152, ptr %150, align 2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  br label %157

153:                                              ; preds = %121, %113, %85
  %154 = phi i32 [ %119, %121 ], [ %87, %85 ], [ %115, %113 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #10
  %155 = icmp eq i32 %154, -19
  br i1 %155, label %156, label %213

156:                                              ; preds = %153, %78, %37
  br label %213

157:                                              ; preds = %143, %132, %41
  %158 = phi ptr [ @nv50_edp_bl_ops, %143 ], [ %140, %132 ], [ @nv40_bl_ops, %41 ]
  %159 = call i32 @ida_alloc_range(ptr noundef nonnull @bl_ida, i32 noundef 0, i32 noundef -1, i32 noundef 3264) #10
  %160 = icmp ugt i32 %159, 99
  br i1 %160, label %166, label %161

161:                                              ; preds = %157
  %162 = icmp eq i32 %159, 0
  br i1 %162, label %165, label %163

163:                                              ; preds = %161
  %164 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 15, ptr noundef nonnull @.str.4, i32 noundef %159) #10
  br label %174

165:                                              ; preds = %161
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(13) %5, ptr noundef nonnull align 1 dereferenceable(13) @.str.5, i32 13, i1 false) #10
  br label %174

166:                                              ; preds = %157
  %167 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 1
  %168 = load ptr, ptr %167, align 8
  %169 = getelementptr inbounds %struct.nouveau_drm, ptr %168, i32 0, i32 3
  %170 = load ptr, ptr %169, align 8
  %171 = getelementptr inbounds %struct.drm_device, ptr %170, i32 0, i32 2
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.nouveau_drm, ptr %9, i32 0, i32 2, i32 12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.1, ptr noundef %173) #12
  br label %213

174:                                              ; preds = %165, %163
  %175 = getelementptr inbounds %struct.nouveau_backlight, ptr %19, i32 0, i32 3
  store i32 %159, ptr %175, align 4
  %176 = getelementptr inbounds %struct.drm_connector, ptr %0, i32 0, i32 1
  %177 = load ptr, ptr %176, align 4
  %178 = call ptr @backlight_device_register(ptr noundef nonnull %5, ptr noundef %177, ptr noundef nonnull %15, ptr noundef nonnull %158, ptr noundef nonnull %6) #10
  store ptr %178, ptr %19, align 8
  %179 = icmp ugt ptr %178, inttoptr (i32 -4096 to ptr)
  br i1 %179, label %180, label %188

180:                                              ; preds = %174
  %181 = load i32, ptr %175, align 4
  %182 = icmp sgt i32 %181, -1
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  call void @ida_free(ptr noundef nonnull @bl_ida, i32 noundef %181) #10
  %184 = load ptr, ptr %19, align 8
  br label %185

185:                                              ; preds = %183, %180
  %186 = phi ptr [ %184, %183 ], [ %178, %180 ]
  %187 = ptrtoint ptr %186 to i32
  br label %213

188:                                              ; preds = %174
  %189 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 11
  store ptr %19, ptr %189, align 4
  %190 = load i32, ptr %178, align 8
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %188
  %193 = getelementptr inbounds %struct.backlight_device, ptr %178, i32 0, i32 3
  %194 = load ptr, ptr %193, align 4
  %195 = getelementptr inbounds %struct.backlight_ops, ptr %194, i32 0, i32 2
  %196 = load ptr, ptr %195, align 4
  %197 = call i32 %196(ptr noundef %178) #10
  %198 = load ptr, ptr %19, align 8
  store i32 %197, ptr %198, align 8
  %199 = load ptr, ptr %19, align 8
  br label %200

200:                                              ; preds = %192, %188
  %201 = phi ptr [ %199, %192 ], [ %178, %188 ]
  %202 = getelementptr inbounds %struct.backlight_device, ptr %201, i32 0, i32 1
  call void @mutex_lock(ptr noundef %202) #10
  %203 = getelementptr inbounds %struct.backlight_device, ptr %201, i32 0, i32 3
  %204 = load ptr, ptr %203, align 4
  %205 = icmp eq ptr %204, null
  br i1 %205, label %212, label %206

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.backlight_ops, ptr %204, i32 0, i32 1
  %208 = load ptr, ptr %207, align 4
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %206
  %211 = call i32 %208(ptr noundef %201) #10
  br label %212

212:                                              ; preds = %210, %206, %200
  call void @mutex_unlock(ptr noundef %202) #10
  br label %215

213:                                              ; preds = %185, %166, %156, %153, %21
  %214 = phi i32 [ %187, %185 ], [ 0, %166 ], [ 0, %21 ], [ 0, %156 ], [ %154, %153 ]
  call void @kfree(ptr noundef nonnull %19) #10
  br label %215

215:                                              ; preds = %213, %212, %17, %13, %1
  %216 = phi i32 [ %214, %213 ], [ 0, %212 ], [ 0, %1 ], [ 0, %13 ], [ -12, %17 ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %5) #10
  ret i32 %216
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @find_encoder(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_free(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_backlight_fini(ptr nocapture noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.nouveau_connector, ptr %0, i32 0, i32 11
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.nouveau_backlight, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %9, label %10

9:                                                ; preds = %5
  tail call void @ida_free(ptr noundef nonnull @bl_ida, i32 noundef %7) #10
  br label %10

10:                                               ; preds = %9, %5
  %11 = load ptr, ptr %3, align 4
  tail call void @backlight_device_unregister(ptr noundef %11) #10
  store ptr null, ptr %2, align 4
  tail call void @kfree(ptr noundef nonnull %3) #10
  br label %12

12:                                               ; preds = %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @backlight_device_unregister(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync)
define dso_local void @nouveau_backlight_ctor() local_unnamed_addr #5 {
  store i32 0, ptr @bl_ida, align 4
  store i32 33554437, ptr getelementptr inbounds (%struct.ida, ptr @bl_ida, i32 0, i32 0, i32 1), align 4
  store ptr null, ptr getelementptr inbounds (%struct.ida, ptr @bl_ida, i32 0, i32 0, i32 2), align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define dso_local void @nouveau_backlight_dtor() local_unnamed_addr #0 {
  tail call void @ida_destroy(ptr noundef nonnull @bl_ida) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ida_destroy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvif_object_rd(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_set_intensity(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %8 = load i32, ptr %0, align 8
  %9 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12, !prof !9

12:                                               ; preds = %1
  %13 = getelementptr i8, ptr %10, i32 5616
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %17

15:                                               ; preds = %1
  %16 = tail call i32 @nvif_object_rd(ptr noundef %7, i32 noundef 4, i64 noundef 5616) #10
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ]
  %19 = load ptr, ptr %9, align 8
  %20 = icmp eq ptr %19, null
  %21 = shl i32 %8, 16
  %22 = and i32 %18, -2031617
  %23 = or i32 %22, %21
  br i1 %20, label %26, label %24, !prof !9

24:                                               ; preds = %17
  %25 = getelementptr i8, ptr %19, i32 5616
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #10, !srcloc !14
  br label %27

26:                                               ; preds = %17
  tail call void @nvif_object_wr(ptr noundef %7, i32 noundef 4, i64 noundef 5616, i32 noundef %23) #10
  br label %27

27:                                               ; preds = %26, %24
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv40_get_intensity(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %8 = load ptr, ptr %7, align 8
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10, !prof !9

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %8, i32 5616
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %16

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %15 = tail call i32 @nvif_object_rd(ptr noundef %14, i32 noundef 4, i64 noundef 5616) #10
  br label %16

16:                                               ; preds = %13, %10
  %17 = phi i32 [ %12, %10 ], [ %15, %13 ]
  %18 = lshr i32 %17, 16
  %19 = and i32 %18, 31
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nvif_object_wr(ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dp_dpcd_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edp_backlight_init(ptr noundef, ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edp_backlight_enable(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_edp_set_brightness(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %3 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.nouveau_connector, ptr %6, i32 0, i32 5
  %9 = getelementptr inbounds %struct.nouveau_connector, ptr %6, i32 0, i32 11
  %10 = load ptr, ptr %9, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !8
  call void @drm_modeset_acquire_init(ptr noundef nonnull %2, i32 noundef 0) #10
  %11 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 1
  %12 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 52
  br label %13

13:                                               ; preds = %42, %1
  %14 = call i32 @drm_modeset_lock(ptr noundef %11, ptr noundef nonnull %2) #10
  %15 = icmp eq i32 %14, -35
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = icmp slt i32 %14, 0
  br i1 %17, label %40, label %18

18:                                               ; preds = %16
  %19 = load ptr, ptr %12, align 8
  %20 = getelementptr inbounds %struct.drm_connector_state, ptr %19, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %40, label %23

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 4
  %25 = call i32 @drm_modeset_lock(ptr noundef %24, ptr noundef nonnull %2) #10
  %26 = icmp eq i32 %25, -35
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = icmp slt i32 %25, 0
  br i1 %28, label %40, label %29

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.drm_crtc, ptr %21, i32 0, i32 22
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.drm_crtc_state, ptr %31, i32 0, i32 2
  %33 = load i8, ptr %32, align 1, !range !15
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.nouveau_backlight, ptr %10, i32 0, i32 1
  %37 = load i32, ptr %0, align 8
  %38 = trunc i32 %37 to i16
  %39 = call i32 @drm_edp_backlight_set_level(ptr noundef %8, ptr noundef %36, i16 noundef zeroext %38) #10
  br label %40

40:                                               ; preds = %35, %29, %27, %18, %16
  %41 = phi i32 [ %25, %27 ], [ %39, %35 ], [ %25, %29 ], [ %14, %16 ], [ %14, %18 ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %2) #10
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #10
  ret i32 %41

42:                                               ; preds = %23, %13
  %43 = call i32 @drm_modeset_backoff(ptr noundef nonnull %2) #10
  br label %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_edp_get_brightness(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.drm_modeset_acquire_ctx, align 4
  %3 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(36) %2, i8 0, i32 36, i1 false), !annotation !8
  call void @drm_modeset_acquire_init(ptr noundef nonnull %2, i32 noundef 0) #10
  %8 = getelementptr inbounds %struct.drm_device, ptr %7, i32 0, i32 30, i32 1
  %9 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 52
  br label %10

10:                                               ; preds = %36, %1
  %11 = call i32 @drm_modeset_lock(ptr noundef %8, ptr noundef nonnull %2) #10
  %12 = icmp eq i32 %11, -35
  br i1 %12, label %36, label %13

13:                                               ; preds = %10
  %14 = icmp slt i32 %11, 0
  br i1 %14, label %34, label %15

15:                                               ; preds = %13
  %16 = load ptr, ptr %9, align 8
  %17 = getelementptr inbounds %struct.drm_connector_state, ptr %16, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %34, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.drm_crtc, ptr %18, i32 0, i32 4
  %22 = call i32 @drm_modeset_lock(ptr noundef %21, ptr noundef nonnull %2) #10
  %23 = icmp eq i32 %22, -35
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = icmp slt i32 %22, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %24
  %27 = getelementptr inbounds %struct.drm_crtc, ptr %18, i32 0, i32 22
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.drm_crtc_state, ptr %28, i32 0, i32 2
  %30 = load i8, ptr %29, align 1, !range !15
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = load i32, ptr %0, align 8
  br label %34

34:                                               ; preds = %32, %26, %24, %15, %13
  %35 = phi i32 [ %22, %24 ], [ %33, %32 ], [ %22, %26 ], [ %11, %13 ], [ %11, %15 ]
  call void @drm_modeset_drop_locks(ptr noundef nonnull %2) #10
  call void @drm_modeset_acquire_fini(ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %2) #10
  ret i32 %35

36:                                               ; preds = %20, %10
  %37 = call i32 @drm_modeset_backoff(ptr noundef nonnull %2) #10
  br label %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_init(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_lock(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_edp_backlight_set_level(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_drop_locks(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_modeset_acquire_fini(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_modeset_backoff(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_set_intensity(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_encoder, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dcb_output, ptr %8, i32 0, i32 9
  %10 = load i8, ptr %9, align 1
  %11 = tail call i8 @llvm.cttz.i8(i8 %10, i1 true), !range !12
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %10, 0
  %14 = select i1 %13, i32 -1, i32 %12
  %15 = load i32, ptr %0, align 8
  %16 = mul i32 %15, 1025
  %17 = udiv i32 %16, 100
  %18 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %19 = load ptr, ptr %18, align 8
  %20 = icmp eq ptr %19, null
  br i1 %20, label %26, label %21, !prof !9

21:                                               ; preds = %1
  %22 = or i32 %17, -2147483648
  %23 = shl nsw i32 %14, 11
  %24 = add nsw i32 %23, 6406276
  %25 = getelementptr i8, ptr %19, i32 %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %22) #10, !srcloc !14
  br label %32

26:                                               ; preds = %1
  %27 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %28 = shl nsw i32 %14, 11
  %29 = add nsw i32 %28, 6406276
  %30 = sext i32 %29 to i64
  %31 = or i32 %17, -2147483648
  tail call void @nvif_object_wr(ptr noundef %27, i32 noundef 4, i64 noundef %30, i32 noundef %31) #10
  br label %32

32:                                               ; preds = %26, %21
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nv50_get_intensity(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_encoder, ptr %3, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dcb_output, ptr %8, i32 0, i32 9
  %10 = load i8, ptr %9, align 1
  %11 = tail call i8 @llvm.cttz.i8(i8 %10, i1 true), !range !12
  %12 = zext i8 %11 to i32
  %13 = icmp eq i8 %10, 0
  %14 = select i1 %13, i32 -1, i32 %12
  %15 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18, !prof !9

18:                                               ; preds = %1
  %19 = shl nsw i32 %14, 11
  %20 = add nsw i32 %19, 6406276
  %21 = getelementptr i8, ptr %16, i32 %20
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %29

23:                                               ; preds = %1
  %24 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %25 = shl nsw i32 %14, 11
  %26 = add nsw i32 %25, 6406276
  %27 = sext i32 %26 to i64
  %28 = tail call i32 @nvif_object_rd(ptr noundef %24, i32 noundef 4, i64 noundef %27) #10
  br label %29

29:                                               ; preds = %23, %18
  %30 = phi i32 [ %22, %18 ], [ %28, %23 ]
  %31 = and i32 %30, 2047
  %32 = mul nuw nsw i32 %31, 100
  %33 = add nuw nsw i32 %32, 512
  %34 = udiv i32 %33, 1025
  ret i32 %34
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nva3_set_intensity(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.nouveau_encoder, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dcb_output, ptr %9, i32 0, i32 9
  %11 = load i8, ptr %10, align 1
  %12 = tail call i8 @llvm.cttz.i8(i8 %11, i1 true), !range !12
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %11, 0
  %15 = select i1 %14, i32 -1, i32 %13
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = shl nsw i32 %15, 11
  %20 = add nsw i32 %19, 6406272
  br i1 %18, label %24, label %21, !prof !9

21:                                               ; preds = %1
  %22 = getelementptr i8, ptr %17, i32 %20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %27

24:                                               ; preds = %1
  %25 = sext i32 %20 to i64
  %26 = tail call i32 @nvif_object_rd(ptr noundef %7, i32 noundef 4, i64 noundef %25) #10
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  %29 = load i32, ptr %0, align 8
  %30 = mul i32 %29, %28
  %31 = udiv i32 %30, 100
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %46, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %16, align 8
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36, !prof !9

36:                                               ; preds = %33
  %37 = or i32 %31, -1073741824
  %38 = shl nsw i32 %15, 11
  %39 = add nsw i32 %38, 6406276
  %40 = getelementptr i8, ptr %34, i32 %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !13
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #10, !srcloc !14
  br label %46

41:                                               ; preds = %33
  %42 = shl nsw i32 %15, 11
  %43 = add nsw i32 %42, 6406276
  %44 = sext i32 %43 to i64
  %45 = or i32 %31, -1073741824
  tail call void @nvif_object_wr(ptr noundef %7, i32 noundef 4, i64 noundef %44, i32 noundef %45) #10
  br label %46

46:                                               ; preds = %41, %36, %27
  %47 = phi i32 [ 0, %41 ], [ 0, %36 ], [ -22, %27 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @nva3_get_intensity(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.backlight_device, ptr %0, i32 0, i32 6, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.drm_device, ptr %4, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.nouveau_encoder, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.dcb_output, ptr %9, i32 0, i32 9
  %11 = load i8, ptr %10, align 1
  %12 = tail call i8 @llvm.cttz.i8(i8 %11, i1 true), !range !12
  %13 = zext i8 %12 to i32
  %14 = icmp eq i8 %11, 0
  %15 = select i1 %14, i32 -1, i32 %13
  %16 = getelementptr inbounds %struct.nouveau_drm, ptr %6, i32 0, i32 2, i32 3, i32 0, i32 6
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  %19 = shl nsw i32 %15, 11
  %20 = add nsw i32 %19, 6406272
  br i1 %18, label %24, label %21, !prof !9

21:                                               ; preds = %1
  %22 = getelementptr i8, ptr %17, i32 %20
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %27

24:                                               ; preds = %1
  %25 = sext i32 %20 to i64
  %26 = tail call i32 @nvif_object_rd(ptr noundef %7, i32 noundef 4, i64 noundef %25) #10
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  %29 = load ptr, ptr %16, align 8
  %30 = icmp eq ptr %29, null
  %31 = shl nsw i32 %15, 11
  %32 = add nsw i32 %31, 6406276
  br i1 %30, label %36, label %33, !prof !9

33:                                               ; preds = %27
  %34 = getelementptr i8, ptr %29, i32 %32
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %39

36:                                               ; preds = %27
  %37 = sext i32 %32 to i64
  %38 = tail call i32 @nvif_object_rd(ptr noundef %7, i32 noundef 4, i64 noundef %37) #10
  br label %39

39:                                               ; preds = %36, %33
  %40 = phi i32 [ %35, %33 ], [ %38, %36 ]
  %41 = and i32 %40, 16777215
  %42 = icmp eq i32 %28, 0
  %43 = icmp ult i32 %28, %41
  %44 = select i1 %42, i1 true, i1 %43
  br i1 %44, label %50, label %45

45:                                               ; preds = %39
  %46 = mul nuw nsw i32 %41, 100
  %47 = lshr i32 %28, 1
  %48 = add nuw i32 %46, %47
  %49 = udiv i32 %48, %28
  br label %50

50:                                               ; preds = %45, %39
  %51 = phi i32 [ %49, %45 ], [ 100, %39 ]
  ret i32 %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ida_alloc_range(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i8 @llvm.cttz.i8(i8, i1 immarg) #8

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #9

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { argmemonly nofree nounwind willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

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
!10 = !{i64 4549671}
!11 = !{i64 2152081634}
!12 = !{i8 0, i8 9}
!13 = !{i64 2152082856}
!14 = !{i64 4549253}
!15 = !{i8 0, i8 2}
