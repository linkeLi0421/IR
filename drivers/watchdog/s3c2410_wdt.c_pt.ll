; ModuleID = '/llk/IR/drivers/watchdog/s3c2410_wdt.c_pt.bc'
source_filename = "../drivers/watchdog/s3c2410_wdt.c"
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
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.s3c2410_wdt_variant = type { i32, i32, i8, i32, i32, i32, i32, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.watchdog_device = type { i32, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, ptr, ptr, i32, %struct.list_head }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.watchdog_info = type { i32, i32, [32 x i8] }
%struct.watchdog_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.s3c2410_wdt = type { ptr, ptr, ptr, ptr, i32, %struct.spinlock, i32, i32, %struct.watchdog_device, %struct.notifier_block, ptr, ptr }

@__param_str_tmr_margin = internal constant [11 x i8] c"tmr_margin\00", align 1
@__this_module = external dso_local global %struct.module, align 64
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@tmr_margin = internal global i32 0, align 4
@__param_tmr_margin = internal constant %struct.kernel_param { ptr @__param_str_tmr_margin, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @tmr_margin } }, section "__param", align 4
@__UNIQUE_ID_tmr_margintype186 = internal constant [24 x i8] c"parmtype=tmr_margin:int\00", section ".modinfo", align 1
@__param_str_tmr_atboot = internal constant [11 x i8] c"tmr_atboot\00", align 1
@tmr_atboot = internal global i32 0, align 4
@__param_tmr_atboot = internal constant %struct.kernel_param { ptr @__param_str_tmr_atboot, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @tmr_atboot } }, section "__param", align 4
@__UNIQUE_ID_tmr_atboottype187 = internal constant [24 x i8] c"parmtype=tmr_atboot:int\00", section ".modinfo", align 1
@__param_str_nowayout = internal constant [9 x i8] c"nowayout\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nowayout = internal global i8 0, align 1
@__param_nowayout = internal constant %struct.kernel_param { ptr @__param_str_nowayout, ptr @__this_module, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @nowayout } }, section "__param", align 4
@__UNIQUE_ID_nowayouttype188 = internal constant [23 x i8] c"parmtype=nowayout:bool\00", section ".modinfo", align 1
@__param_str_soft_noboot = internal constant [12 x i8] c"soft_noboot\00", align 1
@soft_noboot = internal global i32 0, align 4
@__param_soft_noboot = internal constant %struct.kernel_param { ptr @__param_str_soft_noboot, ptr @__this_module, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.4 { ptr @soft_noboot } }, section "__param", align 4
@__UNIQUE_ID_soft_noboottype189 = internal constant [25 x i8] c"parmtype=soft_noboot:int\00", section ".modinfo", align 1
@__UNIQUE_ID_tmr_margin190 = internal constant [63 x i8] c"parm=tmr_margin:Watchdog tmr_margin in seconds. (default=(15))\00", section ".modinfo", align 1
@__UNIQUE_ID_tmr_atboot191 = internal constant [74 x i8] c"parm=tmr_atboot:Watchdog is started at boot time if set to 1, default=(0)\00", section ".modinfo", align 1
@__UNIQUE_ID_nowayout192 = internal constant [66 x i8] c"parm=nowayout:Watchdog cannot be stopped once started (default=0)\00", section ".modinfo", align 1
@__UNIQUE_ID_soft_noboot193 = internal constant [86 x i8] c"parm=soft_noboot:Watchdog action, set to 1 to ignore reboots, 0 to reboot (default 0)\00", section ".modinfo", align 1
@s3c2410_wdt_match = internal constant [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c2410-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_s3c2410 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,s3c6410-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_s3c6410 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5250-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_exynos5250 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos5420-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_exynos5420 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_exynos7 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos850-wdt\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @drv_data_exynos850_cl0 }, %struct.of_device_id zeroinitializer], align 4
@s3c2410_wdt_ids = internal constant [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"s3c2410-wdt\00\00\00\00\00\00\00\00\00", i32 ptrtoint (ptr @drv_data_s3c2410 to i32) }, %struct.platform_device_id zeroinitializer], align 4
@__UNIQUE_ID_author194 = internal constant [80 x i8] c"author=Ben Dooks <ben@simtec.co.uk>, Dimitry Andric <dimitry.andric@tomtom.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description195 = internal constant [43 x i8] c"description=S3C2410 Watchdog Device Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license196 = internal constant [12 x i8] c"license=GPL\00", section ".modinfo", align 1
@drv_data_s3c2410 = internal constant %struct.s3c2410_wdt_variant zeroinitializer, align 4
@drv_data_s3c6410 = internal constant %struct.s3c2410_wdt_variant { i32 0, i32 0, i8 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1 }, align 4
@drv_data_exynos5250 = internal constant %struct.s3c2410_wdt_variant { i32 1032, i32 1036, i8 0, i32 20, i32 1028, i32 20, i32 0, i32 0, i32 15 }, align 4
@drv_data_exynos5420 = internal constant %struct.s3c2410_wdt_variant { i32 1032, i32 1036, i8 0, i32 0, i32 1028, i32 9, i32 0, i32 0, i32 15 }, align 4
@drv_data_exynos7 = internal constant %struct.s3c2410_wdt_variant { i32 1032, i32 1036, i8 0, i32 23, i32 1028, i32 23, i32 0, i32 0, i32 15 }, align 4
@drv_data_exynos850_cl0 = internal constant %struct.s3c2410_wdt_variant { i32 0, i32 4676, i8 1, i32 2, i32 1028, i32 24, i32 4640, i32 7, i32 23 }, align 4
@s3c2410wdt_driver = internal global %struct.platform_driver { ptr @s3c2410wdt_probe, ptr @s3c2410wdt_remove, ptr @s3c2410wdt_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @s3c2410_wdt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s3c2410wdt_pm_ops, ptr null, ptr null }, ptr @s3c2410_wdt_ids, i8 0 }, align 4
@.str = private unnamed_addr constant [12 x i8] c"s3c2410-wdt\00", align 1
@s3c2410wdt_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @s3c2410wdt_suspend, ptr @s3c2410wdt_resume, ptr @s3c2410wdt_suspend, ptr @s3c2410wdt_resume, ptr @s3c2410wdt_suspend, ptr @s3c2410wdt_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@s3c2410_wdd = internal unnamed_addr constant %struct.watchdog_device { i32 0, ptr null, ptr null, ptr @s3c2410_wdt_ident, ptr @s3c2410wdt_ops, ptr null, i32 0, i32 15, i32 0, i32 0, i32 0, i32 0, i32 0, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, %struct.notifier_block zeroinitializer, ptr null, ptr null, i32 0, %struct.list_head zeroinitializer }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"samsung,syscon-phandle\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"syscon regmap lookup failed.\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"watchdog\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"failed to find bus clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"failed to enable bus clock\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"watchdog_src\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"failed to get source clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"failed to enable source clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"tmr_margin value out of range, default %d used\0A\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"failed to use default timeout\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"failed to install irq (%d)\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"starting watchdog timer\0A\00", align 1
@.str.14 = private unnamed_addr constant [47 x i8] c"watchdog %sactive, reset %sabled, irq %sabled\0A\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@s3c2410_wdt_ident = internal constant %struct.watchdog_info { i32 33152, i32 0, [32 x i8] c"S3C2410 Watchdog\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, align 4
@s3c2410wdt_ops = internal constant %struct.watchdog_ops { ptr @__this_module, ptr @s3c2410wdt_start, ptr @s3c2410wdt_stop, ptr @s3c2410wdt_keepalive, ptr null, ptr @s3c2410wdt_set_heartbeat, ptr null, ptr null, ptr @s3c2410wdt_restart, ptr null }, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.19 = private unnamed_addr constant [22 x i8] c"samsung,cluster-index\00", align 1
@.str.20 = private unnamed_addr constant [29 x i8] c"failed to get cluster index\0A\00", align 1
@drv_data_exynos850_cl1 = internal constant %struct.s3c2410_wdt_variant { i32 0, i32 5700, i8 1, i32 2, i32 1028, i32 23, i32 5664, i32 7, i32 23 }, align 4
@.str.21 = private unnamed_addr constant [25 x i8] c"wrong cluster index: %u\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"timeout %d too big\0A\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"watchdog timer expired (irq)\0A\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"Couldn't get RST_STAT register\0A\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"failed to update reg(%d)\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"watchdog %sabled\0A\00", align 1
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_author194, ptr @__UNIQUE_ID_description195, ptr @__UNIQUE_ID_license196, ptr @__UNIQUE_ID_nowayout192, ptr @__UNIQUE_ID_nowayouttype188, ptr @__UNIQUE_ID_soft_noboot193, ptr @__UNIQUE_ID_soft_noboottype189, ptr @__UNIQUE_ID_tmr_atboot191, ptr @__UNIQUE_ID_tmr_atboottype187, ptr @__UNIQUE_ID_tmr_margin190, ptr @__UNIQUE_ID_tmr_margintype186, ptr @__param_nowayout, ptr @__param_soft_noboot, ptr @__param_tmr_atboot, ptr @__param_tmr_margin], section "llvm.metadata"

