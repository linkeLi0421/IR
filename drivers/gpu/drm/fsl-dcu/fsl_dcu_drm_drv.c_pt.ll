; ModuleID = '/llk/IR/drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c_pt.bc'
source_filename = "../drivers/gpu/drm/fsl-dcu/fsl_dcu_drm_drv.c"
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.fsl_dcu_soc_data = type { ptr, i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.drm_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.fsl_dcu_drm_device = type { ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock, ptr, %struct.drm_crtc, %struct.drm_encoder, %struct.fsl_dcu_drm_connector, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.fsl_dcu_drm_connector = type { %struct.drm_connector, ptr, ptr }
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
%struct.hdr_sink_metadata = type { i32, %union.anon.76 }
%union.anon.76 = type { %struct.hdr_static_metadata }
%struct.hdr_static_metadata = type { i8, i8, i16, i16, i16 }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.71, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.78, ptr, i32, ptr, i8, i32 }
%struct.anon.71 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.anon.78 = type { i32, ptr }

@__param_str_legacyfb_depth = internal constant [15 x i8] c"legacyfb_depth\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@legacyfb_depth = internal global i32 24, align 4
@__param_legacyfb_depth = internal constant %struct.kernel_param { ptr @__param_str_legacyfb_depth, ptr @__this_module, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.64 { ptr @legacyfb_depth } }, section "__param", align 4
@__UNIQUE_ID_legacyfb_depthtype275 = internal constant [28 x i8] c"parmtype=legacyfb_depth:int\00", section ".modinfo", align 1
@fsl_dcu_of_match = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-dcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_dcu_ls1021a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-dcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fsl_dcu_vf610_data }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_description276 = internal constant [37 x i8] c"description=Freescale DCU DRM Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license277 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@fsl_dcu_ls1021a_data = internal constant %struct.fsl_dcu_soc_data { ptr @.str, i32 16, i32 4, i32 10 }, align 4
@fsl_dcu_vf610_data = internal constant %struct.fsl_dcu_soc_data { ptr @.str.1, i32 64, i32 6, i32 9 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"ls1021a\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"vf610\00", align 1
@fsl_dcu_drm_platform_driver = internal global %struct.platform_driver { ptr @fsl_dcu_drm_probe, ptr @fsl_dcu_drm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_dcu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_dcu_drm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"fsl-dcu\00", align 1
@fsl_dcu_drm_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @fsl_dcu_drm_pm_suspend, ptr @fsl_dcu_drm_pm_resume, ptr @fsl_dcu_drm_pm_suspend, ptr @fsl_dcu_drm_pm_resume, ptr @fsl_dcu_drm_pm_suspend, ptr @fsl_dcu_drm_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"failed to get irq\0A\00", align 1
@fsl_dcu_regmap_config = internal constant %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr @fsl_dcu_drm_is_volatile_reg, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"regmap init failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dcu\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"failed to get dcu clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"failed to enable dcu clk\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"pix\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"%s_pix\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"failed to register pix clk\0A\00", align 1
@fsl_dcu_drm_driver = internal constant %struct.drm_driver { ptr @fsl_dcu_load, ptr null, ptr null, ptr null, ptr @fsl_dcu_unload, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_gem_prime_handle_to_fd, ptr @drm_gem_prime_fd_to_handle, ptr null, ptr @drm_gem_cma_prime_import_sg_table, ptr @drm_gem_prime_mmap, ptr @drm_gem_cma_dumb_create, ptr null, ptr null, i32 1, i32 1, i32 0, ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 19, ptr null, i32 0, ptr @fsl_dcu_drm_fops, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, align 4
@.str.12 = private unnamed_addr constant [12 x i8] c"fsl-dcu-drm\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Freescale DCU DRM\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"20160425\00", align 1
@fsl_dcu_drm_fops = internal constant %struct.file_operations { ptr @__this_module, ptr @noop_llseek, ptr @drm_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @drm_poll, ptr @drm_ioctl, ptr null, ptr @drm_gem_mmap, i32 0, ptr @drm_open, ptr null, ptr @drm_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.15 = private unnamed_addr constant [35 x i8] c"failed to initialize mode setting\0A\00", align 1
@.str.16 = private unnamed_addr constant [29 x i8] c"failed to initialize vblank\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"failed to install IRQ handler\0A\00", align 1
@.str.18 = private unnamed_addr constant [46 x i8] c"Invalid legacyfb_depth.  Defaulting to 24bpp\0A\00", align 1
@.str.19 = private unnamed_addr constant [28 x i8] c"read DCU_INT_STATUS failed\0A\00", align 1
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_legacyfb_depthtype275, ptr @__UNIQUE_ID_license277, ptr @__param_legacyfb_depth], section "llvm.metadata"

@__mod_of__fsl_dcu_of_match_device_table = dso_local alias [3 x %struct.of_device_id], ptr @fsl_dcu_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_dcu_drm_platform_driver, ptr noundef nonnull @__this_module) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_dcu_drm_platform_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_dcu_drm_probe(ptr noundef %0) #2 {
  %2 = alloca [32 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %2, i8 0, i32 32, i1 false), !annotation !8
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 1848, i32 noundef 3520) #8
  %5 = icmp eq ptr %4, null
  br i1 %5, label %90, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_match_node(ptr noundef nonnull @fsl_dcu_of_match, ptr noundef %8) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %90, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %4, i32 0, i32 12
  store ptr %13, ptr %14, align 8
  %15 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %16 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %15) #8
  %17 = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = ptrtoint ptr %16 to i32
  br label %90

