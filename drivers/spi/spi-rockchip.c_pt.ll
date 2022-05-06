; ModuleID = '/llk/IR/drivers/spi/spi-rockchip.c_pt.bc'
source_filename = "../drivers/spi/spi-rockchip.c"
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
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.rockchip_spi = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, i32, i32, %struct.atomic_t, i32, i32, i8, i8, [4 x i8], i8 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.sg_table = type { ptr, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@rockchip_spi_dt_match = internal constant [13 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,px30-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3036-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3066-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3188-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3228-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3288-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3308-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3328-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3368-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rk3399-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1108-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"rockchip,rv1126-spi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@__UNIQUE_ID_author233 = internal constant [40 x i8] c"author=Addy Ke <addy.ke@rock-chips.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [43 x i8] c"description=ROCKCHIP SPI Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [15 x i8] c"license=GPL v2\00", section ".modinfo", align 1
@rockchip_spi_driver = internal global %struct.platform_driver { ptr @rockchip_spi_probe, ptr @rockchip_spi_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rockchip_spi_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_spi_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__this_module = external dso_local global %struct.module, align 64
@.str = private unnamed_addr constant [13 x i8] c"rockchip-spi\00", align 1
@rockchip_spi_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @rockchip_spi_suspend, ptr @rockchip_spi_resume, ptr @rockchip_spi_suspend, ptr @rockchip_spi_resume, ptr @rockchip_spi_suspend, ptr @rockchip_spi_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rockchip_spi_runtime_suspend, ptr @rockchip_spi_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"spi-slave\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"apb_pclk\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Failed to get apb_pclk\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"spiclk\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"Failed to get spi_pclk\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to enable apb_pclk\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Failed to enable spi_clk\0A\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"rx-sample-delay-ns\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"%u Hz are too slow to express %u ns delay\0A\00", align 1
@.str.10 = private unnamed_addr constant [62 x i8] c"%u Hz are too fast to express %u ns delay, clamping at %u ns\0A\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"num-cs\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"Failed to request TX DMA channel\0A\00", align 1
@.str.15 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Failed to request RX DMA channel\0A\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"Failed to register controller\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"drivers/spi/spi-rockchip.c\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"No buffer for transfer\0A\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Transfer is too long (%d)\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"unknown bits per word: %d\0A\00", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.22 = private unnamed_addr constant [34 x i8] c"spi controller is in busy state!\0A\00", align 1
@llvm.compiler.used = appending global [3 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_license235], section "llvm.metadata"

@__mod_of__rockchip_spi_dt_match_device_table = dso_local alias [13 x %struct.of_device_id], ptr @rockchip_spi_dt_match

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local i32 @init_module() local_unnamed_addr #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rockchip_spi_driver, ptr noundef nonnull @__this_module) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define dso_local void @cleanup_module() local_unnamed_addr #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rockchip_spi_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_spi_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #9
  store i32 0, ptr %3, align 4, !annotation !8
  %7 = tail call ptr @of_find_property(ptr noundef %6, ptr noundef nonnull @.str.1, ptr noundef null) #9
  %8 = icmp ne ptr %7, null
  %9 = zext i1 %8 to i8
  br i1 %8, label %205, label %10

10:                                               ; preds = %1
  %11 = tail call ptr @__spi_alloc_controller(ptr noundef %4, i32 noundef 60, i1 noundef zeroext false) #9
  %12 = icmp eq ptr %11, null
  br i1 %12, label %205, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %11, ptr %14, align 8
  %15 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 8
  %16 = load ptr, ptr %15, align 8
  %17 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 12
  store i8 %9, ptr %17, align 1
  %18 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #9
  %19 = tail call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %18) #9
  %20 = getelementptr inbounds %struct.rockchip_spi, ptr %16, i32 0, i32 3
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = ptrtoint ptr %19 to i32
  br label %203

24:                                               ; preds = %13
  %25 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.2) #9
  %26 = getelementptr inbounds %struct.rockchip_spi, ptr %16, i32 0, i32 2
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #10
  %29 = load ptr, ptr %26, align 4
  %30 = ptrtoint ptr %29 to i32
  br label %203

31:                                               ; preds = %24
  %32 = tail call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.4) #9
  %33 = getelementptr inbounds %struct.rockchip_spi, ptr %16, i32 0, i32 1
  store ptr %32, ptr %33, align 4
  %34 = icmp ugt ptr %32, inttoptr (i32 -4096 to ptr)
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.5) #10
  %36 = load ptr, ptr %33, align 4
  %37 = ptrtoint ptr %36 to i32
  br label %203

38:                                               ; preds = %31
  %39 = load ptr, ptr %26, align 4
  %40 = tail call i32 @clk_prepare(ptr noundef %39) #9
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %38
  %43 = tail call i32 @clk_enable(ptr noundef %39) #9
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %42
  tail call void @clk_unprepare(ptr noundef %39) #9
  br label %46

46:                                               ; preds = %45, %38
  %47 = phi i32 [ %40, %38 ], [ %43, %45 ]
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #10
  br label %203

50:                                               ; preds = %46, %42
  %51 = load ptr, ptr %33, align 4
  %52 = tail call i32 @clk_prepare(ptr noundef %51) #9
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = tail call i32 @clk_enable(ptr noundef %51) #9
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %54
  tail call void @clk_unprepare(ptr noundef %51) #9
  br label %58

58:                                               ; preds = %57, %50
  %59 = phi i32 [ %52, %50 ], [ %55, %57 ]
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #10
  br label %200

62:                                               ; preds = %58, %54
  %63 = load ptr, ptr %20, align 4
  %64 = getelementptr i8, ptr %63, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 0) #9, !srcloc !9
  %65 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %197, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %69 = load ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %67
  %72 = load ptr, ptr %4, align 4
  br label %73

73:                                               ; preds = %71, %67
  %74 = phi ptr [ %72, %71 ], [ %69, %67 ]
  %75 = tail call i32 @devm_request_threaded_irq(ptr noundef %4, i32 noundef %65, ptr noundef nonnull @rockchip_spi_isr, ptr noundef null, i32 noundef 8192, ptr noundef %74, ptr noundef nonnull %11) #9
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %197

