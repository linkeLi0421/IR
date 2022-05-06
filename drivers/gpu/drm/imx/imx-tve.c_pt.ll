; ModuleID = '/llk/IR/drivers/gpu/drm/imx/imx-tve.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/imx-tve.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.component_ops = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.imx_tve = type { ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.clk_hw, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.imx_tve_encoder = type { %struct.drm_connector, %struct.drm_encoder, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.73 }
%union.anon.73 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.imx_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }

@imx_tve_dt_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-tve\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description264 = internal constant [43 x i8] c"description=i.MX Television Encoder driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author265 = internal constant [34 x i8] c"author=Philipp Zabel, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_license266 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias267 = internal constant [23 x i8] c"alias=platform:imx-tve\00", section ".modinfo", align 1
@imx_tve_driver = internal global %struct.platform_driver { ptr @imx_tve_probe, ptr @imx_tve_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_tve_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [8 x i8] c"imx-tve\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"only VGA mode supported, currently\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"fsl,hsync-pin\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"failed to get hsync pin\0A\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"fsl,vsync-pin\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to get vsync pin\0A\00", align 1
@tve_regmap_config = internal global %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr @imx_tve_readable_reg, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 1, i32 220, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"tve\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to init regmap: %ld\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"failed to request irq: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"dac\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"dac voltage is not %d uV\0A\00", align 1
@.str.12 = private unnamed_addr constant [41 x i8] c"failed to get high speed tve clock: %ld\0A\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"di_sel\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"failed to get ipu di mux clock: %ld\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"failed to read configuration register: %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [68 x i8] c"configuration register default value indicates this is not a TVEv2\0A\00", align 1
@imx_tve_ops = internal constant %struct.component_ops { ptr @imx_tve_bind, ptr null }, align 4
@.str.17 = private unnamed_addr constant [13 x i8] c"fsl,tve-mode\00", align 1
@.str.18 = private unnamed_addr constant [6 x i8] c"tvout\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"vga\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"tve_di\00", align 1
@clk_tve_di_ops = internal constant %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_tve_di_recalc_rate, ptr @clk_tve_di_round_rate, ptr null, ptr null, ptr null, ptr @clk_tve_di_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__const.tve_clk_init.init = private unnamed_addr constant { ptr, ptr, ptr, ptr, ptr, i8, [3 x i8], i32 } { ptr @.str.20, ptr @clk_tve_di_ops, ptr null, ptr null, ptr null, i8 1, [3 x i8] zeroinitializer, i32 0 }, align 4
@.str.21 = private unnamed_addr constant [42 x i8] c"failed to register TVE output clock: %ld\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"failed to set divider: %d\0A\00", align 1
@imx_tve_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_tve_encoder_mode_set, ptr null, ptr null, ptr null, ptr null, ptr @imx_tve_encoder_disable, ptr @imx_tve_encoder_enable, ptr @imx_tve_atomic_check }, align 4
@imx_tve_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @imx_tve_connector_get_modes, ptr null, ptr @imx_tve_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx_tve_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @imx_drm_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.23 = private unnamed_addr constant [43 x i8] c"failed to set di_sel parent to tve_di: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"failed to set configuration: %d\0A\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"ignoring mode %dx%d\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias267, ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description264, ptr @__UNIQUE_ID_license266], section "llvm.metadata"

@__mod_of__imx_tve_dt_ids_device_table = dso_local alias [2 x %struct.of_device_id], ptr @imx_tve_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_tve_driver, ptr noundef nonnull @__this_module) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_tve_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_tve_probe(ptr noundef %0) #2 {
  %2 = alloca [1 x ptr], align 4
  %3 = alloca %struct.clk_init_data, align 4
  %4 = alloca ptr, align 4
  %5 = alloca %struct.of_phandle_args, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %9 = load ptr, ptr %8, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !8
  %10 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 52, i32 noundef 3520) #11
  %11 = icmp eq ptr %10, null
  br i1 %11, label %133, label %12

12:                                               ; preds = %1
  store ptr %7, ptr %10, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %5) #11
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %5, i8 0, i32 72, i1 false) #11, !annotation !8
  %13 = call i32 @__of_parse_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %5) #11
  %14 = icmp ne i32 %13, 0
  %15 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %5) #11
  %16 = icmp eq ptr %15, null
  %17 = select i1 %14, i1 true, i1 %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %15) #11
  %20 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 6
  store ptr %19, ptr %20, align 4
  call void @of_node_put(ptr noundef nonnull %15) #11
  br label %21

