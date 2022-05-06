; ModuleID = '/llk/IR/drivers/gpu/drm/imx/imx-ldb.c_pt.bc'
source_filename = "../drivers/gpu/drm/imx/imx-ldb.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bus_mux = type { i32, i32, i32 }
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
%struct.component_ops = type { ptr, ptr }
%struct.imx_ldb_bit_mapping = type { i32, i32, ptr }
%struct.drm_encoder_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.imx_ldb = type { ptr, ptr, [2 x %struct.imx_ldb_channel], [2 x ptr], [4 x ptr], [4 x ptr], [2 x ptr], i32, ptr }
%struct.imx_ldb_channel = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, %struct.drm_display_mode, i32, i32, i32 }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_panel = type { ptr, ptr, ptr, i32, %struct.list_head }
%struct.drm_panel_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.imx_ldb_encoder = type { %struct.drm_connector, %struct.drm_encoder, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.of_endpoint = type { i32, i32, ptr }
%struct.drm_crtc_state = type { ptr, i8, i8, i8, i32, i32, i32, %struct.drm_display_mode, %struct.drm_display_mode, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, ptr, ptr, ptr }
%struct.imx_crtc_state = type { %struct.drm_crtc_state, i32, i32, i32, i32 }

@imx_ldb_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx6q-ldb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx6q_lvds_mux }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx53-ldb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description265 = internal constant [29 x i8] c"description=i.MX LVDS driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author266 = internal constant [33 x i8] c"author=Sascha Hauer, Pengutronix\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias268 = internal constant [23 x i8] c"alias=platform:imx-ldb\00", section ".modinfo", align 1
@imx6q_lvds_mux = internal global [2 x %struct.bus_mux] [%struct.bus_mux { i32 12, i32 6, i32 192 }, %struct.bus_mux { i32 12, i32 8, i32 768 }], align 4
@imx_ldb_driver = internal global %struct.platform_driver { ptr @imx_ldb_probe, ptr @imx_ldb_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_ldb_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [8 x i8] c"imx-ldb\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"gpr\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to get parent regmap\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"fsl,dual-channel\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"di%d_sel\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"dual-channel mode, ignoring second output\0A\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"could not determine data mapping: %d\0A\00", align 1
@imx_ldb_ops = internal constant %struct.component_ops { ptr @imx_ldb_bind, ptr null }, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"ddc-i2c-bus\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"failed to get ddc i2c adapter\0A\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"edid\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"fsl,data-mapping\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"fsl,data-width\00", align 1
@imx_ldb_bit_mappings = internal unnamed_addr constant [3 x %struct.imx_ldb_bit_mapping] [%struct.imx_ldb_bit_mapping { i32 4112, i32 18, ptr @.str.14 }, %struct.imx_ldb_bit_mapping { i32 4113, i32 24, ptr @.str.14 }, %struct.imx_ldb_bit_mapping { i32 4114, i32 24, ptr @.str.15 }], align 4
@.str.13 = private unnamed_addr constant [35 x i8] c"invalid data mapping: %d-bit \22%s\22\0A\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"spwg\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"jeida\00", align 1
@imx_ldb_encoder_helper_funcs = internal constant %struct.drm_encoder_helper_funcs { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_ldb_encoder_atomic_mode_set, ptr null, ptr null, ptr null, ptr @imx_ldb_encoder_disable, ptr @imx_ldb_encoder_enable, ptr @imx_ldb_encoder_atomic_check }, align 4
@imx_ldb_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @imx_ldb_connector_get_modes, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@imx_ldb_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr null, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr null, ptr null, ptr @imx_drm_connector_destroy, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.16 = private unnamed_addr constant [5 x i8] c"di%d\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"di%d_pll\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"%s: invalid mux %d\0A\00", align 1
@__func__.imx_ldb_encoder_atomic_mode_set = private unnamed_addr constant [32 x i8] c"imx_ldb_encoder_atomic_mode_set\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"%s: mode exceeds 170 MHz pixel clock\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"%s: mode exceeds 85 MHz pixel clock\0A\00", align 1
@.str.21 = private unnamed_addr constant [39 x i8] c"%s: hdisplay does not align to 8 byte\0A\00", align 1
@.str.22 = private unnamed_addr constant [45 x i8] c"unable to set di%d parent clock to ldb_di%d\0A\00", align 1
@.str.23 = private unnamed_addr constant [52 x i8] c"unable to set di%d parent clock to original parent\0A\00", align 1
@__func__.imx_ldb_encoder_enable = private unnamed_addr constant [23 x i8] c"imx_ldb_encoder_enable\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_alias268, ptr @__UNIQUE_ID_author266, ptr @__UNIQUE_ID_description265, ptr @__UNIQUE_ID_license267], section "llvm.metadata"
@switch.table.imx_ldb_encoder_atomic_check = private unnamed_addr constant [3 x i32] [i32 4105, i32 4106, i32 4106], align 4

@__mod_of__imx_ldb_dt_ids_device_table = dso_local alias [3 x %struct.of_device_id], ptr @imx_ldb_dt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_ldb_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @imx_ldb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ldb_probe(ptr noundef %0) #2 {
  %2 = alloca ptr, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.of_phandle_args, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 1
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @of_match_device(ptr noundef nonnull @imx_ldb_dt_ids, ptr noundef %8) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  %12 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 368, i32 noundef 3520) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %171, label %14

14:                                               ; preds = %1
  %15 = tail call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %10, ptr noundef nonnull @.str.1) #9
  store ptr %15, ptr %12, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.2) #10
  %18 = load ptr, ptr %12, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %171