77:                                               ; preds = %73
  store ptr %4, ptr %16, align 4
  %78 = load ptr, ptr %33, align 4
  %79 = tail call i32 @clk_get_rate(ptr noundef %78) #9
  %80 = getelementptr inbounds %struct.rockchip_spi, ptr %16, i32 0, i32 12
  store i32 %79, ptr %80, align 4
  %81 = load ptr, ptr %5, align 8
  %82 = call i32 @of_property_read_variable_u32_array(ptr noundef %81, ptr noundef nonnull @.str.8, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %103

84:                                               ; preds = %77
  %85 = load i32, ptr %2, align 4
  %86 = load i32, ptr %80, align 4
  %87 = lshr i32 %86, 8
  %88 = mul i32 %87, %85
  %89 = add i32 %88, 1953125
  %90 = icmp ult i32 %89, 3906250
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %92, ptr noundef nonnull @.str.9, i32 noundef %86, i32 noundef %85) #10
  br label %99

93:                                               ; preds = %84
  %94 = udiv i32 %89, 3906250
  %95 = icmp ugt i32 %89, 15624999
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load ptr, ptr %16, align 4
  %98 = udiv i32 -1294967296, %86
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %97, ptr noundef nonnull @.str.10, i32 noundef %86, i32 noundef %85, i32 noundef %98) #10
  br label %99

99:                                               ; preds = %96, %93, %91
  %100 = phi i32 [ 3, %96 ], [ %94, %93 ], [ 0, %91 ]
  %101 = trunc i32 %100 to i8
  %102 = getelementptr inbounds %struct.rockchip_spi, ptr %16, i32 0, i32 14
  store i8 %101, ptr %102, align 1
  br label %103

103:                                              ; preds = %99, %77
  %104 = load ptr, ptr %20, align 4
  %105 = getelementptr i8, ptr %104, i32 72
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #9, !srcloc !10
  %107 = icmp eq i32 %106, 99352578
  %108 = icmp eq i32 %106, 1114114
  %109 = or i1 %107, %108
  %110 = select i1 %109, i32 64, i32 32
  %111 = getelementptr inbounds %struct.rockchip_spi, ptr %16, i32 0, i32 11
  store i32 %110, ptr %111, align 4
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %4, i32 noundef 2000) #9
  call void @__pm_runtime_use_autosuspend(ptr noundef %4, i1 noundef zeroext true) #9
  %112 = call i32 @__pm_runtime_set_status(ptr noundef %4, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %4) #9
  %113 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 36
  store i8 1, ptr %113, align 4
  %114 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %115 = load i32, ptr %114, align 4
  %116 = trunc i32 %115 to i16
  %117 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 2
  store i16 %116, ptr %117, align 8
  %118 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 5
  store i32 43, ptr %118, align 8
  %119 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 10
  store i16 32, ptr %119, align 4
  %120 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 58
  store i8 4, ptr %120, align 2
  %121 = call i32 @of_property_read_variable_u32_array(ptr noundef %6, ptr noundef nonnull @.str.12, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 0) #9
  %122 = icmp sgt i32 %121, -1
  br i1 %122, label %123, label %126

123:                                              ; preds = %103
  %124 = load i32, ptr %3, align 4
  %125 = trunc i32 %124 to i16
  br label %127

126:                                              ; preds = %103
  store i32 1, ptr %3, align 4
  br label %127

127:                                              ; preds = %126, %123
  %128 = phi i16 [ %125, %123 ], [ 1, %126 ]
  %129 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 3
  store i16 %128, ptr %129, align 2
  %130 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 56
  store i8 1, ptr %130, align 8
  %131 = load ptr, ptr %5, align 8
  %132 = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 25
  store ptr %131, ptr %132, align 8
  %133 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 7
  store i32 32904, ptr %133, align 8
  %134 = load i32, ptr %80, align 4
  %135 = udiv i32 %134, 65534
  %136 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 8
  store i32 %135, ptr %136, align 4
  %137 = load i32, ptr %80, align 4
  %138 = lshr i32 %137, 1
  %139 = call i32 @llvm.umin.i32(i32 %138, i32 50000000)
  %140 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 9
  store i32 %139, ptr %140, align 8
  %141 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 50
  store ptr @rockchip_spi_set_cs, ptr %141, align 8
  %142 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 51
  store ptr @rockchip_spi_transfer_one, ptr %142, align 4
  %143 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 13
  store ptr @rockchip_spi_max_transfer_size, ptr %143, align 8
  %144 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 52
  store ptr @rockchip_spi_handle_err, ptr %144, align 8
  %145 = load ptr, ptr %16, align 4
  %146 = call ptr @dma_request_chan(ptr noundef %145, ptr noundef nonnull @.str.13) #9
  %147 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 60
  store ptr %146, ptr %147, align 8
  %148 = icmp ugt ptr %146, inttoptr (i32 -4096 to ptr)
  br i1 %148, label %149, label %153

149:                                              ; preds = %127
  %150 = icmp eq ptr %146, inttoptr (i32 -517 to ptr)
  br i1 %150, label %195, label %151

151:                                              ; preds = %149
  %152 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %152, ptr noundef nonnull @.str.14) #10
  store ptr null, ptr %147, align 8
  br label %153

153:                                              ; preds = %151, %127
  %154 = load ptr, ptr %16, align 4
  %155 = call ptr @dma_request_chan(ptr noundef %154, ptr noundef nonnull @.str.15) #9
  %156 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 61
  store ptr %155, ptr %156, align 4
  %157 = icmp ugt ptr %155, inttoptr (i32 -4096 to ptr)
  br i1 %157, label %158, label %160

158:                                              ; preds = %153
  %159 = icmp eq ptr %155, inttoptr (i32 -517 to ptr)
  br i1 %159, label %190, label %165

160:                                              ; preds = %153
  %161 = load ptr, ptr %147, align 8
  %162 = icmp eq ptr %161, null
  %163 = icmp eq ptr %155, null
  %164 = select i1 %162, i1 true, i1 %163
  br i1 %164, label %175, label %167

165:                                              ; preds = %158
  %166 = load ptr, ptr %16, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %166, ptr noundef nonnull @.str.16) #10
  store ptr null, ptr %156, align 4
  br label %175

167:                                              ; preds = %160
  %168 = load i32, ptr %18, align 4
  %169 = add i32 %168, 1024
  %170 = getelementptr inbounds %struct.rockchip_spi, ptr %16, i32 0, i32 5
  store i32 %169, ptr %170, align 4
  %171 = load i32, ptr %18, align 4
  %172 = add i32 %171, 2048
  %173 = getelementptr inbounds %struct.rockchip_spi, ptr %16, i32 0, i32 4
  store i32 %172, ptr %173, align 4
  %174 = getelementptr inbounds %struct.spi_controller, ptr %11, i32 0, i32 24
  store ptr @rockchip_spi_can_dma, ptr %174, align 4
  br label %175

