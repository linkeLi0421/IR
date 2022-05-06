; ModuleID = '/llk/IR/drivers/media/platform/exynos4-is/mipi-csis.c_pt.bc'
source_filename = "../drivers/media/platform/exynos4-is/mipi-csis.c"
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
%struct.csis_drvdata = type { i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.v4l2_subdev_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.csis_pix_format = type { i32, i32, i32, i8 }
%struct.s5pcsis_event = type { i32, ptr, i32 }
%struct.v4l2_subdev_core_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_video_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.v4l2_subdev_pad_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.v4l2_fwnode_endpoint = type { %struct.fwnode_endpoint, i32, %struct.anon.81, ptr, i32 }
%struct.fwnode_endpoint = type { i32, i32, ptr }
%struct.anon.81 = type { %struct.v4l2_fwnode_bus_parallel, %struct.v4l2_fwnode_bus_mipi_csi1, %struct.v4l2_fwnode_bus_mipi_csi2 }
%struct.v4l2_fwnode_bus_parallel = type { i32, i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi1 = type { i8, [2 x i8], i8, i8 }
%struct.v4l2_fwnode_bus_mipi_csi2 = type { i32, [8 x i8], i8, i8, [9 x i8] }
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
%struct.csis_state = type { %struct.mutex, [2 x %struct.media_pad], %struct.v4l2_subdev, i8, ptr, ptr, ptr, [2 x %struct.regulator_bulk_data], [2 x ptr], i32, i32, i32, i32, i32, i32, i32, i8, ptr, %struct.v4l2_mbus_framefmt, %struct.spinlock, %struct.csis_pktbuf, [13 x %struct.s5pcsis_event] }
%struct.media_pad = type { %struct.media_gobj, ptr, i16, i32, i32 }
%struct.media_gobj = type { ptr, i32, %struct.list_head }
%struct.v4l2_subdev = type { %struct.media_entity, %struct.list_head, ptr, i8, i32, ptr, ptr, ptr, ptr, [32 x i8], i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.media_entity = type { %struct.media_gobj, ptr, i32, i32, i32, i16, i16, i16, i32, ptr, %struct.list_head, ptr, i32, i32, ptr, %union.anon.74 }
%union.anon.74 = type { %struct.anon.75 }
%struct.anon.75 = type { i32, i32 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i32, i32, i32, %union.anon.77, i16, i16, i16, [10 x i16] }
%union.anon.77 = type { i16 }
%struct.csis_pktbuf = type { ptr, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.v4l2_subdev_mbus_code_enum = type { i32, i32, i32, i32, i32, [7 x i32] }
%struct.v4l2_subdev_format = type { i32, i32, %struct.v4l2_mbus_framefmt, [8 x i32] }

@__param_str_debug = internal constant [6 x i8] c"debug\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global i32 0, align 4
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr @__this_module, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.64 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype252 = internal constant [19 x i8] c"parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug253 = internal constant [29 x i8] c"parm=debug:Debug level (0-2)\00", section ".modinfo", align 1
@s5pcsis_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s5pv210-csis\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_csis_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos4210-csis\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos4_csis_drvdata }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-csis\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos5_csis_drvdata }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author256 = internal constant [51 x i8] c"author=Sylwester Nawrocki <s.nawrocki@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [61 x i8] c"description=Samsung S5P/EXYNOS SoC MIPI-CSI2 receiver driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@exynos4_csis_drvdata = internal constant %struct.csis_drvdata { i32 -268431297 }, align 4
@exynos5_csis_drvdata = internal constant %struct.csis_drvdata { i32 -67104705 }, align 4
@s5pcsis_driver = internal global %struct.platform_driver { ptr @s5pcsis_probe, ptr @s5pcsis_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s5pcsis_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5pcsis_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [14 x i8] c"s5p-mipi-csis\00", align 1
@s5pcsis_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @s5pcsis_suspend, ptr @s5pcsis_resume, ptr @s5pcsis_suspend, ptr @s5pcsis_resume, ptr @s5pcsis_suspend, ptr @s5pcsis_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5pcsis_runtime_suspend, ptr @s5pcsis_runtime_resume, ptr null }, align 4
@s5pcsis_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"&state->lock\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"drivers/media/platform/exynos4-is/mipi-csis.c\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Unsupported number of data lanes: %d (max. %d)\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"csis\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"%s %s: No clock frequency specified!\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Interrupt request failed\0A\00", align 1
@s5pcsis_subdev_ops = internal constant %struct.v4l2_subdev_ops { ptr @s5pcsis_core_ops, ptr null, ptr null, ptr @s5pcsis_video_ops, ptr null, ptr null, ptr null, ptr @s5pcsis_pad_ops }, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"%s.%d\00", align 1
@s5pcsis_formats = internal constant [6 x %struct.csis_pix_format] [%struct.csis_pix_format { i32 0, i32 8199, i32 120, i8 32 }, %struct.csis_pix_format { i32 0, i32 16385, i32 192, i8 32 }, %struct.csis_pix_format { i32 0, i32 20481, i32 192, i8 32 }, %struct.csis_pix_format { i32 0, i32 12290, i32 168, i8 24 }, %struct.csis_pix_format { i32 0, i32 12298, i32 172, i8 24 }, %struct.csis_pix_format { i32 0, i32 12305, i32 176, i8 24 }], align 4
@s5pcsis_events = internal unnamed_addr constant [13 x %struct.s5pcsis_event] [%struct.s5pcsis_event { i32 61440, ptr @.str.33, i32 0 }, %struct.s5pcsis_event { i32 32, ptr @.str.34, i32 0 }, %struct.s5pcsis_event { i32 16, ptr @.str.35, i32 0 }, %struct.s5pcsis_event { i32 8, ptr @.str.36, i32 0 }, %struct.s5pcsis_event { i32 4, ptr @.str.37, i32 0 }, %struct.s5pcsis_event { i32 2, ptr @.str.38, i32 0 }, %struct.s5pcsis_event { i32 1, ptr @.str.39, i32 0 }, %struct.s5pcsis_event { i32 -2147483648, ptr @.str.40, i32 0 }, %struct.s5pcsis_event { i32 1073741824, ptr @.str.41, i32 0 }, %struct.s5pcsis_event { i32 536870912, ptr @.str.42, i32 0 }, %struct.s5pcsis_event { i32 268435456, ptr @.str.43, i32 0 }, %struct.s5pcsis_event { i32 134217728, ptr @.str.44, i32 0 }, %struct.s5pcsis_event { i32 67108864, ptr @.str.45, i32 0 }], align 4
@.str.8 = private unnamed_addr constant [46 x i8] c"lanes: %d, hs_settle: %d, wclk: %d, freq: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"bus-width\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"No port node at %pOF\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"samsung,csis-hs-settle\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"samsung,csis-wclk\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"vddcore\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"vddio\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"failed to get clock: %s\0A\00", align 1
@.str.17 = private unnamed_addr constant [10 x i8] c"sclk_csis\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"\017%s: %s: %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"\017%s: status: %08x\0A\00", align 1
@s5pcsis_core_ops = internal constant %struct.v4l2_subdev_core_ops { ptr @s5pcsis_log_status, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5pcsis_s_power, ptr null, ptr null, ptr null }, align 4
@s5pcsis_video_ops = internal constant %struct.v4l2_subdev_video_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5pcsis_s_stream, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5pcsis_s_rx_buffer, ptr null, ptr null }, align 4
@s5pcsis_pad_ops = internal constant %struct.v4l2_subdev_pad_ops { ptr null, ptr @s5pcsis_enum_mbus_code, ptr null, ptr null, ptr @s5pcsis_get_fmt, ptr @s5pcsis_set_fmt, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@__func__.s5pcsis_log_status = private unnamed_addr constant [19 x i8] c"s5pcsis_log_status\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"\016%s: %s events: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"CTRL\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c"DPHYCTRL\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"CONFIG\00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"DPHYSTS\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"INTMSK\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"RESOL\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"SDW_CONFIG\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"\016%s: --- %s ---\0A\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"\016%s: %10s: 0x%08x\0A\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"\017%s: %s: %d, state: 0x%x\0A\00", align 1
@__func__.s5pcsis_s_stream = private unnamed_addr constant [17 x i8] c"s5pcsis_s_stream\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.31 = private unnamed_addr constant [25 x i8] c"\017%s: fmt: %#x, %d x %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [28 x i8] c"include/media/v4l2-subdev.h\00", align 1
@.str.33 = private unnamed_addr constant [10 x i8] c"SOT Error\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"Lost Frame Start Error\00", align 1
@.str.35 = private unnamed_addr constant [21 x i8] c"Lost Frame End Error\00", align 1
@.str.36 = private unnamed_addr constant [20 x i8] c"FIFO Overflow Error\00", align 1
@.str.37 = private unnamed_addr constant [10 x i8] c"ECC Error\00", align 1
@.str.38 = private unnamed_addr constant [10 x i8] c"CRC Error\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"Unknown Error\00", align 1
@.str.40 = private unnamed_addr constant [33 x i8] c"Non-image data before even frame\00", align 1
@.str.41 = private unnamed_addr constant [32 x i8] c"Non-image data after even frame\00", align 1
@.str.42 = private unnamed_addr constant [32 x i8] c"Non-image data before odd frame\00", align 1
@.str.43 = private unnamed_addr constant [31 x i8] c"Non-image data after odd frame\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"Frame Start\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"Frame End\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"\017%s: %s: flags: 0x%x\0A\00", align 1
@__func__.s5pcsis_pm_resume = private unnamed_addr constant [18 x i8] c"s5pcsis_pm_resume\00", align 1
@__func__.s5pcsis_pm_suspend = private unnamed_addr constant [19 x i8] c"s5pcsis_pm_suspend\00", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_debug253, ptr @__UNIQUE_ID_debugtype252, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_license258, ptr @__param_debug], section "llvm.metadata"

@__mod_of__s5pcsis_of_match_device_table = dso_local alias [4 x %struct.of_device_id], ptr @s5pcsis_of_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s5pcsis_driver, ptr noundef nonnull @__this_module) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s5pcsis_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_probe(ptr noundef %0) #2 {
  %2 = alloca %struct.v4l2_fwnode_endpoint, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 580, i32 noundef 3520) #10
  %5 = icmp eq ptr %4, null
  br i1 %5, label %203, label %6