20:                                               ; preds = %14
  %21 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 8, i32 noundef 0) #9
  %22 = getelementptr inbounds %struct.imx_ldb, ptr %12, i32 0, i32 1
  store ptr %8, ptr %22, align 4
  %23 = icmp eq ptr %11, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.imx_ldb, ptr %12, i32 0, i32 8
  store ptr %26, ptr %27, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = tail call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.3, ptr noundef null) #9
  %30 = icmp ne ptr %29, null
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.imx_ldb, ptr %12, i32 0, i32 7
  %33 = load i32, ptr %32, align 4
  %34 = or i32 %33, 16
  store i32 %34, ptr %32, align 4
  br label %35

35:                                               ; preds = %31, %28
  store i32 0, ptr %6, align 4
  br label %36

36:                                               ; preds = %44, %35
  %37 = phi i32 [ 0, %35 ], [ %48, %44 ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %7, i8 0, i32 16, i1 false), !annotation !8
  %38 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %7, ptr noundef nonnull @.str.4, i32 noundef %37)
  %39 = load ptr, ptr %22, align 4
  %40 = call ptr @devm_clk_get(ptr noundef %39, ptr noundef nonnull %7) #9
  %41 = load i32, ptr %6, align 4
  %42 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 4, i32 %41
  store ptr %40, ptr %42, align 4
  %43 = icmp ugt ptr %40, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = call ptr @clk_get_parent(ptr noundef %40) #9
  %46 = load i32, ptr %6, align 4
  %47 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 5, i32 %46
  store ptr %45, ptr %47, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  %48 = add i32 %46, 1
  store i32 %48, ptr %6, align 4
  %49 = icmp slt i32 %48, 4
  br i1 %49, label %36, label %53

50:                                               ; preds = %36
  %51 = ptrtoint ptr %40 to i32
  store ptr null, ptr %42, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #9
  %52 = icmp eq i32 %41, 0
  br i1 %52, label %171, label %53

53:                                               ; preds = %50, %44
  %54 = call ptr @of_get_next_child(ptr noundef %10, ptr noundef null) #9
  %55 = icmp eq ptr %54, null
  br i1 %55, label %166, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.imx_ldb, ptr %12, i32 0, i32 8
  br label %58

58:                                               ; preds = %163, %56
  %59 = phi ptr [ %54, %56 ], [ %164, %163 ]
  %60 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %59, ptr noundef nonnull @.str.5, ptr noundef nonnull %6, i32 noundef 1, i32 noundef 0) #9
  %61 = icmp slt i32 %60, 0
  %62 = load i32, ptr %6, align 4
  %63 = icmp slt i32 %62, 0
  %64 = select i1 %61, i1 true, i1 %63
  %65 = icmp sgt i32 %62, 1
  %66 = select i1 %64, i1 true, i1 %65
  br i1 %66, label %169, label %67

67:                                               ; preds = %58
  %68 = call zeroext i1 @of_device_is_available(ptr noundef nonnull %59) #9
  br i1 %68, label %69, label %163

69:                                               ; preds = %67
  %70 = load i32, ptr %6, align 4
  %71 = icmp sgt i32 %70, 0
  %72 = select i1 %30, i1 %71, i1 false
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.6) #10
  br label %163

74:                                               ; preds = %69
  %75 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70
  store ptr %12, ptr %75, align 4
  %76 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 5
  store i32 %70, ptr %76, align 4
  %77 = load ptr, ptr %57, align 4
  %78 = icmp eq ptr %77, null
  %79 = select i1 %78, i32 2, i32 4
  %80 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 1
  %81 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 2
  %82 = call i32 @drm_of_find_panel_or_bridge(ptr noundef nonnull %59, i32 noundef %79, i32 noundef 0, ptr noundef %80, ptr noundef %81) #9
  switch i32 %82, label %169 [
    i32 -19, label %83
    i32 0, label %83
  ]

83:                                               ; preds = %74, %74
  %84 = load ptr, ptr %81, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %120

86:                                               ; preds = %83
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %4, i8 0, i32 72, i1 false) #9, !annotation !8
  %87 = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %59, ptr noundef nonnull @.str.8, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %4) #9
  %88 = icmp ne i32 %87, 0
  %89 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %4) #9
  %90 = icmp eq ptr %89, null
  %91 = select i1 %88, i1 true, i1 %90
  br i1 %91, label %97, label %92

92:                                               ; preds = %86
  %93 = call ptr @of_find_i2c_adapter_by_node(ptr noundef nonnull %89) #9
  %94 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 4
  store ptr %93, ptr %94, align 4
  call void @of_node_put(ptr noundef nonnull %89) #9
  %95 = load ptr, ptr %94, align 4
  %96 = icmp eq ptr %95, null
  br i1 %96, label %119, label %120

97:                                               ; preds = %86
  %98 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 4
  %99 = load ptr, ptr %98, align 4
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %120

101:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #9
  store i32 0, ptr %5, align 4, !annotation !8
  %102 = call ptr @of_get_property(ptr noundef nonnull %59, ptr noundef nonnull @.str.10, ptr noundef nonnull %5) #9
  %103 = icmp eq ptr %102, null
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load i32, ptr %5, align 4
  %106 = call ptr @kmemdup(ptr noundef nonnull %102, i32 noundef %105, i32 noundef 3264) #9
  %107 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 6
  store ptr %106, ptr %107, align 4
  br label %118

108:                                              ; preds = %101
  %109 = load ptr, ptr %80, align 4
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %118

111:                                              ; preds = %108
  %112 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 7
  %113 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 10
  %114 = call i32 @of_get_drm_display_mode(ptr noundef nonnull %59, ptr noundef %112, ptr noundef %113, i32 noundef -1) #9
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %111
  %117 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 8
  store i32 1, ptr %117, align 4
  br label %118

