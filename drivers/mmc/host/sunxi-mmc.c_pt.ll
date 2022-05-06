; ModuleID = '/llk/IR/drivers/mmc/host/sunxi-mmc.c_pt.bc'
source_filename = "../drivers/mmc/host/sunxi-mmc.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mmc_host_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.sunxi_mmc_cfg = type { i32, i32, ptr, i8, i8, i8, i8 }
%struct.sunxi_mmc_clk_delay = type { i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.mmc_host = type { ptr, %struct.device, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, i32, i32, i32, %struct.spinlock, %struct.mmc_ios, i16, i32, i32, i32, i32, i32, %struct.timer_list, i8, ptr, %struct.wait_queue_head, ptr, i32, %struct.mmc_ctx, %struct.delayed_work, i32, %struct.mmc_slot, ptr, i32, ptr, %struct.delayed_work, i8, %struct.atomic_t, i32, ptr, i8, %struct.mmc_supply, ptr, ptr, i32, i32, i32, i32, ptr, ptr, i32, i8, i8, i8, [37 x i8], [0 x i32] }
%struct.mmc_ios = type { i32, i16, i32, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.mmc_ctx = type { ptr }
%struct.mmc_slot = type { i32, i8, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.mmc_supply = type { ptr, ptr }
%struct.sunxi_mmc_host = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, i32, ptr, i8, ptr, ptr, i32, i8, i8 }
%struct.mmc_request = type { ptr, ptr, ptr, ptr, %struct.completion, %struct.completion, ptr, ptr, ptr, i8, i32 }
%struct.mmc_command = type { i32, i32, [4 x i32], i32, i32, i32, i32, ptr, ptr }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sunxi_idma_des = type { i32, i32, i32, i32 }

@__initcall__kmod_sunxi_mmc__275_1549_sunxi_mmc_driver_init6 = internal global ptr @sunxi_mmc_driver_init, section ".initcall6.init", align 4
@sunxi_mmc_driver = internal global %struct.platform_driver { ptr @sunxi_mmc_probe, ptr @sunxi_mmc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 1, ptr @sunxi_mmc_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_mmc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sunxi_mmc_driver_exit = internal global ptr @sunxi_mmc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description276 = internal constant [64 x i8] c"sunxi_mmc.description=Allwinner's SD/MMC Card Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [42 x i8] c"sunxi_mmc.file=drivers/mmc/host/sunxi-mmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [25 x i8] c"sunxi_mmc.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author279 = internal constant [66 x i8] c"sunxi_mmc.author=David Lanzend\C3\B6rfer <david.lanzendoerfer@o2s.ch>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias280 = internal constant [35 x i8] c"sunxi_mmc.alias=platform:sunxi-mmc\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sunxi-mmc\00", align 1
@sunxi_mmc_of_match = internal constant [10 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_a13_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_a20_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-emmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_emmc_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun9i-a80-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun9i_a80_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-emmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_emmc_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a100-mmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a100_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a100-emmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a100_emmc_cfg }, %struct.of_device_id zeroinitializer], align 4
@sunxi_mmc_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_mmc_runtime_suspend, ptr @sunxi_mmc_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"mmc alloc host failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Failed to allocate DMA descriptor mem\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"MMC clk timing mode unknown\0A\00", align 1
@sunxi_mmc_ops = internal constant %struct.mmc_host_ops { ptr null, ptr null, ptr @sunxi_mmc_request, ptr null, ptr @sunxi_mmc_set_ios, ptr @mmc_gpio_get_ro, ptr @mmc_gpio_get_cd, ptr @sunxi_mmc_enable_sdio_irq, ptr null, ptr null, ptr @sunxi_mmc_volt_switch, ptr @sunxi_mmc_card_busy, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sunxi_mmc_hw_reset, ptr null, ptr null, ptr null }, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"allwinner,sun50i-h5-emmc\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"initialized, max. request size: %u KB%s\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c", uses new timings mode\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"ahb\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"Could not get ahb clock\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"mmc\00", align 1
@.str.11 = private unnamed_addr constant [25 x i8] c"Could not get mmc clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.13 = private unnamed_addr constant [28 x i8] c"Could not get output clock\0A\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"Could not get sample clock\0A\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Couldn't reset the MMC controller (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [37 x i8] c"Couldn't enable the bus clocks (%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"Enable mmc clk err %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"Enable output clk err %d\0A\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"Enable sample clk err %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.21 = private unnamed_addr constant [25 x i8] c"fatal err reset timeout\0A\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"no request for manual stop\0A\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"data error, sending stop command\0A\00", align 1
@.str.24 = private unnamed_addr constant [26 x i8] c"send stop command failed\0A\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c"map DMA failed\0A\00", align 1
@.str.26 = private unnamed_addr constant [25 x i8] c"request already pending\0A\00", align 1
@.str.27 = private unnamed_addr constant [19 x i8] c"dma_map_sg failed\0A\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"unaligned scatterlist: os %x length %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [24 x i8] c"failed to enable vqmmc\0A\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"error setting new timing mode\0A\00", align 1
@.str.31 = private unnamed_addr constant [31 x i8] c"error rounding clk to %d: %ld\0A\00", align 1
@.str.32 = private unnamed_addr constant [30 x i8] c"error setting clk to %ld: %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"fatal err update clk timeout\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@sun4i_a10_cfg = internal constant %struct.sunxi_mmc_cfg { i32 13, i32 0, ptr null, i8 0, i8 0, i8 0, i8 0 }, align 4
@sun5i_a13_cfg = internal constant %struct.sunxi_mmc_cfg { i32 16, i32 0, ptr null, i8 0, i8 0, i8 0, i8 0 }, align 4
@sun7i_a20_cfg = internal constant %struct.sunxi_mmc_cfg { i32 16, i32 0, ptr @sunxi_mmc_clk_delays, i8 0, i8 0, i8 0, i8 0 }, align 4
@sun8i_a83t_emmc_cfg = internal constant %struct.sunxi_mmc_cfg { i32 16, i32 0, ptr @sunxi_mmc_clk_delays, i8 0, i8 0, i8 0, i8 1 }, align 4
@sun9i_a80_cfg = internal constant %struct.sunxi_mmc_cfg { i32 16, i32 0, ptr @sun9i_mmc_clk_delays, i8 0, i8 0, i8 0, i8 0 }, align 4
@sun50i_a64_cfg = internal constant %struct.sunxi_mmc_cfg { i32 16, i32 0, ptr null, i8 1, i8 1, i8 1, i8 0 }, align 4
@sun50i_a64_emmc_cfg = internal constant %struct.sunxi_mmc_cfg { i32 13, i32 0, ptr null, i8 1, i8 0, i8 1, i8 0 }, align 4
@sun50i_a100_cfg = internal constant %struct.sunxi_mmc_cfg { i32 16, i32 2, ptr null, i8 1, i8 1, i8 1, i8 0 }, align 4
@sun50i_a100_emmc_cfg = internal constant %struct.sunxi_mmc_cfg { i32 13, i32 2, ptr null, i8 1, i8 0, i8 1, i8 0 }, align 4
@sunxi_mmc_clk_delays = internal constant [5 x %struct.sunxi_mmc_clk_delay] [%struct.sunxi_mmc_clk_delay { i32 180, i32 180 }, %struct.sunxi_mmc_clk_delay { i32 180, i32 75 }, %struct.sunxi_mmc_clk_delay { i32 90, i32 120 }, %struct.sunxi_mmc_clk_delay { i32 60, i32 120 }, %struct.sunxi_mmc_clk_delay { i32 90, i32 180 }], align 4
@sun9i_mmc_clk_delays = internal constant [5 x %struct.sunxi_mmc_clk_delay] [%struct.sunxi_mmc_clk_delay { i32 180, i32 180 }, %struct.sunxi_mmc_clk_delay { i32 180, i32 75 }, %struct.sunxi_mmc_clk_delay { i32 150, i32 120 }, %struct.sunxi_mmc_clk_delay { i32 54, i32 36 }, %struct.sunxi_mmc_clk_delay { i32 72, i32 72 }], align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias280, ptr @__UNIQUE_ID_author279, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_sunxi_mmc_driver_exit, ptr @__initcall__kmod_sunxi_mmc__275_1549_sunxi_mmc_driver_init6, ptr @sunxi_mmc_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sunxi_mmc_driver, ptr noundef null) #5
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sunxi_mmc_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sunxi_mmc_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call ptr @mmc_alloc_host(i32 noundef 80, ptr noundef %2) #5
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #6
  br label %176

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %7, align 8
  %8 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  store ptr %2, ptr %8, align 4
  %9 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %8, i32 0, i32 1
  store ptr %3, ptr %9, align 4
  %10 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 6
  store i32 0, ptr %10, align 4
  %11 = tail call ptr @of_device_get_match_data(ptr noundef %2) #5
  %12 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 1
  store ptr %11, ptr %12, align 4
  %13 = icmp eq ptr %11, null
  br i1 %13, label %174, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %9, align 4
  %16 = tail call i32 @mmc_regulator_get_supply(ptr noundef %15) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %174

18:                                               ; preds = %14
  %19 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #5
  %20 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 1, i32 1
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = ptrtoint ptr %19 to i32
  br label %71

24:                                               ; preds = %18
  %25 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.8) #5
  %26 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.9) #6
  %29 = load ptr, ptr %26, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %71