21:                                               ; preds = %18, %12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #11
  store ptr null, ptr %4, align 4, !annotation !8
  %22 = call i32 @of_property_read_string(ptr noundef %9, ptr noundef nonnull @.str.17, ptr noundef nonnull %4) #11
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %4, align 4
  %26 = call i32 @strcasecmp(ptr noundef %25, ptr noundef nonnull @.str.18) #11
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = call i32 @strcasecmp(ptr noundef %25, ptr noundef nonnull @.str.19) #11
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %28, %24, %21
  %32 = phi i32 [ -22, %28 ], [ 0, %24 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %33 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 1
  store i32 %32, ptr %33, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.2) #12
  br label %133

34:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #11
  %35 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 1
  store i32 1, ptr %35, align 4
  %36 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 2
  %37 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.3, ptr noundef %36, i32 noundef 1, i32 noundef 0) #11
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.4) #12
  br label %133

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 3
  %42 = call i32 @of_property_read_variable_u32_array(ptr noundef %9, ptr noundef nonnull @.str.5, ptr noundef %41, i32 noundef 1, i32 noundef 0) #11
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.6) #12
  br label %133

45:                                               ; preds = %40
  %46 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %47 = call ptr @devm_ioremap_resource(ptr noundef %7, ptr noundef %46) #11
  %48 = icmp ugt ptr %47, inttoptr (i32 -4096 to ptr)
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = ptrtoint ptr %47 to i32
  br label %133

51:                                               ; preds = %45
  store ptr %10, ptr getelementptr inbounds (%struct.regmap_config, ptr @tve_regmap_config, i32 0, i32 14), align 4
  %52 = call ptr @__devm_regmap_init_mmio_clk(ptr noundef %7, ptr noundef nonnull @.str.7, ptr noundef %47, ptr noundef nonnull @tve_regmap_config, ptr noundef null, ptr noundef null) #11
  %53 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 4
  store ptr %52, ptr %53, align 4
  %54 = icmp ugt ptr %52, inttoptr (i32 -4096 to ptr)
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = ptrtoint ptr %52 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8, i32 noundef %56) #12
  %57 = load ptr, ptr %53, align 4
  %58 = ptrtoint ptr %57 to i32
  br label %133

59:                                               ; preds = %51
  %60 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %133, label %62

62:                                               ; preds = %59
  %63 = call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %60, ptr noundef null, ptr noundef nonnull @imx_tve_irq_handler, i32 noundef 8192, ptr noundef nonnull @.str, ptr noundef nonnull %10) #11
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %62
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.9, i32 noundef %63) #12
  br label %133

66:                                               ; preds = %62
  %67 = call ptr @devm_regulator_get(ptr noundef %7, ptr noundef nonnull @.str.10) #11
  %68 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 5
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %84, label %70

70:                                               ; preds = %66
  %71 = call i32 @regulator_get_voltage(ptr noundef %67) #11
  %72 = icmp eq i32 %71, 2750000
  br i1 %72, label %74, label %73

73:                                               ; preds = %70
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.11, i32 noundef 2750000) #12
  br label %74

74:                                               ; preds = %73, %70
  %75 = load ptr, ptr %68, align 4
  %76 = call i32 @regulator_enable(ptr noundef %75) #11
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %133

78:                                               ; preds = %74
  %79 = call i32 @devm_add_action(ptr noundef %7, ptr noundef nonnull @imx_tve_disable_regulator, ptr noundef nonnull %10) #11
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %68, align 4
  %83 = call i32 @regulator_disable(ptr noundef %82) #11
  br label %133

84:                                               ; preds = %78, %66
  %85 = call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.7) #11
  %86 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 7
  store ptr %85, ptr %86, align 4
  %87 = icmp ugt ptr %85, inttoptr (i32 -4096 to ptr)
  br i1 %87, label %88, label %92

88:                                               ; preds = %84
  %89 = ptrtoint ptr %85 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.12, i32 noundef %89) #12
  %90 = load ptr, ptr %86, align 4
  %91 = ptrtoint ptr %90 to i32
  br label %133