118:                                              ; preds = %116, %111, %108, %104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #9
  br label %120

119:                                              ; preds = %92
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.9) #10
  br label %169

120:                                              ; preds = %118, %97, %92, %83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store ptr null, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4
  %121 = call i32 @of_property_read_string(ptr noundef nonnull %59, ptr noundef nonnull @.str.11, ptr noundef nonnull %2) #9
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %141, label %123

123:                                              ; preds = %120
  %124 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %59, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %125 = load ptr, ptr %2, align 4
  %126 = load i32, ptr %3, align 4
  %127 = call i32 @strcasecmp(ptr noundef %125, ptr noundef nonnull @.str.14) #9
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %123
  switch i32 %126, label %135 [
    i32 18, label %131
    i32 24, label %130
  ]

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %135, %130, %129
  %132 = phi i32 [ 0, %129 ], [ 1, %130 ], [ 2, %135 ]
  %133 = getelementptr [3 x %struct.imx_ldb_bit_mapping], ptr @imx_ldb_bit_mappings, i32 0, i32 %132
  %134 = load i32, ptr %133, align 4
  br label %141

135:                                              ; preds = %129, %123
  %136 = call i32 @strcasecmp(ptr noundef %125, ptr noundef nonnull @.str.15) #9
  %137 = icmp eq i32 %136, 0
  %138 = icmp eq i32 %126, 24
  %139 = select i1 %137, i1 %138, i1 false
  br i1 %139, label %131, label %140

140:                                              ; preds = %135
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.13, i32 noundef %126, ptr noundef %125) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  br label %157

141:                                              ; preds = %131, %120
  %142 = phi i32 [ %134, %131 ], [ %121, %120 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %143 = icmp eq i32 %142, -22
  br i1 %143, label %144, label %155

144:                                              ; preds = %141
  %145 = load ptr, ptr %80, align 4
  %146 = icmp eq ptr %145, null
  br i1 %146, label %157, label %147

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.drm_panel, ptr %145, i32 0, i32 2
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  %152 = getelementptr inbounds %struct.drm_panel_funcs, ptr %149, i32 0, i32 4
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, null
  br i1 %154, label %157, label %159

155:                                              ; preds = %141
  %156 = icmp slt i32 %142, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %155, %151, %147, %144, %140
  %158 = phi i32 [ -2, %140 ], [ -22, %151 ], [ -22, %147 ], [ -22, %144 ], [ %142, %155 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %158) #10
  br label %169

159:                                              ; preds = %155, %151
  %160 = phi i32 [ %142, %155 ], [ 0, %151 ]
  %161 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 9
  store i32 %160, ptr %161, align 4
  %162 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 2, i32 %70, i32 3
  store ptr %59, ptr %162, align 4
  br label %163

163:                                              ; preds = %159, %73, %67
  %164 = call ptr @of_get_next_child(ptr noundef %10, ptr noundef nonnull %59) #9
  %165 = icmp eq ptr %164, null
  br i1 %165, label %166, label %58

166:                                              ; preds = %163, %53
  %167 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %12, ptr %167, align 8
  %168 = call i32 @component_add(ptr noundef %8, ptr noundef nonnull @imx_ldb_ops) #9
  br label %171

169:                                              ; preds = %157, %119, %74, %58
  %170 = phi i32 [ -517, %119 ], [ %158, %157 ], [ %82, %74 ], [ -22, %58 ]
  call void @of_node_put(ptr noundef nonnull %59) #9
  br label %171

171:                                              ; preds = %169, %166, %50, %17, %1
  %172 = phi i32 [ %19, %17 ], [ %170, %169 ], [ %168, %166 ], [ -12, %1 ], [ %51, %50 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  ret i32 %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ldb_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 2, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %5) #9
  %6 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 2, i32 0, i32 4
  %7 = load ptr, ptr %6, align 4
  tail call void @i2c_put_adapter(ptr noundef %7) #9
  %8 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 2, i32 1, i32 6
  %9 = load ptr, ptr %8, align 4
  tail call void @kfree(ptr noundef %9) #9
  %10 = getelementptr %struct.imx_ldb, ptr %3, i32 0, i32 2, i32 1, i32 4
  %11 = load ptr, ptr %10, align 4
  tail call void @i2c_put_adapter(ptr noundef %11) #9
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %12, ptr noundef nonnull @imx_ldb_ops) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_find_panel_or_bridge(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_i2c_adapter_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_drm_display_mode(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ldb_bind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr noundef %2) #2 {
  %4 = alloca [16 x i8], align 1
  %5 = alloca [16 x i8], align 1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %80, %3
  %9 = phi i1 [ true, %3 ], [ false, %80 ]
  %10 = phi i32 [ 0, %3 ], [ 1, %80 ]
  %11 = getelementptr %struct.imx_ldb, ptr %7, i32 0, i32 2, i32 %10
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %79, label %14

14:                                               ; preds = %8
  %15 = call ptr @__drmm_simple_encoder_alloc(ptr noundef %2, i32 noundef 1048, i32 noundef 968, i32 noundef 3) #9
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %81, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.imx_ldb_encoder, ptr %15, i32 0, i32 2
  store ptr %11, ptr %18, align 8
  %19 = getelementptr inbounds %struct.imx_ldb_encoder, ptr %15, i32 0, i32 1
  %20 = getelementptr %struct.imx_ldb, ptr %7, i32 0, i32 2, i32 %10, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @imx_drm_encoder_parse_of(ptr noundef %2, ptr noundef %19, ptr noundef %21) #9
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %84

24:                                               ; preds = %17
  %25 = getelementptr %struct.imx_ldb, ptr %7, i32 0, i32 2, i32 %10, i32 5
  %26 = load i32, ptr %25, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %5, i8 0, i32 16, i1 false) #9, !annotation !8
  %27 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef %26) #9
  %28 = getelementptr inbounds %struct.imx_ldb, ptr %12, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = call ptr @devm_clk_get(ptr noundef %29, ptr noundef nonnull %5) #9
  %31 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 3, i32 %26
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %40, label %33