6:                                                ; preds = %1
  tail call void @__mutex_init(ptr noundef nonnull %4, ptr noundef nonnull @.str.1, ptr noundef nonnull @s5pcsis_probe.__key) #10
  %7 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 19
  store i32 0, ptr %7, align 4
  %8 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 4
  store ptr %0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = tail call ptr @of_match_node(ptr noundef nonnull @s5pcsis_of_match, ptr noundef %10) #10
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 782, i32 noundef 9, ptr noundef null) #10
  br label %203

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.of_device_id, ptr %11, i32 0, i32 3
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 10
  store i32 %17, ptr %18, align 4
  %19 = load ptr, ptr %9, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(64) %2, i8 0, i32 64, i1 false) #10
  %20 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 12
  %21 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.9, ptr noundef %20, i32 noundef 1, i32 noundef 0) #10
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  store i32 166000000, ptr %20, align 4
  br label %24

24:                                               ; preds = %23, %14
  %25 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 15
  %26 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %19, ptr noundef nonnull @.str.10, ptr noundef %25, i32 noundef 1, i32 noundef 0) #10
  %27 = icmp sgt i32 %26, -1
  br i1 %27, label %28, label %55

28:                                               ; preds = %24
  %29 = tail call ptr @of_graph_get_next_endpoint(ptr noundef %19, ptr noundef null) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load ptr, ptr %9, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.11, ptr noundef %32) #11
  br label %55

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.device_node, ptr %29, i32 0, i32 3
  %35 = call i32 @v4l2_fwnode_endpoint_parse(ptr noundef %34, ptr noundef nonnull %2) #10
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %56

37:                                               ; preds = %33
  %38 = load i32, ptr %2, align 4
  %39 = trunc i32 %38 to i8
  %40 = add i8 %39, -3
  %41 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 3
  store i8 %40, ptr %41, align 4
  %42 = icmp ugt i8 %40, 1
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  call void @of_node_put(ptr noundef nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  br label %203

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 13
  %46 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %29, ptr noundef nonnull @.str.12, ptr noundef %45, i32 noundef 1, i32 noundef 0) #10
  %47 = call ptr @of_find_property(ptr noundef nonnull %29, ptr noundef nonnull @.str.13, ptr noundef null) #10
  %48 = icmp ne ptr %47, null
  %49 = zext i1 %48 to i8
  %50 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 16
  store i8 %49, ptr %50, align 4
  %51 = getelementptr inbounds %struct.v4l2_fwnode_endpoint, ptr %2, i32 0, i32 2, i32 2, i32 3
  %52 = load i8, ptr %51, align 1
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 14
  store i32 %53, ptr %54, align 4
  call void @of_node_put(ptr noundef nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  br label %58

55:                                               ; preds = %31, %24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  br label %203

56:                                               ; preds = %33
  call void @of_node_put(ptr noundef nonnull %29) #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %2) #10
  %57 = icmp slt i32 %35, 0
  br i1 %57, label %203, label %58

58:                                               ; preds = %56, %44
  %59 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 14
  %60 = load i32, ptr %59, align 4
  %61 = icmp eq i32 %60, 0
  %62 = load i32, ptr %25, align 4
  %63 = icmp ugt i32 %60, %62
  %64 = select i1 %61, i1 true, i1 %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.3, i32 noundef %60, i32 noundef %62) #11
  br label %203