31:                                               ; preds = %24
  %32 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.10) #5
  %33 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 3
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #6
  %36 = load ptr, ptr %33, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %71

38:                                               ; preds = %31
  %39 = load ptr, ptr %12, align 4
  %40 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %39, i32 0, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %57, label %43

43:                                               ; preds = %38
  %44 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.12) #5
  %45 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 5
  store ptr %44, ptr %45, align 4
  %46 = icmp ugt ptr %44, inttoptr (i32 -4096 to ptr)
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #6
  %48 = load ptr, ptr %45, align 4
  %49 = ptrtoint ptr %48 to i32
  br label %71

50:                                               ; preds = %43
  %51 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.14) #5
  %52 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 4
  store ptr %51, ptr %52, align 4
  %53 = icmp ugt ptr %51, inttoptr (i32 -4096 to ptr)
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15) #6
  %55 = load ptr, ptr %52, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %71

57:                                               ; preds = %50, %38
  %58 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef nonnull @.str.8, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext true) #5
  %59 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1
  store ptr %58, ptr %59, align 4
  %60 = icmp eq ptr %58, inttoptr (i32 -517 to ptr)
  br i1 %60, label %174, label %61

61:                                               ; preds = %57
  %62 = tail call fastcc i32 @sunxi_mmc_enable(ptr noundef %8) #5
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %174

64:                                               ; preds = %61
  %65 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #5
  %66 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 7
  store i32 %65, ptr %66, align 4
  %67 = icmp slt i32 %65, 1
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  tail call fastcc void @sunxi_mmc_disable(ptr noundef %8) #5
  br label %174

69:                                               ; preds = %64
  %70 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %65, ptr noundef nonnull @sunxi_mmc_irq, ptr noundef nonnull @sunxi_mmc_handle_manual_stop, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %8) #5
  br label %71

71:                                               ; preds = %69, %54, %47, %35, %28, %22
  %72 = phi i32 [ %23, %22 ], [ %30, %28 ], [ %37, %35 ], [ %49, %47 ], [ %56, %54 ], [ %70, %69 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %174

74:                                               ; preds = %71
  %75 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 3
  %76 = tail call ptr @dma_alloc_attrs(ptr noundef %2, i32 noundef 4096, ptr noundef %75, i32 noundef 3264, i32 noundef 0) #5
  %77 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 4
  store ptr %76, ptr %77, align 4
  %78 = icmp eq ptr %76, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #6
  br label %174

80:                                               ; preds = %74
  %81 = load ptr, ptr %12, align 4
  %82 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %81, i32 0, i32 6
  %83 = load i8, ptr %82, align 1, !range !8
  %84 = icmp eq i8 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 3
  %87 = load ptr, ptr %86, align 4
  %88 = tail call i32 @sunxi_ccu_set_mmc_timing_mode(ptr noundef %87, i1 noundef zeroext true) #5
  %89 = load ptr, ptr %86, align 4
  %90 = tail call i32 @sunxi_ccu_get_mmc_timing_mode(ptr noundef %89) #5
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %85
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.3) #6
  %93 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %8, i32 0, i32 20
  store i8 0, ptr %93, align 1
  br label %104

94:                                               ; preds = %85
  %95 = icmp ne i32 %90, 0
  %96 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %8, i32 0, i32 20
  %97 = zext i1 %95 to i8
  store i8 %97, ptr %96, align 1
  br label %104

98:                                               ; preds = %80
  %99 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %81, i32 0, i32 5
  %100 = load i8, ptr %99, align 2, !range !8
  %101 = icmp eq i8 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %8, i32 0, i32 20
  store i8 1, ptr %103, align 1
  br label %104

104:                                              ; preds = %102, %98, %94, %92
  %105 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 3
  store ptr @sunxi_mmc_ops, ptr %105, align 4
  %106 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 25
  store i32 8192, ptr %106, align 8
  %107 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 24
  store i32 4096, ptr %107, align 4
  %108 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 21
  store i16 256, ptr %108, align 4
  %109 = load ptr, ptr %12, align 4
  %110 = load i32, ptr %109, align 4
  %111 = shl nuw i32 1, %110
  %112 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 20
  store i32 %111, ptr %112, align 8
  %113 = shl i32 %111, 8
  %114 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 23
  store i32 %113, ptr %114, align 16
  %115 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 5
  store i32 400000, ptr %115, align 4
  %116 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 6
  store i32 52000000, ptr %116, align 16
  %117 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 16
  %118 = load i32, ptr %117, align 8
  %119 = or i32 %118, 14
  store i32 %119, ptr %117, align 8
  %120 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %109, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %127

123:                                              ; preds = %104
  %124 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %8, i32 0, i32 20
  %125 = load i8, ptr %124, align 1, !range !8
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %123, %104
  %128 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %129 = load ptr, ptr %128, align 8
  %130 = tail call i32 @of_device_is_compatible(ptr noundef %129, ptr noundef nonnull @.str.4) #5
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %127
  %133 = load i32, ptr %117, align 8
  %134 = or i32 %133, 6144
  store i32 %134, ptr %117, align 8
  br label %135

135:                                              ; preds = %132, %127, %123
  %136 = tail call i32 @mmc_of_parse(ptr noundef nonnull %3) #5
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %170

138:                                              ; preds = %135
  %139 = load ptr, ptr %12, align 4
  %140 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %139, i32 0, i32 2
  %141 = load ptr, ptr %140, align 4
  %142 = icmp eq ptr %141, null
  br i1 %142, label %143, label %153

143:                                              ; preds = %138
  %144 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %8, i32 0, i32 20
  %145 = load i8, ptr %144, align 1, !range !8
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load i32, ptr %117, align 8
  %149 = and i32 %148, -2045953
  store i32 %149, ptr %117, align 8
  %150 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %151 = load i32, ptr %150, align 4
  %152 = and i32 %151, -97
  store i32 %152, ptr %150, align 4
  br label %153

153:                                              ; preds = %147, %143, %138
  %154 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 17
  %155 = load i32, ptr %154, align 4
  %156 = and i32 %155, -98305
  store i32 %156, ptr %154, align 4
  %157 = tail call fastcc i32 @sunxi_mmc_init_host(ptr noundef %8)
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %159, label %170

159:                                              ; preds = %153
  %160 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #5
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 50) #5
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #5
  tail call void @pm_runtime_enable(ptr noundef %2) #5
  %161 = tail call i32 @mmc_add_host(ptr noundef nonnull %3) #5
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %159
  %164 = load i32, ptr %114, align 16
  %165 = lshr i32 %164, 10
  %166 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %8, i32 0, i32 20
  %167 = load i8, ptr %166, align 1, !range !8
  %168 = icmp eq i8 %167, 0
  %169 = select i1 %168, ptr @.str.7, ptr @.str.6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.5, i32 noundef %165, ptr noundef nonnull %169) #6
  br label %176

170:                                              ; preds = %159, %153, %135
  %171 = phi i32 [ %136, %135 ], [ %157, %153 ], [ %161, %159 ]
  %172 = load ptr, ptr %77, align 4
  %173 = load i32, ptr %75, align 4
  tail call void @dma_free_attrs(ptr noundef %2, i32 noundef 4096, ptr noundef %172, i32 noundef %173, i32 noundef 0) #5
  br label %174

174:                                              ; preds = %170, %79, %71, %68, %61, %57, %14, %6
  %175 = phi i32 [ %72, %71 ], [ %171, %170 ], [ -12, %79 ], [ -517, %57 ], [ %62, %61 ], [ %16, %14 ], [ -22, %6 ], [ -22, %68 ]
  tail call void @mmc_free_host(ptr noundef nonnull %3) #5
  br label %176