33:                                               ; preds = %24
  %34 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef %26) #9
  %35 = load ptr, ptr %28, align 4
  %36 = call ptr @devm_clk_get(ptr noundef %35, ptr noundef nonnull %5) #9
  %37 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 6, i32 %26
  store ptr %36, ptr %37, align 4
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  br label %43

40:                                               ; preds = %33, %24
  %41 = phi ptr [ %36, %33 ], [ %30, %24 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %81

43:                                               ; preds = %40, %39
  %44 = getelementptr inbounds %struct.imx_ldb, ptr %12, i32 0, i32 7
  %45 = load i32, ptr %44, align 4
  %46 = and i32 %45, 16
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %64, label %48

48:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(16) %4, i8 0, i32 16, i1 false) #9, !annotation !8
  %49 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.16, i32 noundef 1) #9
  %50 = load ptr, ptr %28, align 4
  %51 = call ptr @devm_clk_get(ptr noundef %50, ptr noundef nonnull %4) #9
  %52 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 3, i32 1
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %61, label %54

54:                                               ; preds = %48
  %55 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %4, i32 noundef 16, ptr noundef nonnull @.str.17, i32 noundef 1) #9
  %56 = load ptr, ptr %28, align 4
  %57 = call ptr @devm_clk_get(ptr noundef %56, ptr noundef nonnull %4) #9
  %58 = getelementptr %struct.imx_ldb, ptr %12, i32 0, i32 6, i32 1
  store ptr %57, ptr %58, align 4
  %59 = icmp ugt ptr %57, inttoptr (i32 -4096 to ptr)
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  br label %64

61:                                               ; preds = %54, %48
  %62 = phi ptr [ %57, %54 ], [ %51, %48 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #9
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %81

64:                                               ; preds = %61, %60, %43
  %65 = getelementptr inbounds %struct.imx_ldb_encoder, ptr %15, i32 0, i32 1, i32 11
  store ptr @imx_ldb_encoder_helper_funcs, ptr %65, align 4
  %66 = getelementptr %struct.imx_ldb, ptr %7, i32 0, i32 2, i32 %10, i32 2
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %73, label %69

69:                                               ; preds = %64
  %70 = call i32 @drm_bridge_attach(ptr noundef %19, ptr noundef nonnull %67, ptr noundef null, i32 noundef 0) #9
  %71 = icmp eq i32 %70, 0
  %72 = and i1 %9, %71
  br i1 %72, label %80, label %84

73:                                               ; preds = %64
  %74 = getelementptr inbounds %struct.drm_connector, ptr %15, i32 0, i32 35
  store ptr @imx_ldb_connector_helper_funcs, ptr %74, align 4
  %75 = getelementptr %struct.imx_ldb, ptr %7, i32 0, i32 2, i32 %10, i32 4
  %76 = load ptr, ptr %75, align 4
  %77 = call i32 @drm_connector_init_with_ddc(ptr noundef %2, ptr noundef %15, ptr noundef nonnull @imx_ldb_connector_funcs, i32 noundef 7, ptr noundef %76) #9
  %78 = call i32 @drm_connector_attach_encoder(ptr noundef %15, ptr noundef %19) #9
  br label %79

79:                                               ; preds = %73, %8
  br i1 %9, label %80, label %84

80:                                               ; preds = %79, %69
  br label %8

81:                                               ; preds = %61, %40, %14
  %82 = phi ptr [ %15, %14 ], [ %41, %40 ], [ %62, %61 ]
  %83 = ptrtoint ptr %82 to i32
  br label %84

84:                                               ; preds = %81, %79, %69, %17
  %85 = phi i32 [ %83, %81 ], [ %70, %69 ], [ %22, %17 ], [ 0, %79 ]
  ret i32 %85
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__drmm_simple_encoder_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @imx_drm_encoder_parse_of(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init_with_ddc(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_ldb_encoder_atomic_mode_set(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) #2 {
  %4 = alloca %struct.of_endpoint, align 4
  %5 = getelementptr i8, ptr %0, i32 72
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr inbounds %struct.imx_ldb, ptr %8, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = and i32 %10, 16
  %12 = load i32, ptr %7, align 4
  %13 = mul i32 %12, 1000
  %14 = getelementptr inbounds %struct.imx_ldb_channel, ptr %6, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %4) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %4, i8 0, i32 12, i1 false) #9, !annotation !8
  %16 = call i32 @drm_of_encoder_active_endpoint(ptr noundef %15, ptr noundef %0, ptr noundef nonnull %4) #9
  %17 = icmp eq i32 %16, 0
  %18 = load i32, ptr %4, align 4
  %19 = select i1 %17, i32 %18, i32 %16
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %4) #9
  %20 = getelementptr inbounds %struct.imx_ldb_channel, ptr %6, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %19, 3
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.imx_ldb, ptr %8, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.imx_ldb_encoder_atomic_mode_set, i32 noundef %19) #10
  br label %189