66:                                               ; preds = %58
  %67 = call ptr @devm_phy_get(ptr noundef %3, ptr noundef nonnull @.str.4) #10
  %68 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 5
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = ptrtoint ptr %67 to i32
  br label %203

72:                                               ; preds = %66
  %73 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #10
  %74 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 6
  store ptr %73, ptr %74, align 4
  %75 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = ptrtoint ptr %73 to i32
  br label %203

78:                                               ; preds = %72
  %79 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #10
  %80 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 9
  store i32 %79, ptr %80, align 4
  %81 = icmp slt i32 %79, 0
  br i1 %81, label %203, label %82

82:                                               ; preds = %78
  %83 = getelementptr %struct.csis_state, ptr %4, i32 0, i32 7, i32 0
  store ptr @.str.14, ptr %83, align 4
  %84 = getelementptr %struct.csis_state, ptr %4, i32 0, i32 7, i32 1
  store ptr @.str.15, ptr %84, align 4
  %85 = call i32 @devm_regulator_bulk_get(ptr noundef %3, i32 noundef 2, ptr noundef %83) #10
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %203

87:                                               ; preds = %82
  %88 = load ptr, ptr %8, align 4
  %89 = getelementptr %struct.csis_state, ptr %4, i32 0, i32 8, i32 0
  store ptr inttoptr (i32 -22 to ptr), ptr %89, align 4
  %90 = getelementptr %struct.csis_state, ptr %4, i32 0, i32 8, i32 1
  store ptr inttoptr (i32 -22 to ptr), ptr %90, align 4
  %91 = getelementptr inbounds %struct.platform_device, ptr %88, i32 0, i32 3
  %92 = call ptr @clk_get(ptr noundef %91, ptr noundef nonnull @.str.17) #10
  store ptr %92, ptr %89, align 4
  %93 = icmp ugt ptr %92, inttoptr (i32 -4096 to ptr)
  br i1 %93, label %100, label %104

94:                                               ; preds = %104
  %95 = call ptr @clk_get(ptr noundef %91, ptr noundef nonnull @.str.4) #10
  store ptr %95, ptr %90, align 4
  %96 = icmp ugt ptr %95, inttoptr (i32 -4096 to ptr)
  br i1 %96, label %100, label %97

97:                                               ; preds = %94
  %98 = call i32 @clk_prepare(ptr noundef %95) #10
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %107, label %126

100:                                              ; preds = %94, %87
  %101 = phi ptr [ @.str.17, %87 ], [ @.str.4, %94 ]
  %102 = phi ptr [ %92, %87 ], [ %95, %94 ]
  %103 = ptrtoint ptr %102 to i32
  br label %112

104:                                              ; preds = %87
  %105 = call i32 @clk_prepare(ptr noundef %92) #10
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %94

107:                                              ; preds = %104, %97
  %108 = phi i32 [ %105, %104 ], [ %98, %97 ]
  %109 = phi ptr [ @.str.17, %104 ], [ @.str.4, %97 ]
  %110 = phi ptr [ %89, %104 ], [ %90, %97 ]
  %111 = load ptr, ptr %110, align 4
  call void @clk_put(ptr noundef %111) #10
  store ptr inttoptr (i32 -22 to ptr), ptr %110, align 4
  br label %112

112:                                              ; preds = %107, %100
  %113 = phi ptr [ %101, %100 ], [ %109, %107 ]
  %114 = phi i32 [ %103, %100 ], [ %108, %107 ]
  %115 = load ptr, ptr %89, align 4
  %116 = icmp ugt ptr %115, inttoptr (i32 -4096 to ptr)
  br i1 %116, label %119, label %117

117:                                              ; preds = %112
  call void @clk_unprepare(ptr noundef %115) #10
  %118 = load ptr, ptr %89, align 4
  call void @clk_put(ptr noundef %118) #10
  store ptr inttoptr (i32 -22 to ptr), ptr %89, align 4
  br label %119

119:                                              ; preds = %117, %112
  %120 = load ptr, ptr %90, align 4
  %121 = icmp ugt ptr %120, inttoptr (i32 -4096 to ptr)
  br i1 %121, label %124, label %122

122:                                              ; preds = %119
  call void @clk_unprepare(ptr noundef %120) #10
  %123 = load ptr, ptr %90, align 4
  call void @clk_put(ptr noundef %123) #10
  store ptr inttoptr (i32 -22 to ptr), ptr %90, align 4
  br label %124

124:                                              ; preds = %122, %119
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.16, ptr noundef nonnull %113) #11
  %125 = icmp slt i32 %114, 0
  br i1 %125, label %203, label %126

126:                                              ; preds = %124, %97
  %127 = load i32, ptr %20, align 4
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %138

129:                                              ; preds = %126
  %130 = call ptr @dev_driver_string(ptr noundef %3) #10
  %131 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %132 = load ptr, ptr %131, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load ptr, ptr %3, align 4
  br label %136

136:                                              ; preds = %134, %129
  %137 = phi ptr [ %135, %134 ], [ %132, %129 ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 826, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef %130, ptr noundef %137) #10
  br label %142

138:                                              ; preds = %126
  %139 = load ptr, ptr %89, align 4
  %140 = call i32 @clk_set_rate(ptr noundef %139, i32 noundef %127) #10
  %141 = icmp slt i32 %140, 0
  br i1 %141, label %201, label %142

142:                                              ; preds = %138, %136
  %143 = load ptr, ptr %89, align 4
  %144 = call i32 @clk_enable(ptr noundef %143) #10
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %201, label %146

146:                                              ; preds = %142
  %147 = load i32, ptr %80, align 4
  %148 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %149 = load ptr, ptr %148, align 4
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %153

151:                                              ; preds = %146
  %152 = load ptr, ptr %3, align 4
  br label %153