@__mod_of__s3c2410_wdt_match_device_table = dso_local alias [7 x %struct.of_device_id], ptr @s3c2410_wdt_match
@__mod_platform__s3c2410_wdt_ids_device_table = dso_local alias [2 x %struct.platform_device_id], ptr @s3c2410_wdt_ids

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @s3c2410wdt_driver, ptr noundef nonnull @__this_module) #6
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @s3c2410wdt_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 160, i32 noundef 3520) #6
  %6 = icmp eq ptr %5, null
  br i1 %6, label %199, label %7

7:                                                ; preds = %1
  store ptr %4, ptr %5, align 4
  %8 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 5
  store i32 0, ptr %8, align 4
  %9 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 8
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(108) %9, ptr noundef nonnull align 4 dereferenceable(108) @s3c2410_wdd, i32 108, i1 false)
  %10 = tail call ptr @of_device_get_match_data(ptr noundef %4) #6
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.platform_device_id, ptr %14, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = inttoptr i32 %16 to ptr
  br label %18

18:                                               ; preds = %12, %7
  %19 = phi ptr [ %10, %7 ], [ %17, %12 ]
  %20 = icmp eq ptr %19, @drv_data_exynos850_cl0
  br i1 %20, label %21, label %33

21:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #6
  store i32 0, ptr %3, align 4, !annotation !8
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = call i32 @of_property_read_variable_u32_array(ptr noundef %23, ptr noundef nonnull @.str.19, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #6
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.20) #7
  br label %31