26:                                               ; preds = %3
  %27 = load i32, ptr %7, align 4
  %28 = icmp sgt i32 %27, 170000
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = getelementptr inbounds %struct.imx_ldb, ptr %8, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %31, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.imx_ldb_encoder_atomic_mode_set) #10
  %32 = load i32, ptr %7, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = phi i32 [ %32, %29 ], [ %27, %26 ]
  %35 = icmp slt i32 %34, 85001
  %36 = icmp ne i32 %11, 0
  %37 = select i1 %35, i1 true, i1 %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.imx_ldb, ptr %8, i32 0, i32 1
  %40 = load ptr, ptr %39, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %40, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.imx_ldb_encoder_atomic_mode_set) #10
  br label %41

41:                                               ; preds = %38, %33
  %42 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 1
  %43 = load i16, ptr %42, align 4
  %44 = and i16 %43, 7
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.imx_ldb, ptr %8, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.imx_ldb_encoder_atomic_mode_set) #10
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, ptr %7, align 4
  br i1 %36, label %51, label %81

51:                                               ; preds = %49
  %52 = mul i32 %50, 3500
  %53 = getelementptr %struct.imx_ldb, ptr %8, i32 0, i32 6, i32 0
  %54 = load ptr, ptr %53, align 4
  %55 = call i32 @clk_set_rate(ptr noundef %54, i32 noundef %52) #9
  %56 = getelementptr %struct.imx_ldb, ptr %8, i32 0, i32 3, i32 0
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @clk_set_rate(ptr noundef %57, i32 noundef %13) #9
  %59 = getelementptr %struct.imx_ldb, ptr %8, i32 0, i32 4, i32 %19
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %56, align 4
  %62 = call i32 @clk_set_parent(ptr noundef %60, ptr noundef %61) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %51
  %65 = getelementptr inbounds %struct.imx_ldb, ptr %8, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.22, i32 noundef %19, i32 noundef 0) #10
  br label %67

67:                                               ; preds = %64, %51
  %68 = getelementptr %struct.imx_ldb, ptr %8, i32 0, i32 6, i32 1
  %69 = load ptr, ptr %68, align 4
  %70 = call i32 @clk_set_rate(ptr noundef %69, i32 noundef %52) #9
  %71 = getelementptr %struct.imx_ldb, ptr %8, i32 0, i32 3, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = call i32 @clk_set_rate(ptr noundef %72, i32 noundef %13) #9
  %74 = load ptr, ptr %59, align 4
  %75 = load ptr, ptr %71, align 4
  %76 = call i32 @clk_set_parent(ptr noundef %74, ptr noundef %75) #9
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %67
  %79 = getelementptr inbounds %struct.imx_ldb, ptr %8, i32 0, i32 1
  %80 = load ptr, ptr %79, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %80, ptr noundef nonnull @.str.22, i32 noundef %19, i32 noundef 1) #10
  br label %102

81:                                               ; preds = %49
  %82 = mul i32 %50, 7000
  %83 = getelementptr inbounds %struct.imx_ldb_channel, ptr %6, i32 0, i32 5
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr %struct.imx_ldb, ptr %8, i32 0, i32 6, i32 %84
  %86 = load ptr, ptr %85, align 4
  %87 = call i32 @clk_set_rate(ptr noundef %86, i32 noundef %82) #9
  %88 = getelementptr %struct.imx_ldb, ptr %8, i32 0, i32 3, i32 %84
  %89 = load ptr, ptr %88, align 4
  %90 = call i32 @clk_set_rate(ptr noundef %89, i32 noundef %13) #9
  %91 = getelementptr %struct.imx_ldb, ptr %8, i32 0, i32 4, i32 %19
  %92 = load ptr, ptr %91, align 4
  %93 = load ptr, ptr %88, align 4
  %94 = call i32 @clk_set_parent(ptr noundef %92, ptr noundef %93) #9
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %81
  %97 = getelementptr inbounds %struct.imx_ldb, ptr %8, i32 0, i32 1
  %98 = load ptr, ptr %97, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.22, i32 noundef %19, i32 noundef %84) #10
  br label %99

99:                                               ; preds = %96, %81
  %100 = getelementptr inbounds %struct.imx_ldb, ptr %8, i32 0, i32 2
  %101 = icmp eq ptr %6, %100
  br i1 %101, label %102, label %118

102:                                              ; preds = %99, %78, %67
  %103 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %104 = load i32, ptr %103, align 4
  %105 = and i32 %104, 8
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %102
  %108 = load i32, ptr %9, align 4
  %109 = or i32 %108, 512
  br label %116

110:                                              ; preds = %102
  %111 = and i32 %104, 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %110
  %114 = load i32, ptr %9, align 4
  %115 = and i32 %114, -513
  br label %116

116:                                              ; preds = %113, %107
  %117 = phi i32 [ %109, %107 ], [ %115, %113 ]
  store i32 %117, ptr %9, align 4
  br label %118

118:                                              ; preds = %116, %110, %99
  %119 = getelementptr %struct.imx_ldb, ptr %8, i32 0, i32 2, i32 1
  %120 = icmp eq ptr %6, %119
  %121 = select i1 %120, i1 true, i1 %36
  br i1 %121, label %122, label %138

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.drm_crtc_state, ptr %1, i32 0, i32 7, i32 11
  %124 = load i32, ptr %123, align 4
  %125 = and i32 %124, 8
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %122
  %128 = load i32, ptr %9, align 4
  %129 = or i32 %128, 1024
  br label %136

130:                                              ; preds = %122
  %131 = and i32 %124, 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %138, label %133

133:                                              ; preds = %130
  %134 = load i32, ptr %9, align 4
  %135 = and i32 %134, -1025
  br label %136