20:                                               ; preds = %11
  %21 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %22 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %4, i32 0, i32 3
  store i32 %21, ptr %22, align 4
  %23 = icmp slt i32 %21, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3) #9
  br label %90

25:                                               ; preds = %20
  %26 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %3, ptr noundef null, ptr noundef %16, ptr noundef nonnull @fsl_dcu_regmap_config, ptr noundef null, ptr noundef null) #8
  %27 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %4, i32 0, i32 2
  store ptr %26, ptr %27, align 8
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #9
  %30 = ptrtoint ptr %26 to i32
  br label %90

31:                                               ; preds = %25
  %32 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.5) #8
  %33 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %4, i32 0, i32 4
  store ptr %32, ptr %33, align 8
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #9
  %36 = ptrtoint ptr %32 to i32
  br label %90

37:                                               ; preds = %31
  %38 = tail call i32 @clk_prepare(ptr noundef %32) #8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = tail call i32 @clk_enable(ptr noundef %32) #8
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  tail call void @clk_unprepare(ptr noundef %32) #8
  br label %44

44:                                               ; preds = %43, %37
  %45 = phi i32 [ %38, %37 ], [ %41, %43 ]
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.7) #9
  br label %90

48:                                               ; preds = %44, %40
  %49 = tail call ptr @devm_clk_get(ptr noundef %3, ptr noundef nonnull @.str.8) #8
  %50 = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  %51 = select i1 %50, ptr %32, ptr %49
  %52 = load ptr, ptr %7, align 8
  %53 = tail call ptr @of_find_property(ptr noundef %52, ptr noundef nonnull @.str.9, ptr noundef null) #8
  %54 = icmp eq ptr %53, null
  %55 = select i1 %54, i8 0, i8 24
  %56 = tail call ptr @__clk_get_name(ptr noundef %51) #8
  %57 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %2, i32 noundef 32, ptr noundef nonnull @.str.10, ptr noundef %56)
  %58 = getelementptr i8, ptr %16, i32 84
  %59 = call ptr @clk_register_divider_table(ptr noundef %3, ptr noundef nonnull %2, ptr noundef %56, i32 noundef 0, ptr noundef %58, i8 noundef zeroext %55, i8 noundef zeroext 8, i8 noundef zeroext 16, ptr noundef null, ptr noundef null) #8
  %60 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %4, i32 0, i32 5
  store ptr %59, ptr %60, align 4
  %61 = icmp ugt ptr %59, inttoptr (i32 -4096 to ptr)
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11) #9
  %63 = ptrtoint ptr %59 to i32
  br label %87

64:                                               ; preds = %48
  %65 = call ptr @fsl_tcon_init(ptr noundef %3) #8
  %66 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %4, i32 0, i32 6
  store ptr %65, ptr %66, align 8
  %67 = call ptr @drm_dev_alloc(ptr noundef nonnull @fsl_dcu_drm_driver, ptr noundef %3) #8
  %68 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = ptrtoint ptr %67 to i32
  br label %83

