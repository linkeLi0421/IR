; ModuleID = '/llk/IR/drivers/gpu/drm/sti/sti_dvo.c_pt.bc'
source_filename = "../drivers/gpu/drm/sti/sti_dvo.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
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
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.component_ops = type { ptr, ptr }
%struct.drm_bridge_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_connector_helper_funcs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvo_config = type { i32, i32, i32, i32, ptr }
%struct.drm_info_list = type { ptr, ptr, i32, ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.sti_dvo = type { %struct.device, ptr, %struct.drm_display_mode, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.74, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.74 = type { i32, ptr }
%struct.sti_dvo_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.drm_bridge = type { %struct.drm_private_obj, ptr, ptr, %struct.list_head, ptr, %struct.list_head, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, ptr, ptr }
%struct.drm_private_obj = type { %struct.list_head, %struct.drm_modeset_lock, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.awg_code_generation_params = type { ptr, i8 }
%struct.awg_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.drm_minor = type { i32, i32, ptr, ptr, ptr, %struct.list_head, %struct.mutex }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.drm_info_node = type { ptr, ptr, %struct.list_head, ptr }

@dvo_of_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-dvo\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@.str = private unnamed_addr constant [8 x i8] c"sti-dvo\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@sti_dvo_driver = dso_local local_unnamed_addr global %struct.platform_driver { ptr @sti_dvo_probe, ptr @sti_dvo_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr @__this_module, ptr null, i8 0, i32 0, ptr @dvo_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__UNIQUE_ID_author265 = internal constant [52 x i8] c"author=Benjamin Gaignard <benjamin.gaignard@st.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [46 x i8] c"description=STMicroelectronics SoC DRM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license267 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"\016[drm] %s\0A\00", align 1
@__func__.sti_dvo_probe = private unnamed_addr constant [14 x i8] c"sti_dvo_probe\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"Failed to allocate memory for DVO\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dvo-reg\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Invalid dvo resource\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"dvo_pix\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Cannot get dvo_pix clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"dvo\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Cannot get dvo clock\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"main_parent\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"Cannot get main_parent clock\0A\00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"aux_parent\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"Cannot get aux_parent clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"sti,panel\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"No panel associated to the dvo output\0A\00", align 1
@sti_dvo_ops = internal constant %struct.component_ops { ptr @sti_dvo_bind, ptr @sti_dvo_unbind }, align 4
@sti_dvo_bridge_funcs = internal constant %struct.drm_bridge_funcs { ptr null, ptr null, ptr null, ptr null, ptr @sti_dvo_disable, ptr @sti_dvo_bridge_nope, ptr @sti_dvo_set_mode, ptr @sti_dvo_pre_enable, ptr @sti_dvo_bridge_nope, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@sti_dvo_connector_funcs = internal constant %struct.drm_connector_funcs { ptr null, ptr @drm_atomic_helper_connector_reset, ptr @sti_dvo_connector_detect, ptr null, ptr @drm_helper_probe_single_connector_modes, ptr null, ptr @sti_dvo_late_register, ptr null, ptr @drm_connector_cleanup, ptr @drm_atomic_helper_connector_duplicate_state, ptr @drm_atomic_helper_connector_destroy_state, ptr null, ptr null, ptr null, ptr null }, align 4
@sti_dvo_connector_helper_funcs = internal constant %struct.drm_connector_helper_funcs { ptr @sti_dvo_connector_get_modes, ptr null, ptr @sti_dvo_connector_mode_valid, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [43 x i8] c"Failed to attach a connector to a encoder\0A\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"Cannot set rate (%dHz) for dvo_pix clk\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"Cannot set rate (%dHz) for dvo clk\0A\00", align 1
@rgb_24bit_de_cfg = internal global %struct.dvo_config { i32 0, i32 5, i32 1, i32 3, ptr @sti_awg_generate_code_data_enable_mode }, align 4
@.str.19 = private unnamed_addr constant [38 x i8] c"Failed to prepare/enable dvo_pix clk\0A\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"Failed to prepare/enable dvo clk\0A\00", align 1
@.str.21 = private unnamed_addr constant [37 x i8] c"AWG firmware not properly generated\0A\00", align 1
@dvo_debugfs_files = internal global [1 x %struct.drm_info_list] [%struct.drm_info_list { ptr @.str.7, ptr @dvo_dbg_show, i32 0, ptr null }], align 4
@.str.22 = private unnamed_addr constant [20 x i8] c"DVO: (vaddr = 0x%p)\00", align 1
@.str.23 = private unnamed_addr constant [16 x i8] c"\0A  %-25s 0x%08X\00", align 1
@.str.24 = private unnamed_addr constant [21 x i8] c"DVO_AWG_DIGSYNC_CTRL\00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"DVO_DOF_CFG\00", align 1
@.str.26 = private unnamed_addr constant [17 x i8] c"DVO_LUT_PROG_LOW\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"DVO_LUT_PROG_MID\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"DVO_LUT_PROG_HIGH\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"  DVO AWG microcode:\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"\0A  %04X:\00", align 1
@.str.32 = private unnamed_addr constant [6 x i8] c" %04X\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"target rate = %d => available rate = %d\0A\00", align 1
@.str.34 = private unnamed_addr constant [29 x i8] c"dvo pixclk=%d not supported\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_license267], section "llvm.metadata"

@__mod_of__dvo_of_match_device_table = dso_local alias [2 x %struct.of_device_id], ptr @dvo_of_match

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dvo_probe(ptr noundef %0) #0 {
  %2 = alloca %struct.of_phandle_args, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.sti_dvo_probe) #7
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 632, i32 noundef 3520) #8
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.2) #8
  br label %56

10:                                               ; preds = %1
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 8 dereferenceable(472) %7, ptr noundef align 8 dereferenceable(472) %3, i32 472, i1 false)
  %11 = tail call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.3) #8
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.4) #8
  br label %56