136:                                              ; preds = %133, %127
  %137 = phi i32 [ %129, %127 ], [ %135, %133 ]
  store i32 %137, ptr %9, align 4
  br label %138

138:                                              ; preds = %136, %130, %118
  %139 = icmp eq i32 %21, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %138
  %141 = load ptr, ptr %2, align 4
  %142 = getelementptr inbounds %struct.drm_connector, ptr %141, i32 0, i32 20, i32 7
  %143 = load i32, ptr %142, align 4
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %189, label %145

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.drm_connector, ptr %141, i32 0, i32 20, i32 6
  %147 = load ptr, ptr %146, align 8
  %148 = load i32, ptr %147, align 4
  br label %149

149:                                              ; preds = %145, %138
  %150 = phi i32 [ %21, %138 ], [ %148, %145 ]
  %151 = load ptr, ptr %6, align 4
  %152 = getelementptr inbounds %struct.imx_ldb, ptr %151, i32 0, i32 7
  %153 = load i32, ptr %152, align 4
  %154 = and i32 %153, 16
  switch i32 %150, label %189 [
    i32 4114, label %171
    i32 4113, label %155
  ]

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.imx_ldb_channel, ptr %6, i32 0, i32 5
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  %159 = icmp ne i32 %154, 0
  %160 = select i1 %158, i1 true, i1 %159
  br i1 %160, label %161, label %164

161:                                              ; preds = %155
  %162 = or i32 %153, 32
  store i32 %162, ptr %152, align 4
  %163 = load i32, ptr %156, align 4
  br label %164

164:                                              ; preds = %161, %155
  %165 = phi i32 [ %153, %155 ], [ %162, %161 ]
  %166 = phi i32 [ %157, %155 ], [ %163, %161 ]
  %167 = icmp eq i32 %166, 1
  %168 = select i1 %167, i1 true, i1 %159
  br i1 %168, label %169, label %189

169:                                              ; preds = %164
  %170 = or i32 %165, 128
  br label %187

171:                                              ; preds = %149
  %172 = getelementptr inbounds %struct.imx_ldb_channel, ptr %6, i32 0, i32 5
  %173 = load i32, ptr %172, align 4
  %174 = icmp eq i32 %173, 0
  %175 = icmp ne i32 %154, 0
  %176 = select i1 %174, i1 true, i1 %175
  br i1 %176, label %177, label %180

177:                                              ; preds = %171
  %178 = or i32 %153, 96
  store i32 %178, ptr %152, align 4
  %179 = load i32, ptr %172, align 4
  br label %180

180:                                              ; preds = %177, %171
  %181 = phi i32 [ %153, %171 ], [ %178, %177 ]
  %182 = phi i32 [ %173, %171 ], [ %179, %177 ]
  %183 = icmp eq i32 %182, 1
  %184 = select i1 %183, i1 true, i1 %175
  br i1 %184, label %185, label %189

185:                                              ; preds = %180
  %186 = or i32 %181, 384
  br label %187

187:                                              ; preds = %185, %169
  %188 = phi i32 [ %186, %185 ], [ %170, %169 ]
  store i32 %188, ptr %152, align 4
  br label %189

189:                                              ; preds = %187, %180, %164, %149, %140, %23
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_ldb_encoder_disable(ptr nocapture noundef readonly %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr i8, ptr %0, i32 72
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  %9 = getelementptr inbounds %struct.imx_ldb_channel, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = tail call i32 @drm_panel_disable(ptr noundef %10) #9
  %12 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 2
  %13 = icmp eq ptr %4, %12
  %14 = icmp ne i32 %8, 0
  %15 = select i1 %13, i1 true, i1 %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, ptr %6, align 4
  %18 = and i32 %17, -4
  store i32 %18, ptr %6, align 4
  br label %19

19:                                               ; preds = %16, %1
  %20 = getelementptr %struct.imx_ldb, ptr %5, i32 0, i32 2, i32 1
  %21 = icmp eq ptr %4, %20
  %22 = select i1 %21, i1 true, i1 %14
  %23 = load i32, ptr %6, align 4
  br i1 %22, label %24, label %26

24:                                               ; preds = %19
  %25 = and i32 %23, -13
  store i32 %25, ptr %6, align 4
  br label %26

26:                                               ; preds = %24, %19
  %27 = phi i32 [ %25, %24 ], [ %23, %19 ]
  %28 = load ptr, ptr %5, align 4
  %29 = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 8, i32 noundef %27) #9
  br i1 %14, label %30, label %35

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void @clk_disable(ptr noundef %32) #9
  tail call void @clk_unprepare(ptr noundef %32) #9
  %33 = getelementptr %struct.imx_ldb, ptr %5, i32 0, i32 3, i32 1
  %34 = load ptr, ptr %33, align 4
  tail call void @clk_disable(ptr noundef %34) #9
  tail call void @clk_unprepare(ptr noundef %34) #9
  br label %35

35:                                               ; preds = %30, %26
  %36 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 8
  %37 = load ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, null
  br i1 %38, label %53, label %39

39:                                               ; preds = %35
  %40 = getelementptr %struct.bus_mux, ptr %37, i32 1
  %41 = select i1 %21, ptr %40, ptr null
  %42 = select i1 %13, ptr %37, ptr %41
  %43 = load ptr, ptr %5, align 4
  %44 = load i32, ptr %42, align 4
  %45 = call i32 @regmap_read(ptr noundef %43, i32 noundef %44, ptr noundef nonnull %2) #9
  %46 = getelementptr inbounds %struct.bus_mux, ptr %42, i32 0, i32 2
  %47 = load i32, ptr %46, align 4
  %48 = load i32, ptr %2, align 4
  %49 = and i32 %48, %47
  %50 = getelementptr inbounds %struct.bus_mux, ptr %42, i32 0, i32 1
  %51 = load i32, ptr %50, align 4
  %52 = ashr i32 %49, %51
  br label %56