153:                                              ; preds = %151, %146
  %154 = phi ptr [ %152, %151 ], [ %149, %146 ]
  %155 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %147, ptr noundef nonnull @s5pcsis_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %154, ptr noundef nonnull %4) #10
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %153
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.6) #11
  br label %198

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 2
  call void @v4l2_subdev_init(ptr noundef %159, ptr noundef nonnull @s5pcsis_subdev_ops) #10
  %160 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 2, i32 2
  store ptr @__this_module, ptr %160, align 4
  %161 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 2, i32 9
  %162 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 3
  %163 = load i8, ptr %162, align 4
  %164 = zext i8 %163 to i32
  %165 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %161, i32 noundef 32, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str, i32 noundef %164)
  %166 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 2, i32 4
  %167 = load i32, ptr %166, align 4
  %168 = or i32 %167, 4
  store i32 %168, ptr %166, align 4
  %169 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 17
  store ptr @s5pcsis_formats, ptr %169, align 4
  %170 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 18
  %171 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 18, i32 2
  store i32 8199, ptr %171, align 4
  store i32 640, ptr %170, align 4
  %172 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 18, i32 1
  store i32 480, ptr %172, align 4
  %173 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 2, i32 0, i32 3
  store i32 65537, ptr %173, align 4
  %174 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 1
  %175 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 1, i32 0, i32 4
  store i32 1, ptr %175, align 4
  %176 = getelementptr %struct.csis_state, ptr %4, i32 0, i32 1, i32 1, i32 4
  store i32 2, ptr %176, align 4
  %177 = call i32 @media_entity_pads_init(ptr noundef %159, i16 noundef zeroext 2, ptr noundef %174) #10
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %198, label %179

179:                                              ; preds = %158
  %180 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 2, i32 11
  store ptr %0, ptr %180, align 4
  %181 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %159, ptr %181, align 8
  %182 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 21
  call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(156) %182, ptr noundef nonnull align 4 dereferenceable(156) @s5pcsis_events, i32 156, i1 false)
  call void @pm_runtime_enable(ptr noundef %3) #10
  %183 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 15
  %184 = load i16, ptr %183, align 8
  %185 = and i16 %184, 7
  %186 = icmp eq i16 %185, 0
  br i1 %186, label %190, label %187

187:                                              ; preds = %179
  %188 = call fastcc i32 @s5pcsis_pm_resume(ptr noundef %3, i1 noundef zeroext true)
  %189 = icmp slt i32 %188, 0
  br i1 %189, label %198, label %190

190:                                              ; preds = %187, %179
  %191 = load i32, ptr %59, align 4
  %192 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 13
  %193 = load i32, ptr %192, align 4
  %194 = getelementptr inbounds %struct.csis_state, ptr %4, i32 0, i32 16
  %195 = load i8, ptr %194, align 4
  %196 = zext i8 %195 to i32
  %197 = load i32, ptr %20, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %191, i32 noundef %193, i32 noundef %196, i32 noundef %197) #11
  br label %203

198:                                              ; preds = %187, %158, %157
  %199 = phi i32 [ %155, %157 ], [ %177, %158 ], [ %188, %187 ]
  %200 = load ptr, ptr %89, align 4
  call void @clk_disable(ptr noundef %200) #10
  br label %201

201:                                              ; preds = %198, %142, %138
  %202 = phi i32 [ %140, %138 ], [ %144, %142 ], [ %199, %198 ]
  call fastcc void @s5pcsis_clk_put(ptr noundef nonnull %4)
  br label %203

203:                                              ; preds = %201, %190, %124, %82, %78, %76, %70, %65, %56, %55, %43, %13, %1
  %204 = phi i32 [ -22, %13 ], [ -22, %65 ], [ %71, %70 ], [ %77, %76 ], [ %202, %201 ], [ 0, %190 ], [ -12, %1 ], [ %35, %56 ], [ %79, %78 ], [ %85, %82 ], [ %114, %124 ], [ -22, %55 ], [ -6, %43 ]
  ret i32 %204
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #10
  %5 = tail call fastcc i32 @s5pcsis_pm_suspend(ptr noundef %4, i1 noundef zeroext true)
  %6 = getelementptr i8, ptr %3, i32 236
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #10
  %8 = tail call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 2) #10
  %9 = load ptr, ptr %6, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %13, label %11

11:                                               ; preds = %1
  tail call void @clk_unprepare(ptr noundef %9) #10
  %12 = load ptr, ptr %6, align 4
  tail call void @clk_put(ptr noundef %12) #10
  store ptr inttoptr (i32 -22 to ptr), ptr %6, align 4
  br label %13

13:                                               ; preds = %11, %1
  %14 = getelementptr i8, ptr %3, i32 240
  %15 = load ptr, ptr %14, align 4
  %16 = icmp ugt ptr %15, inttoptr (i32 -4096 to ptr)
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  tail call void @clk_unprepare(ptr noundef %15) #10
  %18 = load ptr, ptr %14, align 4
  tail call void @clk_put(ptr noundef %18) #10
  store ptr inttoptr (i32 -22 to ptr), ptr %14, align 4
  br label %19

19:                                               ; preds = %17, %13
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_regulator_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.csis_state, ptr %1, i32 0, i32 20
  %4 = getelementptr inbounds %struct.csis_state, ptr %1, i32 0, i32 6
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 20
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !10
  %8 = getelementptr inbounds %struct.csis_state, ptr %1, i32 0, i32 19
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #10
  %10 = icmp ult i32 %7, 268435456
  br i1 %10, label %21, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = icmp ult i32 %7, 1073741824
  %16 = select i1 %15, i32 8192, i32 12288
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 %16
  %19 = getelementptr inbounds %struct.csis_state, ptr %1, i32 0, i32 20, i32 1
  %20 = load i32, ptr %19, align 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr nonnull align 4 %12, ptr align 1 %18, i32 %20, i1 false)
  store ptr null, ptr %3, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  br label %21

21:                                               ; preds = %14, %11, %2
  %22 = and i32 %7, 61503
  %23 = icmp ne i32 %22, 0
  %24 = load i32, ptr @debug, align 4
  %25 = icmp ne i32 %24, 0
  %26 = select i1 %23, i1 true, i1 %25
  br i1 %26, label %27, label %53

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.csis_state, ptr %1, i32 0, i32 2, i32 9
  br label %29

29:                                               ; preds = %45, %27
  %30 = phi i32 [ 0, %27 ], [ %46, %45 ]
  %31 = getelementptr %struct.csis_state, ptr %1, i32 0, i32 21, i32 %30
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, %7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = getelementptr %struct.csis_state, ptr %1, i32 0, i32 21, i32 %30, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = add i32 %37, 1
  store i32 %38, ptr %36, align 4
  %39 = load i32, ptr @debug, align 4
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = getelementptr %struct.csis_state, ptr %1, i32 0, i32 21, i32 %30, i32 1
  %43 = load ptr, ptr %42, align 4
  %44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %28, ptr noundef %43, i32 noundef %38) #11
  br label %45

45:                                               ; preds = %41, %35, %29
  %46 = add nuw nsw i32 %30, 1
  %47 = icmp eq i32 %46, 13
  br i1 %47, label %48, label %29