14:                                               ; preds = %10
  %15 = load i32, ptr %11, align 4
  %16 = getelementptr inbounds %struct.resource, ptr %11, i32 0, i32 1
  %17 = load i32, ptr %16, align 4
  %18 = sub i32 1, %15
  %19 = add i32 %18, %17
  %20 = tail call ptr @devm_ioremap(ptr noundef %3, i32 noundef %15, i32 noundef %19) #8
  %21 = getelementptr inbounds %struct.sti_dvo, ptr %7, i32 0, i32 3
  store ptr %20, ptr %21, align 4
  %22 = icmp eq ptr %20, null
  br i1 %22, label %56, label %23

23:                                               ; preds = %14
  %24 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  %25 = getelementptr inbounds %struct.sti_dvo, ptr %7, i32 0, i32 4
  store ptr %24, ptr %25, align 8
  %26 = icmp ugt ptr %24, inttoptr (i32 -4096 to ptr)
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.6) #8
  %28 = ptrtoint ptr %24 to i32
  br label %56

29:                                               ; preds = %23
  %30 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.7) #8
  %31 = getelementptr inbounds %struct.sti_dvo, ptr %7, i32 0, i32 5
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.8) #8
  %34 = ptrtoint ptr %30 to i32
  br label %56

35:                                               ; preds = %29
  %36 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.9) #8
  %37 = getelementptr inbounds %struct.sti_dvo, ptr %7, i32 0, i32 6
  store ptr %36, ptr %37, align 8
  %38 = icmp ugt ptr %36, inttoptr (i32 -4096 to ptr)
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10) #8
  store ptr null, ptr %37, align 8
  br label %40

40:                                               ; preds = %39, %35
  %41 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.11) #8
  %42 = getelementptr inbounds %struct.sti_dvo, ptr %7, i32 0, i32 7
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #8
  store ptr null, ptr %42, align 4
  br label %45