176:                                              ; preds = %174, %163, %5
  %177 = phi i32 [ %175, %174 ], [ 0, %163 ], [ -12, %5 ]
  ret i32 %177
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  tail call void @mmc_remove_host(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %6 = tail call i32 @pm_runtime_force_suspend(ptr noundef %5) #5
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  tail call void @disable_irq(i32 noundef %8) #5
  tail call fastcc void @sunxi_mmc_disable(ptr noundef %4)
  %9 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 4
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 3
  %12 = load i32, ptr %11, align 4
  tail call void @dma_free_attrs(ptr noundef %5, i32 noundef 4096, ptr noundef %10, i32 noundef %12, i32 noundef 0) #5
  tail call void @mmc_free_host(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mmc_alloc_host(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_ccu_set_mmc_timing_mode(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sunxi_ccu_get_mmc_timing_mode(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_of_parse(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_mmc_init_host(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load volatile i32, ptr @jiffies, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %3 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 7) #5, !srcloc !10
  %5 = sub i32 -25, %2
  br label %6

6:                                                ; preds = %6, %1
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = add i32 %5, %9
  %11 = icmp slt i32 %10, 0
  %12 = and i32 %8, 7
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %6, label %15

15:                                               ; preds = %6
  br i1 %13, label %16, label %20

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21) #6
  br label %49

20:                                               ; preds = %15
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !13
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 537329672) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !14
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr %3, align 4
  %24 = getelementptr i8, ptr %23, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -1) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !15
  tail call void @arm_heavy_mb() #5
  %25 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 12
  %26 = load i32, ptr %25, align 4
  %27 = load ptr, ptr %3, align 4
  %28 = getelementptr i8, ptr %27, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !16
  tail call void @arm_heavy_mb() #5
  %29 = load ptr, ptr %3, align 4
  %30 = getelementptr i8, ptr %29, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 -1) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !17
  tail call void @arm_heavy_mb() #5
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 3563) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !18
  tail call void @arm_heavy_mb() #5
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr i8, ptr %33, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 -827719680) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !19
  tail call void @arm_heavy_mb() #5
  %35 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 13
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %38, i32 0, i32 1
  %40 = load i32, ptr %39, align 4
  %41 = lshr i32 %36, %40
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr i8, ptr %42, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #5, !srcloc !10
  %44 = load ptr, ptr %3, align 4
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !20
  %46 = and i32 %45, -1073741841
  %47 = or i32 %46, 16
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !21
  tail call void @arm_heavy_mb() #5
  %48 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %47) #5, !srcloc !10
  br label %49

49:                                               ; preds = %20, %16
  %50 = phi i32 [ 0, %20 ], [ -5, %16 ]
  ret i32 %50
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_add_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_free_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_get_supply(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_mmc_enable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %10, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @reset_control_reset(ptr noundef %3) #5
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %5
  %9 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.16, i32 noundef %6) #6
  br label %93

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 5
  %12 = load ptr, ptr %11, align 4
  %13 = tail call i32 @clk_prepare(ptr noundef %12) #5
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = tail call i32 @clk_enable(ptr noundef %12) #5
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  tail call void @clk_unprepare(ptr noundef %12) #5
  br label %19

19:                                               ; preds = %18, %10
  %20 = phi i32 [ %16, %18 ], [ %13, %10 ]
  %21 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, i32 noundef %20) #6
  br label %87

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = tail call i32 @clk_prepare(ptr noundef %24) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = tail call i32 @clk_enable(ptr noundef %24) #5
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %27
  tail call void @clk_unprepare(ptr noundef %24) #5
  br label %31

31:                                               ; preds = %30, %22
  %32 = phi i32 [ %28, %30 ], [ %25, %22 ]
  %33 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.18, i32 noundef %32) #6
  br label %84

34:                                               ; preds = %27
  %35 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 8
  %36 = load ptr, ptr %35, align 4
  %37 = tail call i32 @clk_prepare(ptr noundef %36) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = tail call i32 @clk_enable(ptr noundef %36) #5
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  tail call void @clk_unprepare(ptr noundef %36) #5
  br label %43

43:                                               ; preds = %42, %34
  %44 = phi i32 [ %40, %42 ], [ %37, %34 ]
  %45 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.19, i32 noundef %44) #6
  br label %81

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 7
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @clk_prepare(ptr noundef %48) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = tail call i32 @clk_enable(ptr noundef %48) #5
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  tail call void @clk_unprepare(ptr noundef %48) #5
  br label %55

55:                                               ; preds = %54, %46
  %56 = phi i32 [ %52, %54 ], [ %49, %46 ]
  %57 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.20, i32 noundef %56) #6
  br label %78

58:                                               ; preds = %51
  %59 = load volatile i32, ptr @jiffies, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %60 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 4
  %61 = load ptr, ptr %60, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 7) #5, !srcloc !10
  %62 = sub i32 -25, %59
  br label %63

63:                                               ; preds = %63, %58
  %64 = load ptr, ptr %60, align 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %64) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %66 = load volatile i32, ptr @jiffies, align 64
  %67 = add i32 %62, %66
  %68 = icmp slt i32 %67, 0
  %69 = and i32 %65, 7
  %70 = icmp ne i32 %69, 0
  %71 = select i1 %68, i1 %70, i1 false
  br i1 %71, label %63, label %72

72:                                               ; preds = %63
  br i1 %70, label %73, label %93

73:                                               ; preds = %72
  %74 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = load ptr, ptr %75, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %76, ptr noundef nonnull @.str.21) #6
  %77 = load ptr, ptr %47, align 4
  tail call void @clk_disable(ptr noundef %77) #5
  tail call void @clk_unprepare(ptr noundef %77) #5
  br label %78

78:                                               ; preds = %73, %55
  %79 = phi i32 [ %56, %55 ], [ -5, %73 ]
  %80 = load ptr, ptr %35, align 4
  tail call void @clk_disable(ptr noundef %80) #5
  tail call void @clk_unprepare(ptr noundef %80) #5
  br label %81

81:                                               ; preds = %78, %43
  %82 = phi i32 [ %44, %43 ], [ %79, %78 ]
  %83 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %83) #5
  tail call void @clk_unprepare(ptr noundef %83) #5
  br label %84

84:                                               ; preds = %81, %31
  %85 = phi i32 [ %32, %31 ], [ %82, %81 ]
  %86 = load ptr, ptr %11, align 4
  tail call void @clk_disable(ptr noundef %86) #5
  tail call void @clk_unprepare(ptr noundef %86) #5
  br label %87

87:                                               ; preds = %84, %19
  %88 = phi i32 [ %20, %19 ], [ %85, %84 ]
  %89 = load ptr, ptr %2, align 4
  %90 = icmp ugt ptr %89, inttoptr (i32 -4096 to ptr)
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = tail call i32 @reset_control_assert(ptr noundef %89) #5
  br label %93

93:                                               ; preds = %91, %87, %72, %8
  %94 = phi i32 [ %6, %8 ], [ %88, %91 ], [ %88, %87 ], [ 0, %72 ]
  ret i32 %94
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 9
  tail call void @_raw_spin_lock(ptr noundef %3) #5
  %4 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 136
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !22
  %8 = load ptr, ptr %4, align 4
  %9 = getelementptr i8, ptr %8, i32 52
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !23
  %11 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 16
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %41, label %14

14:                                               ; preds = %2
  %15 = and i32 %7, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 15
  store i8 0, ptr %18, align 4
  br label %19

19:                                               ; preds = %17, %14
  %20 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 11
  %21 = load i32, ptr %20, align 4
  %22 = or i32 %21, %10
  store i32 %22, ptr %20, align 4
  %23 = and i32 %22, 260
  %24 = icmp eq i32 %23, 256
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !24
  tail call void @arm_heavy_mb() #5
  %26 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = or i32 %27, 4
  %29 = load ptr, ptr %4, align 4
  %30 = getelementptr i8, ptr %29, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %28) #5, !srcloc !10
  br label %41

31:                                               ; preds = %19
  %32 = and i32 %22, 48066
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = and i32 %22, 17420
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 15
  %39 = load i8, ptr %38, align 4, !range !8
  %40 = icmp eq i8 %39, 0
  br label %41

41:                                               ; preds = %37, %34, %31, %25, %2
  %42 = phi i1 [ false, %34 ], [ false, %25 ], [ false, %2 ], [ true, %31 ], [ %40, %37 ]
  %43 = and i32 %10, 65536
  %44 = icmp eq i32 %43, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !25
  tail call void @arm_heavy_mb() #5
  %45 = load ptr, ptr %4, align 4
  %46 = getelementptr i8, ptr %45, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %10) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !26
  tail call void @arm_heavy_mb() #5
  %47 = load ptr, ptr %4, align 4
  %48 = getelementptr i8, ptr %47, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 %7) #5, !srcloc !10
  br i1 %42, label %49, label %151