175:                                              ; preds = %167, %165, %160
  %176 = load ptr, ptr %20, align 4
  %177 = getelementptr i8, ptr %176, i32 72
  %178 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %177) #9, !srcloc !10
  %179 = icmp eq i32 %178, 1114114
  br i1 %179, label %180, label %183

180:                                              ; preds = %175
  %181 = load i32, ptr %118, align 8
  %182 = or i32 %181, 4
  store i32 %182, ptr %118, align 8
  br label %183

183:                                              ; preds = %180, %175
  %184 = call i32 @devm_spi_register_controller(ptr noundef %4, ptr noundef nonnull %11) #9
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %186, label %205

186:                                              ; preds = %183
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.17) #10
  %187 = load ptr, ptr %156, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %190, label %189

189:                                              ; preds = %186
  call void @dma_release_channel(ptr noundef nonnull %187) #9
  br label %190

190:                                              ; preds = %189, %186, %158
  %191 = phi i32 [ %184, %189 ], [ %184, %186 ], [ -517, %158 ]
  %192 = load ptr, ptr %147, align 8
  %193 = icmp eq ptr %192, null
  br i1 %193, label %195, label %194

194:                                              ; preds = %190
  call void @dma_release_channel(ptr noundef nonnull %192) #9
  br label %195

195:                                              ; preds = %194, %190, %149
  %196 = phi i32 [ %191, %194 ], [ %191, %190 ], [ -517, %149 ]
  call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #9
  br label %197

197:                                              ; preds = %195, %73, %62
  %198 = phi i32 [ %65, %62 ], [ %75, %73 ], [ %196, %195 ]
  %199 = load ptr, ptr %33, align 4
  call void @clk_disable(ptr noundef %199) #9
  call void @clk_unprepare(ptr noundef %199) #9
  br label %200

200:                                              ; preds = %197, %61
  %201 = phi i32 [ %59, %61 ], [ %198, %197 ]
  %202 = load ptr, ptr %26, align 4
  call void @clk_disable(ptr noundef %202) #9
  call void @clk_unprepare(ptr noundef %202) #9
  br label %203

203:                                              ; preds = %200, %49, %35, %28, %22
  %204 = phi i32 [ %23, %22 ], [ %30, %28 ], [ %37, %35 ], [ %47, %49 ], [ %201, %200 ]
  call void @put_device(ptr noundef nonnull %11) #9
  br label %205

205:                                              ; preds = %203, %183, %10, %1
  %206 = phi i32 [ %204, %203 ], [ -12, %10 ], [ 0, %183 ], [ -12, %1 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret i32 %206
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_spi_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @get_device(ptr noundef nonnull %3) #9
  %7 = icmp eq ptr %6, null
  %8 = select i1 %7, ptr null, ptr %3
  br label %9

9:                                                ; preds = %5, %1
  %10 = phi ptr [ null, %1 ], [ %8, %5 ]
  %11 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 8
  %12 = load ptr, ptr %11, align 8
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %14 = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 4) #9
  %15 = getelementptr inbounds %struct.rockchip_spi, ptr %12, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #9
  tail call void @clk_unprepare(ptr noundef %16) #9
  %17 = getelementptr inbounds %struct.rockchip_spi, ptr %12, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #9
  tail call void @clk_unprepare(ptr noundef %18) #9
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !11
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #9, !srcloc !12
  %20 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 0, i32 -1, ptr elementtype(i32) %19) #9, !srcloc !13
  %21 = extractvalue { i32, i32, i32 } %20, 0
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %9
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !14
  br label %24

24:                                               ; preds = %23, %9
  tail call void @__pm_runtime_disable(ptr noundef %13, i1 noundef zeroext true) #9
  %25 = tail call i32 @__pm_runtime_set_status(ptr noundef %13, i32 noundef 2) #9
  %26 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 60
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void @dma_release_channel(ptr noundef nonnull %27) #9
  br label %30

30:                                               ; preds = %29, %24
  %31 = getelementptr inbounds %struct.spi_controller, ptr %10, i32 0, i32 61
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void @dma_release_channel(ptr noundef nonnull %32) #9
  br label %35

35:                                               ; preds = %34, %30
  %36 = icmp eq ptr %10, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %35
  tail call void @put_device(ptr noundef nonnull %10) #9
  br label %38

38:                                               ; preds = %37, %35
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_spi_isr(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 8
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %46, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 11
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 28
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !10
  %15 = sub i32 %10, %14
  %16 = load i32, ptr %5, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %16, i32 %15) #9
  %18 = sub i32 %16, %17
  store i32 %18, ptr %5, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %46, label %20

20:                                               ; preds = %8
  %21 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 13
  %22 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 6
  %23 = load i8, ptr %21, align 4
  %24 = load ptr, ptr %22, align 4
  br label %25

25:                                               ; preds = %36, %20
  %26 = phi ptr [ %24, %20 ], [ %43, %36 ]
  %27 = phi i8 [ %23, %20 ], [ %40, %36 ]
  %28 = phi i32 [ %17, %20 ], [ %44, %36 ]
  %29 = icmp eq i8 %27, 1
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8, ptr %26, align 1
  %32 = zext i8 %31 to i32
  br label %36

33:                                               ; preds = %25
  %34 = load i16, ptr %26, align 2
  %35 = zext i16 %34 to i32
  br label %36

36:                                               ; preds = %33, %30
  %37 = phi i32 [ %32, %30 ], [ %35, %33 ]
  %38 = load ptr, ptr %11, align 4
  %39 = getelementptr i8, ptr %38, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 %37) #9, !srcloc !9
  %40 = load i8, ptr %21, align 4
  %41 = zext i8 %40 to i32
  %42 = load ptr, ptr %22, align 4
  %43 = getelementptr i8, ptr %42, i32 %41
  store ptr %43, ptr %22, align 4
  %44 = add i32 %28, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %25

46:                                               ; preds = %36, %8, %2
  %47 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 3
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #9, !srcloc !10
  %51 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 9
  %52 = load i32, ptr %51, align 4
  %53 = icmp ugt i32 %52, %50
  br i1 %53, label %54, label %65

54:                                               ; preds = %46
  %55 = tail call i32 @llvm.usub.sat.i32(i32 %52, i32 %50) #9
  %56 = sub i32 %52, %50
  %57 = load ptr, ptr %47, align 4
  %58 = getelementptr i8, ptr %57, i32 24
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %58) #9, !srcloc !10
  %60 = add i32 %59, 1
  %61 = icmp ult i32 %55, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %54
  %63 = load i32, ptr %51, align 4
  %64 = sub i32 %63, %60
  br label %65