45:                                               ; preds = %44, %40
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %2, i8 0, i32 72, i1 false) #8, !annotation !8
  %46 = call i32 @__of_parse_phandle_with_args(ptr noundef %5, ptr noundef nonnull @.str.13, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %2) #8
  %47 = icmp eq i32 %46, 0
  %48 = load ptr, ptr %2, align 4
  %49 = select i1 %47, ptr %48, ptr null
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %2) #8
  %50 = getelementptr inbounds %struct.sti_dvo, ptr %7, i32 0, i32 8
  store ptr %49, ptr %50, align 8
  %51 = icmp eq ptr %49, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #8
  br label %53

53:                                               ; preds = %52, %45
  call void @of_node_put(ptr noundef %49) #8
  %54 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %54, align 8
  %55 = call i32 @component_add(ptr noundef %3, ptr noundef nonnull @sti_dvo_ops) #8
  br label %56

56:                                               ; preds = %53, %33, %27, %14, %13, %9
  %57 = phi i32 [ %28, %27 ], [ %34, %33 ], [ %55, %53 ], [ -12, %13 ], [ -12, %9 ], [ -12, %14 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dvo_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @component_del(ptr noundef %2, ptr noundef nonnull @sti_dvo_ops) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @component_add(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dvo_bind(ptr noundef %0, ptr nocapture noundef readnone %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 1
  store ptr %2, ptr %6, align 8
  %7 = getelementptr inbounds %struct.drm_device, ptr %2, i32 0, i32 30, i32 16
  br label %8

8:                                                ; preds = %12, %3
  %9 = phi ptr [ %7, %3 ], [ %10, %12 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %44, label %12

12:                                               ; preds = %8
  %13 = getelementptr i8, ptr %10, i32 32
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %16, label %8

16:                                               ; preds = %12
  %17 = getelementptr i8, ptr %10, i32 -4
  %18 = icmp eq ptr %17, null
  br i1 %18, label %44, label %19

19:                                               ; preds = %16
  %20 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 976, i32 noundef 3520) #8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %44, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.sti_dvo_connector, ptr %20, i32 0, i32 2
  store ptr %5, ptr %23, align 4
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 132, i32 noundef 3520) #8
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.drm_bridge, ptr %24, i32 0, i32 8
  store ptr %5, ptr %27, align 4
  %28 = getelementptr inbounds %struct.drm_bridge, ptr %24, i32 0, i32 7
  store ptr @sti_dvo_bridge_funcs, ptr %28, align 4
  %29 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 25
  %30 = load ptr, ptr %29, align 8
  %31 = getelementptr inbounds %struct.drm_bridge, ptr %24, i32 0, i32 4
  store ptr %30, ptr %31, align 4
  tail call void @drm_bridge_add(ptr noundef nonnull %24) #8
  %32 = tail call i32 @drm_bridge_attach(ptr noundef nonnull %17, ptr noundef nonnull %24, ptr noundef null, i32 noundef 0) #8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 13
  store ptr %24, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sti_dvo_connector, ptr %20, i32 0, i32 1
  store ptr %17, ptr %36, align 8
  %37 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 12
  store ptr %17, ptr %37, align 8
  %38 = getelementptr inbounds %struct.drm_connector, ptr %20, i32 0, i32 33
  store i8 1, ptr %38, align 4
  %39 = tail call i32 @drm_connector_init(ptr noundef %2, ptr noundef nonnull %20, ptr noundef nonnull @sti_dvo_connector_funcs, i32 noundef 7) #8
  %40 = getelementptr inbounds %struct.drm_connector, ptr %20, i32 0, i32 35
  store ptr @sti_dvo_connector_helper_funcs, ptr %40, align 4
  %41 = tail call i32 @drm_connector_attach_encoder(ptr noundef nonnull %20, ptr noundef nonnull %17) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %34
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.15) #8
  tail call void @drm_bridge_remove(ptr noundef nonnull %24) #8
  br label %44

44:                                               ; preds = %43, %34, %26, %22, %19, %16, %8
  %45 = phi i32 [ -22, %43 ], [ -12, %16 ], [ -12, %19 ], [ -12, %22 ], [ %32, %26 ], [ 0, %34 ], [ -12, %8 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_dvo_unbind(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 13
  %7 = load ptr, ptr %6, align 4
  tail call void @drm_bridge_remove(ptr noundef %7) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_add(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_bridge_attach(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_connector_attach_encoder(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_bridge_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_dvo_disable(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sti_dvo, ptr %3, i32 0, i32 11
  %5 = load i8, ptr %4, align 4, !range !9
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %27, label %7

7:                                                ; preds = %1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #8
  %8 = getelementptr inbounds %struct.sti_dvo, ptr %3, i32 0, i32 10
  %9 = load ptr, ptr %8, align 8
  %10 = getelementptr inbounds %struct.dvo_config, ptr %9, i32 0, i32 4
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !10
  tail call void @arm_heavy_mb() #8
  %14 = getelementptr inbounds %struct.sti_dvo, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #8, !srcloc !11
  br label %16

16:                                               ; preds = %13, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !12
  tail call void @arm_heavy_mb() #8
  %17 = getelementptr inbounds %struct.sti_dvo, ptr %3, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 0) #8, !srcloc !11
  %20 = getelementptr inbounds %struct.sti_dvo, ptr %3, i32 0, i32 9
  %21 = load ptr, ptr %20, align 4
  %22 = tail call i32 @drm_panel_disable(ptr noundef %21) #8
  %23 = getelementptr inbounds %struct.sti_dvo, ptr %3, i32 0, i32 4
  %24 = load ptr, ptr %23, align 8
  tail call void @clk_disable(ptr noundef %24) #8
  tail call void @clk_unprepare(ptr noundef %24) #8
  %25 = getelementptr inbounds %struct.sti_dvo, ptr %3, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #8
  tail call void @clk_unprepare(ptr noundef %26) #8
  store i8 0, ptr %4, align 4
  br label %27

27:                                               ; preds = %16, %1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal void @sti_dvo_bridge_nope(ptr nocapture noundef %0) #6 {
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_dvo_set_mode(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readnone %2) #0 {
  %4 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 12
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.drm_encoder, ptr %7, i32 0, i32 8
  %9 = load ptr, ptr %8, align 4
  %10 = load i32, ptr %1, align 4
  %11 = mul i32 %10, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #8
  %12 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(112) %12, ptr noundef align 4 dereferenceable(112) %1, i32 112, i1 false)
  %13 = getelementptr i8, ptr %9, i32 -8
  %14 = load i32, ptr %13, align 8
  %15 = icmp eq i32 %14, 0
  %16 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 6
  %17 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 7
  %18 = select i1 %15, ptr %16, ptr %17
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 4
  %23 = load ptr, ptr %22, align 8
  %24 = tail call i32 @clk_set_parent(ptr noundef %23, ptr noundef nonnull %19) #8
  %25 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = tail call i32 @clk_set_parent(ptr noundef %26, ptr noundef nonnull %19) #8
  br label %28

28:                                               ; preds = %21, %3
  %29 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call i32 @clk_set_rate(ptr noundef %30, i32 noundef %11) #8
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.17, i32 noundef %11) #8
  br label %42

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @clk_set_rate(ptr noundef %36, i32 noundef %11) #8
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.18, i32 noundef %11) #8
  br label %42

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.sti_dvo, ptr %5, i32 0, i32 10
  store ptr @rgb_24bit_de_cfg, ptr %41, align 8
  br label %42

42:                                               ; preds = %40, %39, %33
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sti_dvo_pre_enable(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca %struct.awg_code_generation_params, align 8
  %3 = alloca %struct.awg_timing, align 4
  %4 = alloca [64 x i32], align 4
  %5 = getelementptr inbounds %struct.drm_bridge, ptr %0, i32 0, i32 8
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 10
  %8 = load ptr, ptr %7, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #8
  %9 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 11
  %10 = load i8, ptr %9, align 4, !range !9
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %125

12:                                               ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %13 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %16 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #8, !srcloc !11
  %17 = getelementptr inbounds %struct.dvo_config, ptr %8, i32 0, i32 4
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %84, label %20

20:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(256) %4, i8 0, i32 256, i1 false), !annotation !8
  %21 = load ptr, ptr %7, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store i64 0, ptr %2, align 8, !annotation !8
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %3) #8
  store ptr %4, ptr %2, align 8
  %22 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 2, i32 9
  %23 = load i16, ptr %22, align 4
  %24 = zext i16 %23 to i32
  store i32 %24, ptr %3, align 4
  %25 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 2, i32 6
  %26 = load i16, ptr %25, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr inbounds %struct.awg_timing, ptr %3, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 2, i32 7
  %30 = load i16, ptr %29, align 4
  %31 = zext i16 %30 to i32
  %32 = sub nsw i32 %31, %27
  %33 = getelementptr inbounds %struct.awg_timing, ptr %3, i32 0, i32 2
  store i32 %32, ptr %33, align 4
  %34 = sub nsw i32 %24, %31
  %35 = getelementptr inbounds %struct.awg_timing, ptr %3, i32 0, i32 3
  store i32 %34, ptr %35, align 4
  %36 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 2, i32 4
  %37 = load i16, ptr %36, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr inbounds %struct.awg_timing, ptr %3, i32 0, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 2, i32 1
  %41 = load i16, ptr %40, align 4
  %42 = zext i16 %41 to i32
  %43 = getelementptr inbounds %struct.awg_timing, ptr %3, i32 0, i32 5
  store i32 %42, ptr %43, align 4
  %44 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 2, i32 2
  %45 = load i16, ptr %44, align 2
  %46 = zext i16 %45 to i32
  %47 = sub nsw i32 %46, %42
  %48 = getelementptr inbounds %struct.awg_timing, ptr %3, i32 0, i32 6
  store i32 %47, ptr %48, align 4
  %49 = sub nsw i32 %38, %46
  %50 = getelementptr inbounds %struct.awg_timing, ptr %3, i32 0, i32 7
  store i32 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.awg_timing, ptr %3, i32 0, i32 8
  store i32 16, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dvo_config, ptr %21, i32 0, i32 4
  %53 = load ptr, ptr %52, align 4
  %54 = call i32 %53(ptr noundef nonnull %2, ptr noundef nonnull %3) #8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %124

56:                                               ; preds = %20
  %57 = getelementptr inbounds %struct.awg_code_generation_params, ptr %2, i32 0, i32 1
  %58 = load i8, ptr %57, align 4
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  %59 = zext i8 %58 to i32
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #8
  %60 = icmp eq i8 %58, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %62, %56
  br label %74

62:                                               ; preds = %64
  %63 = icmp ult i8 %58, 64
  br i1 %63, label %61, label %82

64:                                               ; preds = %64, %56
  %65 = phi i32 [ %72, %64 ], [ 0, %56 ]
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !15
  call void @arm_heavy_mb() #8
  %66 = getelementptr i32, ptr %4, i32 %65
  %67 = load i32, ptr %66, align 4
  %68 = load ptr, ptr %13, align 4
  %69 = getelementptr i8, ptr %68, i32 256
  %70 = shl i32 %65, 2
  %71 = getelementptr i8, ptr %69, i32 %70
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %71, i32 %67) #8, !srcloc !11
  %72 = add nuw nsw i32 %65, 1
  %73 = icmp eq i32 %72, %59
  br i1 %73, label %62, label %64

74:                                               ; preds = %74, %61
  %75 = phi i32 [ %80, %74 ], [ %59, %61 ]
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  call void @arm_heavy_mb() #8
  %76 = load ptr, ptr %13, align 4
  %77 = getelementptr i8, ptr %76, i32 256
  %78 = shl i32 %75, 2
  %79 = getelementptr i8, ptr %77, i32 %78
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 0) #8, !srcloc !11
  %80 = add i32 %75, 1
  %81 = icmp eq i32 %80, 64
  br i1 %81, label %82, label %74