49:                                               ; preds = %41
  %50 = load ptr, ptr %11, align 4
  %51 = getelementptr inbounds %struct.mmc_request, ptr %50, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !27
  tail call void @arm_heavy_mb() #5
  %53 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 12
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %4, align 4
  %56 = getelementptr i8, ptr %55, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !28
  tail call void @arm_heavy_mb() #5
  %57 = load ptr, ptr %4, align 4
  %58 = getelementptr i8, ptr %57, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 0) #5, !srcloc !10
  %59 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 11
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 48066
  %62 = icmp eq i32 %61, 0
  %63 = getelementptr inbounds %struct.mmc_request, ptr %50, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  br i1 %62, label %77, label %65

65:                                               ; preds = %49
  %66 = getelementptr inbounds %struct.mmc_command, ptr %64, i32 0, i32 5
  store i32 -110, ptr %66, align 4
  %67 = icmp eq ptr %52, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 5
  store i32 -110, ptr %69, align 4
  %70 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 17
  store ptr %50, ptr %70, align 4
  br label %71

71:                                               ; preds = %68, %65
  %72 = getelementptr inbounds %struct.mmc_request, ptr %50, i32 0, i32 3
  %73 = load ptr, ptr %72, align 4
  %74 = icmp eq ptr %73, null
  br i1 %74, label %117, label %75

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.mmc_command, ptr %73, i32 0, i32 5
  store i32 -110, ptr %76, align 4
  br label %117

77:                                               ; preds = %49
  %78 = getelementptr inbounds %struct.mmc_command, ptr %64, i32 0, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  %82 = load ptr, ptr %4, align 4
  br i1 %81, label %103, label %83

83:                                               ; preds = %77
  %84 = getelementptr i8, ptr %82, i32 44
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %84) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !29
  %86 = load ptr, ptr %63, align 4
  %87 = getelementptr inbounds %struct.mmc_command, ptr %86, i32 0, i32 2
  store i32 %85, ptr %87, align 4
  %88 = load ptr, ptr %4, align 4
  %89 = getelementptr i8, ptr %88, i32 40
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !30
  %91 = load ptr, ptr %63, align 4
  %92 = getelementptr %struct.mmc_command, ptr %91, i32 0, i32 2, i32 1
  store i32 %90, ptr %92, align 4
  %93 = load ptr, ptr %4, align 4
  %94 = getelementptr i8, ptr %93, i32 36
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !31
  %96 = load ptr, ptr %63, align 4
  %97 = getelementptr %struct.mmc_command, ptr %96, i32 0, i32 2, i32 2
  store i32 %95, ptr %97, align 4
  %98 = load ptr, ptr %4, align 4
  %99 = getelementptr i8, ptr %98, i32 32
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %99) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !32
  %101 = load ptr, ptr %63, align 4
  %102 = getelementptr %struct.mmc_command, ptr %101, i32 0, i32 2, i32 3
  store i32 %100, ptr %102, align 4
  br label %108

103:                                              ; preds = %77
  %104 = getelementptr i8, ptr %82, i32 32
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !33
  %106 = load ptr, ptr %63, align 4
  %107 = getelementptr inbounds %struct.mmc_command, ptr %106, i32 0, i32 2
  store i32 %105, ptr %107, align 4
  br label %108

108:                                              ; preds = %103, %83
  %109 = icmp eq ptr %52, null
  br i1 %109, label %143, label %110

110:                                              ; preds = %108
  %111 = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = mul i32 %114, %112
  %116 = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 7
  store i32 %115, ptr %116, align 4
  br label %118

117:                                              ; preds = %75, %71
  br i1 %67, label %143, label %118

118:                                              ; preds = %117, %110
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !34
  tail call void @arm_heavy_mb() #5
  %119 = load ptr, ptr %4, align 4
  %120 = getelementptr i8, ptr %119, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %120, i32 823) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !35
  tail call void @arm_heavy_mb() #5
  %121 = load ptr, ptr %4, align 4
  %122 = getelementptr i8, ptr %121, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %122, i32 0) #5, !srcloc !10
  %123 = load ptr, ptr %4, align 4
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %123) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !36
  %125 = or i32 %124, 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !37
  tail call void @arm_heavy_mb() #5
  %126 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %126, i32 %125) #5, !srcloc !10
  %127 = and i32 %125, -33
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !38
  tail call void @arm_heavy_mb() #5
  %128 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %127) #5, !srcloc !10
  %129 = or i32 %127, 2
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !39
  tail call void @arm_heavy_mb() #5
  %130 = load ptr, ptr %4, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %129) #5, !srcloc !10
  %131 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 1
  %132 = load ptr, ptr %131, align 4
  %133 = load ptr, ptr %132, align 64
  %134 = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 12
  %135 = load ptr, ptr %134, align 4
  %136 = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 10
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr inbounds %struct.mmc_data, ptr %52, i32 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = and i32 %139, 256
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %141, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %133, ptr noundef %135, i32 noundef %137, i32 noundef %142, i32 noundef 0) #5
  br label %143

143:                                              ; preds = %118, %117, %108
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !40
  tail call void @arm_heavy_mb() #5
  %144 = load ptr, ptr %4, align 4
  %145 = getelementptr i8, ptr %144, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 65535) #5, !srcloc !10
  store ptr null, ptr %11, align 4
  store i32 0, ptr %59, align 4
  %146 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 15
  store i8 0, ptr %146, align 4
  %147 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 17
  %148 = load ptr, ptr %147, align 4
  %149 = icmp eq ptr %148, null
  %150 = select i1 %149, i32 1, i32 2
  br label %151

151:                                              ; preds = %143, %41
  %152 = phi i32 [ %150, %143 ], [ 1, %41 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !41
  %153 = load i16, ptr %3, align 4
  %154 = add i16 %153, 1
  store i16 %154, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #5, !srcloc !42
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #5, !srcloc !43
  tail call void asm sideeffect "", "~{memory}"() #5, !srcloc !44
  %155 = icmp eq i32 %152, 1
  %156 = select i1 %42, i1 %155, i1 false
  br i1 %156, label %157, label %160

157:                                              ; preds = %151
  %158 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 1
  %159 = load ptr, ptr %158, align 4
  tail call void @mmc_request_done(ptr noundef %159, ptr noundef %12) #5
  br label %160

160:                                              ; preds = %157, %151
  br i1 %44, label %174, label %161

161:                                              ; preds = %160
  %162 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 1
  %163 = load ptr, ptr %162, align 4
  %164 = getelementptr inbounds %struct.mmc_host, ptr %163, i32 0, i32 3
  %165 = load ptr, ptr %164, align 4
  %166 = getelementptr inbounds %struct.mmc_host_ops, ptr %165, i32 0, i32 7
  %167 = load ptr, ptr %166, align 4
  tail call void %167(ptr noundef %163, i32 noundef 0) #5
  %168 = getelementptr inbounds %struct.mmc_host, ptr %163, i32 0, i32 49
  store i8 1, ptr %168, align 8
  %169 = getelementptr inbounds %struct.mmc_host, ptr %163, i32 0, i32 47
  %170 = load ptr, ptr %169, align 8
  %171 = icmp eq ptr %170, null
  br i1 %171, label %174, label %172

172:                                              ; preds = %161
  %173 = tail call i32 @wake_up_process(ptr noundef nonnull %170) #5
  br label %174

174:                                              ; preds = %172, %161, %160
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_handle_manual_stop(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 9
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  %5 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 17
  %6 = load ptr, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #5
  %7 = icmp eq ptr %6, null
  %8 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %9, align 64
  br i1 %7, label %11, label %12

11:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.22) #6
  br label %67

12:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.23) #6
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = getelementptr inbounds %struct.mmc_request, ptr %6, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 53
  br i1 %17, label %18, label %24

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.mmc_command, ptr %15, i32 0, i32 1
  %20 = load i32, ptr %19, align 4
  %21 = lshr i32 %20, 28
  %22 = and i32 %21, 7
  %23 = or i32 %22, -2147480576
  br label %24