65:                                               ; preds = %62, %54, %46
  %66 = phi i32 [ 0, %46 ], [ %60, %62 ], [ %56, %54 ]
  %67 = phi i32 [ %50, %46 ], [ %64, %62 ], [ %50, %54 ]
  store i32 %66, ptr %51, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %96, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 7
  %71 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 13
  br label %72

72:                                               ; preds = %91, %69
  %73 = phi i32 [ %67, %69 ], [ %92, %91 ]
  %74 = load ptr, ptr %47, align 4
  %75 = getelementptr i8, ptr %74, i32 2048
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %75) #9, !srcloc !10
  %77 = load ptr, ptr %70, align 4
  %78 = icmp eq ptr %77, null
  br i1 %78, label %91, label %79

79:                                               ; preds = %72
  %80 = load i8, ptr %71, align 4
  %81 = icmp eq i8 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = trunc i32 %76 to i8
  store i8 %83, ptr %77, align 1
  br label %86

84:                                               ; preds = %79
  %85 = trunc i32 %76 to i16
  store i16 %85, ptr %77, align 2
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i8, ptr %71, align 4
  %88 = zext i8 %87 to i32
  %89 = load ptr, ptr %70, align 4
  %90 = getelementptr i8, ptr %89, i32 %88
  store ptr %90, ptr %70, align 4
  br label %91

91:                                               ; preds = %86, %72
  %92 = add i32 %73, -1
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %72

94:                                               ; preds = %91
  %95 = load i32, ptr %51, align 4
  br label %96

96:                                               ; preds = %94, %65
  %97 = phi i32 [ %95, %94 ], [ %66, %65 ]
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %96
  %100 = load ptr, ptr %47, align 4
  %101 = getelementptr i8, ptr %100, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 0) #9, !srcloc !9
  %102 = load ptr, ptr %47, align 4
  %103 = getelementptr i8, ptr %102, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 0) #9, !srcloc !9
  tail call void @spi_finalize_current_transfer(ptr noundef %1) #9
  br label %104

104:                                              ; preds = %99, %96
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_spi_set_cs(ptr nocapture noundef readonly %0, i1 noundef zeroext %1) #2 {
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 8
  %9 = and i32 %8, 4
  %10 = icmp eq i32 %9, 0
  %11 = xor i1 %10, %1
  %12 = zext i1 %11 to i8
  %13 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 4
  %14 = load i8, ptr %13, align 4
  %15 = zext i8 %14 to i32
  %16 = getelementptr %struct.rockchip_spi, ptr %6, i32 0, i32 15, i32 %15
  %17 = load i8, ptr %16, align 1, !range !15
  %18 = icmp eq i8 %17, %12
  br i1 %18, label %68, label %19

19:                                               ; preds = %2
  br i1 %11, label %20, label %41

20:                                               ; preds = %19
  %21 = load ptr, ptr %6, align 4
  %22 = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #9
  %23 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %24 = load ptr, ptr %23, align 8
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct.rockchip_spi, ptr %6, i32 0, i32 3
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #9
  br i1 %25, label %34, label %30

30:                                               ; preds = %20
  %31 = or i32 %29, 1
  %32 = load ptr, ptr %26, align 4
  %33 = getelementptr i8, ptr %32, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %31) #9, !srcloc !9
  br label %64

34:                                               ; preds = %20
  %35 = load i8, ptr %13, align 4
  %36 = zext i8 %35 to i32
  %37 = shl nuw i32 1, %36
  %38 = or i32 %37, %29
  %39 = load ptr, ptr %26, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %38) #9, !srcloc !9
  br label %64

41:                                               ; preds = %19
  %42 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 14
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct.rockchip_spi, ptr %6, i32 0, i32 3
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 12
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #9
  br i1 %44, label %53, label %49

49:                                               ; preds = %41
  %50 = and i32 %48, -2
  %51 = load ptr, ptr %45, align 4
  %52 = getelementptr i8, ptr %51, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #9, !srcloc !9
  br label %61

53:                                               ; preds = %41
  %54 = load i8, ptr %13, align 4
  %55 = zext i8 %54 to i32
  %56 = shl nuw i32 1, %55
  %57 = xor i32 %56, -1
  %58 = and i32 %48, %57
  %59 = load ptr, ptr %45, align 4
  %60 = getelementptr i8, ptr %59, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #9, !srcloc !9
  br label %61

61:                                               ; preds = %53, %49
  %62 = load ptr, ptr %6, align 4
  %63 = tail call i32 @__pm_runtime_idle(ptr noundef %62, i32 noundef 5) #9
  br label %64

64:                                               ; preds = %61, %34, %30
  %65 = load i8, ptr %13, align 4
  %66 = zext i8 %65 to i32
  %67 = getelementptr %struct.rockchip_spi, ptr %6, i32 0, i32 15, i32 %66
  store i8 %12, ptr %67, align 1
  br label %68

68:                                               ; preds = %64, %2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_spi_transfer_one(ptr noundef %0, ptr noundef %1, ptr noundef %2) #2 {
  %4 = alloca %struct.dma_slave_config, align 4
  %5 = alloca %struct.dma_slave_config, align 4
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %7 = load ptr, ptr %6, align 8
  %8 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  tail call void @spi_finalize_current_transfer(ptr noundef %0) #9
  br label %385

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 8
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %15) #9, !srcloc !10
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %12
  %19 = load ptr, ptr %13, align 4
  %20 = getelementptr i8, ptr %19, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !10
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24, !prof !16

24:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.18, i32 noundef 616, i32 noundef 9, ptr noundef null) #9
  br label %25

25:                                               ; preds = %24, %18, %12
  %26 = load ptr, ptr %2, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %28
  %33 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.19) #10
  br label %385