82:                                               ; preds = %74, %62
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  call void @arm_heavy_mb() #8
  %83 = load ptr, ptr %13, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 1) #8, !srcloc !11
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  br label %84

84:                                               ; preds = %82, %12
  %85 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 4
  %86 = load ptr, ptr %85, align 8
  %87 = call i32 @clk_prepare(ptr noundef %86) #8
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %84
  %90 = call i32 @clk_enable(ptr noundef %86) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  call void @clk_unprepare(ptr noundef %86) #8
  br label %93

93:                                               ; preds = %92, %84
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.19) #8
  br label %94

94:                                               ; preds = %93, %89
  %95 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 5
  %96 = load ptr, ptr %95, align 4
  %97 = call i32 @clk_prepare(ptr noundef %96) #8
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %94
  %100 = call i32 @clk_enable(ptr noundef %96) #8
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %99
  call void @clk_unprepare(ptr noundef %96) #8
  br label %103

103:                                              ; preds = %102, %94
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.20) #8
  br label %104

104:                                              ; preds = %103, %99
  %105 = getelementptr inbounds %struct.sti_dvo, ptr %6, i32 0, i32 9
  %106 = load ptr, ptr %105, align 4
  %107 = call i32 @drm_panel_enable(ptr noundef %106) #8
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  call void @arm_heavy_mb() #8
  %108 = getelementptr inbounds %struct.dvo_config, ptr %8, i32 0, i32 1
  %109 = load i32, ptr %108, align 4
  %110 = load ptr, ptr %13, align 4
  %111 = getelementptr i8, ptr %110, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #8, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !19
  call void @arm_heavy_mb() #8
  %112 = getelementptr inbounds %struct.dvo_config, ptr %8, i32 0, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = load ptr, ptr %13, align 4
  %115 = getelementptr i8, ptr %114, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 %113) #8, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !20
  call void @arm_heavy_mb() #8
  %116 = getelementptr inbounds %struct.dvo_config, ptr %8, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = load ptr, ptr %13, align 4
  %119 = getelementptr i8, ptr %118, i32 16
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %119, i32 %117) #8, !srcloc !11
  %120 = load i32, ptr %8, align 4
  %121 = or i32 %120, 64
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !21
  call void @arm_heavy_mb() #8
  %122 = load ptr, ptr %13, align 4
  %123 = getelementptr i8, ptr %122, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 %121) #8, !srcloc !11
  store i8 1, ptr %9, align 4
  br label %125