24:                                               ; preds = %18, %12
  %25 = phi i32 [ -2147466892, %18 ], [ -2147466932, %12 ]
  %26 = phi i32 [ %23, %18 ], [ 0, %12 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !45
  tail call void @arm_heavy_mb() #5
  %27 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %1, i32 0, i32 4
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr i8, ptr %28, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %26) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !46
  tail call void @arm_heavy_mb() #5
  %30 = load ptr, ptr %27, align 4
  %31 = getelementptr i8, ptr %30, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %25) #5, !srcloc !10
  %32 = sub i32 -100, %13
  br label %33

33:                                               ; preds = %39, %24
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr i8, ptr %34, i32 56
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !47
  %37 = trunc i32 %36 to i16
  %38 = and i16 %37, -17466
  switch i16 %38, label %43 [
    i16 0, label %39
    i16 4, label %49
  ]

39:                                               ; preds = %33
  %40 = load volatile i32, ptr @jiffies, align 64
  %41 = add i32 %32, %40
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %33, label %43

43:                                               ; preds = %39, %33
  %44 = load ptr, ptr %8, align 4
  %45 = load ptr, ptr %44, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.24) #6
  %46 = getelementptr inbounds %struct.mmc_request, ptr %6, i32 0, i32 3
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %62, label %58

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct.mmc_request, ptr %6, i32 0, i32 3
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %62, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %27, align 4
  %55 = getelementptr i8, ptr %54, i32 32
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !48
  %57 = load ptr, ptr %50, align 4
  br label %58

58:                                               ; preds = %53, %43
  %59 = phi ptr [ %57, %53 ], [ %47, %43 ]
  %60 = phi i32 [ %56, %53 ], [ -110, %43 ]
  %61 = getelementptr inbounds %struct.mmc_command, ptr %59, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  br label %62

62:                                               ; preds = %58, %49, %43
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !49
  tail call void @arm_heavy_mb() #5
  %63 = load ptr, ptr %27, align 4
  %64 = getelementptr i8, ptr %63, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 65535) #5, !srcloc !10
  %65 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #5
  store ptr null, ptr %5, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %65) #5
  %66 = load ptr, ptr %8, align 4
  tail call void @mmc_request_done(ptr noundef %66, ptr noundef nonnull %6) #5
  br label %67

67:                                               ; preds = %62, %11
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sunxi_mmc_disable(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = load volatile i32, ptr @jiffies, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %3 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 7) #5, !srcloc !10
  %5 = sub i32 -25, %2
  br label %6

6:                                                ; preds = %6, %1
  %7 = load ptr, ptr %3, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %9 = load volatile i32, ptr @jiffies, align 64
  %10 = add i32 %5, %9
  %11 = icmp slt i32 %10, 0
  %12 = and i32 %8, 7
  %13 = icmp ne i32 %12, 0
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %6, label %15

15:                                               ; preds = %6
  br i1 %13, label %16, label %20

16:                                               ; preds = %15
  %17 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = load ptr, ptr %18, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.21) #6
  br label %20

20:                                               ; preds = %16, %15
  %21 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 7
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #5
  tail call void @clk_unprepare(ptr noundef %22) #5
  %23 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 8
  %24 = load ptr, ptr %23, align 4
  tail call void @clk_disable(ptr noundef %24) #5
  tail call void @clk_unprepare(ptr noundef %24) #5
  %25 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  tail call void @clk_disable(ptr noundef %26) #5
  tail call void @clk_unprepare(ptr noundef %26) #5
  %27 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %28) #5
  tail call void @clk_unprepare(ptr noundef %28) #5
  %29 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 2
  %30 = load ptr, ptr %29, align 4
  %31 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %31, label %34, label %32

32:                                               ; preds = %20
  %33 = tail call i32 @reset_control_assert(ptr noundef %30) #5
  br label %34

34:                                               ; preds = %32, %20
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_reset(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_request_done(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wake_up_process(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_mmc_request(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_request, ptr %1, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = and i32 %8, 63
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 5
  %11 = load i8, ptr %10, align 4, !range !8
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  store i32 %13, ptr %16, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #5
  br label %231

17:                                               ; preds = %2
  %18 = icmp eq ptr %7, null
  br i1 %18, label %67, label %19

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %3, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %21, align 64
  %23 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 12
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 10
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 6
  %28 = load i32, ptr %27, align 4
  %29 = and i32 %28, 256
  %30 = icmp eq i32 %29, 0
  %31 = select i1 %30, i32 2, i32 1
  %32 = tail call i32 @dma_map_sg_attrs(ptr noundef %22, ptr noundef %24, i32 noundef %26, i32 noundef %31, i32 noundef 0) #5
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %19
  %35 = load ptr, ptr %20, align 4
  %36 = load ptr, ptr %35, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.27) #6
  br label %62

37:                                               ; preds = %19
  %38 = load i32, ptr %25, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %67, label %40

40:                                               ; preds = %37
  %41 = load ptr, ptr %23, align 4
  br label %42

42:                                               ; preds = %57, %40
  %43 = phi ptr [ %59, %57 ], [ %41, %40 ]
  %44 = phi i32 [ %58, %57 ], [ 0, %40 ]
  %45 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 1
  %46 = load i32, ptr %45, align 4
  %47 = and i32 %46, 3
  %48 = icmp eq i32 %47, 0
  %49 = getelementptr inbounds %struct.scatterlist, ptr %43, i32 0, i32 2
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 3
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %48, i1 %52, i1 false
  br i1 %53, label %57, label %54

54:                                               ; preds = %42
  %55 = load ptr, ptr %20, align 4
  %56 = load ptr, ptr %55, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.28, i32 noundef %46, i32 noundef %50) #6
  br label %62

57:                                               ; preds = %42
  %58 = add nuw i32 %44, 1
  %59 = tail call ptr @sg_next(ptr noundef %43) #5
  %60 = load i32, ptr %25, align 4
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %42, label %67

62:                                               ; preds = %54, %34
  %63 = phi i32 [ -22, %54 ], [ -12, %34 ]
  %64 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.25) #6
  %65 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 5
  store i32 %63, ptr %65, align 4
  %66 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 5
  store i32 %63, ptr %66, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #5
  br label %231

67:                                               ; preds = %57, %37, %17
  %68 = load i32, ptr %5, align 4
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %69, i32 48070, i32 48066
  %71 = select i1 %69, i32 -2147450880, i32 -2147483648
  %72 = or i32 %71, %9
  %73 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 3
  %74 = load i32, ptr %73, align 4
  %75 = and i32 %74, 1
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %106, label %77

77:                                               ; preds = %67
  %78 = and i32 %74, 2
  %79 = icmp eq i32 %78, 0
  %80 = select i1 %79, i32 64, i32 192
  %81 = shl i32 %74, 6
  %82 = and i32 %81, 256
  %83 = or i32 %82, %72
  %84 = or i32 %83, %80
  %85 = and i32 %74, 96
  %86 = icmp eq i32 %85, 32
  br i1 %86, label %87, label %104

87:                                               ; preds = %77
  %88 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 7
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.mmc_data, ptr %89, i32 0, i32 8
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  %93 = select i1 %92, i32 8, i32 16384
  %94 = or i32 %93, %70
  %95 = select i1 %92, i32 8704, i32 12800
  %96 = or i32 %95, %84
  %97 = getelementptr inbounds %struct.mmc_data, ptr %89, i32 0, i32 6
  %98 = load i32, ptr %97, align 4
  %99 = and i32 %98, 256
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %108, label %101

101:                                              ; preds = %87
  %102 = or i32 %96, 1024
  %103 = icmp ne i8 %11, 0
  br label %108

104:                                              ; preds = %77
  %105 = icmp ne i8 %11, 0
  br label %108

106:                                              ; preds = %67
  %107 = icmp ne i8 %11, 0
  br label %108

108:                                              ; preds = %106, %104, %101, %87
  %109 = phi i32 [ %94, %101 ], [ 48070, %104 ], [ 48070, %106 ], [ %94, %87 ]
  %110 = phi i32 [ %102, %101 ], [ %84, %104 ], [ %72, %106 ], [ %96, %87 ]
  %111 = phi i1 [ %103, %101 ], [ %105, %104 ], [ %107, %106 ], [ true, %87 ]
  %112 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %113 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %112) #5
  %114 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 6
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %121

117:                                              ; preds = %108
  %118 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 7
  %119 = load ptr, ptr %118, align 4
  %120 = icmp eq ptr %119, null
  br i1 %120, label %137, label %121

121:                                              ; preds = %117, %108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %112, i32 noundef %113) #5
  br i1 %18, label %133, label %122