53:                                               ; preds = %35
  %54 = xor i1 %13, true
  %55 = zext i1 %54 to i32
  br label %56

56:                                               ; preds = %53, %39
  %57 = phi i32 [ %55, %53 ], [ %52, %39 ]
  store i32 %57, ptr %2, align 4
  %58 = getelementptr %struct.imx_ldb, ptr %5, i32 0, i32 4, i32 %57
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr %struct.imx_ldb, ptr %5, i32 0, i32 5, i32 %57
  %61 = load ptr, ptr %60, align 4
  %62 = call i32 @clk_set_parent(ptr noundef %59, ptr noundef %61) #9
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = load i32, ptr %2, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.23, i32 noundef %67) #10
  br label %68

68:                                               ; preds = %64, %56
  %69 = load ptr, ptr %9, align 4
  %70 = call i32 @drm_panel_unprepare(ptr noundef %69) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @imx_ldb_encoder_enable(ptr noundef %0) #2 {
  %2 = alloca %struct.of_endpoint, align 4
  %3 = getelementptr i8, ptr %0, i32 72
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.imx_ldb_channel, ptr %4, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %2) #9
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(12) %2, i8 0, i32 12, i1 false) #9, !annotation !8
  %10 = call i32 @drm_of_encoder_active_endpoint(ptr noundef %9, ptr noundef %0, ptr noundef nonnull %2) #9
  %11 = icmp eq i32 %10, 0
  %12 = load i32, ptr %2, align 4
  %13 = select i1 %11, i32 %12, i32 %10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %2) #9
  %14 = icmp ugt i32 %13, 3
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.imx_ldb_encoder_enable, i32 noundef %13) #10
  br label %120

18:                                               ; preds = %1
  %19 = and i32 %7, 16
  %20 = getelementptr inbounds %struct.imx_ldb_channel, ptr %4, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = call i32 @drm_panel_prepare(ptr noundef %21) #9
  %23 = icmp ne i32 %19, 0
  %24 = getelementptr %struct.imx_ldb, ptr %5, i32 0, i32 4, i32 %13
  %25 = load ptr, ptr %24, align 4
  br i1 %23, label %26, label %52

26:                                               ; preds = %18
  %27 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 3
  %28 = load ptr, ptr %27, align 4
  %29 = call i32 @clk_set_parent(ptr noundef %25, ptr noundef %28) #9
  %30 = load ptr, ptr %24, align 4
  %31 = getelementptr %struct.imx_ldb, ptr %5, i32 0, i32 3, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = call i32 @clk_set_parent(ptr noundef %30, ptr noundef %32) #9
  %34 = load ptr, ptr %27, align 4
  %35 = call i32 @clk_prepare(ptr noundef %34) #9
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %26
  %38 = call i32 @clk_enable(ptr noundef %34) #9
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  call void @clk_unprepare(ptr noundef %34) #9
  br label %41

41:                                               ; preds = %40, %37, %26
  %42 = load ptr, ptr %31, align 4
  %43 = call i32 @clk_prepare(ptr noundef %42) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = call i32 @clk_enable(ptr noundef %42) #9
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  call void @clk_unprepare(ptr noundef %42) #9
  br label %49

49:                                               ; preds = %48, %45, %41
  %50 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 2
  %51 = icmp eq ptr %4, %50
  br label %60

52:                                               ; preds = %18
  %53 = getelementptr inbounds %struct.imx_ldb_channel, ptr %4, i32 0, i32 5
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.imx_ldb, ptr %5, i32 0, i32 3, i32 %54
  %56 = load ptr, ptr %55, align 4
  %57 = call i32 @clk_set_parent(ptr noundef %25, ptr noundef %56) #9
  %58 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 2
  %59 = icmp eq ptr %4, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %52, %49
  %61 = phi i1 [ %51, %49 ], [ true, %52 ]
  %62 = load i32, ptr %6, align 4
  %63 = and i32 %62, -4
  store i32 %63, ptr %6, align 4
  %64 = icmp eq i32 %13, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 8
  %67 = load ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, null
  br i1 %68, label %71, label %69

69:                                               ; preds = %65, %60
  %70 = or i32 %63, 1
  br label %75

71:                                               ; preds = %65
  %72 = icmp eq i32 %13, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = or i32 %62, 3
  br label %75

75:                                               ; preds = %73, %69
  %76 = phi i32 [ %70, %69 ], [ %74, %73 ]
  store i32 %76, ptr %6, align 4
  br label %77

77:                                               ; preds = %75, %71, %52
  %78 = phi i1 [ %61, %71 ], [ false, %52 ], [ %61, %75 ]
  %79 = getelementptr %struct.imx_ldb, ptr %5, i32 0, i32 2, i32 1
  %80 = icmp eq ptr %4, %79
  %81 = select i1 %80, i1 true, i1 %23
  br i1 %81, label %82, label %98

82:                                               ; preds = %77
  %83 = load i32, ptr %6, align 4
  %84 = and i32 %83, -13
  store i32 %84, ptr %6, align 4
  %85 = icmp eq i32 %13, 1
  br i1 %85, label %90, label %86

86:                                               ; preds = %82
  %87 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 8
  %88 = load ptr, ptr %87, align 4
  %89 = icmp eq ptr %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %86, %82
  %91 = or i32 %83, 12
  br label %96