124:                                              ; preds = %20
  call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.21) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #8
  br label %125

125:                                              ; preds = %124, %104, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sti_awg_generate_code_data_enable_mode(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_reset(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dvo_connector_detect(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #0 {
  %3 = getelementptr inbounds %struct.sti_dvo_connector, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16) #8
  %5 = getelementptr inbounds %struct.sti_dvo, ptr %4, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.sti_dvo, ptr %4, i32 0, i32 8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @of_drm_find_panel(ptr noundef %10) #8
  %12 = icmp ugt ptr %11, inttoptr (i32 -4096 to ptr)
  %13 = select i1 %12, ptr null, ptr %11
  store ptr %13, ptr %5, align 4
  br label %14

14:                                               ; preds = %8, %2
  %15 = phi ptr [ %13, %8 ], [ %6, %2 ]
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, i32 2, i32 1
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_helper_probe_single_connector_modes(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dvo_late_register(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.sti_dvo_connector, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sti_dvo, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.drm_device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 4
  store ptr %3, ptr getelementptr inbounds ([1 x %struct.drm_info_list], ptr @dvo_debugfs_files, i32 0, i32 0, i32 3), align 4
  %8 = getelementptr inbounds %struct.drm_minor, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  tail call void @drm_debugfs_create_files(ptr noundef nonnull @dvo_debugfs_files, i32 noundef 1, ptr noundef %9, ptr noundef %7) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_connector_cleanup(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_atomic_helper_connector_duplicate_state(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_connector_destroy_state(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_drm_find_panel(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_debugfs_create_files(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dvo_dbg_show(ptr noundef %0, ptr nocapture noundef readnone %1) #0 {
  %3 = getelementptr inbounds %struct.seq_file, ptr %0, i32 0, i32 11
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.drm_info_node, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.drm_info_list, ptr %6, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.sti_dvo, ptr %8, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.22, ptr noundef %10) #8
  %11 = load ptr, ptr %9, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !23
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %12) #8
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr i8, ptr %13, i32 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !24
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, i32 noundef %15) #8
  %16 = load ptr, ptr %9, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !25
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.26, i32 noundef %18) #8
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !26
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.27, i32 noundef %21) #8
  %22 = load ptr, ptr %9, align 4
  %23 = getelementptr i8, ptr %22, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.28, i32 noundef %24) #8
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 256
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.29) #8
  tail call void @seq_puts(ptr noundef %0, ptr noundef nonnull @.str.30) #8
  br label %27

27:                                               ; preds = %32, %2
  %28 = phi i32 [ 0, %2 ], [ %36, %32 ]
  %29 = and i32 %28, 7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %28) #8
  br label %32

32:                                               ; preds = %31, %27
  %33 = shl nuw nsw i32 %28, 2
  %34 = getelementptr i8, ptr %26, i32 %33
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #8, !srcloc !22
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !28
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %35) #8
  %36 = add nuw nsw i32 %28, 1
  %37 = icmp eq i32 %36, 64
  br i1 %37, label %38, label %27