34:                                               ; preds = %28, %25
  %35 = load i32, ptr %8, align 4
  %36 = icmp ugt i32 %35, 65535
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.20, i32 noundef %35) #10
  br label %385

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 8
  %41 = load i8, ptr %40, align 1
  %42 = icmp ult i8 %41, 9
  %43 = select i1 %42, i8 1, i8 2
  %44 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 13
  store i8 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 24
  %46 = load ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %39
  %49 = tail call zeroext i1 %46(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9
  br label %50

50:                                               ; preds = %48, %39
  %51 = phi i1 [ %49, %48 ], [ false, %39 ]
  %52 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 12
  %53 = load i8, ptr %52, align 1, !range !15
  %54 = icmp eq i8 %53, 0
  %55 = select i1 %54, i32 11264, i32 1059840
  %56 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 16
  store i8 0, ptr %56, align 2
  %57 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 14
  %58 = load i8, ptr %57, align 1
  %59 = zext i8 %58 to i32
  %60 = shl nuw nsw i32 %59, 14
  %61 = or i32 %60, %55
  %62 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 7
  %63 = load i32, ptr %62, align 8
  %64 = shl i32 %63, 6
  %65 = and i32 %64, 192
  %66 = or i32 %61, %65
  %67 = shl i32 %63, 9
  %68 = and i32 %67, 4096
  %69 = or i32 %66, %68
  %70 = and i32 %63, 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %50
  %73 = getelementptr inbounds %struct.spi_device, ptr %1, i32 0, i32 4
  %74 = load i8, ptr %73, align 4
  %75 = zext i8 %74 to i32
  %76 = shl i32 8388608, %75
  %77 = or i32 %76, %69
  br label %78

78:                                               ; preds = %72, %50
  %79 = phi i32 [ %77, %72 ], [ %69, %50 ]
  %80 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, null
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load ptr, ptr %2, align 4
  %85 = icmp eq ptr %84, null
  br label %86

86:                                               ; preds = %83, %78
  %87 = phi i32 [ 524288, %83 ], [ 262144, %78 ]
  %88 = phi i1 [ %85, %83 ], [ %51, %78 ]
  %89 = select i1 %88, i32 %87, i32 0
  %90 = or i32 %89, %79
  %91 = load i8, ptr %40, align 1
  switch i8 %91, label %149 [
    i8 4, label %92
    i8 8, label %94
    i8 16, label %97
  ]

92:                                               ; preds = %86
  %93 = load i32, ptr %8, align 4
  br label %101

94:                                               ; preds = %86
  %95 = or i32 %90, 1
  %96 = load i32, ptr %8, align 4
  br label %101

97:                                               ; preds = %86
  %98 = or i32 %90, 2
  %99 = load i32, ptr %8, align 4
  %100 = lshr i32 %99, 1
  br label %101

101:                                              ; preds = %97, %94, %92
  %102 = phi i32 [ %98, %97 ], [ %95, %94 ], [ %90, %92 ]
  %103 = phi i32 [ %100, %97 ], [ %96, %94 ], [ %93, %92 ]
  %104 = add i32 %103, -1
  br i1 %51, label %105, label %112

105:                                              ; preds = %101
  %106 = load ptr, ptr %2, align 4
  %107 = icmp eq ptr %106, null
  %108 = select i1 %107, i32 0, i32 2
  %109 = xor i1 %82, true
  %110 = zext i1 %109 to i32
  %111 = or i32 %108, %110
  br label %112

112:                                              ; preds = %105, %101
  %113 = phi i32 [ 0, %101 ], [ %111, %105 ]
  %114 = load ptr, ptr %13, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %102) #9, !srcloc !9
  %115 = load ptr, ptr %13, align 4
  %116 = getelementptr i8, ptr %115, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 %104) #9, !srcloc !9
  %117 = load i32, ptr %8, align 4
  %118 = load i8, ptr %44, align 4
  %119 = zext i8 %118 to i32
  %120 = udiv i32 %117, %119
  %121 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 11
  %122 = load i32, ptr %121, align 4
  %123 = icmp ult i32 %120, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %112
  %125 = add i32 %120, -1
  %126 = load ptr, ptr %13, align 4
  %127 = getelementptr i8, ptr %126, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %125) #9, !srcloc !9
  br label %133

128:                                              ; preds = %112
  %129 = lshr i32 %122, 1
  %130 = add nsw i32 %129, -1
  %131 = load ptr, ptr %13, align 4
  %132 = getelementptr i8, ptr %131, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %132, i32 %130) #9, !srcloc !9
  br label %133

133:                                              ; preds = %128, %124
  %134 = load i32, ptr %121, align 4
  %135 = lshr i32 %134, 1
  %136 = add nsw i32 %135, -1
  %137 = load ptr, ptr %13, align 4
  %138 = getelementptr i8, ptr %137, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 %136) #9, !srcloc !9
  %139 = load i32, ptr %8, align 4
  %140 = load i8, ptr %44, align 4
  %141 = zext i8 %140 to i32
  %142 = udiv i32 %139, %141
  %143 = or i32 %142, -8
  br label %144

144:                                              ; preds = %144, %133
  %145 = phi i32 [ 1, %133 ], [ %148, %144 ]
  %146 = and i32 %145, %143
  %147 = icmp eq i32 %146, 0
  %148 = shl nuw nsw i32 %145, 1
  br i1 %147, label %144, label %152

149:                                              ; preds = %86
  %150 = zext i8 %91 to i32
  %151 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %151, ptr noundef nonnull @.str.21, i32 noundef %150) #10
  br label %385

152:                                              ; preds = %144
  %153 = add i32 %145, -1
  %154 = load ptr, ptr %13, align 4
  %155 = getelementptr i8, ptr %154, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %153) #9, !srcloc !9
  %156 = load ptr, ptr %13, align 4
  %157 = getelementptr i8, ptr %156, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %157, i32 %113) #9, !srcloc !9
  %158 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 12
  %159 = load i32, ptr %158, align 4
  %160 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 12
  %161 = load i32, ptr %160, align 4
  %162 = shl i32 %161, 1
  %163 = add i32 %159, -1
  %164 = add i32 %163, %162
  %165 = udiv i32 %164, %162
  %166 = shl i32 %165, 1
  %167 = load ptr, ptr %13, align 4
  %168 = getelementptr i8, ptr %167, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %166) #9, !srcloc !9
  br i1 %51, label %169, label %324

169:                                              ; preds = %152
  %170 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 10
  store volatile i32 0, ptr %170, align 4
  %171 = load ptr, ptr %80, align 4
  %172 = icmp eq ptr %171, null
  br i1 %172, label %225, label %173

173:                                              ; preds = %169
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %4) #9
  %174 = getelementptr inbounds i8, ptr %4, i32 36
  store i32 0, ptr %174, align 4, !annotation !8
  store i32 2, ptr %4, align 4
  %175 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 1
  %176 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 4
  %177 = load i32, ptr %176, align 4
  store i32 %177, ptr %175, align 4
  %178 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 2
  store i32 0, ptr %178, align 4
  %179 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 3
  %180 = load i8, ptr %44, align 4
  %181 = zext i8 %180 to i32
  store i32 %181, ptr %179, align 4
  %182 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 4
  store i32 0, ptr %182, align 4
  %183 = load i32, ptr %8, align 4
  %184 = udiv i32 %183, %181
  %185 = or i32 %184, -8
  br label %186