122:                                              ; preds = %121
  %123 = load ptr, ptr %0, align 64
  %124 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 12
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 10
  %127 = load i32, ptr %126, align 4
  %128 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 6
  %129 = load i32, ptr %128, align 4
  %130 = and i32 %129, 256
  %131 = icmp eq i32 %130, 0
  %132 = select i1 %131, i32 2, i32 1
  tail call void @dma_unmap_sg_attrs(ptr noundef %123, ptr noundef %125, i32 noundef %127, i32 noundef %132, i32 noundef 0) #5
  br label %133

133:                                              ; preds = %122, %121
  %134 = load ptr, ptr %0, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %134, ptr noundef nonnull @.str.26) #6
  %135 = load ptr, ptr %4, align 4
  %136 = getelementptr inbounds %struct.mmc_command, ptr %135, i32 0, i32 5
  store i32 -16, ptr %136, align 4
  tail call void @mmc_request_done(ptr noundef %0, ptr noundef %1) #5
  br label %231

137:                                              ; preds = %117
  br i1 %18, label %217, label %138

138:                                              ; preds = %137
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %139 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %142 = load ptr, ptr %141, align 4
  %143 = getelementptr i8, ptr %142, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %143, i32 %140) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  %144 = load i32, ptr %139, align 4
  %145 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 3
  %146 = load i32, ptr %145, align 4
  %147 = mul i32 %146, %144
  %148 = load ptr, ptr %141, align 4
  %149 = getelementptr i8, ptr %148, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %147) #5, !srcloc !10
  %150 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 4
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = load i32, ptr %153, align 4
  %155 = shl nuw i32 1, %154
  %156 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 10
  %157 = load i32, ptr %156, align 4
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %190, label %159

159:                                              ; preds = %138
  %160 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 3
  %161 = load i32, ptr %160, align 4
  %162 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 12
  br label %163

163:                                              ; preds = %163, %159
  %164 = phi i32 [ 0, %159 ], [ %187, %163 ]
  %165 = phi i32 [ %161, %159 ], [ %173, %163 ]
  %166 = getelementptr %struct.sunxi_idma_des, ptr %151, i32 %164
  store i32 -2147483630, ptr %166, align 4
  %167 = load ptr, ptr %162, align 4
  %168 = getelementptr %struct.scatterlist, ptr %167, i32 %164, i32 2
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, %155
  %171 = select i1 %170, i32 0, i32 %169
  %172 = getelementptr %struct.sunxi_idma_des, ptr %151, i32 %164, i32 1
  store i32 %171, ptr %172, align 4
  %173 = add i32 %165, 16
  %174 = load ptr, ptr %162, align 4
  %175 = getelementptr %struct.scatterlist, ptr %174, i32 %164, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = load ptr, ptr %152, align 4
  %178 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %177, i32 0, i32 1
  %179 = load i32, ptr %178, align 4
  %180 = lshr i32 %176, %179
  %181 = getelementptr %struct.sunxi_idma_des, ptr %151, i32 %164, i32 2
  store i32 %180, ptr %181, align 4
  %182 = load ptr, ptr %152, align 4
  %183 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %182, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  %185 = lshr i32 %173, %184
  %186 = getelementptr %struct.sunxi_idma_des, ptr %151, i32 %164, i32 3
  store i32 %185, ptr %186, align 4
  %187 = add nuw i32 %164, 1
  %188 = load i32, ptr %156, align 4
  %189 = icmp ult i32 %187, %188
  br i1 %189, label %163, label %190

190:                                              ; preds = %163, %138
  %191 = phi i32 [ -1, %138 ], [ %164, %163 ]
  %192 = load i32, ptr %151, align 4
  %193 = or i32 %192, 8
  store i32 %193, ptr %151, align 4
  %194 = getelementptr %struct.sunxi_idma_des, ptr %151, i32 %191
  %195 = load i32, ptr %194, align 4
  %196 = and i32 %195, -39
  %197 = or i32 %196, 36
  store i32 %197, ptr %194, align 4
  %198 = getelementptr %struct.sunxi_idma_des, ptr %151, i32 %191, i32 3
  store i32 0, ptr %198, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !52
  tail call void @arm_heavy_mb() #5
  %199 = load ptr, ptr %141, align 4
  %200 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %199) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !53
  %201 = or i32 %200, 32
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  %202 = load ptr, ptr %141, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %201) #5, !srcloc !10
  %203 = or i32 %200, 36
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !55
  tail call void @arm_heavy_mb() #5
  %204 = load ptr, ptr %141, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %203) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !56
  tail call void @arm_heavy_mb() #5
  %205 = load ptr, ptr %141, align 4
  %206 = getelementptr i8, ptr %205, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 1) #5, !srcloc !10
  %207 = getelementptr inbounds %struct.mmc_data, ptr %7, i32 0, i32 6
  %208 = load i32, ptr %207, align 4
  %209 = and i32 %208, 256
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %190
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !57
  tail call void @arm_heavy_mb() #5
  %212 = load ptr, ptr %141, align 4
  %213 = getelementptr i8, ptr %212, i32 140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %213, i32 2) #5, !srcloc !10
  br label %214

214:                                              ; preds = %211, %190
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !58
  tail call void @arm_heavy_mb() #5
  %215 = load ptr, ptr %141, align 4
  %216 = getelementptr i8, ptr %215, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %216, i32 130) #5, !srcloc !10
  br label %217

217:                                              ; preds = %214, %137
  store ptr %1, ptr %114, align 4
  %218 = zext i1 %111 to i8
  store i8 %218, ptr %10, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !59
  tail call void @arm_heavy_mb() #5
  %219 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 2
  %220 = load i32, ptr %219, align 4
  %221 = or i32 %220, %109
  %222 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr i8, ptr %223, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %221) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !60
  tail call void @arm_heavy_mb() #5
  %225 = getelementptr inbounds %struct.mmc_command, ptr %5, i32 0, i32 1
  %226 = load i32, ptr %225, align 4
  %227 = load ptr, ptr %222, align 4
  %228 = getelementptr i8, ptr %227, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %228, i32 %226) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %229 = load ptr, ptr %222, align 4
  %230 = getelementptr i8, ptr %229, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %110) #5, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %112, i32 noundef %113) #5
  br label %231

231:                                              ; preds = %217, %133, %62, %15
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_mmc_set_ios(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 5
  %7 = load i8, ptr %6, align 2
  switch i8 %7, label %48 [
    i8 1, label %8
    i8 0, label %30
  ]

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54
  %10 = load ptr, ptr %9, align 4
  %11 = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 1
  %14 = load i16, ptr %13, align 4
  %15 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %5, ptr noundef %10, i16 noundef zeroext %14) #5
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 8
  store i32 %15, ptr %16, align 4
  %17 = icmp eq i32 %15, 0
  br i1 %17, label %18, label %48

18:                                               ; preds = %12, %8
  %19 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = icmp ugt ptr %20, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %48, label %22

22:                                               ; preds = %18
  %23 = tail call i32 @regulator_enable(ptr noundef %20) #5
  %24 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 8
  store i32 %23, ptr %24, align 4
  %25 = icmp eq i32 %23, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.29) #6
  br label %48

28:                                               ; preds = %22
  %29 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9
  store i8 1, ptr %29, align 4
  br label %48

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54
  %32 = load ptr, ptr %31, align 4
  %33 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @mmc_regulator_set_ocr(ptr noundef %5, ptr noundef %32, i16 noundef zeroext 0) #5
  br label %36

36:                                               ; preds = %34, %30
  %37 = getelementptr inbounds %struct.mmc_host, ptr %5, i32 0, i32 54, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = icmp ugt ptr %38, inttoptr (i32 -4096 to ptr)
  br i1 %39, label %46, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9
  %42 = load i8, ptr %41, align 4, !range !8
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %40
  %45 = tail call i32 @regulator_disable(ptr noundef %38) #5
  br label %46

46:                                               ; preds = %44, %40, %36
  %47 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 9
  store i8 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %46, %28, %26, %18, %12, %2
  %49 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %50 = load i8, ptr %49, align 1
  switch i8 %50, label %63 [
    i8 0, label %51
    i8 2, label %55
    i8 3, label %59
  ]

51:                                               ; preds = %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %52 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #5, !srcloc !10
  br label %63

55:                                               ; preds = %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %56 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr i8, ptr %57, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 1) #5, !srcloc !10
  br label %63

59:                                               ; preds = %48
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %60 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 2) #5, !srcloc !10
  br label %63