38:                                               ; preds = %32
  tail call void @seq_putc(ptr noundef %0, i8 noundef zeroext 10) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_putc(ptr noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_puts(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dvo_connector_get_modes(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.sti_dvo_connector, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.sti_dvo, ptr %3, i32 0, i32 9
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @drm_panel_get_modes(ptr noundef nonnull %5, ptr noundef %0) #8
  br label %9

9:                                                ; preds = %7, %1
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sti_dvo_connector_mode_valid(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = load i32, ptr %1, align 4
  %4 = mul i32 %3, 1000
  %5 = add i32 %4, -50
  %6 = getelementptr inbounds %struct.sti_dvo_connector, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.sti_dvo, ptr %7, i32 0, i32 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @clk_round_rate(ptr noundef %9, i32 noundef %4) #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %4, i32 noundef %10) #8
  %11 = icmp slt i32 %10, %5
  %12 = add i32 %4, 50
  %13 = icmp sgt i32 %10, %12
  %14 = or i1 %11, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %4) #8
  br label %16

16:                                               ; preds = %15, %2
  %17 = phi i32 [ -2, %15 ], [ 0, %2 ]
  ret i32 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_panel_get_modes(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @component_del(ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind }

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
!9 = !{i8 0, i8 2}
!10 = !{i64 2155267843}
!11 = !{i64 4462707}
!12 = !{i64 2155268187}
!13 = !{i64 2155268581}
!14 = !{i64 2155268925}
!15 = !{i64 2155259142}
!16 = !{i64 2155259506}
!17 = !{i64 2155259939}
!18 = !{i64 2155269415}
!19 = !{i64 2155269774}
!20 = !{i64 2155270134}
!21 = !{i64 2155270565}
!22 = !{i64 4463125}
!23 = !{i64 2155260883}
!24 = !{i64 2155261321}
!25 = !{i64 2155261764}
!26 = !{i64 2155262207}
!27 = !{i64 2155266712}
!28 = !{i64 2155260436}