92:                                               ; preds = %84
  %93 = call ptr @devm_clk_get(ptr noundef %7, ptr noundef nonnull @.str.13) #11
  %94 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 8
  store ptr %93, ptr %94, align 4
  %95 = icmp ugt ptr %93, inttoptr (i32 -4096 to ptr)
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = ptrtoint ptr %93 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.14, i32 noundef %97) #12
  %98 = load ptr, ptr %94, align 4
  %99 = ptrtoint ptr %98 to i32
  br label %133

100:                                              ; preds = %92
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %3) #11
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(28) %3, ptr noundef nonnull align 4 dereferenceable(28) @__const.tve_clk_init.init, i32 28, i1 false) #11
  %101 = load ptr, ptr %86, align 4
  %102 = call ptr @__clk_get_name(ptr noundef %101) #11
  store ptr %102, ptr %2, align 4
  %103 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  store ptr %2, ptr %103, align 4
  %104 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 9
  %105 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 9, i32 2
  store ptr %3, ptr %105, align 4
  %106 = load ptr, ptr %10, align 4
  %107 = call ptr @devm_clk_register(ptr noundef %106, ptr noundef %104) #11
  %108 = getelementptr inbounds %struct.imx_tve, ptr %10, i32 0, i32 10
  store ptr %107, ptr %108, align 4
  %109 = icmp ugt ptr %107, inttoptr (i32 -4096 to ptr)
  br i1 %109, label %111, label %110

110:                                              ; preds = %100
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  br label %117

111:                                              ; preds = %100
  %112 = load ptr, ptr %10, align 4
  %113 = ptrtoint ptr %107 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.21, i32 noundef %113) #12
  %114 = load ptr, ptr %108, align 4
  %115 = ptrtoint ptr %114 to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  %116 = icmp slt ptr %114, null
  br i1 %116, label %133, label %117

117:                                              ; preds = %111, %110
  %118 = load ptr, ptr %53, align 4
  %119 = call i32 @regmap_read(ptr noundef %118, i32 noundef 0, ptr noundef nonnull %6) #11
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %117
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.15, i32 noundef %119) #12
  br label %133

122:                                              ; preds = %117
  %123 = load i32, ptr %6, align 4
  %124 = icmp eq i32 %123, 1048576
  br i1 %124, label %126, label %125

125:                                              ; preds = %122
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.16) #12
  br label %133

126:                                              ; preds = %122
  %127 = load ptr, ptr %53, align 4
  %128 = call i32 @regmap_write(ptr noundef %127, i32 noundef 52, i32 noundef 0) #11
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %10, ptr %131, align 8
  %132 = call i32 @component_add(ptr noundef %7, ptr noundef nonnull @imx_tve_ops) #11
  br label %133