48:                                               ; preds = %45
  %49 = load i32, ptr @debug, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %28, i32 noundef %7) #11
  br label %53

53:                                               ; preds = %51, %48, %21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !12
  tail call void @arm_heavy_mb() #10
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr i8, ptr %54, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %7) #10, !srcloc !13
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_subdev_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @media_entity_pads_init(ptr noundef, i16 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5pcsis_pm_resume(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -84
  %6 = load i32, ptr @debug, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 9
  %10 = getelementptr i8, ptr %4, i32 252
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %9, ptr noundef nonnull @__func__.s5pcsis_pm_resume, i32 noundef %11) #11
  br label %13

13:                                               ; preds = %8, %2
  tail call void @mutex_lock(ptr noundef %5) #10
  %14 = getelementptr i8, ptr %4, i32 252
  %15 = load i32, ptr %14, align 4
  %16 = xor i1 %1, true
  %17 = and i32 %15, 4
  %18 = icmp eq i32 %17, 0
  %19 = select i1 %16, i1 %18, i1 false
  br i1 %19, label %51, label %20

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %4, i32 252
  %22 = and i32 %15, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = getelementptr i8, ptr %4, i32 212
  %26 = tail call i32 @regulator_bulk_enable(i32 noundef 2, ptr noundef %25) #10
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %4, i32 204
  %30 = load ptr, ptr %29, align 4
  %31 = tail call i32 @phy_power_on(ptr noundef %30) #10
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, ptr %21, align 4
  %35 = or i32 %34, 1
  store i32 %35, ptr %21, align 4
  %36 = getelementptr i8, ptr %4, i32 240
  %37 = load ptr, ptr %36, align 4
  %38 = tail call i32 @clk_enable(ptr noundef %37) #10
  %39 = load i32, ptr %21, align 4
  br label %42

40:                                               ; preds = %28
  %41 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %25) #10
  br label %51

42:                                               ; preds = %33, %20
  %43 = phi i32 [ %39, %33 ], [ %15, %20 ]
  %44 = and i32 %43, 2
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  tail call fastcc void @s5pcsis_start_stream(ptr noundef %5)
  %47 = load i32, ptr %21, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %47, %46 ], [ %43, %42 ]
  %50 = and i32 %49, -5
  store i32 %50, ptr %21, align 4
  br label %51

51:                                               ; preds = %48, %40, %24, %13
  %52 = phi i32 [ -11, %24 ], [ -11, %40 ], [ 0, %13 ], [ 0, %48 ]
  tail call void @mutex_unlock(ptr noundef %5) #10
  ret i32 %52
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5pcsis_clk_put(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr %struct.csis_state, ptr %0, i32 0, i32 8, i32 0
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  tail call void @clk_unprepare(ptr noundef %3) #10
  %6 = load ptr, ptr %2, align 4
  tail call void @clk_put(ptr noundef %6) #10
  store ptr inttoptr (i32 -22 to ptr), ptr %2, align 4
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr %struct.csis_state, ptr %0, i32 0, i32 8, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  tail call void @clk_unprepare(ptr noundef %9) #10
  %12 = load ptr, ptr %8, align 4
  tail call void @clk_put(ptr noundef %12) #10
  store ptr inttoptr (i32 -22 to ptr), ptr %8, align 4
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_graph_get_next_endpoint(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_fwnode_endpoint_parse(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_log_status(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -84
  tail call void @mutex_lock(ptr noundef %2) #10
  %3 = getelementptr i8, ptr %0, i32 328
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #10
  %5 = getelementptr i8, ptr %0, i32 116
  %6 = load i32, ptr @debug, align 4
  br label %7

7:                                                ; preds = %20, %1
  %8 = phi i32 [ %6, %1 ], [ %21, %20 ]
  %9 = phi i32 [ 12, %1 ], [ %22, %20 ]
  %10 = getelementptr %struct.csis_state, ptr %2, i32 0, i32 21, i32 %9, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = icmp ne i32 %8, 0
  %14 = select i1 %12, i1 true, i1 %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %7
  %16 = getelementptr %struct.csis_state, ptr %2, i32 0, i32 21, i32 %9, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %5, ptr noundef %17, i32 noundef %11) #11
  %19 = load i32, ptr @debug, align 4
  br label %20

20:                                               ; preds = %15, %7
  %21 = phi i32 [ %19, %15 ], [ 0, %7 ]
  %22 = add nsw i32 %9, -1
  %23 = icmp eq i32 %9, 0
  br i1 %23, label %24, label %7

24:                                               ; preds = %20
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #10
  %25 = load i32, ptr @debug, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %62, label %27

27:                                               ; preds = %24
  %28 = getelementptr i8, ptr %0, i32 252
  %29 = load i32, ptr %28, align 4
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %62, label %32

32:                                               ; preds = %27
  %33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, ptr noundef %5, ptr noundef nonnull @__func__.s5pcsis_log_status) #11
  %34 = getelementptr i8, ptr %0, i32 208
  %35 = load ptr, ptr %34, align 4
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %5, ptr noundef nonnull @.str.21, i32 noundef %36) #11
  %38 = load ptr, ptr %34, align 4
  %39 = getelementptr i8, ptr %38, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %41 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %5, ptr noundef nonnull @.str.22, i32 noundef %40) #11
  %42 = load ptr, ptr %34, align 4
  %43 = getelementptr i8, ptr %42, i32 8
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %5, ptr noundef nonnull @.str.23, i32 noundef %44) #11
  %46 = load ptr, ptr %34, align 4
  %47 = getelementptr i8, ptr %46, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %5, ptr noundef nonnull @.str.24, i32 noundef %48) #11
  %50 = load ptr, ptr %34, align 4
  %51 = getelementptr i8, ptr %50, i32 16
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %5, ptr noundef nonnull @.str.25, i32 noundef %52) #11
  %54 = load ptr, ptr %34, align 4
  %55 = getelementptr i8, ptr %54, i32 44
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %5, ptr noundef nonnull @.str.26, i32 noundef %56) #11
  %58 = load ptr, ptr %34, align 4
  %59 = getelementptr i8, ptr %58, i32 56
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !14
  %61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef %60) #11
  br label %62

62:                                               ; preds = %32, %27, %24
  tail call void @mutex_unlock(ptr noundef %2) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_s_power(ptr nocapture noundef readonly %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 200
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %6 = icmp eq i32 %1, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %2
  %8 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #10
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %11) #10, !srcloc !16
  %12 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %11, ptr %11, i32 0, i32 -1, ptr elementtype(i32) %11) #10, !srcloc !17
  %13 = extractvalue { i32, i32, i32 } %12, 0
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %18

16:                                               ; preds = %2
  %17 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #10
  br label %18