71:                                               ; preds = %64
  store ptr %3, ptr %4, align 8
  %72 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %4, i32 0, i32 8
  store ptr %67, ptr %72, align 8
  %73 = load ptr, ptr %7, align 8
  %74 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %4, i32 0, i32 1
  store ptr %73, ptr %74, align 4
  %75 = getelementptr inbounds %struct.drm_device, ptr %67, i32 0, i32 5
  store ptr %4, ptr %75, align 4
  %76 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %76, align 8
  %77 = call i32 @drm_dev_register(ptr noundef %67, i32 noundef 0) #8
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %71
  %80 = load i32, ptr @legacyfb_depth, align 4
  call void @drm_fbdev_generic_setup(ptr noundef %67, i32 noundef %80) #8
  br label %90

81:                                               ; preds = %71
  call void @drm_dev_put(ptr noundef %67) #8
  %82 = load ptr, ptr %60, align 4
  br label %83

83:                                               ; preds = %81, %69
  %84 = phi ptr [ %59, %69 ], [ %82, %81 ]
  %85 = phi i32 [ %70, %69 ], [ %77, %81 ]
  call void @clk_unregister(ptr noundef %84) #8
  %86 = load ptr, ptr %33, align 8
  br label %87

87:                                               ; preds = %83, %62
  %88 = phi ptr [ %32, %62 ], [ %86, %83 ]
  %89 = phi i32 [ %63, %62 ], [ %85, %83 ]
  call void @clk_disable(ptr noundef %88) #8
  call void @clk_unprepare(ptr noundef %88) #8
  br label %90

90:                                               ; preds = %87, %79, %47, %35, %29, %24, %18, %6, %1
  %91 = phi i32 [ %19, %18 ], [ %21, %24 ], [ %30, %29 ], [ %36, %35 ], [ %45, %47 ], [ %89, %87 ], [ 0, %79 ], [ -12, %1 ], [ -19, %6 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #8
  ret i32 %91
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_dcu_drm_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  tail call void @drm_dev_unregister(ptr noundef %5) #8
  %6 = load ptr, ptr %4, align 8
  tail call void @drm_dev_put(ptr noundef %6) #8
  %7 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 4
  %8 = load ptr, ptr %7, align 8
  tail call void @clk_disable(ptr noundef %8) #8
  tail call void @clk_unprepare(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 5
  %10 = load ptr, ptr %9, align 4
  tail call void @clk_unregister(ptr noundef %10) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_tcon_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_dev_alloc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_dev_register(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_fbdev_generic_setup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal zeroext i1 @fsl_dcu_drm_is_volatile_reg(ptr nocapture noundef readnone %0, i32 noundef %1) #7 {
  %3 = icmp eq i32 %1, 44
  %4 = icmp eq i32 %1, 204
  %5 = or i1 %3, %4
  ret i1 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_dcu_load(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 @fsl_dcu_drm_modeset_init(ptr noundef %4) #8
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15) #9
  br label %46

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 30, i32 19
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @drm_vblank_init(ptr noundef %0, i32 noundef %12) #8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.16) #9
  br label %44

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %4, i32 0, i32 3
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, -2147483648
  br i1 %21, label %35, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %23, i32 0, i32 2
  %25 = load ptr, ptr %24, align 8
  %26 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 44, i32 noundef -1) #8
  %27 = load ptr, ptr %24, align 8
  %28 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 48, i32 noundef -1) #8
  %29 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.drm_driver, ptr %30, i32 0, i32 21
  %32 = load ptr, ptr %31, align 4
  %33 = tail call i32 @request_threaded_irq(i32 noundef %20, ptr noundef nonnull @fsl_dcu_drm_irq, ptr noundef null, i32 noundef 0, ptr noundef %32, ptr noundef %0) #8
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22, %18
  %36 = phi i32 [ %33, %22 ], [ -107, %18 ]
  %37 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.17) #9
  tail call void @drm_kms_helper_poll_fini(ptr noundef %0) #8
  tail call void @drm_mode_config_cleanup(ptr noundef %0) #8
  br label %44

39:                                               ; preds = %22
  %40 = load i32, ptr @legacyfb_depth, align 4
  switch i32 %40, label %41 [
    i32 32, label %46
    i32 24, label %46
    i32 16, label %46
  ]

41:                                               ; preds = %39
  %42 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.18) #9
  store i32 24, ptr @legacyfb_depth, align 4
  br label %46