27:                                               ; preds = %21
  %28 = load i32, ptr %3, align 4
  switch i32 %28, label %30 [
    i32 0, label %31
    i32 1, label %29
  ]

29:                                               ; preds = %27
  br label %31

30:                                               ; preds = %27
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.21, i32 noundef %28) #7
  br label %31

31:                                               ; preds = %30, %29, %27, %26
  %32 = phi ptr [ null, %26 ], [ null, %30 ], [ @drv_data_exynos850_cl1, %29 ], [ @drv_data_exynos850_cl0, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #6
  br label %33

33:                                               ; preds = %31, %18
  %34 = phi ptr [ %32, %31 ], [ %19, %18 ]
  %35 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 10
  store ptr %34, ptr %35, align 4
  %36 = icmp eq ptr %34, null
  br i1 %36, label %199, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %34, i32 0, i32 8
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 30
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %44 = load ptr, ptr %43, align 8
  %45 = call ptr @syscon_regmap_lookup_by_phandle(ptr noundef %44, ptr noundef nonnull @.str.1) #6
  %46 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 11
  store ptr %45, ptr %46, align 4
  %47 = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.2) #7
  %49 = load ptr, ptr %46, align 4
  %50 = ptrtoint ptr %49 to i32
  br label %199

51:                                               ; preds = %42, %37
  %52 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #6
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %199, label %54