18:                                               ; preds = %16, %15, %10, %7
  %19 = phi i32 [ %17, %16 ], [ 0, %7 ], [ %8, %10 ], [ %8, %15 ]
  ret i32 %19
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_s_stream(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr i8, ptr %0, i32 -84
  %4 = load i32, ptr @debug, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %11

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.v4l2_subdev, ptr %0, i32 0, i32 9
  %8 = getelementptr i8, ptr %0, i32 252
  %9 = load i32, ptr %8, align 4
  %10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef %7, ptr noundef nonnull @__func__.s5pcsis_s_stream, i32 noundef %1, i32 noundef %9) #11
  br label %11

11:                                               ; preds = %6, %2
  %12 = icmp eq i32 %1, 0
  br i1 %12, label %48, label %13

13:                                               ; preds = %11
  %14 = getelementptr i8, ptr %0, i32 328
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #10
  %16 = getelementptr i8, ptr %0, i32 348
  store i32 0, ptr %16, align 4
  %17 = getelementptr i8, ptr %0, i32 360
  store i32 0, ptr %17, align 4
  %18 = getelementptr i8, ptr %0, i32 372
  store i32 0, ptr %18, align 4
  %19 = getelementptr i8, ptr %0, i32 384
  store i32 0, ptr %19, align 4
  %20 = getelementptr i8, ptr %0, i32 396
  store i32 0, ptr %20, align 4
  %21 = getelementptr i8, ptr %0, i32 408
  store i32 0, ptr %21, align 4
  %22 = getelementptr i8, ptr %0, i32 420
  store i32 0, ptr %22, align 4
  %23 = getelementptr i8, ptr %0, i32 432
  store i32 0, ptr %23, align 4
  %24 = getelementptr i8, ptr %0, i32 444
  store i32 0, ptr %24, align 4
  %25 = getelementptr i8, ptr %0, i32 456
  store i32 0, ptr %25, align 4
  %26 = getelementptr i8, ptr %0, i32 468
  store i32 0, ptr %26, align 4
  %27 = getelementptr i8, ptr %0, i32 480
  store i32 0, ptr %27, align 4
  %28 = getelementptr i8, ptr %0, i32 492
  store i32 0, ptr %28, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #10
  %29 = getelementptr i8, ptr %0, i32 200
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3
  %32 = tail call i32 @__pm_runtime_resume(ptr noundef %31, i32 noundef 4) #10
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %13
  %35 = getelementptr inbounds %struct.platform_device, ptr %30, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %35) #10, !srcloc !16
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %35, ptr %35, i32 0, i32 -1, ptr elementtype(i32) %35) #10, !srcloc !17
  %37 = extractvalue { i32, i32, i32 } %36, 0
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %104, label %39

39:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !18
  br label %104

40:                                               ; preds = %13
  tail call void @mutex_lock(ptr noundef %3) #10
  %41 = getelementptr i8, ptr %0, i32 252
  %42 = load i32, ptr %41, align 4
  %43 = and i32 %42, 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %96

45:                                               ; preds = %40
  tail call fastcc void @s5pcsis_start_stream(ptr noundef %3)
  %46 = load i32, ptr %41, align 4
  %47 = or i32 %46, 2
  store i32 %47, ptr %41, align 4
  br label %96

48:                                               ; preds = %11
  tail call void @mutex_lock(ptr noundef %3) #10
  %49 = getelementptr i8, ptr %0, i32 208
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr i8, ptr %50, i32 16
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %53 = getelementptr i8, ptr %0, i32 248
  %54 = load i32, ptr %53, align 4
  %55 = xor i32 %54, -1
  %56 = and i32 %52, %55
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %57 = load ptr, ptr %49, align 4
  %58 = getelementptr i8, ptr %57, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #10, !srcloc !13
  %59 = load ptr, ptr %49, align 4
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %61 = and i32 %60, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %62 = load ptr, ptr %49, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %61) #10, !srcloc !13
  %63 = load ptr, ptr %49, align 4
  %64 = getelementptr i8, ptr %63, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  %66 = and i32 %65, -32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %67 = load ptr, ptr %49, align 4
  %68 = getelementptr i8, ptr %67, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %68, i32 %66) #10, !srcloc !13
  %69 = getelementptr i8, ptr %0, i32 252
  %70 = load i32, ptr %69, align 4
  %71 = and i32 %70, -3
  store i32 %71, ptr %69, align 4
  %72 = load i32, ptr @debug, align 4
  %73 = icmp sgt i32 %72, 0
  br i1 %73, label %74, label %99

74:                                               ; preds = %48
  %75 = getelementptr i8, ptr %0, i32 328
  %76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %75) #10
  %77 = getelementptr i8, ptr %0, i32 116
  %78 = load i32, ptr @debug, align 4
  br label %79

79:                                               ; preds = %92, %74
  %80 = phi i32 [ %78, %74 ], [ %93, %92 ]
  %81 = phi i32 [ 12, %74 ], [ %94, %92 ]
  %82 = getelementptr %struct.csis_state, ptr %3, i32 0, i32 21, i32 %81, i32 2
  %83 = load i32, ptr %82, align 4
  %84 = icmp ne i32 %83, 0
  %85 = icmp ne i32 %80, 0
  %86 = select i1 %84, i1 true, i1 %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %79
  %88 = getelementptr %struct.csis_state, ptr %3, i32 0, i32 21, i32 %81, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %77, ptr noundef %89, i32 noundef %83) #11
  %91 = load i32, ptr @debug, align 4
  br label %92

92:                                               ; preds = %87, %79
  %93 = phi i32 [ %91, %87 ], [ 0, %79 ]
  %94 = add nsw i32 %81, -1
  %95 = icmp eq i32 %81, 0
  br i1 %95, label %98, label %79

96:                                               ; preds = %45, %40
  %97 = phi i32 [ -16, %40 ], [ 0, %45 ]
  tail call void @mutex_unlock(ptr noundef %3) #10
  br label %104

98:                                               ; preds = %92
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %75, i32 noundef %76) #10
  br label %99

99:                                               ; preds = %98, %48
  tail call void @mutex_unlock(ptr noundef %3) #10
  %100 = getelementptr i8, ptr %0, i32 200
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.platform_device, ptr %101, i32 0, i32 3
  %103 = tail call i32 @__pm_runtime_idle(ptr noundef %102, i32 noundef 5) #10
  br label %104