186:                                              ; preds = %186, %173
  %187 = phi i32 [ 1, %173 ], [ %190, %186 ]
  %188 = and i32 %187, %185
  %189 = icmp eq i32 %188, 0
  %190 = shl nuw nsw i32 %187, 1
  br i1 %189, label %186, label %191

191:                                              ; preds = %186
  %192 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 5
  store i32 %187, ptr %192, align 4
  %193 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 6
  %194 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 10
  store ptr null, ptr %194, align 4
  %195 = getelementptr inbounds %struct.dma_slave_config, ptr %4, i32 0, i32 11
  store i32 0, ptr %195, align 4
  %196 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(13) %193, i8 0, i64 13, i1 false) #9
  %197 = load ptr, ptr %196, align 4
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.dma_device, ptr %198, i32 0, i32 44
  %200 = load ptr, ptr %199, align 4
  %201 = icmp eq ptr %200, null
  br i1 %201, label %205, label %202

202:                                              ; preds = %191
  %203 = call i32 %200(ptr noundef %197, ptr noundef nonnull %4) #9
  %204 = load ptr, ptr %196, align 4
  br label %205

205:                                              ; preds = %202, %191
  %206 = phi ptr [ %197, %191 ], [ %204, %202 ]
  %207 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6
  %208 = load ptr, ptr %207, align 4
  %209 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 6, i32 1
  %210 = load i32, ptr %209, align 4
  %211 = icmp eq ptr %206, null
  br i1 %211, label %322, label %212

212:                                              ; preds = %205
  %213 = load ptr, ptr %206, align 4
  %214 = icmp eq ptr %213, null
  br i1 %214, label %322, label %215

215:                                              ; preds = %212
  %216 = getelementptr inbounds %struct.dma_device, ptr %213, i32 0, i32 39
  %217 = load ptr, ptr %216, align 4
  %218 = icmp eq ptr %217, null
  br i1 %218, label %322, label %219

219:                                              ; preds = %215
  %220 = call ptr %217(ptr noundef nonnull %206, ptr noundef %208, i32 noundef %210, i32 noundef 2, i32 noundef 1, ptr noundef null) #9
  %221 = icmp eq ptr %220, null
  br i1 %221, label %322, label %222

222:                                              ; preds = %219
  %223 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %220, i32 0, i32 6
  store ptr @rockchip_spi_dma_rxcb, ptr %223, align 4
  %224 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %220, i32 0, i32 8
  store ptr %0, ptr %224, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  br label %225

225:                                              ; preds = %222, %169
  %226 = phi ptr [ null, %169 ], [ %220, %222 ]
  %227 = load ptr, ptr %2, align 4
  %228 = icmp eq ptr %227, null
  br i1 %228, label %295, label %229

229:                                              ; preds = %225
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %5) #9
  %230 = getelementptr inbounds i8, ptr %5, i32 36
  store i32 0, ptr %230, align 4, !annotation !8
  store i32 1, ptr %5, align 4
  %231 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 1
  store i32 0, ptr %231, align 4
  %232 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 2
  %233 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 5
  %234 = load i32, ptr %233, align 4
  store i32 %234, ptr %232, align 4
  %235 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 3
  store i32 0, ptr %235, align 4
  %236 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 4
  %237 = load i8, ptr %44, align 4
  %238 = zext i8 %237 to i32
  store i32 %238, ptr %236, align 4
  %239 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 5
  store i32 0, ptr %239, align 4
  %240 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 6
  %241 = load i32, ptr %121, align 4
  %242 = lshr i32 %241, 2
  store i32 %242, ptr %240, align 4
  %243 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 7
  store i32 0, ptr %243, align 4
  %244 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 8
  store i32 0, ptr %244, align 4
  %245 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 10
  store ptr null, ptr %245, align 4
  %246 = getelementptr inbounds %struct.dma_slave_config, ptr %5, i32 0, i32 11
  store i32 0, ptr %246, align 4
  %247 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %248 = load ptr, ptr %247, align 8
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.dma_device, ptr %249, i32 0, i32 44
  %251 = load ptr, ptr %250, align 4
  %252 = icmp eq ptr %251, null
  br i1 %252, label %256, label %253

253:                                              ; preds = %229
  %254 = call i32 %251(ptr noundef %248, ptr noundef nonnull %5) #9
  %255 = load ptr, ptr %247, align 8
  br label %256

256:                                              ; preds = %253, %229
  %257 = phi ptr [ %248, %229 ], [ %255, %253 ]
  %258 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5
  %259 = load ptr, ptr %258, align 4
  %260 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 5, i32 1
  %261 = load i32, ptr %260, align 4
  %262 = icmp eq ptr %257, null
  br i1 %262, label %273, label %263

263:                                              ; preds = %256
  %264 = load ptr, ptr %257, align 4
  %265 = icmp eq ptr %264, null
  br i1 %265, label %273, label %266

266:                                              ; preds = %263
  %267 = getelementptr inbounds %struct.dma_device, ptr %264, i32 0, i32 39
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %273, label %270

270:                                              ; preds = %266
  %271 = call ptr %268(ptr noundef nonnull %257, ptr noundef %259, i32 noundef %261, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  %272 = icmp eq ptr %271, null
  br i1 %272, label %273, label %292

273:                                              ; preds = %270, %266, %263, %256
  %274 = icmp eq ptr %226, null
  br i1 %274, label %323, label %275

275:                                              ; preds = %273
  %276 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %277 = load ptr, ptr %276, align 4
  %278 = load ptr, ptr %277, align 4
  %279 = getelementptr inbounds %struct.dma_device, ptr %278, i32 0, i32 47
  %280 = load ptr, ptr %279, align 4
  %281 = icmp eq ptr %280, null
  br i1 %281, label %291, label %282

282:                                              ; preds = %275
  %283 = call i32 %280(ptr noundef %277) #9
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %291

285:                                              ; preds = %282
  %286 = load ptr, ptr %277, align 4
  %287 = getelementptr inbounds %struct.dma_device, ptr %286, i32 0, i32 48
  %288 = load ptr, ptr %287, align 4
  %289 = icmp eq ptr %288, null
  br i1 %289, label %291, label %290

290:                                              ; preds = %285
  call void %288(ptr noundef %277) #9
  br label %291

291:                                              ; preds = %290, %285, %282, %275
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #9
  br label %385

292:                                              ; preds = %270
  %293 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %271, i32 0, i32 6
  store ptr @rockchip_spi_dma_txcb, ptr %293, align 4
  %294 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %271, i32 0, i32 8
  store ptr %0, ptr %294, align 4
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #9
  br label %295

295:                                              ; preds = %292, %225
  %296 = phi ptr [ null, %225 ], [ %271, %292 ]
  %297 = icmp eq ptr %226, null
  br i1 %297, label %308, label %298

298:                                              ; preds = %295
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %170) #9, !srcloc !12
  %299 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 1, ptr elementtype(i32) %170) #9, !srcloc !17
  %300 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %226, i32 0, i32 4
  %301 = load ptr, ptr %300, align 4
  %302 = call i32 %301(ptr noundef nonnull %226) #9
  %303 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %304 = load ptr, ptr %303, align 4
  %305 = load ptr, ptr %304, align 4
  %306 = getelementptr inbounds %struct.dma_device, ptr %305, i32 0, i32 50
  %307 = load ptr, ptr %306, align 4
  call void %307(ptr noundef %304) #9
  br label %308