54:                                               ; preds = %51
  %55 = call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #6
  %56 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 3
  store ptr %55, ptr %56, align 4
  %57 = icmp ugt ptr %55, inttoptr (i32 -4096 to ptr)
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = ptrtoint ptr %55 to i32
  br label %199

60:                                               ; preds = %54
  %61 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.3) #6
  %62 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 1
  store ptr %61, ptr %62, align 4
  %63 = icmp ugt ptr %61, inttoptr (i32 -4096 to ptr)
  br i1 %63, label %64, label %67

64:                                               ; preds = %60
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.4) #7
  %65 = load ptr, ptr %62, align 4
  %66 = ptrtoint ptr %65 to i32
  br label %199

67:                                               ; preds = %60
  %68 = call i32 @clk_prepare(ptr noundef %61) #6
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = call i32 @clk_enable(ptr noundef %61) #6
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %70
  call void @clk_unprepare(ptr noundef %61) #6
  br label %74

74:                                               ; preds = %73, %67
  %75 = phi i32 [ %68, %67 ], [ %71, %73 ]
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #7
  br label %199

78:                                               ; preds = %74, %70
  %79 = call ptr @devm_clk_get_optional(ptr noundef %4, ptr noundef nonnull @.str.6) #6
  %80 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 2
  store ptr %79, ptr %80, align 4
  %81 = icmp ugt ptr %79, inttoptr (i32 -4096 to ptr)
  br i1 %81, label %82, label %87

82:                                               ; preds = %78
  %83 = ptrtoint ptr %79 to i32
  %84 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %4, i32 noundef %83, ptr noundef nonnull @.str.7) #6
  %85 = load ptr, ptr %80, align 4
  %86 = ptrtoint ptr %85 to i32
  br label %196

87:                                               ; preds = %78
  %88 = call i32 @clk_prepare(ptr noundef %79) #6
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = call i32 @clk_enable(ptr noundef %79) #6
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  call void @clk_unprepare(ptr noundef %79) #6
  br label %94

94:                                               ; preds = %93, %87
  %95 = phi i32 [ %91, %93 ], [ %88, %87 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.8) #7
  br label %196

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 8, i32 9
  store i32 1, ptr %97, align 4
  %98 = load ptr, ptr %80, align 4
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load ptr, ptr %62, align 4
  br label %102

102:                                              ; preds = %100, %96
  %103 = phi ptr [ %101, %100 ], [ %98, %96 ]
  %104 = call i32 @clk_get_rate(ptr noundef %103) #6
  %105 = lshr i32 %104, 15
  %106 = udiv i32 65535, %105
  %107 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 8, i32 10
  store i32 %106, ptr %107, align 4
  %108 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 8, i32 16
  store ptr %5, ptr %108, align 4
  %109 = load i32, ptr @tmr_margin, align 4
  %110 = call i32 @watchdog_init_timeout(ptr noundef %9, i32 noundef %109, ptr noundef %4) #6
  %111 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 8, i32 7
  %112 = load i32, ptr %111, align 4
  %113 = call i32 @s3c2410wdt_set_heartbeat(ptr noundef %9, i32 noundef %112)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %102
  %116 = call i32 @s3c2410wdt_set_heartbeat(ptr noundef %9, i32 noundef 15)
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %115
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str.10, i32 noundef 15) #7
  br label %120

119:                                              ; preds = %115
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11) #7
  br label %193

120:                                              ; preds = %118, %102
  %121 = load ptr, ptr %0, align 8
  %122 = call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %52, ptr noundef nonnull @s3c2410wdt_irq, ptr noundef null, i32 noundef 0, ptr noundef %121, ptr noundef %0) #6
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %125, label %124

124:                                              ; preds = %120
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %122) #7
  br label %193

125:                                              ; preds = %120
  %126 = load i8, ptr @nowayout, align 1, !range !9
  %127 = icmp eq i8 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %125
  %129 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 8, i32 18
  call void @_set_bit(i32 noundef 1, ptr noundef %129) #6
  br label %130