104:                                              ; preds = %99, %96, %39, %34
  %105 = phi i32 [ 0, %99 ], [ %97, %96 ], [ %32, %34 ], [ %32, %39 ]
  ret i32 %105
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_s_rx_buffer(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2) #2 {
  %4 = load i32, ptr %2, align 4
  %5 = tail call i32 @llvm.umin.i32(i32 %4, i32 4096)
  store i32 %5, ptr %2, align 4
  %6 = getelementptr i8, ptr %0, i32 328
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #10
  %8 = getelementptr i8, ptr %0, i32 332
  store ptr %1, ptr %8, align 4
  %9 = load i32, ptr %2, align 4
  %10 = getelementptr i8, ptr %0, i32 336
  store i32 %9, ptr %10, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @s5pcsis_start_stream(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 6
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !26
  tail call void @arm_heavy_mb() #10
  %5 = or i32 %4, 16
  %6 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 %5) #10, !srcloc !13
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %7(i32 noundef 2147480) #10
  %8 = load ptr, ptr %2, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !27
  %11 = and i32 %10, -4
  %12 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 14
  %13 = load i32, ptr %12, align 4
  %14 = add i32 %13, -1
  %15 = or i32 %14, %11
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !28
  tail call void @arm_heavy_mb() #10
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %15) #10, !srcloc !13
  %18 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 18
  %19 = load i32, ptr @debug, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 2, i32 9
  %23 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 18, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = load i32, ptr %18, align 4
  %26 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 18, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %22, i32 noundef %24, i32 noundef %25, i32 noundef %27) #11
  br label %29

29:                                               ; preds = %21, %1
  %30 = load ptr, ptr %2, align 4
  %31 = getelementptr i8, ptr %30, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !29
  %33 = and i32 %32, -253
  %34 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 17
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.csis_pix_format, ptr %35, i32 0, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = or i32 %37, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !30
  tail call void @arm_heavy_mb() #10
  %39 = load ptr, ptr %2, align 4
  %40 = getelementptr i8, ptr %39, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #10, !srcloc !13
  %41 = load i32, ptr %18, align 4
  %42 = shl i32 %41, 16
  %43 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 18, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = or i32 %42, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !31
  tail call void @arm_heavy_mb() #10
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr i8, ptr %46, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #10, !srcloc !13
  %48 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 13
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %2, align 4
  %51 = getelementptr i8, ptr %50, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !32
  %53 = and i32 %52, 134217727
  %54 = shl i32 %49, 27
  %55 = or i32 %53, %54
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !33
  tail call void @arm_heavy_mb() #10
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %55) #10, !srcloc !13
  %58 = load ptr, ptr %2, align 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  %60 = load ptr, ptr %34, align 4
  %61 = getelementptr inbounds %struct.csis_pix_format, ptr %60, i32 0, i32 3
  %62 = load i8, ptr %61, align 4
  %63 = icmp eq i8 %62, 32
  %64 = and i32 %59, -1048833
  %65 = select i1 %63, i32 1048576, i32 0
  %66 = or i32 %65, %64
  %67 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 16
  %68 = load i8, ptr %67, align 4
  %69 = icmp eq i8 %68, 0
  %70 = select i1 %69, i32 0, i32 256
  %71 = or i32 %66, %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !35
  tail call void @arm_heavy_mb() #10
  %72 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %71) #10, !srcloc !13
  %73 = load ptr, ptr %2, align 4
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !36
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !37
  tail call void @arm_heavy_mb() #10
  %75 = or i32 %74, 65536
  %76 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %75) #10, !srcloc !13
  %77 = load ptr, ptr %2, align 4
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %79 = or i32 %78, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %80 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %80, i32 %79) #10, !srcloc !13
  %81 = load ptr, ptr %2, align 4
  %82 = getelementptr i8, ptr %81, i32 4
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  %84 = and i32 %83, -32
  %85 = load i32, ptr %12, align 4
  %86 = add i32 %85, 1
  %87 = shl nsw i32 -1, %86
  %88 = and i32 %87, 31
  %89 = or i32 %88, %84
  %90 = xor i32 %89, 31
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %91 = load ptr, ptr %2, align 4
  %92 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #10, !srcloc !13
  %93 = load ptr, ptr %2, align 4
  %94 = getelementptr i8, ptr %93, i32 16
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %96 = getelementptr inbounds %struct.csis_state, ptr %0, i32 0, i32 10
  %97 = load i32, ptr %96, align 4
  %98 = or i32 %97, %95
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %99 = load ptr, ptr %2, align 4
  %100 = getelementptr i8, ptr %99, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %98) #10, !srcloc !13
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @s5pcsis_enum_mbus_code(ptr nocapture noundef readnone %0, ptr nocapture noundef readnone %1, ptr nocapture noundef %2) #8 {
  %4 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp ugt i32 %5, 5
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = getelementptr [6 x %struct.csis_pix_format], ptr @s5pcsis_formats, i32 0, i32 %5, i32 1
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.v4l2_subdev_mbus_code_enum, ptr %2, i32 0, i32 2
  store i32 %9, ptr %10, align 4
  br label %11

11:                                               ; preds = %7, %3
  %12 = phi i32 [ 0, %7 ], [ -22, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_get_fmt(ptr noundef %0, ptr noundef readonly %1, ptr nocapture noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -84
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %7
  %10 = getelementptr i8, ptr %0, i32 32
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr %1, align 4
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %0, i32 280
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %18
  tail call void @mutex_lock(ptr noundef %4) #10
  %22 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %22, ptr noundef nonnull align 4 dereferenceable(48) %19, i32 48, i1 false)
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %23

23:                                               ; preds = %21, %18, %7
  %24 = phi i32 [ 0, %21 ], [ -22, %18 ], [ -22, %7 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_set_fmt(ptr noundef %0, ptr noundef readonly %1, ptr noundef %2) #2 {
  %4 = getelementptr i8, ptr %0, i32 -84
  %5 = load i32, ptr %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  %8 = icmp eq ptr %1, null
  br i1 %8, label %23, label %9

9:                                                ; preds = %7
  %10 = getelementptr i8, ptr %0, i32 32
  %11 = load i16, ptr %10, align 4
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %14, !prof !8

13:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.32, i32 noundef 998, i32 noundef 9, ptr noundef null) #10
  br label %14

14:                                               ; preds = %13, %9
  %15 = load ptr, ptr %1, align 4
  br label %18

16:                                               ; preds = %3
  %17 = getelementptr i8, ptr %0, i32 280
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %17, %16 ], [ %15, %14 ]
  %20 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %27, label %31

23:                                               ; preds = %7
  %24 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 1
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %59, label %31

27:                                               ; preds = %18
  %28 = icmp eq ptr %19, null
  br i1 %28, label %59, label %29

29:                                               ; preds = %27
  tail call void @mutex_lock(ptr noundef %4) #10
  %30 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %30, ptr noundef nonnull align 4 dereferenceable(48) %19, i32 48, i1 false)
  br label %58