308:                                              ; preds = %298, %295
  %309 = load ptr, ptr %13, align 4
  %310 = getelementptr i8, ptr %309, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %310, i32 1) #9, !srcloc !9
  %311 = icmp eq ptr %296, null
  br i1 %311, label %385, label %312

312:                                              ; preds = %308
  call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %170) #9, !srcloc !12
  %313 = call { i32, i32 } asm sideeffect "@ atomic_or\0A1:\09ldrex\09$0, [$3]\0A\09orr\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %170, ptr %170, i32 2, ptr elementtype(i32) %170) #9, !srcloc !17
  %314 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %296, i32 0, i32 4
  %315 = load ptr, ptr %314, align 4
  %316 = call i32 %315(ptr noundef nonnull %296) #9
  %317 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %318 = load ptr, ptr %317, align 8
  %319 = load ptr, ptr %318, align 4
  %320 = getelementptr inbounds %struct.dma_device, ptr %319, i32 0, i32 50
  %321 = load ptr, ptr %320, align 4
  call void %321(ptr noundef %318) #9
  br label %385

322:                                              ; preds = %219, %215, %212, %205
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %4) #9
  br label %385

323:                                              ; preds = %273
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %5) #9
  br label %385

324:                                              ; preds = %152
  %325 = load ptr, ptr %2, align 4
  %326 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 6
  store ptr %325, ptr %326, align 4
  %327 = load ptr, ptr %80, align 4
  %328 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 7
  store ptr %327, ptr %328, align 4
  %329 = icmp eq ptr %325, null
  br i1 %329, label %330, label %333

330:                                              ; preds = %324
  %331 = load i8, ptr %44, align 4
  %332 = zext i8 %331 to i32
  br label %338

333:                                              ; preds = %324
  %334 = load i32, ptr %8, align 4
  %335 = load i8, ptr %44, align 4
  %336 = zext i8 %335 to i32
  %337 = udiv i32 %334, %336
  br label %338

338:                                              ; preds = %333, %330
  %339 = phi i32 [ %332, %330 ], [ %336, %333 ]
  %340 = phi i32 [ 0, %330 ], [ %337, %333 ]
  %341 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 8
  store i32 %340, ptr %341, align 4
  %342 = load i32, ptr %8, align 4
  %343 = udiv i32 %342, %339
  %344 = getelementptr inbounds %struct.rockchip_spi, ptr %7, i32 0, i32 9
  store i32 %343, ptr %344, align 4
  %345 = load ptr, ptr %13, align 4
  %346 = getelementptr i8, ptr %345, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %346, i32 16) #9, !srcloc !9
  %347 = load ptr, ptr %13, align 4
  %348 = getelementptr i8, ptr %347, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %348, i32 1) #9, !srcloc !9
  %349 = load i32, ptr %341, align 4
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %385, label %351

351:                                              ; preds = %338
  %352 = load i32, ptr %121, align 4
  %353 = load ptr, ptr %13, align 4
  %354 = getelementptr i8, ptr %353, i32 28
  %355 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %354) #9, !srcloc !10
  %356 = sub i32 %352, %355
  %357 = load i32, ptr %341, align 4
  %358 = tail call i32 @llvm.umin.i32(i32 %357, i32 %356) #9
  %359 = sub i32 %357, %358
  store i32 %359, ptr %341, align 4
  %360 = icmp eq i32 %358, 0
  br i1 %360, label %385, label %361

361:                                              ; preds = %351
  %362 = load i8, ptr %44, align 4
  %363 = load ptr, ptr %326, align 4
  br label %364

364:                                              ; preds = %375, %361
  %365 = phi ptr [ %363, %361 ], [ %382, %375 ]
  %366 = phi i8 [ %362, %361 ], [ %379, %375 ]
  %367 = phi i32 [ %358, %361 ], [ %383, %375 ]
  %368 = icmp eq i8 %366, 1
  br i1 %368, label %369, label %372

369:                                              ; preds = %364
  %370 = load i8, ptr %365, align 1
  %371 = zext i8 %370 to i32
  br label %375

372:                                              ; preds = %364
  %373 = load i16, ptr %365, align 2
  %374 = zext i16 %373 to i32
  br label %375

375:                                              ; preds = %372, %369
  %376 = phi i32 [ %371, %369 ], [ %374, %372 ]
  %377 = load ptr, ptr %13, align 4
  %378 = getelementptr i8, ptr %377, i32 1024
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %378, i32 %376) #9, !srcloc !9
  %379 = load i8, ptr %44, align 4
  %380 = zext i8 %379 to i32
  %381 = load ptr, ptr %326, align 4
  %382 = getelementptr i8, ptr %381, i32 %380
  store ptr %382, ptr %326, align 4
  %383 = add i32 %367, -1
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %385, label %364