130:                                              ; preds = %128, %125
  call void @watchdog_set_restart_priority(ptr noundef %9, i32 noundef 128) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #6
  store i32 0, ptr %2, align 4, !annotation !8
  %131 = load ptr, ptr %35, align 4
  %132 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %131, i32 0, i32 8
  %133 = load i32, ptr %132, align 4
  %134 = and i32 %133, 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %154, label %136

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 11
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %131, i32 0, i32 4
  %140 = load i32, ptr %139, align 4
  %141 = call i32 @regmap_read(ptr noundef %138, i32 noundef %140, ptr noundef nonnull %2) #6
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %145, label %143

143:                                              ; preds = %136
  %144 = load ptr, ptr %5, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %144, ptr noundef nonnull @.str.24) #7
  br label %153

145:                                              ; preds = %136
  %146 = load i32, ptr %2, align 4
  %147 = load ptr, ptr %35, align 4
  %148 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %147, i32 0, i32 5
  %149 = load i32, ptr %148, align 4
  %150 = shl nuw i32 1, %149
  %151 = and i32 %150, %146
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %145, %143
  br label %154

154:                                              ; preds = %153, %145, %130
  %155 = phi i32 [ 0, %153 ], [ 0, %130 ], [ 32, %145 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #6
  %156 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 8, i32 6
  store i32 %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 8, i32 1
  store ptr %4, ptr %157, align 4
  %158 = load i32, ptr @tmr_atboot, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %154
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.13) #7
  %161 = call i32 @s3c2410wdt_start(ptr noundef %9)
  %162 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 8, i32 18
  call void @_set_bit(i32 noundef 3, ptr noundef %162) #6
  br label %173

163:                                              ; preds = %154
  %164 = load ptr, ptr %108, align 4
  %165 = getelementptr inbounds %struct.s3c2410_wdt, ptr %164, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %165) #6
  %166 = getelementptr inbounds %struct.s3c2410_wdt, ptr %164, i32 0, i32 3
  %167 = load ptr, ptr %166, align 4
  %168 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %169 = and i32 %168, -34
  call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  call void @arm_heavy_mb() #6
  %170 = load ptr, ptr %166, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %169) #6, !srcloc !13
  call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %171 = load i16, ptr %165, align 4
  %172 = add i16 %171, 1
  store i16 %172, ptr %165, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !15
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br label %173

173:                                              ; preds = %163, %160
  %174 = call i32 @watchdog_register_device(ptr noundef %9) #6
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %193

176:                                              ; preds = %173
  %177 = call fastcc i32 @s3c2410wdt_enable(ptr noundef nonnull %5, i1 noundef zeroext true)
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %192, label %179

179:                                              ; preds = %176
  %180 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %180, align 8
  %181 = load ptr, ptr %56, align 4
  %182 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %181) #6, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !18
  %183 = and i32 %182, 32
  %184 = icmp eq i32 %183, 0
  %185 = select i1 %184, ptr @.str.16, ptr @.str.15
  %186 = and i32 %182, 1
  %187 = icmp eq i32 %186, 0
  %188 = select i1 %187, ptr @.str.18, ptr @.str.17
  %189 = and i32 %182, 4
  %190 = icmp eq i32 %189, 0
  %191 = select i1 %190, ptr @.str.18, ptr @.str.17
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %4, ptr noundef nonnull @.str.14, ptr noundef nonnull %185, ptr noundef nonnull %188, ptr noundef nonnull %191) #7
  br label %199

192:                                              ; preds = %176
  call void @watchdog_unregister_device(ptr noundef %9) #6
  br label %193

193:                                              ; preds = %192, %173, %124, %119
  %194 = phi i32 [ %122, %124 ], [ %174, %173 ], [ %177, %192 ], [ %116, %119 ]
  %195 = load ptr, ptr %80, align 4
  call void @clk_disable(ptr noundef %195) #6
  call void @clk_unprepare(ptr noundef %195) #6
  br label %196

196:                                              ; preds = %193, %94, %82
  %197 = phi i32 [ %86, %82 ], [ %95, %94 ], [ %194, %193 ]
  %198 = load ptr, ptr %62, align 4
  call void @clk_disable(ptr noundef %198) #6
  call void @clk_unprepare(ptr noundef %198) #6
  br label %199