92:                                               ; preds = %86
  %93 = icmp eq i32 %13, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = or i32 %84, 4
  br label %96

96:                                               ; preds = %94, %90
  %97 = phi i32 [ %91, %90 ], [ %95, %94 ]
  store i32 %97, ptr %6, align 4
  br label %98

98:                                               ; preds = %96, %92, %77
  %99 = getelementptr inbounds %struct.imx_ldb, ptr %5, i32 0, i32 8
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %114, label %102

102:                                              ; preds = %98
  %103 = getelementptr %struct.bus_mux, ptr %100, i32 1
  %104 = select i1 %80, ptr %103, ptr null
  %105 = select i1 %78, ptr %100, ptr %104
  %106 = load ptr, ptr %5, align 4
  %107 = load i32, ptr %105, align 4
  %108 = getelementptr inbounds %struct.bus_mux, ptr %105, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = getelementptr inbounds %struct.bus_mux, ptr %105, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = shl i32 %13, %111
  %113 = call i32 @regmap_update_bits_base(ptr noundef %106, i32 noundef %107, i32 noundef %109, i32 noundef %112, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #9
  br label %114

114:                                              ; preds = %102, %98
  %115 = load ptr, ptr %5, align 4
  %116 = load i32, ptr %6, align 4
  %117 = call i32 @regmap_write(ptr noundef %115, i32 noundef 8, i32 noundef %116) #9
  %118 = load ptr, ptr %20, align 4
  %119 = call i32 @drm_panel_enable(ptr noundef %118) #9
  br label %120

120:                                              ; preds = %114, %15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @imx_ldb_encoder_atomic_check(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef readonly %2) #8 {
  %4 = getelementptr i8, ptr %0, i32 72
  %5 = load ptr, ptr %4, align 8
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.imx_ldb_channel, ptr %5, i32 0, i32 9
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 20, i32 7
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 20, i32 6
  %16 = load ptr, ptr %15, align 8
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.drm_connector, ptr %6, i32 0, i32 20, i32 8
  br label %21

19:                                               ; preds = %10, %3
  %20 = getelementptr inbounds %struct.imx_ldb_channel, ptr %5, i32 0, i32 10
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %20, %19 ], [ %18, %14 ]
  %23 = phi i32 [ %8, %19 ], [ %17, %14 ]
  %24 = load i32, ptr %22, align 4
  %25 = getelementptr inbounds %struct.imx_crtc_state, ptr %1, i32 0, i32 2
  store i32 %24, ptr %25, align 4
  %26 = add i32 %23, -4112
  %27 = icmp ult i32 %26, 3
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = getelementptr inbounds [3 x i32], ptr @switch.table.imx_ldb_encoder_atomic_check, i32 0, i32 %26
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr inbounds %struct.imx_crtc_state, ptr %1, i32 0, i32 1
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.imx_crtc_state, ptr %1, i32 0, i32 3
  store i32 2, ptr %32, align 4
  %33 = getelementptr inbounds %struct.imx_crtc_state, ptr %1, i32 0, i32 4
  store i32 3, ptr %33, align 4
  br label %34

34:                                               ; preds = %28, %21
  %35 = phi i32 [ 0, %28 ], [ -22, %21 ]
  ret i32 %35
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_of_encoder_active_endpoint(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @imx_ldb_connector_get_modes(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.imx_ldb_encoder, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.imx_ldb_channel, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @drm_panel_get_modes(ptr noundef %5, ptr noundef %0) #9
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.imx_ldb_channel, ptr %3, i32 0, i32 6
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.imx_ldb_channel, ptr %3, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %12
  %17 = tail call ptr @drm_get_edid(ptr noundef %0, ptr noundef nonnull %14) #9
  store ptr %17, ptr %9, align 4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %8
  %20 = phi ptr [ %17, %16 ], [ %10, %8 ]
  %21 = tail call i32 @drm_connector_update_edid_property(ptr noundef %0, ptr noundef nonnull %20) #9
  %22 = load ptr, ptr %9, align 4
  %23 = tail call i32 @drm_add_edid_modes(ptr noundef %0, ptr noundef %22) #9
  br label %24

24:                                               ; preds = %19, %16, %12
  %25 = phi i32 [ %23, %19 ], [ %6, %16 ], [ %6, %12 ]
  %26 = getelementptr inbounds %struct.imx_ldb_channel, ptr %3, i32 0, i32 8
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %39, label %29

29:                                               ; preds = %24
  %30 = load ptr, ptr %0, align 8
  %31 = tail call ptr @drm_mode_create(ptr noundef %30) #9
  %32 = icmp eq ptr %31, null
  br i1 %32, label %39, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %struct.imx_ldb_channel, ptr %3, i32 0, i32 7
  tail call void @drm_mode_copy(ptr noundef nonnull %31, ptr noundef %34) #9
  %35 = getelementptr inbounds %struct.drm_display_mode, ptr %31, i32 0, i32 28
  %36 = load i8, ptr %35, align 2
  %37 = or i8 %36, 72
  store i8 %37, ptr %35, align 2
  tail call void @drm_mode_probed_add(ptr noundef %0, ptr noundef nonnull %31) #9
  %38 = add i32 %25, 1
  br label %39

39:                                               ; preds = %33, %29, %24, %1
  %40 = phi i32 [ %6, %1 ], [ %38, %33 ], [ %25, %24 ], [ -22, %29 ]
  ret i32 %40
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_get_edid(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_update_edid_property(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_add_edid_modes(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_mode_create(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_copy(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_probed_add(ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_put_adapter(ptr noundef) local_unnamed_addr #1

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
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
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
!8 = !{!"auto-init"}