63:                                               ; preds = %59, %55, %51, %48
  tail call fastcc void @sunxi_mmc_set_clk(ptr noundef %3, ptr noundef %1)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_ro(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_gpio_get_cd(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_mmc_enable_sdio_irq(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 68
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %7) #5, !srcloc !65
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %7, ptr %7, i32 1, ptr elementtype(i32) %7) #5, !srcloc !66
  br label %9

9:                                                ; preds = %5, %2
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 6
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #5
  %12 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 48
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !67
  %16 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 2
  br i1 %4, label %21, label %17

17:                                               ; preds = %9
  store i32 65536, ptr %16, align 4
  %18 = or i32 %15, 65536
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #5
  br label %33

21:                                               ; preds = %9
  store i32 0, ptr %16, align 4
  %22 = and i32 %15, -65537
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !68
  tail call void @arm_heavy_mb() #5
  %23 = load ptr, ptr %12, align 4
  %24 = getelementptr i8, ptr %23, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #5, !srcloc !10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #5
  %25 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %3, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = load ptr, ptr %26, align 64
  %28 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !69
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %28) #5, !srcloc !65
  %29 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %28, ptr %28, i32 0, i32 -1, ptr elementtype(i32) %28) #5, !srcloc !70
  %30 = extractvalue { i32, i32, i32 } %29, 0
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  tail call void asm sideeffect "dmb ish", "~{memory}"() #5, !srcloc !71
  br label %33

33:                                               ; preds = %32, %21, %17
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_volt_switch(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 54, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = icmp ugt ptr %4, inttoptr (i32 -4096 to ptr)
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @mmc_regulator_set_vqmmc(ptr noundef %0, ptr noundef %1) #5
  %8 = tail call i32 @llvm.smin.i32(i32 %7, i32 0)
  br label %14

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 0, i32 28, i32 8
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %12, i32 0, i32 -22
  br label %14

14:                                               ; preds = %9, %6
  %15 = phi i32 [ %8, %6 ], [ %13, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_card_busy(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 60
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !72
  %6 = lshr i32 %5, 9
  %7 = and i32 %6, 1
  ret i32 %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sunxi_mmc_hw_reset(ptr nocapture noundef readonly %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !73
  tail call void @arm_heavy_mb() #5
  %2 = getelementptr inbounds %struct.mmc_host, ptr %0, i32 1, i32 1, i32 0, i32 1, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #5, !srcloc !10
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 2147480) #5
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !74
  tail call void @arm_heavy_mb() #5
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr i8, ptr %6, i32 120
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 1) #5, !srcloc !10
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %8(i32 noundef 64424400) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sunxi_mmc_set_clk(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 4
  %4 = load ptr, ptr %3, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !75
  %6 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 7
  %7 = load i8, ptr %6, align 4
  %8 = add i8 %7, -7
  %9 = icmp ult i8 %8, 2
  %10 = and i32 %5, -1025
  %11 = select i1 %9, i32 1024, i32 0
  %12 = or i32 %11, %10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !76
  tail call void @arm_heavy_mb() #5
  %13 = load ptr, ptr %3, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %12) #5, !srcloc !10
  %14 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = load i32, ptr %1, align 4
  %17 = tail call fastcc i32 @sunxi_mmc_oclk_onoff(ptr noundef %0, i32 noundef 0) #5
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %138

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.mmc_host, ptr %15, i32 0, i32 57
  store i32 0, ptr %20, align 4
  %21 = load i32, ptr %1, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %138, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr %6, align 4
  %25 = icmp eq i8 %24, 8
  %26 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 20
  %27 = load i8, ptr %26, align 1, !range !8
  br i1 %25, label %28, label %36

28:                                               ; preds = %23
  %29 = icmp eq i8 %27, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %28
  %31 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %32 = load i8, ptr %31, align 1
  %33 = icmp eq i8 %32, 3
  br i1 %33, label %34, label %53

34:                                               ; preds = %30, %28
  %35 = shl i32 %16, 1
  br label %36

36:                                               ; preds = %34, %23
  %37 = phi i32 [ 2, %34 ], [ 1, %23 ]
  %38 = phi i32 [ %35, %34 ], [ %16, %23 ]
  %39 = icmp eq i8 %27, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 3
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %42, i32 0, i32 6
  %44 = load i8, ptr %43, align 1, !range !8
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = tail call i32 @sunxi_ccu_set_mmc_timing_mode(ptr noundef %48, i1 noundef zeroext true) #5
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %15, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.30) #6
  br label %138

53:                                               ; preds = %46, %40, %36, %30
  %54 = phi i32 [ %38, %46 ], [ %38, %40 ], [ %38, %36 ], [ %16, %30 ]
  %55 = phi i32 [ %37, %46 ], [ %37, %40 ], [ %37, %36 ], [ 1, %30 ]
  %56 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 6
  %57 = load ptr, ptr %56, align 4
  %58 = tail call i32 @clk_round_rate(ptr noundef %57, i32 noundef %54) #5
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load ptr, ptr %15, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.31, i32 noundef %54, i32 noundef %58) #6
  br label %138

62:                                               ; preds = %53
  %63 = load ptr, ptr %56, align 4
  %64 = tail call i32 @clk_set_rate(ptr noundef %63, i32 noundef %58) #5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %68, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %15, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.32, i32 noundef %58, i32 noundef %64) #6
  br label %138

68:                                               ; preds = %62
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr i8, ptr %69, i32 4
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !77
  %72 = and i32 %71, -256
  %73 = add nsw i32 %55, -1
  %74 = or i32 %72, %73
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr i8, ptr %75, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %74) #5, !srcloc !10
  %77 = udiv i32 %58, %55
  %78 = load i8, ptr %26, align 1, !range !8
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %68
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr i8, ptr %81, i32 92
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !79
  %84 = or i32 %83, -2147483648
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %85 = load ptr, ptr %3, align 4
  %86 = getelementptr i8, ptr %85, i32 92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %86, i32 %84) #5, !srcloc !10
  %87 = load i8, ptr %26, align 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %89, label %125

89:                                               ; preds = %80, %68
  %90 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 3
  %91 = load ptr, ptr %90, align 4
  %92 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %91, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, null
  br i1 %94, label %125, label %95

95:                                               ; preds = %89
  %96 = icmp ult i32 %77, 400001
  br i1 %96, label %110, label %97

97:                                               ; preds = %95
  %98 = icmp ult i32 %77, 25000001
  br i1 %98, label %110, label %99

99:                                               ; preds = %97
  %100 = icmp ult i32 %77, 52000001
  br i1 %100, label %101, label %138

101:                                              ; preds = %99
  %102 = load i8, ptr %6, align 4
  %103 = add i8 %102, -7
  %104 = icmp ult i8 %103, 2
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.mmc_ios, ptr %1, i32 0, i32 6
  %107 = load i8, ptr %106, align 1
  %108 = icmp eq i8 %107, 3
  %109 = select i1 %108, i32 4, i32 3
  br label %110

110:                                              ; preds = %105, %101, %97, %95
  %111 = phi i32 [ 0, %95 ], [ 1, %97 ], [ 2, %101 ], [ %109, %105 ]
  %112 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 7
  %113 = load ptr, ptr %112, align 4
  %114 = getelementptr %struct.sunxi_mmc_clk_delay, ptr %93, i32 %111, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = tail call i32 @clk_set_phase(ptr noundef %113, i32 noundef %115) #5
  %117 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 8
  %118 = load ptr, ptr %117, align 4
  %119 = load ptr, ptr %90, align 4
  %120 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 4
  %122 = getelementptr %struct.sunxi_mmc_clk_delay, ptr %121, i32 %111
  %123 = load i32, ptr %122, align 4
  %124 = tail call i32 @clk_set_phase(ptr noundef %118, i32 noundef %123) #5
  br label %125

125:                                              ; preds = %110, %89, %80
  %126 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 3
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %127, i32 0, i32 3
  %129 = load i8, ptr %128, align 4, !range !8
  %130 = icmp eq i8 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %125
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %132 = load ptr, ptr %3, align 4
  %133 = getelementptr i8, ptr %132, i32 324
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 128) #5, !srcloc !10
  br label %134

134:                                              ; preds = %131, %125
  %135 = tail call fastcc i32 @sunxi_mmc_oclk_onoff(ptr noundef %0, i32 noundef 1) #5
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %134
  store i32 %77, ptr %20, align 4
  br label %138