31:                                               ; preds = %23, %18
  %32 = phi ptr [ null, %23 ], [ %19, %18 ]
  %33 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2
  %34 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 2
  %35 = load i32, ptr %34, align 4
  switch i32 %35, label %44 [
    i32 8199, label %41
    i32 16385, label %36
    i32 20481, label %37
    i32 12290, label %38
    i32 12298, label %39
    i32 12305, label %40
  ]

36:                                               ; preds = %31
  br label %41

37:                                               ; preds = %31
  br label %41

38:                                               ; preds = %31
  br label %41

39:                                               ; preds = %31
  br label %41

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40, %39, %38, %37, %36, %31
  %42 = phi i32 [ 0, %31 ], [ 1, %36 ], [ 2, %37 ], [ 3, %38 ], [ 4, %39 ], [ 5, %40 ]
  %43 = getelementptr [6 x %struct.csis_pix_format], ptr @s5pcsis_formats, i32 0, i32 %42
  br label %44

44:                                               ; preds = %41, %31
  %45 = phi ptr [ %43, %41 ], [ null, %31 ]
  %46 = icmp eq ptr %45, null
  %47 = select i1 %46, ptr @s5pcsis_formats, ptr %45
  %48 = getelementptr inbounds %struct.csis_pix_format, ptr %47, i32 0, i32 1
  %49 = load i32, ptr %48, align 4
  store i32 %49, ptr %34, align 4
  %50 = load i32, ptr %47, align 4
  %51 = getelementptr inbounds %struct.v4l2_subdev_format, ptr %2, i32 0, i32 2, i32 1
  tail call void @v4l_bound_align_image(ptr noundef %33, i32 noundef 1, i32 noundef 65535, i32 noundef %50, ptr noundef %51, i32 noundef 1, i32 noundef 65535, i32 noundef 1, i32 noundef 0) #10
  %52 = icmp eq ptr %32, null
  br i1 %52, label %59, label %53

53:                                               ; preds = %44
  tail call void @mutex_lock(ptr noundef %4) #10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(48) %32, ptr noundef align 4 dereferenceable(48) %33, i32 48, i1 false)
  %54 = load i32, ptr %2, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = getelementptr i8, ptr %0, i32 276
  store ptr %47, ptr %57, align 4
  br label %58

58:                                               ; preds = %56, %53, %29
  tail call void @mutex_unlock(ptr noundef %4) #10
  br label %59

59:                                               ; preds = %58, %44, %27, %23
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l_bound_align_image(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_on(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s5pcsis_pm_suspend(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr i8, ptr %4, i32 -84
  %6 = load i32, ptr @debug, align 4
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.v4l2_subdev, ptr %4, i32 0, i32 9
  %10 = getelementptr i8, ptr %4, i32 252
  %11 = load i32, ptr %10, align 4
  %12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef %9, ptr noundef nonnull @__func__.s5pcsis_pm_suspend, i32 noundef %11) #11
  br label %13

13:                                               ; preds = %8, %2
  tail call void @mutex_lock(ptr noundef %5) #10
  %14 = getelementptr i8, ptr %4, i32 252
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %54, label %18

18:                                               ; preds = %13
  %19 = getelementptr i8, ptr %4, i32 208
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 16
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !19
  %23 = getelementptr i8, ptr %4, i32 248
  %24 = load i32, ptr %23, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %22, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %27 = load ptr, ptr %19, align 4
  %28 = getelementptr i8, ptr %27, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #10, !srcloc !13
  %29 = load ptr, ptr %19, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !21
  %31 = and i32 %30, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %32 = load ptr, ptr %19, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %31) #10, !srcloc !13
  %33 = load ptr, ptr %19, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %34) #10, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !23
  %36 = and i32 %35, -32
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %37 = load ptr, ptr %19, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 %36) #10, !srcloc !13
  %39 = getelementptr i8, ptr %4, i32 204
  %40 = load ptr, ptr %39, align 4
  %41 = tail call i32 @phy_power_off(ptr noundef %40) #10
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %18
  %44 = getelementptr i8, ptr %4, i32 212
  %45 = tail call i32 @regulator_bulk_disable(i32 noundef 2, ptr noundef %44) #10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = getelementptr i8, ptr %4, i32 240
  %49 = load ptr, ptr %48, align 4
  tail call void @clk_disable(ptr noundef %49) #10
  %50 = load i32, ptr %14, align 4
  %51 = and i32 %50, -2
  store i32 %51, ptr %14, align 4
  br i1 %1, label %54, label %52

52:                                               ; preds = %47
  %53 = or i32 %51, 4
  store i32 %53, ptr %14, align 4
  br label %54

54:                                               ; preds = %52, %47, %43, %18, %13
  %55 = phi i32 [ -11, %43 ], [ -11, %18 ], [ 0, %47 ], [ 0, %52 ], [ 0, %13 ]
  tail call void @mutex_unlock(ptr noundef %5) #10
  ret i32 %55
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @phy_power_off(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call fastcc i32 @s5pcsis_pm_suspend(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call fastcc i32 @s5pcsis_pm_resume(ptr noundef %0, i1 noundef zeroext false)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call fastcc i32 @s5pcsis_pm_suspend(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s5pcsis_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = tail call fastcc i32 @s5pcsis_pm_resume(ptr noundef %0, i1 noundef zeroext true)
  ret i32 %2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }

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
!9 = !{i64 3758674}
!10 = !{i64 2154760560}
!11 = !{i64 2154761030}
!12 = !{i64 2154763059}
!13 = !{i64 3758256}
!14 = !{i64 2154753439}
!15 = !{i64 2147967673}
!16 = !{i64 465983, i64 2147955954, i64 2147955980, i64 2147956027, i64 2147956049, i64 2147956077, i64 2147956097}
!17 = !{i64 452552, i64 452577, i64 452599, i64 452615, i64 452627, i64 452647, i64 452671, i64 452687, i64 452699}
!18 = !{i64 2147967799}
!19 = !{i64 2154742018}
!20 = !{i64 2154742257}
!21 = !{i64 2154744117}
!22 = !{i64 2154744374}
!23 = !{i64 2154744887}
!24 = !{i64 2154745150}
!25 = !{i64 2154742770}
!26 = !{i64 2154743040}
!27 = !{i64 2154748283}
!28 = !{i64 2154748524}
!29 = !{i64 2154746384}
!30 = !{i64 2154746635}
!31 = !{i64 2154747005}
!32 = !{i64 2154747518}
!33 = !{i64 2154747770}
!34 = !{i64 2154749037}
!35 = !{i64 2154749314}
!36 = !{i64 2154749827}
!37 = !{i64 2154750100}