385:                                              ; preds = %375, %351, %338, %323, %322, %312, %308, %291, %149, %37, %32, %11
  %386 = phi i32 [ -22, %37 ], [ -22, %32 ], [ 1, %11 ], [ -22, %149 ], [ -22, %322 ], [ -22, %323 ], [ -22, %291 ], [ 1, %312 ], [ 1, %308 ], [ 1, %338 ], [ 1, %351 ], [ 1, %375 ]
  ret i32 %386
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rockchip_spi_max_transfer_size(ptr nocapture noundef readnone %0) #5 {
  ret i32 65535
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_spi_handle_err(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #9, !srcloc !9
  %8 = load ptr, ptr %5, align 4
  %9 = getelementptr i8, ptr %8, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #9, !srcloc !9
  %10 = getelementptr inbounds %struct.rockchip_spi, ptr %4, i32 0, i32 10
  %11 = load volatile i32, ptr %10, align 4
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %2
  %15 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 60
  %16 = load ptr, ptr %15, align 8
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 47
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %14
  %22 = tail call i32 %19(ptr noundef %16) #9
  br label %23

23:                                               ; preds = %21, %14, %2
  %24 = load volatile i32, ptr %10, align 4
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %36, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 61
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dma_device, ptr %30, i32 0, i32 47
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = tail call i32 %32(ptr noundef %29) #9
  br label %36

36:                                               ; preds = %34, %27, %23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define internal zeroext i1 @rockchip_spi_can_dma(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1, ptr nocapture noundef readonly %2) #6 {
  %4 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 8
  %7 = load i8, ptr %6, align 1
  %8 = icmp ugt i8 %7, 8
  %9 = getelementptr inbounds %struct.spi_transfer, ptr %2, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = zext i1 %8 to i32
  %12 = lshr i32 %10, %11
  %13 = getelementptr inbounds %struct.rockchip_spi, ptr %5, i32 0, i32 11
  %14 = load i32, ptr %13, align 4
  %15 = icmp uge i32 %12, %14
  ret i1 %15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_transfer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_spi_dma_rxcb(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #9, !srcloc !12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 1, ptr elementtype(i32) %4) #9, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 16
  %11 = load i8, ptr %10, align 2, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 0) #9, !srcloc !9
  tail call void @spi_finalize_current_transfer(ptr noundef %0) #9
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rockchip_spi_dma_txcb(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %4) #9, !srcloc !12
  %5 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_andnot\0A1:\09ldrex\09$0, [$4]\0A\09bic\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %4, ptr %4, i32 2, ptr elementtype(i32) %4) #9, !srcloc !19
  %6 = extractvalue { i32, i32, i32 } %5, 0
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !20
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 16
  %11 = load i8, ptr %10, align 2, !range !15
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %45, label %13

13:                                               ; preds = %9, %1
  %14 = getelementptr inbounds %struct.spi_controller, ptr %0, i32 0, i32 12
  %15 = load i8, ptr %14, align 1, !range !15
  %16 = icmp eq i8 %15, 0
  %17 = load volatile i32, ptr @jiffies, align 64
  %18 = add i32 %17, 1
  %19 = getelementptr inbounds %struct.rockchip_spi, ptr %3, i32 0, i32 3
  br label %20

20:                                               ; preds = %36, %13
  %21 = load ptr, ptr %19, align 4
  %22 = getelementptr i8, ptr %21, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #9
  br i1 %16, label %33, label %24

24:                                               ; preds = %20
  %25 = and i32 %23, 32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr i8, ptr %28, i32 36
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #9, !srcloc !10
  %31 = and i32 %30, 1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %42, label %36

33:                                               ; preds = %20
  %34 = and i32 %23, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33, %27, %24
  %37 = load volatile i32, ptr @jiffies, align 64
  %38 = sub i32 %18, %37
  %39 = icmp sgt i32 %38, -1
  br i1 %39, label %20, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.22) #10
  br label %42

42:                                               ; preds = %40, %33, %27
  %43 = load ptr, ptr %19, align 4
  %44 = getelementptr i8, ptr %43, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 0) #9, !srcloc !9
  tail call void @spi_finalize_current_transfer(ptr noundef %0) #9
  br label %45

45:                                               ; preds = %42, %9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @get_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_spi_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @spi_controller_suspend(ptr noundef %3) #9
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #9
  br label %11

11:                                               ; preds = %9, %6, %1
  %12 = phi i32 [ 0, %9 ], [ %4, %1 ], [ %7, %6 ]
  ret i32 %12
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_spi_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #9
  %7 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #9
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @spi_controller_resume(ptr noundef %3) #9
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.rockchip_spi, ptr %5, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  tail call void @clk_disable(ptr noundef %14) #9
  tail call void @clk_unprepare(ptr noundef %14) #9
  %15 = getelementptr inbounds %struct.rockchip_spi, ptr %5, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  tail call void @clk_disable(ptr noundef %16) #9
  tail call void @clk_unprepare(ptr noundef %16) #9
  br label %17

17:                                               ; preds = %12, %9, %1
  %18 = phi i32 [ %7, %1 ], [ 0, %12 ], [ 0, %9 ]
  ret i32 %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_spi_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rockchip_spi, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #9
  tail call void @clk_unprepare(ptr noundef %7) #9
  %8 = getelementptr inbounds %struct.rockchip_spi, ptr %5, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  tail call void @clk_disable(ptr noundef %9) #9
  tail call void @clk_unprepare(ptr noundef %9) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rockchip_spi_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.rockchip_spi, ptr %5, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = tail call i32 @clk_prepare(ptr noundef %7) #9
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = tail call i32 @clk_enable(ptr noundef %7) #9
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  tail call void @clk_unprepare(ptr noundef %7) #9
  br label %14

14:                                               ; preds = %13, %1
  %15 = phi i32 [ %8, %1 ], [ %11, %13 ]
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %31, label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct.rockchip_spi, ptr %5, i32 0, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = tail call i32 @clk_prepare(ptr noundef %19) #9
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = tail call i32 @clk_enable(ptr noundef %19) #9
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %22
  tail call void @clk_unprepare(ptr noundef %19) #9
  br label %26

26:                                               ; preds = %25, %17
  %27 = phi i32 [ %20, %17 ], [ %23, %25 ]
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %30) #9
  tail call void @clk_unprepare(ptr noundef %30) #9
  br label %31

31:                                               ; preds = %29, %26, %22, %14
  %32 = phi i32 [ %15, %14 ], [ 0, %29 ], [ 0, %26 ], [ 0, %22 ]
  ret i32 %32
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
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
!9 = !{i64 5057339}
!10 = !{i64 5057757}
!11 = !{i64 2147965314}
!12 = !{i64 463624, i64 2147953595, i64 2147953621, i64 2147953668, i64 2147953690, i64 2147953718, i64 2147953738}
!13 = !{i64 450193, i64 450218, i64 450240, i64 450256, i64 450268, i64 450288, i64 450312, i64 450328, i64 450340}
!14 = !{i64 2147965440}
!15 = !{i8 0, i8 2}
!16 = !{!"branch_weights", i32 2000, i32 1}
!17 = !{i64 2147973585, i64 2147973611, i64 2147973640, i64 2147973674, i64 2147973705, i64 2147973728}
!18 = !{i64 2148074968}
!19 = !{i64 2147972728, i64 2147972760, i64 2147972789, i64 2147972823, i64 2147972854, i64 2147972877}
!20 = !{i64 2148075173}