44:                                               ; preds = %35, %15
  %45 = phi i32 [ %13, %15 ], [ %36, %35 ]
  store ptr null, ptr %3, align 4
  br label %46

46:                                               ; preds = %44, %41, %39, %39, %39, %7
  %47 = phi i32 [ %5, %7 ], [ %45, %44 ], [ 0, %39 ], [ 0, %39 ], [ 0, %39 ], [ 0, %41 ]
  ret i32 %47
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_dcu_unload(ptr noundef %0) #2 {
  tail call void @drm_atomic_helper_shutdown(ptr noundef %0) #8
  tail call void @drm_kms_helper_poll_fini(ptr noundef %0) #8
  tail call void @drm_mode_config_cleanup(ptr noundef %0) #8
  %2 = getelementptr inbounds %struct.drm_device, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 44, i32 noundef -1) #8
  %7 = load ptr, ptr %4, align 8
  %8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 48, i32 noundef -1) #8
  %9 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = tail call ptr @free_irq(i32 noundef %10, ptr noundef %0) #8
  store ptr null, ptr %2, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_handle_to_fd(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_fd_to_handle(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @drm_gem_cma_prime_import_sg_table(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_prime_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_cma_dumb_create(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_dcu_drm_modeset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_vblank_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_kms_helper_poll_fini(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_mode_config_cleanup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_dcu_drm_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #8
  store i32 0, ptr %3, align 4, !annotation !8
  %6 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 8
  %8 = call i32 @regmap_read(ptr noundef %7, i32 noundef 44, ptr noundef nonnull %3) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.drm_device, ptr %1, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.19) #9
  br label %24

13:                                               ; preds = %2
  %14 = load i32, ptr %3, align 4
  %15 = and i32 %14, 8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = call zeroext i1 @drm_handle_vblank(ptr noundef %1, i32 noundef 0) #8
  %19 = load i32, ptr %3, align 4
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i32 [ %19, %17 ], [ %14, %13 ]
  %22 = load ptr, ptr %6, align 8
  %23 = call i32 @regmap_write(ptr noundef %22, i32 noundef 44, i32 noundef %21) #8
  br label %24

24:                                               ; preds = %20, %10
  %25 = phi i32 [ 0, %10 ], [ 1, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #8
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @drm_handle_vblank(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_atomic_helper_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @noop_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_poll(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_ioctl(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_gem_mmap(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_open(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_release(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_dcu_drm_pm_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void @disable_irq(i32 noundef %7) #8
  %8 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 8
  %9 = load ptr, ptr %8, align 8
  %10 = tail call i32 @drm_mode_config_helper_suspend(ptr noundef %9) #8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %5
  %13 = load i32, ptr %6, align 4
  tail call void @enable_irq(i32 noundef %13) #8
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 4
  %16 = load ptr, ptr %15, align 8
  tail call void @clk_disable(ptr noundef %16) #8
  tail call void @clk_unprepare(ptr noundef %16) #8
  br label %17

17:                                               ; preds = %14, %12, %1
  %18 = phi i32 [ %10, %12 ], [ 0, %14 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_dcu_drm_pm_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %30, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = tail call i32 @clk_enable(ptr noundef %7) #8
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #8
  br label %14

14:                                               ; preds = %13, %5
  %15 = phi i32 [ %8, %5 ], [ %11, %13 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #9
  br label %30

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 6
  %20 = load ptr, ptr %19, align 8
  %21 = icmp eq ptr %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  tail call void @fsl_tcon_bypass_enable(ptr noundef nonnull %20) #8
  br label %23

23:                                               ; preds = %22, %18
  %24 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 8
  %25 = load ptr, ptr %24, align 8
  tail call void @fsl_dcu_drm_init_planes(ptr noundef %25) #8
  %26 = getelementptr inbounds %struct.fsl_dcu_drm_device, ptr %3, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  tail call void @enable_irq(i32 noundef %27) #8
  %28 = load ptr, ptr %24, align 8
  %29 = tail call i32 @drm_mode_config_helper_resume(ptr noundef %28) #8
  br label %30

30:                                               ; preds = %23, %17, %1
  %31 = phi i32 [ %15, %17 ], [ 0, %23 ], [ 0, %1 ]
  ret i32 %31
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_tcon_bypass_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_dcu_drm_init_planes(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @drm_mode_config_helper_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