199:                                              ; preds = %196, %179, %77, %64, %58, %51, %48, %33, %1
  %200 = phi i32 [ %50, %48 ], [ %59, %58 ], [ %66, %64 ], [ %75, %77 ], [ %197, %196 ], [ 0, %179 ], [ -12, %1 ], [ -22, %33 ], [ %52, %51 ]
  ret i32 %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @s3c2410wdt_enable(ptr noundef %3, i1 noundef zeroext false)
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 8
  tail call void @watchdog_unregister_device(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #6
  tail call void @clk_unprepare(ptr noundef %9) #6
  %10 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  br label %12

12:                                               ; preds = %6, %1
  %13 = phi i32 [ 0, %6 ], [ %4, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @s3c2410wdt_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @s3c2410wdt_enable(ptr noundef %3, i1 noundef zeroext false)
  %5 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 8, i32 16
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s3c2410_wdt, ptr %6, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %7) #6
  %8 = getelementptr inbounds %struct.s3c2410_wdt, ptr %6, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %11 = and i32 %10, -34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %12 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %11) #6, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %13 = load i16, ptr %7, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %7, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_phandle(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_init_timeout(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_set_heartbeat(ptr nocapture noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s3c2410_wdt, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.s3c2410_wdt, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi ptr [ %10, %8 ], [ %6, %2 ]
  %13 = tail call i32 @clk_get_rate(ptr noundef %12) #6
  %14 = icmp eq i32 %1, 0
  br i1 %14, label %45, label %15

15:                                               ; preds = %11
  %16 = add i32 %13, 127
  %17 = lshr i32 %16, 7
  %18 = mul i32 %17, %1
  %19 = icmp ugt i32 %18, 65535
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = add i32 %18, 65534
  %22 = udiv i32 %21, 65535
  %23 = icmp ugt i32 %21, 16842494
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.22, i32 noundef %1) #7
  br label %45

26:                                               ; preds = %20, %15
  %27 = phi i32 [ %22, %20 ], [ 1, %15 ]
  %28 = add nsw i32 %18, -1
  %29 = add nsw i32 %28, %27
  %30 = udiv i32 %29, %27
  %31 = getelementptr inbounds %struct.s3c2410_wdt, ptr %4, i32 0, i32 4
  store i32 %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.s3c2410_wdt, ptr %4, i32 0, i32 3
  %33 = load ptr, ptr %32, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !19
  %35 = and i32 %34, -65281
  %36 = shl nuw nsw i32 %27, 8
  %37 = add nsw i32 %36, -256
  %38 = or i32 %35, %37
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !20
  tail call void @arm_heavy_mb() #6
  %39 = load ptr, ptr %32, align 4
  %40 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %30) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !21
  tail call void @arm_heavy_mb() #6
  %41 = load ptr, ptr %32, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %41, i32 %38) #6, !srcloc !13
  %42 = mul i32 %30, %27
  %43 = udiv i32 %42, %17
  %44 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 7
  store i32 %43, ptr %44, align 4
  br label %45

45:                                               ; preds = %26, %24, %11
  %46 = phi i32 [ -22, %24 ], [ 0, %26 ], [ -22, %11 ]
  ret i32 %46
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_irq(i32 noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %5, ptr noundef nonnull @.str.23) #7
  %6 = getelementptr inbounds %struct.s3c2410_wdt, ptr %4, i32 0, i32 8, i32 16
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.s3c2410_wdt, ptr %7, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %8) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %9 = getelementptr inbounds %struct.s3c2410_wdt, ptr %7, i32 0, i32 4
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.s3c2410_wdt, ptr %7, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %10) #6, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %14 = load i16, ptr %8, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  %16 = getelementptr inbounds %struct.s3c2410_wdt, ptr %4, i32 0, i32 10
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %17, i32 0, i32 8
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 1
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !23
  tail call void @arm_heavy_mb() #6
  %23 = getelementptr inbounds %struct.s3c2410_wdt, ptr %4, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 1) #6, !srcloc !13
  br label %26