138:                                              ; preds = %137, %134, %99, %66, %60, %51, %19, %2
  %139 = phi i32 [ %49, %51 ], [ %58, %60 ], [ %64, %66 ], [ 0, %137 ], [ %17, %2 ], [ 0, %19 ], [ %135, %134 ], [ -22, %99 ]
  %140 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 18
  store i32 %139, ptr %140, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_ocr(ptr noundef, ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sunxi_mmc_oclk_onoff(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load volatile i32, ptr @jiffies, align 64
  %4 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !82
  %8 = and i32 %7, 2147287039
  %9 = icmp eq i32 %1, 0
  %10 = or i32 %8, 65536
  %11 = select i1 %9, i32 %8, i32 %10
  %12 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 3
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %13, i32 0, i32 4
  %15 = load i8, ptr %14, align 1, !range !8
  %16 = icmp eq i8 %15, 0
  %17 = or i32 %11, -2147483648
  %18 = select i1 %16, i32 %11, i32 %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %19 = load ptr, ptr %4, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %18) #5, !srcloc !10
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %21 = load ptr, ptr %4, align 4
  %22 = getelementptr i8, ptr %21, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 -2145378304) #5, !srcloc !10
  %23 = sub i32 -75, %3
  br label %24

24:                                               ; preds = %24, %2
  %25 = load ptr, ptr %4, align 4
  %26 = getelementptr i8, ptr %25, i32 24
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !85
  %28 = load volatile i32, ptr @jiffies, align 64
  %29 = add i32 %23, %28
  %30 = icmp slt i32 %29, 0
  %31 = icmp slt i32 %27, 0
  %32 = select i1 %30, i1 %31, i1 false
  br i1 %32, label %24, label %33

33:                                               ; preds = %24
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  %34 = load ptr, ptr %4, align 4
  %35 = getelementptr i8, ptr %34, i32 56
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %35) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !87
  %37 = and i32 %36, -65537
  %38 = load ptr, ptr %4, align 4
  %39 = getelementptr i8, ptr %38, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #5, !srcloc !10
  br i1 %31, label %40, label %44

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %0, i32 0, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = load ptr, ptr %42, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.33) #6
  br label %56

44:                                               ; preds = %33
  %45 = load ptr, ptr %12, align 4
  %46 = getelementptr inbounds %struct.sunxi_mmc_cfg, ptr %45, i32 0, i32 4
  %47 = load i8, ptr %46, align 1, !range !8
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %44
  %50 = load ptr, ptr %4, align 4
  %51 = getelementptr i8, ptr %50, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !88
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %53 = and i32 %52, 2147483647
  %54 = load ptr, ptr %4, align 4
  %55 = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %53) #5, !srcloc !10
  br label %56

56:                                               ; preds = %49, %44, %40
  %57 = phi i32 [ -5, %40 ], [ 0, %49 ], [ 0, %44 ]
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_phase(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mmc_regulator_set_vqmmc(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmc_remove_host(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  tail call void @disable_irq(i32 noundef %5) #5
  %6 = load volatile i32, ptr @jiffies, align 64
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !9
  tail call void @arm_heavy_mb() #5
  %7 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 7) #5, !srcloc !10
  %9 = sub i32 -25, %6
  br label %10

10:                                               ; preds = %10, %1
  %11 = load ptr, ptr %7, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #5, !srcloc !11
  tail call void asm sideeffect "dsb ", "~{memory}"() #5, !srcloc !12
  %13 = load volatile i32, ptr @jiffies, align 64
  %14 = add i32 %9, %13
  %15 = icmp slt i32 %14, 0
  %16 = and i32 %12, 7
  %17 = icmp ne i32 %16, 0
  %18 = select i1 %15, i1 %17, i1 false
  br i1 %18, label %10, label %19

19:                                               ; preds = %10
  %20 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  br i1 %17, label %21, label %25

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.sunxi_mmc_host, ptr %20, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = load ptr, ptr %23, align 64
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.21) #6
  br label %25

25:                                               ; preds = %21, %19
  tail call fastcc void @sunxi_mmc_disable(ptr noundef %20)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sunxi_mmc_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 68
  %5 = tail call fastcc i32 @sunxi_mmc_enable(ptr noundef %4)
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = tail call fastcc i32 @sunxi_mmc_init_host(ptr noundef %4)
  %9 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28
  %10 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 0, i32 28, i32 6
  %11 = load i8, ptr %10, align 1
  switch i8 %11, label %24 [
    i8 0, label %12
    i8 2, label %16
    i8 3, label %20
  ]

12:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !62
  tail call void @arm_heavy_mb() #5
  %13 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #5, !srcloc !10
  br label %24

16:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !63
  tail call void @arm_heavy_mb() #5
  %17 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 1, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 1) #5, !srcloc !10
  br label %24

20:                                               ; preds = %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #5, !srcloc !64
  tail call void @arm_heavy_mb() #5
  %21 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 1, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 2) #5, !srcloc !10
  br label %24

24:                                               ; preds = %20, %16, %12, %7
  tail call fastcc void @sunxi_mmc_set_clk(ptr noundef %4, ptr noundef %9)
  %25 = getelementptr inbounds %struct.mmc_host, ptr %3, i32 1, i32 1, i32 0, i32 7
  %26 = load i32, ptr %25, align 4
  tail call void @enable_irq(i32 noundef %26) #5
  br label %27

27:                                               ; preds = %24, %1
  ret i32 %5
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { cold nounwind }

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
!9 = !{i64 2154030135}
!10 = !{i64 5033099}
!11 = !{i64 5033517}
!12 = !{i64 2154030896}
!13 = !{i64 2154032777}
!14 = !{i64 2154033239}
!15 = !{i64 2154033713}
!16 = !{i64 2154034187}
!17 = !{i64 2154034637}
!18 = !{i64 2154039171}
!19 = !{i64 2154039701}
!20 = !{i64 2154040362}
!21 = !{i64 2154040817}
!22 = !{i64 2154064828}
!23 = !{i64 2154065266}
!24 = !{i64 2154066686}
!25 = !{i64 2154068669}
!26 = !{i64 2154069119}
!27 = !{i64 2154057192}
!28 = !{i64 2154057646}
!29 = !{i64 2154059194}
!30 = !{i64 2154059632}
!31 = !{i64 2154060070}
!32 = !{i64 2154060508}
!33 = !{i64 2154060946}
!34 = !{i64 2154061235}
!35 = !{i64 2154061667}
!36 = !{i64 2154062248}
!37 = !{i64 2154062619}
!38 = !{i64 2154063139}
!39 = !{i64 2154063659}
!40 = !{i64 2154064227}
!41 = !{i64 2148919946}
!42 = !{i64 2148915770}
!43 = !{i64 2148915845, i64 2148915872, i64 2148915919, i64 2148915941, i64 2148915969, i64 2148915989}
!44 = !{i64 2148942949}
!45 = !{i64 2154048108}
!46 = !{i64 2154048548}
!47 = !{i64 2154049141}
!48 = !{i64 2154052623}
!49 = !{i64 2154052916}
!50 = !{i64 2154097251}
!51 = !{i64 2154097747}
!52 = !{i64 2154042342}
!53 = !{i64 2154044323}
!54 = !{i64 2154044694}
!55 = !{i64 2154045214}
!56 = !{i64 2154045778}
!57 = !{i64 2154046470}
!58 = !{i64 2154047222}
!59 = !{i64 2154098269}
!60 = !{i64 2154098753}
!61 = !{i64 2154099203}
!62 = !{i64 2154084322}
!63 = !{i64 2154084752}
!64 = !{i64 2154085182}
!65 = !{i64 481394, i64 2147971365, i64 2147971391, i64 2147971438, i64 2147971460, i64 2147971488, i64 2147971508}
!66 = !{i64 2147983577, i64 2147983603, i64 2147983632, i64 2147983666, i64 2147983697, i64 2147983720}
!67 = !{i64 2154089593}
!68 = !{i64 2154090136}
!69 = !{i64 2147983084}
!70 = !{i64 467963, i64 467988, i64 468010, i64 468026, i64 468038, i64 468058, i64 468082, i64 468098, i64 468110}
!71 = !{i64 2147983210}
!72 = !{i64 2154099794}
!73 = !{i64 2154090570}
!74 = !{i64 2154091538}
!75 = !{i64 2154085763}
!76 = !{i64 2154086224}
!77 = !{i64 2154082630}
!78 = !{i64 2154082919}
!79 = !{i64 2154083506}
!80 = !{i64 2154083881}
!81 = !{i64 2154078741}
!82 = !{i64 2154072375}
!83 = !{i64 2154073084}
!84 = !{i64 2154073772}
!85 = !{i64 2154074357}
!86 = !{i64 2154076054}
!87 = !{i64 2154076594}
!88 = !{i64 2154077789}
!89 = !{i64 2154078228}