133:                                              ; preds = %130, %126, %125, %121, %111, %96, %88, %81, %74, %65, %59, %55, %49, %44, %39, %31, %1
  %134 = phi i32 [ -22, %31 ], [ %37, %39 ], [ %42, %44 ], [ %50, %49 ], [ %58, %55 ], [ %63, %65 ], [ %91, %88 ], [ %99, %96 ], [ %119, %121 ], [ -19, %125 ], [ %132, %130 ], [ -12, %1 ], [ %60, %59 ], [ %76, %74 ], [ %79, %81 ], [ %115, %111 ], [ %128, %126 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret i32 %134
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_tve_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @imx_tve_ops) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_tve_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr inbounds %struct.imx_tve, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 104, ptr noundef nonnull %3) #11
  %7 = load ptr, ptr %4, align 4
  %8 = call i32 @regmap_write(ptr noundef %7, i32 noundef 104, i32 noundef -1) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_get_voltage(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_tve_disable_regulator(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.imx_tve, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @regulator_disable(ptr noundef %3) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @imx_tve_readable_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = and i32 %1, 3
  %4 = icmp eq i32 %3, 0
  %5 = icmp ult i32 %1, 221
  %6 = and i1 %5, %4
  ret i1 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_tve_di_recalc_rate(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #11
  store i32 0, ptr %3, align 4, !annotation !8
  %4 = getelementptr i8, ptr %0, i32 -20
  %5 = load ptr, ptr %4, align 4
  %6 = call i32 @regmap_read(ptr noundef %5, i32 noundef 0, ptr noundef nonnull %3) #11
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %2
  %9 = load i32, ptr %3, align 4
  %10 = and i32 %9, 6
  switch i32 %10, label %15 [
    i32 4, label %11
    i32 2, label %13
  ]

11:                                               ; preds = %8
  %12 = lshr i32 %1, 2
  br label %15

13:                                               ; preds = %8
  %14 = lshr i32 %1, 1
  br label %15

15:                                               ; preds = %13, %11, %8, %2
  %16 = phi i32 [ %14, %13 ], [ %12, %11 ], [ 0, %2 ], [ %1, %8 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #11
  ret i32 %16
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal i32 @clk_tve_di_round_rate(ptr nocapture noundef readnone %0, i32 noundef %1, ptr nocapture noundef readonly %2) #9 {
  %4 = load i32, ptr %2, align 4
  %5 = udiv i32 %4, %1
  %6 = icmp ugt i32 %5, 3
  %7 = icmp ugt i32 %5, 1
  %8 = zext i1 %7 to i32
  %9 = select i1 %6, i32 2, i32 %8
  %10 = lshr i32 %4, %9
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @clk_tve_di_set_rate(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #2 {
  %4 = udiv i32 %2, %1
  %5 = icmp ult i32 %4, 2
  %6 = select i1 %5, i32 0, i32 2
  %7 = icmp ult i32 %4, 4
  %8 = select i1 %7, i32 %6, i32 4
  %9 = getelementptr i8, ptr %0, i32 -20
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef 0, i32 noundef 6, i32 noundef %8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = getelementptr i8, ptr %0, i32 -36
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.22, i32 noundef %11) #12
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i32 [ %11, %13 ], [ 0, %3 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_tve_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.imx_tve, ptr %5, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  %9 = select i1 %8, i32 1, i32 4
  %10 = tail call ptr @__drmm_simple_encoder_alloc(ptr noundef %2, i32 noundef 1048, i32 noundef 968, i32 noundef %9) #11
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = ptrtoint ptr %10 to i32
  br label %31

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.imx_tve_encoder, ptr %10, i32 0, i32 2
  store ptr %5, ptr %15, align 8
  %16 = getelementptr inbounds %struct.imx_tve_encoder, ptr %10, i32 0, i32 1
  %17 = load ptr, ptr %5, align 4
  %18 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 25
  %19 = load ptr, ptr %18, align 8
  %20 = tail call i32 @imx_drm_encoder_parse_of(ptr noundef %2, ptr noundef %16, ptr noundef %19) #11
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct.imx_tve_encoder, ptr %10, i32 0, i32 1, i32 11
  store ptr @imx_tve_encoder_helper_funcs, ptr %23, align 4
  %24 = getelementptr inbounds %struct.drm_connector, ptr %10, i32 0, i32 35
  store ptr @imx_tve_connector_helper_funcs, ptr %24, align 4
  %25 = getelementptr inbounds %struct.imx_tve, ptr %5, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @drm_connector_init_with_ddc(ptr noundef %2, ptr noundef %10, ptr noundef nonnull @imx_tve_connector_funcs, i32 noundef 1, ptr noundef %26) #11
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = tail call i32 @drm_connector_attach_encoder(ptr noundef %10, ptr noundef %16) #11
  br label %31

31:                                               ; preds = %29, %22, %14, %12
  %32 = phi i32 [ %13, %12 ], [ %30, %29 ], [ %20, %14 ], [ %27, %22 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_simple_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_drm_encoder_parse_of(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_tve_encoder_mode_set(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = load i32, ptr %2, align 4
  %7 = mul i32 %6, 2000
  %8 = getelementptr inbounds %struct.imx_tve, ptr %5, i32 0, i32 7
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @clk_set_rate(ptr noundef %9, i32 noundef %7) #11
  %11 = load ptr, ptr %8, align 4
  %12 = tail call i32 @clk_get_rate(ptr noundef %11) #11
  %13 = icmp uge i32 %12, %7
  %14 = getelementptr inbounds %struct.imx_tve, ptr %5, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = zext i1 %13 to i32
  %17 = lshr i32 %12, %16
  %18 = tail call i32 @clk_set_rate(ptr noundef %15, i32 noundef %17) #11
  %19 = getelementptr inbounds %struct.imx_tve, ptr %5, i32 0, i32 8
  %20 = load ptr, ptr %19, align 4
  %21 = load ptr, ptr %14, align 4
  %22 = tail call i32 @clk_set_parent(ptr noundef %20, ptr noundef %21) #11
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.23, i32 noundef %22) #12
  br label %26

26:                                               ; preds = %24, %3
  %27 = getelementptr inbounds %struct.imx_tve, ptr %5, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = tail call i32 @regmap_update_bits_base(ptr noundef %28, i32 noundef 0, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %30 = getelementptr inbounds %struct.imx_tve, ptr %5, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %53

33:                                               ; preds = %26
  %34 = load ptr, ptr %27, align 4
  %35 = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 40, i32 noundef 63, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %33
  %38 = load ptr, ptr %27, align 4
  %39 = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 44, i32 noundef 63, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load ptr, ptr %27, align 4
  %43 = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 48, i32 noundef 63, i32 noundef 10, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %41
  %46 = load ptr, ptr %27, align 4
  %47 = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 0, i32 noundef 1081328, i32 noundef 1080400, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %45
  %50 = load ptr, ptr %27, align 4
  %51 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 108, i32 noundef 7, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %49, %45, %41, %37, %33, %26
  %54 = phi i32 [ %51, %49 ], [ -524, %26 ], [ %47, %45 ], [ %43, %41 ], [ %39, %37 ], [ %35, %33 ]
  %55 = load ptr, ptr %5, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.24, i32 noundef %54) #12
  br label %56

56:                                               ; preds = %53, %49
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_tve_encoder_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 72
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_tve, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %7 = getelementptr inbounds %struct.imx_tve, ptr %3, i32 0, i32 7
  %8 = load ptr, ptr %7, align 4
  tail call void @clk_disable(ptr noundef %8) #11
  tail call void @clk_unprepare(ptr noundef %8) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_tve_encoder_enable(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 72
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_tve, ptr %3, i32 0, i32 7
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #11
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #11
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #11
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = getelementptr inbounds %struct.imx_tve, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = tail call i32 @regmap_update_bits_base(ptr noundef %14, i32 noundef 0, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #11
  %16 = load ptr, ptr %13, align 4
  %17 = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 104, i32 noundef -1) #11
  %18 = getelementptr inbounds %struct.imx_tve, ptr %3, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = icmp eq i32 %19, 1
  %21 = load ptr, ptr %13, align 4
  %22 = select i1 %20, i32 0, i32 7
  %23 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 100, i32 noundef %22) #11
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @imx_tve_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readnone %2) #10 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.imx_crtc_state, ptr %1, i32 0, i32 1
  store i32 4116, ptr %6, align 4
  %7 = getelementptr inbounds %struct.imx_tve, ptr %5, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.imx_crtc_state, ptr %1, i32 0, i32 3
  store i32 %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.imx_tve, ptr %5, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.imx_crtc_state, ptr %1, i32 0, i32 4
  store i32 %11, ptr %12, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_tve_connector_get_modes(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.imx_tve_encoder, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_tve, ptr %3, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef nonnull %5) #11
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef nonnull %8) #11
  %12 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef nonnull %8) #11
  tail call void @kfree(ptr noundef nonnull %8) #11
  br label %13

13:                                               ; preds = %10, %7, %1
  %14 = phi i32 [ 0, %1 ], [ %12, %10 ], [ 0, %7 ]
  ret i32 %14
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_tve_connector_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.imx_tve_encoder, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.imx_tve, ptr %4, i32 0, i32 7
  %6 = load ptr, ptr %5, align 4
  %7 = load i32, ptr %1, align 4
  %8 = mul i32 %7, 2000
  %9 = tail call i32 @clk_round_rate(ptr noundef %6, i32 noundef %8) #11
  %10 = sdiv i32 %9, 2000
  %11 = load i32, ptr %1, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %28, label %13

13:                                               ; preds = %2
  %14 = load ptr, ptr %5, align 4
  %15 = mul i32 %11, 1000
  %16 = tail call i32 @clk_round_rate(ptr noundef %14, i32 noundef %15) #11
  %17 = sdiv i32 %16, 1000
  %18 = load i32, ptr %1, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %13
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 1
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  %25 = getelementptr inbounds %struct.drm_display_mode, ptr %1, i32 0, i32 6
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.25, i32 noundef %24, i32 noundef %27) #12
  br label %28

28:                                               ; preds = %20, %13, %2
  %29 = phi i32 [ -2, %20 ], [ 0, %2 ], [ 0, %13 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @imx_drm_connector_destroy(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly nofree nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
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