26:                                               ; preds = %22, %2
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_set_restart_priority(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_start(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %8 = and i32 %7, -34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %9 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #6, !srcloc !13
  %10 = load ptr, ptr %5, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !24
  %12 = load i32, ptr @soft_noboot, align 4
  %13 = icmp eq i32 %12, 0
  %14 = and i32 %11, -62
  %15 = select i1 %13, i32 57, i32 60
  %16 = or i32 %15, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !25
  tail call void @arm_heavy_mb() #6
  %17 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %5, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !26
  tail call void @arm_heavy_mb() #6
  %21 = load i32, ptr %17, align 4
  %22 = load ptr, ptr %5, align 4
  %23 = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !27
  tail call void @arm_heavy_mb() #6
  %24 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %16) #6, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %25 = load i16, ptr %4, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_stop(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %4) #6
  %5 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %8 = and i32 %7, -34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %9 = load ptr, ptr %5, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %8) #6, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @watchdog_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @s3c2410wdt_enable(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.s3c2410_wdt, ptr %0, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %4, i32 0, i32 3
  %11 = load i32, ptr %10, align 4
  %12 = shl nuw i32 1, %11
  %13 = select i1 %1, i32 0, i32 %12
  %14 = getelementptr inbounds %struct.s3c2410_wdt, ptr %0, i32 0, i32 11
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %4, align 4
  %17 = tail call i32 @regmap_update_bits_base(ptr noundef %15, i32 noundef %16, i32 noundef %12, i32 noundef %13, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %64, label %19

19:                                               ; preds = %9
  %20 = load ptr, ptr %3, align 4
  %21 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %20, i32 0, i32 8
  %22 = load i32, ptr %21, align 4
  br label %23

23:                                               ; preds = %19, %2
  %24 = phi i32 [ %22, %19 ], [ %6, %2 ]
  %25 = phi ptr [ %20, %19 ], [ %4, %2 ]
  %26 = and i32 %24, 2
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %48, label %28

28:                                               ; preds = %23
  %29 = xor i1 %1, true
  %30 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %25, i32 0, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = shl nuw i32 1, %31
  %33 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %25, i32 0, i32 2
  %34 = load i8, ptr %33, align 4, !range !9
  %35 = zext i1 %29 to i8
  %36 = icmp eq i8 %34, %35
  %37 = select i1 %36, i32 0, i32 %32
  %38 = getelementptr inbounds %struct.s3c2410_wdt, ptr %0, i32 0, i32 11
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %25, i32 0, i32 1
  %41 = load i32, ptr %40, align 4
  %42 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef %41, i32 noundef %32, i32 noundef %37, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %64, label %44

44:                                               ; preds = %28
  %45 = load ptr, ptr %3, align 4
  %46 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %45, i32 0, i32 8
  %47 = load i32, ptr %46, align 4
  br label %48

48:                                               ; preds = %44, %23
  %49 = phi i32 [ %47, %44 ], [ %24, %23 ]
  %50 = phi ptr [ %45, %44 ], [ %25, %23 ]
  %51 = and i32 %49, 16
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %50, i32 0, i32 7
  %55 = load i32, ptr %54, align 4
  %56 = shl nuw i32 1, %55
  %57 = select i1 %1, i32 %56, i32 0
  %58 = getelementptr inbounds %struct.s3c2410_wdt, ptr %0, i32 0, i32 11
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.s3c2410_wdt_variant, ptr %50, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef %61, i32 noundef %56, i32 noundef %57, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53, %28, %9
  %65 = phi i32 [ %17, %9 ], [ %42, %28 ], [ %62, %53 ]
  %66 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %66, ptr noundef nonnull @.str.25, i32 noundef %65) #7
  br label %67

67:                                               ; preds = %64, %53, %48
  %68 = phi i32 [ 0, %53 ], [ 0, %48 ], [ %65, %64 ]
  ret i32 %68
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @watchdog_unregister_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_keepalive(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %4) #6
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !22
  tail call void @arm_heavy_mb() #6
  %5 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 4
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #6, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %10 = load i16, ptr %4, align 4
  %11 = add i16 %10, 1
  store i16 %11, ptr %4, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_restart(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readnone %2) #2 {
  %4 = getelementptr inbounds %struct.watchdog_device, ptr %0, i32 0, i32 16
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s3c2410_wdt, ptr %5, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !28
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !29
  tail call void @arm_heavy_mb() #6
  %8 = getelementptr i8, ptr %7, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 128) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !30
  tail call void @arm_heavy_mb() #6
  %9 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 128) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !31
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 8225) #6, !srcloc !13
  br label %10

10:                                               ; preds = %10, %3
  %11 = phi i32 [ 500, %3 ], [ %12, %10 ]
  %12 = add nsw i32 %11, -1
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %13(i32 noundef 214748000) #6
  %14 = icmp eq i32 %12, 0
  br i1 %14, label %15, label %10

15:                                               ; preds = %10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !32
  %7 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 6
  store i32 %6, ptr %7, align 4
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !33
  %11 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 7
  store i32 %10, ptr %11, align 4
  %12 = tail call fastcc i32 @s3c2410wdt_enable(ptr noundef %3, i1 noundef zeroext false)
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 8, i32 16
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.s3c2410_wdt, ptr %16, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %17) #6
  %18 = getelementptr inbounds %struct.s3c2410_wdt, ptr %16, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #6, !srcloc !11
  %21 = and i32 %20, -34
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !12
  tail call void @arm_heavy_mb() #6
  %22 = load ptr, ptr %18, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %21) #6, !srcloc !13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #6, !srcloc !14
  %23 = load i16, ptr %17, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #6, !srcloc !15
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #6, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #6, !srcloc !17
  br label %25

25:                                               ; preds = %14, %1
  %26 = phi i32 [ 0, %14 ], [ %12, %1 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @s3c2410wdt_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !34
  tail call void @arm_heavy_mb() #6
  %4 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 3
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %5) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !35
  tail call void @arm_heavy_mb() #6
  %9 = load i32, ptr %4, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr i8, ptr %10, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #6, !srcloc !13
  tail call void asm sideeffect "dsb st", "~{memory}"() #6, !srcloc !36
  tail call void @arm_heavy_mb() #6
  %12 = getelementptr inbounds %struct.s3c2410_wdt, ptr %3, i32 0, i32 6
  %13 = load i32, ptr %12, align 4
  %14 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %13) #6, !srcloc !13
  %15 = tail call fastcc i32 @s3c2410wdt_enable(ptr noundef %3, i1 noundef zeroext true)
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load i32, ptr %12, align 4
  %19 = and i32 %18, 32
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.18, ptr @.str.17
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %21) #7
  br label %22

22:                                               ; preds = %17, %1
  %23 = phi i32 [ 0, %17 ], [ %15, %1 ]
  ret i32 %23
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
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
!8 = !{!"auto-init"}
!9 = !{i8 0, i8 2}
!10 = !{i64 3755364}
!11 = !{i64 2152040812}
!12 = !{i64 2152041025}
!13 = !{i64 3754946}
!14 = !{i64 2148948850}
!15 = !{i64 2148944674}
!16 = !{i64 2148944749, i64 2148944776, i64 2148944823, i64 2148944845, i64 2148944873, i64 2148944893}
!17 = !{i64 2148971853}
!18 = !{i64 2152060042}
!19 = !{i64 2152046594}
!20 = !{i64 2152046822}
!21 = !{i64 2152047153}
!22 = !{i64 2152040318}
!23 = !{i64 2152050923}
!24 = !{i64 2152041509}
!25 = !{i64 2152042508}
!26 = !{i64 2152042854}
!27 = !{i64 2152043195}
!28 = !{i64 2152047475}
!29 = !{i64 2152047787}
!30 = !{i64 2152048105}
!31 = !{i64 2152048510}
!32 = !{i64 2152061376}
!33 = !{i64 2152061724}
!34 = !{i64 2152061929}
!35 = !{i64 2152062290}
!36 = !{i64 2152062651}
