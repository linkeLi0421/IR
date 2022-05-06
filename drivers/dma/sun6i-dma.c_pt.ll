; ModuleID = '/llk/IR/drivers/dma/sun6i-dma.c_pt.bc'
source_filename = "../drivers/dma/sun6i-dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sun6i_dma_config = type { i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8 }
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
%struct.sun6i_dma_dev = type { %struct.dma_device, ptr, ptr, ptr, i32, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.sun6i_pchan = type { i32, ptr, ptr, ptr, ptr }
%struct.sun6i_vchan = type { %struct.virt_dma_chan, %struct.list_head, %struct.dma_slave_config, ptr, i8, i8, i8 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.sun6i_desc = type { %struct.virt_dma_desc, i32, ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.sun6i_dma_lli = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_sun6i_dma__227_1474_sun6i_dma_driver_init6 = internal global ptr @sun6i_dma_driver_init, section ".initcall6.init", align 4
@sun6i_dma_driver = internal global %struct.platform_driver { ptr @sun6i_dma_probe, ptr @sun6i_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_dma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_sun6i_dma_driver_exit = internal global ptr @sun6i_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description228 = internal constant [58 x i8] c"sun6i_dma.description=Allwinner A31 DMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author229 = internal constant [49 x i8] c"sun6i_dma.author=Sugar <shuge@allwinnertech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [66 x i8] c"sun6i_dma.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [37 x i8] c"sun6i_dma.file=drivers/dma/sun6i-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [22 x i8] c"sun6i_dma.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"sun6i-dma\00", align 1
@sun6i_dma_match = internal constant [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a100-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a100_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_dma_cfg }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"No clock specified\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"mbus\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"No mbus clock specified\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"No reset controller specified\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"No memory for descriptors dma pool\0A\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Can't get dma-channels.\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"Missing dma-requests, using %u.\0A\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"Couldn't deassert the device from reset\0A\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Couldn't enable the clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Couldn't enable mbus clock\0A\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"Cannot request IRQ\0A\00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Failed to register DMA engine device\0A\00", align 1
@.str.15 = private unnamed_addr constant [35 x i8] c"of_dma_controller_register failed\0A\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"Invalid DMA configuration\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.17 = private unnamed_addr constant [28 x i8] c"Failed to alloc lli memory\0A\00", align 1
@sun6i_a31_dma_cfg = internal global %struct.sun6i_dma_config { i32 16, i32 30, i32 53, ptr null, ptr @sun6i_set_burst_length_a31, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 258, i32 258, i32 22, i32 22, i8 0 }, align 4
@sun8i_a23_dma_cfg = internal global %struct.sun6i_dma_config { i32 8, i32 24, i32 37, ptr @sun6i_enable_clock_autogate_a23, ptr @sun6i_set_burst_length_a31, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 258, i32 258, i32 22, i32 22, i8 0 }, align 4
@sun8i_a83t_dma_cfg = internal global %struct.sun6i_dma_config { i32 8, i32 28, i32 39, ptr @sun6i_enable_clock_autogate_a23, ptr @sun6i_set_burst_length_a31, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 258, i32 258, i32 22, i32 22, i8 0 }, align 4
@sun8i_h3_dma_cfg = internal global %struct.sun6i_dma_config { i32 12, i32 27, i32 34, ptr @sun6i_enable_clock_autogate_h3, ptr @sun6i_set_burst_length_h3, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 65810, i32 65810, i32 278, i32 278, i8 0 }, align 4
@sun8i_v3s_dma_cfg = internal global %struct.sun6i_dma_config { i32 8, i32 23, i32 24, ptr @sun6i_enable_clock_autogate_a23, ptr @sun6i_set_burst_length_a31, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 258, i32 258, i32 22, i32 22, i8 0 }, align 4
@sun50i_a64_dma_cfg = internal global %struct.sun6i_dma_config { i32 0, i32 0, i32 0, ptr @sun6i_enable_clock_autogate_h3, ptr @sun6i_set_burst_length_h3, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 65810, i32 65810, i32 278, i32 278, i8 0 }, align 4
@sun50i_a100_dma_cfg = internal global %struct.sun6i_dma_config { i32 0, i32 0, i32 0, ptr @sun6i_enable_clock_autogate_h3, ptr @sun6i_set_burst_length_h3, ptr @sun6i_set_drq_h6, ptr @sun6i_set_mode_h6, i32 65810, i32 65810, i32 278, i32 278, i8 1 }, align 4
@sun50i_h6_dma_cfg = internal global %struct.sun6i_dma_config { i32 0, i32 0, i32 0, ptr @sun6i_enable_clock_autogate_h3, ptr @sun6i_set_burst_length_h3, ptr @sun6i_set_drq_h6, ptr @sun6i_set_mode_h6, i32 65810, i32 65810, i32 278, i32 278, i8 1 }, align 4
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_author229, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description228, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_sun6i_dma_driver_exit, ptr @__initcall__kmod_sun6i_dma__227_1474_sun6i_dma_driver_init6, ptr @sun6i_dma_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @sun6i_dma_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_dma_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @sun6i_dma_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun6i_dma_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dma_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 340, i32 noundef 3520) #11
  %6 = icmp eq ptr %5, null
  br i1 %6, label %241, label %7

7:                                                ; preds = %1
  %8 = tail call ptr @of_device_get_match_data(ptr noundef %2) #11
  %9 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 13
  store ptr %8, ptr %9, align 4
  %10 = icmp eq ptr %8, null
  br i1 %10, label %241, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %13 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %12) #11
  %14 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  %15 = icmp ugt ptr %13, inttoptr (i32 -4096 to ptr)
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i32
  br label %241

18:                                               ; preds = %11
  %19 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #11
  %20 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 4
  store i32 %19, ptr %20, align 4
  %21 = icmp slt i32 %19, 0
  br i1 %21, label %241, label %22

22:                                               ; preds = %18
  %23 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #11
  %24 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 2
  store ptr %23, ptr %24, align 4
  %25 = icmp ugt ptr %23, inttoptr (i32 -4096 to ptr)
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #12
  %27 = load ptr, ptr %24, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %241

29:                                               ; preds = %22
  %30 = load ptr, ptr %9, align 4
  %31 = getelementptr inbounds %struct.sun6i_dma_config, ptr %30, i32 0, i32 11
  %32 = load i8, ptr %31, align 4, !range !8
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %29
  %35 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef nonnull @.str.2) #11
  %36 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 3
  store ptr %35, ptr %36, align 4
  %37 = icmp ugt ptr %35, inttoptr (i32 -4096 to ptr)
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.3) #12
  %39 = load ptr, ptr %36, align 4
  %40 = ptrtoint ptr %39 to i32
  br label %241

41:                                               ; preds = %34, %29
  %42 = tail call ptr @__devm_reset_control_get(ptr noundef %2, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %43 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 6
  store ptr %42, ptr %43, align 4
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.4) #12
  %46 = load ptr, ptr %43, align 4
  %47 = ptrtoint ptr %46 to i32
  br label %241

48:                                               ; preds = %41
  %49 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load ptr, ptr %2, align 4
  br label %54

54:                                               ; preds = %52, %48
  %55 = phi ptr [ %53, %52 ], [ %50, %48 ]
  %56 = tail call ptr @dmam_pool_create(ptr noundef %55, ptr noundef %2, i32 noundef 28, i32 noundef 4, i32 noundef 0) #11
  %57 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 10
  store ptr %56, ptr %57, align 4
  %58 = icmp eq ptr %56, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.5) #12
  br label %241

60:                                               ; preds = %54
  %61 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %5, ptr %61, align 8
  %62 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 9
  store volatile ptr %62, ptr %62, align 4
  %63 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 9, i32 1
  store ptr %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 5
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 9, ptr noundef %65) #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %65) #11
  tail call void @_set_bit(i32 noundef 11, ptr noundef %65) #11
  tail call void @_set_bit(i32 noundef 12, ptr noundef %65) #11
  %66 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 3
  store volatile ptr %66, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 3, i32 1
  store ptr %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 29
  store ptr @sun6i_dma_free_chan_resources, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 49
  store ptr @sun6i_dma_tx_status, ptr %69, align 4
  %70 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 50
  store ptr @sun6i_dma_issue_pending, ptr %70, align 4
  %71 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 39
  store ptr @sun6i_dma_prep_slave_sg, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 30
  store ptr @sun6i_dma_prep_dma_memcpy, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 40
  store ptr @sun6i_dma_prep_dma_cyclic, ptr %73, align 4
  %74 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 10
  store i32 2, ptr %74, align 4
  %75 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 44
  store ptr @sun6i_dma_config, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 45
  store ptr @sun6i_dma_pause, ptr %76, align 4
  %77 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 46
  store ptr @sun6i_dma_resume, ptr %77, align 4
  %78 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 47
  store ptr @sun6i_dma_terminate_all, ptr %78, align 4
  %79 = load ptr, ptr %9, align 4
  %80 = getelementptr inbounds %struct.sun6i_dma_config, ptr %79, i32 0, i32 9
  %81 = load i32, ptr %80, align 4
  %82 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 19
  store i32 %81, ptr %82, align 4
  %83 = getelementptr inbounds %struct.sun6i_dma_config, ptr %79, i32 0, i32 10
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 20
  store i32 %84, ptr %85, align 4
  %86 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 21
  store i32 6, ptr %86, align 4
  %87 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 26
  store i32 2, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  store ptr %2, ptr %88, align 4
  %89 = load i32, ptr %79, align 4
  %90 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 14
  store i32 %89, ptr %90, align 4
  %91 = getelementptr inbounds %struct.sun6i_dma_config, ptr %79, i32 0, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 15
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.sun6i_dma_config, ptr %79, i32 0, i32 1
  %95 = load i32, ptr %94, align 4
  %96 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 16
  store i32 %95, ptr %96, align 4
  %97 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.6, ptr noundef %90, i32 noundef 1, i32 noundef 0) #11
  %98 = tail call i32 @llvm.smin.i32(i32 %97, i32 0) #11
  %99 = icmp sgt i32 %97, -1
  br i1 %99, label %104, label %100

100:                                              ; preds = %60
  %101 = load i32, ptr %90, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.7) #12
  br label %241

104:                                              ; preds = %100, %60
  %105 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.8, ptr noundef %96, i32 noundef 1, i32 noundef 0) #11
  %106 = icmp sgt i32 %105, -1
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i32, ptr %96, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %2, ptr noundef nonnull @.str.9, i32 noundef 31) #12
  store i32 31, ptr %96, align 4
  br label %111

111:                                              ; preds = %110, %107, %104
  %112 = load i32, ptr %93, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %111
  %115 = load i32, ptr %96, align 4
  %116 = shl i32 %115, 1
  %117 = add i32 %116, 2
  store i32 %117, ptr %93, align 4
  br label %118

118:                                              ; preds = %114, %111
  %119 = load i32, ptr %90, align 4
  %120 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %119, i32 20) #11
  %121 = extractvalue { i32, i1 } %120, 1
  br i1 %121, label %122, label %124, !prof !9

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 11
  store ptr null, ptr %123, align 4
  br label %241

124:                                              ; preds = %118
  %125 = extractvalue { i32, i1 } %120, 0
  %126 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %125, i32 noundef 3520) #11
  %127 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 11
  store ptr %126, ptr %127, align 4
  %128 = icmp eq ptr %126, null
  br i1 %128, label %241, label %129

129:                                              ; preds = %124
  %130 = load i32, ptr %93, align 4
  %131 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %130, i32 204) #11
  %132 = extractvalue { i32, i1 } %131, 1
  br i1 %132, label %133, label %135, !prof !9

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 12
  store ptr null, ptr %134, align 4
  br label %241

135:                                              ; preds = %129
  %136 = extractvalue { i32, i1 } %131, 0
  %137 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef %136, i32 noundef 3520) #11
  %138 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 12
  store ptr %137, ptr %138, align 4
  %139 = icmp eq ptr %137, null
  br i1 %139, label %241, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 7
  tail call void @tasklet_setup(ptr noundef %141, ptr noundef nonnull @sun6i_dma_tasklet) #11
  %142 = load i32, ptr %90, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %147, %140
  %145 = load i32, ptr %93, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %169, label %159

147:                                              ; preds = %147, %140
  %148 = phi i32 [ %156, %147 ], [ 0, %140 ]
  %149 = load ptr, ptr %127, align 4
  %150 = getelementptr %struct.sun6i_pchan, ptr %149, i32 %148
  store i32 %148, ptr %150, align 4
  %151 = load ptr, ptr %14, align 4
  %152 = getelementptr i8, ptr %151, i32 256
  %153 = shl i32 %148, 6
  %154 = getelementptr i8, ptr %152, i32 %153
  %155 = getelementptr %struct.sun6i_pchan, ptr %149, i32 %148, i32 1
  store ptr %154, ptr %155, align 4
  %156 = add nuw i32 %148, 1
  %157 = load i32, ptr %90, align 4
  %158 = icmp ult i32 %156, %157
  br i1 %158, label %147, label %144

159:                                              ; preds = %159, %144
  %160 = phi i32 [ %166, %159 ], [ 0, %144 ]
  %161 = load ptr, ptr %138, align 4
  %162 = getelementptr %struct.sun6i_vchan, ptr %161, i32 %160
  %163 = getelementptr %struct.sun6i_vchan, ptr %161, i32 %160, i32 1
  store volatile ptr %163, ptr %163, align 4
  %164 = getelementptr %struct.sun6i_vchan, ptr %161, i32 %160, i32 1, i32 1
  store ptr %163, ptr %164, align 4
  %165 = getelementptr inbounds %struct.virt_dma_chan, ptr %162, i32 0, i32 2
  store ptr @sun6i_dma_free_desc, ptr %165, align 4
  tail call void @vchan_init(ptr noundef %162, ptr noundef nonnull %5) #11
  %166 = add nuw i32 %160, 1
  %167 = load i32, ptr %93, align 4
  %168 = icmp ult i32 %166, %167
  br i1 %168, label %159, label %169

169:                                              ; preds = %159, %144
  %170 = load ptr, ptr %43, align 4
  %171 = tail call i32 @reset_control_deassert(ptr noundef %170) #11
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %169
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.10) #12
  br label %239

174:                                              ; preds = %169
  %175 = load ptr, ptr %24, align 4
  %176 = tail call i32 @clk_prepare(ptr noundef %175) #11
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = tail call i32 @clk_enable(ptr noundef %175) #11
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %184, label %181

181:                                              ; preds = %178
  tail call void @clk_unprepare(ptr noundef %175) #11
  br label %182

182:                                              ; preds = %181, %174
  %183 = phi i32 [ %179, %181 ], [ %176, %174 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.11) #12
  br label %235

184:                                              ; preds = %178
  %185 = load ptr, ptr %9, align 4
  %186 = getelementptr inbounds %struct.sun6i_dma_config, ptr %185, i32 0, i32 11
  %187 = load i8, ptr %186, align 4, !range !8
  %188 = icmp eq i8 %187, 0
  br i1 %188, label %200, label %189

189:                                              ; preds = %184
  %190 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 3
  %191 = load ptr, ptr %190, align 4
  %192 = tail call i32 @clk_prepare(ptr noundef %191) #11
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %198

194:                                              ; preds = %189
  %195 = tail call i32 @clk_enable(ptr noundef %191) #11
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %194
  tail call void @clk_unprepare(ptr noundef %191) #11
  br label %198

198:                                              ; preds = %197, %189
  %199 = phi i32 [ %195, %197 ], [ %192, %189 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.12) #12
  br label %232

200:                                              ; preds = %194, %184
  %201 = load i32, ptr %20, align 4
  %202 = load ptr, ptr %49, align 4
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %206

204:                                              ; preds = %200
  %205 = load ptr, ptr %2, align 4
  br label %206

206:                                              ; preds = %204, %200
  %207 = phi ptr [ %205, %204 ], [ %202, %200 ]
  %208 = tail call i32 @devm_request_threaded_irq(ptr noundef %2, i32 noundef %201, ptr noundef nonnull @sun6i_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %207, ptr noundef %5) #11
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %211, label %210

210:                                              ; preds = %206
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.13) #12
  br label %228

211:                                              ; preds = %206
  %212 = tail call i32 @dma_async_device_register(ptr noundef nonnull %5) #11
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %215, label %214

214:                                              ; preds = %211
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %2, ptr noundef nonnull @.str.14) #12
  br label %226

215:                                              ; preds = %211
  %216 = load ptr, ptr %3, align 8
  %217 = tail call i32 @of_dma_controller_register(ptr noundef %216, ptr noundef nonnull @sun6i_dma_of_xlate, ptr noundef nonnull %5) #11
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.15) #12
  tail call void @dma_async_device_unregister(ptr noundef nonnull %5) #11
  br label %226

220:                                              ; preds = %215
  %221 = load ptr, ptr %9, align 4
  %222 = getelementptr inbounds %struct.sun6i_dma_config, ptr %221, i32 0, i32 3
  %223 = load ptr, ptr %222, align 4
  %224 = icmp eq ptr %223, null
  br i1 %224, label %241, label %225

225:                                              ; preds = %220
  tail call void %223(ptr noundef nonnull %5) #11
  br label %241

226:                                              ; preds = %219, %214
  %227 = phi i32 [ %212, %214 ], [ %217, %219 ]
  tail call fastcc void @sun6i_kill_tasklet(ptr noundef nonnull %5)
  br label %228

228:                                              ; preds = %226, %210
  %229 = phi i32 [ %208, %210 ], [ %227, %226 ]
  %230 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %5, i32 0, i32 3
  %231 = load ptr, ptr %230, align 4
  tail call void @clk_disable(ptr noundef %231) #11
  tail call void @clk_unprepare(ptr noundef %231) #11
  br label %232

232:                                              ; preds = %228, %198
  %233 = phi i32 [ %199, %198 ], [ %229, %228 ]
  %234 = load ptr, ptr %24, align 4
  tail call void @clk_disable(ptr noundef %234) #11
  tail call void @clk_unprepare(ptr noundef %234) #11
  br label %235

235:                                              ; preds = %232, %182
  %236 = phi i32 [ %183, %182 ], [ %233, %232 ]
  %237 = load ptr, ptr %43, align 4
  %238 = tail call i32 @reset_control_assert(ptr noundef %237) #11
  br label %239

239:                                              ; preds = %235, %173
  %240 = phi i32 [ %171, %173 ], [ %236, %235 ]
  tail call fastcc void @sun6i_dma_free(ptr noundef nonnull %5)
  br label %241

241:                                              ; preds = %239, %225, %220, %135, %133, %124, %122, %103, %59, %45, %38, %26, %18, %16, %7, %1
  %242 = phi i32 [ %17, %16 ], [ %28, %26 ], [ %40, %38 ], [ %47, %45 ], [ %240, %239 ], [ %98, %103 ], [ -12, %59 ], [ -12, %1 ], [ -19, %7 ], [ %19, %18 ], [ -12, %124 ], [ -12, %135 ], [ 0, %225 ], [ 0, %220 ], [ -12, %122 ], [ -12, %133 ]
  ret i32 %242
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dma_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %5 = load ptr, ptr %4, align 8
  tail call void @of_dma_controller_free(ptr noundef %5) #11
  tail call void @dma_async_device_unregister(ptr noundef %3) #11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %6 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %8 = load ptr, ptr %6, align 4
  %9 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 0) #11, !srcloc !11
  %10 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %10) #11, !srcloc !13
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %10, ptr %10, i32 1, ptr elementtype(i32) %10) #11, !srcloc !14
  %12 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 4
  %15 = load i32, ptr %14, align 4
  tail call void @devm_free_irq(ptr noundef %13, i32 noundef %15, ptr noundef %3) #11
  %16 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %16) #11
  %17 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  tail call void @clk_disable(ptr noundef %18) #11
  tail call void @clk_unprepare(ptr noundef %18) #11
  %19 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  tail call void @clk_disable(ptr noundef %20) #11
  tail call void @clk_unprepare(ptr noundef %20) #11
  %21 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 6
  %22 = load ptr, ptr %21, align 4
  %23 = tail call i32 @reset_control_assert(ptr noundef %22) #11
  %24 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 15
  %25 = load i32, ptr %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %42, label %27

27:                                               ; preds = %1
  %28 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 12
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i32 [ 0, %27 ], [ %39, %29 ]
  %31 = load ptr, ptr %28, align 4
  %32 = getelementptr %struct.sun6i_vchan, ptr %31, i32 %30
  %33 = getelementptr inbounds %struct.dma_chan, ptr %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = load ptr, ptr %33, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  store ptr %35, ptr %37, align 4
  store volatile ptr %36, ptr %35, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %33, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %34, align 4
  %38 = getelementptr inbounds %struct.virt_dma_chan, ptr %32, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %38) #11
  %39 = add nuw i32 %30, 1
  %40 = load i32, ptr %24, align 4
  %41 = icmp ult i32 %39, %40
  br i1 %41, label %29, label %42

42:                                               ; preds = %29, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_dma_free_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 5
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 1
  %7 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 1, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %8, ptr %10, align 4
  store volatile ptr %9, ptr %8, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %7, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %11 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %11, align 4
  %12 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %13 = call i32 @_raw_spin_lock_irqsave(ptr noundef %12) #11
  %14 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %22, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %11, align 4
  %19 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %18, ptr %21, align 4
  store ptr %15, ptr %18, align 4
  store ptr %2, ptr %20, align 4
  store ptr %20, ptr %11, align 4
  store volatile ptr %14, ptr %14, align 4
  store ptr %14, ptr %19, align 4
  br label %22

22:                                               ; preds = %17, %1
  %23 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %24 = load volatile ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, %23
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %11, align 4
  %28 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %27, ptr %30, align 4
  store ptr %24, ptr %27, align 4
  store ptr %2, ptr %29, align 4
  store ptr %29, ptr %11, align 4
  store volatile ptr %23, ptr %23, align 4
  store ptr %23, ptr %28, align 4
  br label %31

31:                                               ; preds = %26, %22
  %32 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %11, align 4
  %37 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %36, ptr %39, align 4
  store ptr %33, ptr %36, align 4
  store ptr %2, ptr %38, align 4
  store ptr %38, ptr %11, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %37, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %42 = load volatile ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, %41
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %11, align 4
  %46 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %45, ptr %48, align 4
  store ptr %42, ptr %45, align 4
  store ptr %2, ptr %47, align 4
  store ptr %47, ptr %11, align 4
  store volatile ptr %41, ptr %41, align 4
  store ptr %41, ptr %46, align 4
  br label %49

49:                                               ; preds = %44, %40
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %11, align 4
  %55 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %54, ptr %57, align 4
  store ptr %51, ptr %54, align 4
  store ptr %2, ptr %56, align 4
  store ptr %56, ptr %11, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %55, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = load ptr, ptr %2, align 8
  %60 = icmp eq ptr %59, %2
  br i1 %60, label %68, label %61

61:                                               ; preds = %61, %58
  %62 = phi ptr [ %66, %61 ], [ %59, %58 ]
  %63 = getelementptr i8, ptr %62, i32 -64
  %64 = load i32, ptr %63, align 4
  %65 = and i32 %64, -65
  store i32 %65, ptr %63, align 4
  %66 = load ptr, ptr %62, align 4
  %67 = icmp eq ptr %66, %2
  br i1 %67, label %68, label %61

68:                                               ; preds = %61, %58
  call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %13) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %9 = load i32, ptr %8, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !15
  %10 = icmp eq ptr %2, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  store i32 %9, ptr %2, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %7, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %13, align 4
  %14 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %14, align 4
  br label %15

15:                                               ; preds = %11, %3
  %16 = icmp sgt i32 %9, %7
  %17 = icmp sge i32 %9, %1
  %18 = icmp slt i32 %7, %1
  br i1 %16, label %23, label %19

19:                                               ; preds = %15
  %20 = or i1 %18, %17
  %21 = or i1 %20, %10
  %22 = xor i1 %20, true
  br i1 %21, label %86, label %27

23:                                               ; preds = %15
  %24 = and i1 %18, %17
  %25 = or i1 %24, %10
  %26 = xor i1 %24, true
  br i1 %25, label %86, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #11
  %30 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #11
  %31 = icmp eq ptr %30, null
  br i1 %31, label %45, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.sun6i_desc, ptr %30, i32 0, i32 2
  %34 = load ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, null
  br i1 %35, label %83, label %36

36:                                               ; preds = %36, %32
  %37 = phi ptr [ %43, %36 ], [ %34, %32 ]
  %38 = phi i32 [ %41, %36 ], [ 0, %32 ]
  %39 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %37, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = add i32 %40, %38
  %42 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %37, i32 0, i32 6
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %83, label %36

45:                                               ; preds = %27
  %46 = icmp eq ptr %5, null
  br i1 %46, label %83, label %47

47:                                               ; preds = %45
  %48 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 3
  %49 = load ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, null
  br i1 %50, label %83, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr i8, ptr %53, i32 8
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #11, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !17
  %56 = load ptr, ptr %52, align 4
  %57 = getelementptr i8, ptr %56, i32 24
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #11, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !18
  %59 = icmp eq i32 %55, -2048
  br i1 %59, label %83, label %60

60:                                               ; preds = %51
  %61 = getelementptr inbounds %struct.sun6i_desc, ptr %49, i32 0, i32 2
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, null
  br i1 %63, label %83, label %64

64:                                               ; preds = %82, %60
  %65 = phi ptr [ %70, %82 ], [ %62, %60 ]
  %66 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %65, i32 0, i32 5
  %67 = load i32, ptr %66, align 4
  %68 = icmp eq i32 %67, %55
  %69 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %65, i32 0, i32 6
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %68, label %72, label %82

72:                                               ; preds = %64
  br i1 %71, label %83, label %73

73:                                               ; preds = %73, %72
  %74 = phi ptr [ %80, %73 ], [ %70, %72 ]
  %75 = phi i32 [ %78, %73 ], [ %58, %72 ]
  %76 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %74, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = add i32 %77, %75
  %79 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %74, i32 0, i32 6
  %80 = load ptr, ptr %79, align 4
  %81 = icmp eq ptr %80, null
  br i1 %81, label %83, label %73

82:                                               ; preds = %64
  br i1 %71, label %83, label %64

83:                                               ; preds = %82, %73, %72, %60, %51, %47, %45, %36, %32
  %84 = phi i32 [ 0, %47 ], [ 0, %45 ], [ %58, %51 ], [ %58, %72 ], [ %58, %60 ], [ 0, %32 ], [ %78, %73 ], [ %58, %82 ], [ %41, %36 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #11
  %85 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %84, ptr %85, align 4
  br label %86

86:                                               ; preds = %83, %23, %19
  %87 = phi i1 [ true, %83 ], [ %22, %19 ], [ %26, %23 ]
  %88 = zext i1 %87 to i32
  ret i32 %88
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_dma_issue_pending(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %6 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %7 = load volatile ptr, ptr %5, align 4
  %8 = icmp eq ptr %7, %5
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store ptr %7, ptr %11, align 4
  store ptr %6, ptr %13, align 4
  store ptr %13, ptr %10, align 4
  store volatile ptr %5, ptr %5, align 4
  store ptr %5, ptr %12, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = load volatile ptr, ptr %6, align 4
  %17 = icmp eq ptr %16, %6
  br i1 %17, label %40, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %2, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %19) #11
  %20 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 3
  %21 = load ptr, ptr %20, align 4
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %37

23:                                               ; preds = %18
  %24 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 1
  %25 = load volatile ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %27, label %37

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %2, i32 0, i32 9
  %29 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %2, i32 0, i32 9, i32 1
  %30 = load ptr, ptr %29, align 4
  store ptr %24, ptr %29, align 4
  store ptr %28, ptr %24, align 4
  %31 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 1, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %24, ptr %30, align 4
  %32 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %2, i32 0, i32 7, i32 1
  %33 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %32) #11
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %2, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %36) #11
  br label %37

37:                                               ; preds = %35, %27, %23, %18
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %38 = load i16, ptr %19, align 4
  %39 = add i16 %38, 1
  store i16 %39, ptr %19, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  br label %40

40:                                               ; preds = %37, %15
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun6i_dma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !23
  %10 = icmp eq ptr %1, null
  br i1 %10, label %124, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 2
  %13 = call fastcc i32 @set_config(ptr noundef %9, ptr noundef %12, i32 noundef %3, ptr noundef nonnull %8)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.16) #12
  br label %124

19:                                               ; preds = %11
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %21 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 2304, i32 noundef 84) #13
  %22 = icmp eq ptr %21, null
  br i1 %22, label %124, label %23

23:                                               ; preds = %19
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %88, label %25

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %9, i32 0, i32 10
  %27 = icmp eq i32 %3, 1
  %28 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 2, i32 1
  %29 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %9, i32 0, i32 13
  %30 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 4
  %31 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 2, i32 2
  %32 = getelementptr inbounds %struct.sun6i_desc, ptr %21, i32 0, i32 1
  %33 = getelementptr inbounds %struct.sun6i_desc, ptr %21, i32 0, i32 2
  br label %34

34:                                               ; preds = %81, %25
  %35 = phi i32 [ 0, %25 ], [ %85, %81 ]
  %36 = phi ptr [ %1, %25 ], [ %86, %81 ]
  %37 = phi ptr [ null, %25 ], [ %39, %81 ]
  %38 = load ptr, ptr %26, align 4
  %39 = call ptr @dma_pool_alloc(ptr noundef %38, i32 noundef 2048, ptr noundef nonnull %7) #11
  %40 = icmp eq ptr %39, null
  br i1 %40, label %112, label %41

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 4
  %43 = load i32, ptr %42, align 4
  %44 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %39, i32 0, i32 3
  store i32 %43, ptr %44, align 4
  %45 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %39, i32 0, i32 4
  store i32 8, ptr %45, align 4
  br i1 %27, label %46, label %60

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %39, i32 0, i32 1
  store i32 %48, ptr %49, align 4
  %50 = load i32, ptr %31, align 4
  %51 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %39, i32 0, i32 2
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %8, align 4
  store i32 %52, ptr %39, align 4
  %53 = load ptr, ptr %29, align 4
  %54 = getelementptr inbounds %struct.sun6i_dma_config, ptr %53, i32 0, i32 5
  %55 = load ptr, ptr %54, align 4
  %56 = load i8, ptr %30, align 4
  call void %55(ptr noundef nonnull %39, i8 noundef signext 1, i8 noundef signext %56) #11
  %57 = load ptr, ptr %29, align 4
  %58 = getelementptr inbounds %struct.sun6i_dma_config, ptr %57, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  call void %59(ptr noundef nonnull %39, i8 noundef signext 0, i8 noundef signext 1) #11
  br label %74

60:                                               ; preds = %41
  %61 = load i32, ptr %28, align 4
  %62 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %39, i32 0, i32 1
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.scatterlist, ptr %36, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %39, i32 0, i32 2
  store i32 %64, ptr %65, align 4
  %66 = load i32, ptr %8, align 4
  store i32 %66, ptr %39, align 4
  %67 = load ptr, ptr %29, align 4
  %68 = getelementptr inbounds %struct.sun6i_dma_config, ptr %67, i32 0, i32 5
  %69 = load ptr, ptr %68, align 4
  %70 = load i8, ptr %30, align 4
  call void %69(ptr noundef nonnull %39, i8 noundef signext %70, i8 noundef signext 1) #11
  %71 = load ptr, ptr %29, align 4
  %72 = getelementptr inbounds %struct.sun6i_dma_config, ptr %71, i32 0, i32 6
  %73 = load ptr, ptr %72, align 4
  call void %73(ptr noundef nonnull %39, i8 noundef signext 1, i8 noundef signext 0) #11
  br label %74

74:                                               ; preds = %60, %46
  %75 = load i32, ptr %7, align 4
  %76 = icmp eq ptr %37, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  store i32 %75, ptr %32, align 4
  br label %81

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %37, i32 0, i32 5
  store i32 %75, ptr %79, align 4
  %80 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %37, i32 0, i32 6
  br label %81

81:                                               ; preds = %78, %77
  %82 = phi ptr [ %80, %78 ], [ %33, %77 ]
  store ptr %39, ptr %82, align 4
  %83 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %39, i32 0, i32 5
  store i32 -2048, ptr %83, align 4
  %84 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %39, i32 0, i32 6
  store ptr null, ptr %84, align 4
  %85 = add nuw i32 %35, 1
  %86 = call ptr @sg_next(ptr noundef %36) #11
  %87 = icmp eq i32 %85, %2
  br i1 %87, label %88, label %34

88:                                               ; preds = %81, %23
  %89 = getelementptr inbounds %struct.sun6i_desc, ptr %21, i32 0, i32 2
  %90 = load ptr, ptr %89, align 8
  %91 = icmp eq ptr %90, null
  br i1 %91, label %99, label %92

92:                                               ; preds = %92, %88
  %93 = phi ptr [ %97, %92 ], [ %90, %88 ]
  %94 = ptrtoint ptr %93 to i32
  %95 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %94, i32 -2130706432, i32 8454144) #14, !srcloc !24
  %96 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %93, i32 0, i32 6
  %97 = load ptr, ptr %96, align 4
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %92

99:                                               ; preds = %92, %88
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %21, ptr noundef %0) #11
  %100 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %21, i32 0, i32 1
  store i32 %4, ptr %100, align 4
  %101 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %21, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %101, align 8
  %102 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %21, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %102, align 4
  %103 = getelementptr inbounds %struct.virt_dma_desc, ptr %21, i32 0, i32 1
  store i32 0, ptr %103, align 4
  %104 = getelementptr inbounds %struct.virt_dma_desc, ptr %21, i32 0, i32 1, i32 1
  store i32 0, ptr %104, align 8
  %105 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %106 = call i32 @_raw_spin_lock_irqsave(ptr noundef %105) #11
  %107 = getelementptr inbounds %struct.virt_dma_desc, ptr %21, i32 0, i32 2
  %108 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %109 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %110 = load ptr, ptr %109, align 4
  store ptr %107, ptr %109, align 4
  store ptr %108, ptr %107, align 4
  %111 = getelementptr inbounds %struct.virt_dma_desc, ptr %21, i32 0, i32 2, i32 1
  store ptr %110, ptr %111, align 8
  store volatile ptr %107, ptr %110, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %105, i32 noundef %106) #11
  br label %124

112:                                              ; preds = %34
  %113 = load ptr, ptr %33, align 8
  %114 = icmp eq ptr %113, null
  br i1 %114, label %123, label %115

115:                                              ; preds = %115, %112
  %116 = phi ptr [ %121, %115 ], [ %113, %112 ]
  %117 = load ptr, ptr %26, align 4
  %118 = ptrtoint ptr %116 to i32
  %119 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %118, i32 -2130706432, i32 8454144) #14, !srcloc !24
  call void @dma_pool_free(ptr noundef %117, ptr noundef nonnull %116, i32 noundef %119) #11
  %120 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %116, i32 0, i32 6
  %121 = load ptr, ptr %120, align 4
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %115

123:                                              ; preds = %115, %112
  call void @kfree(ptr noundef nonnull %21) #11
  br label %124

124:                                              ; preds = %123, %99, %19, %15, %6
  %125 = phi ptr [ null, %15 ], [ null, %123 ], [ %21, %99 ], [ null, %6 ], [ null, %19 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret ptr %125
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun6i_dma_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #11
  store i32 0, ptr %6, align 4, !annotation !23
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %11 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 2304, i32 noundef 84) #13
  %12 = icmp eq ptr %11, null
  br i1 %12, label %55, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %7, i32 0, i32 10
  %15 = load ptr, ptr %14, align 4
  %16 = call ptr @dma_pool_alloc(ptr noundef %15, i32 noundef 2048, ptr noundef nonnull %6) #11
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %20 = load ptr, ptr %19, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.17) #12
  call void @kfree(ptr noundef nonnull %11) #11
  br label %55

21:                                               ; preds = %13
  %22 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %16, i32 0, i32 1
  store i32 %2, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %16, i32 0, i32 2
  store i32 %1, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %16, i32 0, i32 3
  store i32 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %16, i32 0, i32 4
  store i32 8, ptr %25, align 4
  store i32 67109888, ptr %16, align 4
  %26 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %7, i32 0, i32 13
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.sun6i_dma_config, ptr %27, i32 0, i32 4
  %29 = load ptr, ptr %28, align 4
  call void %29(ptr noundef nonnull %16, i8 noundef signext 2, i8 noundef signext 2) #11
  %30 = load ptr, ptr %26, align 4
  %31 = getelementptr inbounds %struct.sun6i_dma_config, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  call void %32(ptr noundef nonnull %16, i8 noundef signext 1, i8 noundef signext 1) #11
  %33 = load ptr, ptr %26, align 4
  %34 = getelementptr inbounds %struct.sun6i_dma_config, ptr %33, i32 0, i32 6
  %35 = load ptr, ptr %34, align 4
  call void %35(ptr noundef nonnull %16, i8 noundef signext 0, i8 noundef signext 0) #11
  %36 = load i32, ptr %6, align 4
  %37 = getelementptr inbounds %struct.sun6i_desc, ptr %11, i32 0, i32 1
  store i32 %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.sun6i_desc, ptr %11, i32 0, i32 2
  store ptr %16, ptr %38, align 8
  %39 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %16, i32 0, i32 5
  store i32 -2048, ptr %39, align 4
  %40 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %16, i32 0, i32 6
  store ptr null, ptr %40, align 4
  %41 = ptrtoint ptr %16 to i32
  %42 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %41, i32 -2130706432, i32 8454144) #14, !srcloc !24
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %11, ptr noundef %0) #11
  %43 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 1
  store i32 %4, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %44, align 8
  %45 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %11, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %45, align 4
  %46 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 1
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 1, i32 1
  store i32 0, ptr %47, align 8
  %48 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %49 = call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #11
  %50 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 2
  %51 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %52 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %53 = load ptr, ptr %52, align 4
  store ptr %50, ptr %52, align 4
  store ptr %51, ptr %50, align 4
  %54 = getelementptr inbounds %struct.virt_dma_desc, ptr %11, i32 0, i32 2, i32 1
  store ptr %53, ptr %54, align 8
  store volatile ptr %50, ptr %53, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #11
  br label %55

55:                                               ; preds = %21, %18, %9, %5
  %56 = phi ptr [ %11, %21 ], [ null, %18 ], [ null, %5 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #11
  ret ptr %56
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun6i_dma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #11
  store i32 0, ptr %7, align 4, !annotation !23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #11
  store i32 0, ptr %8, align 4, !annotation !23
  %11 = udiv i32 %2, %3
  %12 = call fastcc i32 @set_config(ptr noundef %9, ptr noundef %10, i32 noundef %4, ptr noundef nonnull %8)
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %6
  %15 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.16) #12
  br label %116

18:                                               ; preds = %6
  %19 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %20 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %19, i32 noundef 2304, i32 noundef 84) #13
  %21 = icmp eq ptr %20, null
  br i1 %21, label %116, label %22

22:                                               ; preds = %18
  %23 = icmp ugt i32 %3, %2
  br i1 %23, label %89, label %24

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %9, i32 0, i32 10
  %26 = icmp eq i32 %4, 1
  %27 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 2, i32 1
  %28 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %9, i32 0, i32 13
  %29 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 4
  %30 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 2, i32 2
  %31 = getelementptr inbounds %struct.sun6i_desc, ptr %20, i32 0, i32 1
  %32 = getelementptr inbounds %struct.sun6i_desc, ptr %20, i32 0, i32 2
  %33 = call i32 @llvm.umax.i32(i32 %11, i32 1)
  br label %34

34:                                               ; preds = %83, %24
  %35 = phi i32 [ 0, %24 ], [ %87, %83 ]
  %36 = phi ptr [ null, %24 ], [ %38, %83 ]
  %37 = load ptr, ptr %25, align 4
  %38 = call ptr @dma_pool_alloc(ptr noundef %37, i32 noundef 2048, ptr noundef nonnull %7) #11
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.17) #12
  %43 = load ptr, ptr %32, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %115, label %107

45:                                               ; preds = %34
  %46 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %38, i32 0, i32 3
  store i32 %3, ptr %46, align 4
  %47 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %38, i32 0, i32 4
  store i32 8, ptr %47, align 4
  br i1 %26, label %48, label %62

48:                                               ; preds = %45
  %49 = mul i32 %35, %3
  %50 = add i32 %49, %1
  %51 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %38, i32 0, i32 1
  store i32 %50, ptr %51, align 4
  %52 = load i32, ptr %30, align 4
  %53 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %38, i32 0, i32 2
  store i32 %52, ptr %53, align 4
  %54 = load i32, ptr %8, align 4
  store i32 %54, ptr %38, align 4
  %55 = load ptr, ptr %28, align 4
  %56 = getelementptr inbounds %struct.sun6i_dma_config, ptr %55, i32 0, i32 5
  %57 = load ptr, ptr %56, align 4
  %58 = load i8, ptr %29, align 4
  call void %57(ptr noundef nonnull %38, i8 noundef signext 1, i8 noundef signext %58) #11
  %59 = load ptr, ptr %28, align 4
  %60 = getelementptr inbounds %struct.sun6i_dma_config, ptr %59, i32 0, i32 6
  %61 = load ptr, ptr %60, align 4
  call void %61(ptr noundef nonnull %38, i8 noundef signext 0, i8 noundef signext 1) #11
  br label %76

62:                                               ; preds = %45
  %63 = load i32, ptr %27, align 4
  %64 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %38, i32 0, i32 1
  store i32 %63, ptr %64, align 4
  %65 = mul i32 %35, %3
  %66 = add i32 %65, %1
  %67 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %38, i32 0, i32 2
  store i32 %66, ptr %67, align 4
  %68 = load i32, ptr %8, align 4
  store i32 %68, ptr %38, align 4
  %69 = load ptr, ptr %28, align 4
  %70 = getelementptr inbounds %struct.sun6i_dma_config, ptr %69, i32 0, i32 5
  %71 = load ptr, ptr %70, align 4
  %72 = load i8, ptr %29, align 4
  call void %71(ptr noundef nonnull %38, i8 noundef signext %72, i8 noundef signext 1) #11
  %73 = load ptr, ptr %28, align 4
  %74 = getelementptr inbounds %struct.sun6i_dma_config, ptr %73, i32 0, i32 6
  %75 = load ptr, ptr %74, align 4
  call void %75(ptr noundef nonnull %38, i8 noundef signext 1, i8 noundef signext 0) #11
  br label %76

76:                                               ; preds = %62, %48
  %77 = load i32, ptr %7, align 4
  %78 = icmp eq ptr %36, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 %77, ptr %31, align 4
  br label %83

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %36, i32 0, i32 5
  store i32 %77, ptr %81, align 4
  %82 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %36, i32 0, i32 6
  br label %83

83:                                               ; preds = %80, %79
  %84 = phi ptr [ %82, %80 ], [ %32, %79 ]
  store ptr %38, ptr %84, align 4
  %85 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %38, i32 0, i32 5
  store i32 -2048, ptr %85, align 4
  %86 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %38, i32 0, i32 6
  store ptr null, ptr %86, align 4
  %87 = add nuw i32 %35, 1
  %88 = icmp eq i32 %87, %33
  br i1 %88, label %89, label %34

89:                                               ; preds = %83, %22
  %90 = phi ptr [ null, %22 ], [ %38, %83 ]
  %91 = getelementptr inbounds %struct.sun6i_desc, ptr %20, i32 0, i32 1
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %90, i32 0, i32 5
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 6
  store i8 1, ptr %94, align 2
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %20, ptr noundef %0) #11
  %95 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %20, i32 0, i32 1
  store i32 %5, ptr %95, align 4
  %96 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %20, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %96, align 8
  %97 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %20, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %97, align 4
  %98 = getelementptr inbounds %struct.virt_dma_desc, ptr %20, i32 0, i32 1
  store i32 0, ptr %98, align 4
  %99 = getelementptr inbounds %struct.virt_dma_desc, ptr %20, i32 0, i32 1, i32 1
  store i32 0, ptr %99, align 8
  %100 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %101 = call i32 @_raw_spin_lock_irqsave(ptr noundef %100) #11
  %102 = getelementptr inbounds %struct.virt_dma_desc, ptr %20, i32 0, i32 2
  %103 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %104 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %105 = load ptr, ptr %104, align 4
  store ptr %102, ptr %104, align 4
  store ptr %103, ptr %102, align 4
  %106 = getelementptr inbounds %struct.virt_dma_desc, ptr %20, i32 0, i32 2, i32 1
  store ptr %105, ptr %106, align 8
  store volatile ptr %102, ptr %105, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %100, i32 noundef %101) #11
  br label %116

107:                                              ; preds = %107, %40
  %108 = phi ptr [ %113, %107 ], [ %43, %40 ]
  %109 = load ptr, ptr %25, align 4
  %110 = ptrtoint ptr %108 to i32
  %111 = call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %110, i32 -2130706432, i32 8454144) #14, !srcloc !24
  call void @dma_pool_free(ptr noundef %109, ptr noundef nonnull %108, i32 noundef %111) #11
  %112 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %108, i32 0, i32 6
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, null
  br i1 %114, label %115, label %107

115:                                              ; preds = %107, %40
  call void @kfree(ptr noundef nonnull %20) #11
  br label %116

116:                                              ; preds = %115, %89, %18, %14
  %117 = phi ptr [ null, %14 ], [ null, %115 ], [ %20, %89 ], [ null, %18 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #11
  ret ptr %117
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @sun6i_dma_config(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 2
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %3, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dma_pause(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !25
  tail call void @arm_heavy_mb() #11
  %6 = getelementptr inbounds %struct.sun6i_pchan, ptr %3, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 2) #11, !srcloc !11
  br label %19

9:                                                ; preds = %1
  %10 = load ptr, ptr %0, align 4
  %11 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %10, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %11) #11
  %12 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 1
  %13 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %12, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store volatile ptr %12, ptr %12, align 4
  store ptr %12, ptr %13, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %17 = load i16, ptr %11, align 4
  %18 = add i16 %17, 1
  store i16 %18, ptr %11, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  br label %19

19:                                               ; preds = %9, %5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dma_resume(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = icmp eq ptr %4, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !26
  tail call void @arm_heavy_mb() #11
  %9 = getelementptr inbounds %struct.sun6i_pchan, ptr %4, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 0) #11, !srcloc !11
  br label %25

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %25, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %2, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %17) #11
  %18 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 1
  %19 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %2, i32 0, i32 9
  %20 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %2, i32 0, i32 9, i32 1
  %21 = load ptr, ptr %20, align 4
  store ptr %18, ptr %20, align 4
  store ptr %19, ptr %18, align 4
  %22 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 1, i32 1
  store ptr %21, ptr %22, align 4
  store volatile ptr %18, ptr %21, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %23 = load i16, ptr %17, align 4
  %24 = add i16 %23, 1
  store i16 %24, ptr %17, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  br label %25

25:                                               ; preds = %16, %12, %8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dma_terminate_all(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %7) #11
  %8 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 1
  %9 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 1, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %8, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %10, ptr %12, align 4
  store volatile ptr %11, ptr %10, align 4
  store volatile ptr %8, ptr %8, align 4
  store ptr %8, ptr %9, align 4
  call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %13 = load i16, ptr %7, align 4
  %14 = add i16 %13, 1
  store i16 %14, ptr %7, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !20
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !21
  call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  %15 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %16 = call i32 @_raw_spin_lock_irqsave(ptr noundef %15) #11
  %17 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 6
  %18 = load i8, ptr %17, align 2, !range !8
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %32, label %20

20:                                               ; preds = %1
  store i8 0, ptr %17, align 2
  %21 = icmp eq ptr %5, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %20
  %23 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 3
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.virt_dma_desc, ptr %24, i32 0, i32 2
  %28 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %29 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %30 = load ptr, ptr %29, align 4
  store ptr %27, ptr %29, align 4
  store ptr %28, ptr %27, align 4
  %31 = getelementptr inbounds %struct.virt_dma_desc, ptr %24, i32 0, i32 2, i32 1
  store ptr %30, ptr %31, align 4
  store volatile ptr %27, ptr %30, align 4
  br label %32

32:                                               ; preds = %26, %22, %20, %1
  %33 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %41, label %36

36:                                               ; preds = %32
  %37 = load ptr, ptr %6, align 4
  %38 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %37, ptr %40, align 4
  store ptr %34, ptr %37, align 4
  store ptr %2, ptr %39, align 4
  store ptr %39, ptr %6, align 4
  store volatile ptr %33, ptr %33, align 4
  store ptr %33, ptr %38, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %43 = load volatile ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, %42
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %6, align 4
  %47 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %46, ptr %49, align 4
  store ptr %43, ptr %46, align 4
  store ptr %2, ptr %48, align 4
  store ptr %48, ptr %6, align 4
  store volatile ptr %42, ptr %42, align 4
  store ptr %42, ptr %47, align 4
  br label %50

50:                                               ; preds = %45, %41
  %51 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %52 = load volatile ptr, ptr %51, align 4
  %53 = icmp eq ptr %52, %51
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %6, align 4
  %56 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %55, ptr %58, align 4
  store ptr %52, ptr %55, align 4
  store ptr %2, ptr %57, align 4
  store ptr %57, ptr %6, align 4
  store volatile ptr %51, ptr %51, align 4
  store ptr %51, ptr %56, align 4
  br label %59

59:                                               ; preds = %54, %50
  %60 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %68, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %6, align 4
  %65 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %64, ptr %67, align 4
  store ptr %61, ptr %64, align 4
  store ptr %2, ptr %66, align 4
  store ptr %66, ptr %6, align 4
  store volatile ptr %60, ptr %60, align 4
  store ptr %60, ptr %65, align 4
  br label %68

68:                                               ; preds = %63, %59
  %69 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %70 = load volatile ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, %69
  br i1 %71, label %77, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %6, align 4
  %74 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %73, ptr %76, align 4
  store ptr %70, ptr %73, align 4
  store ptr %2, ptr %75, align 4
  store ptr %75, ptr %6, align 4
  store volatile ptr %69, ptr %69, align 4
  store ptr %69, ptr %74, align 4
  br label %77

77:                                               ; preds = %72, %68
  %78 = icmp eq ptr %5, null
  br i1 %78, label %87, label %79

79:                                               ; preds = %77
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !27
  call void @arm_heavy_mb() #11
  %80 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 1
  %81 = load ptr, ptr %80, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #11, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !28
  call void @arm_heavy_mb() #11
  %82 = load ptr, ptr %80, align 4
  %83 = getelementptr i8, ptr %82, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 0) #11, !srcloc !11
  store ptr null, ptr %4, align 4
  %84 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 2
  store ptr null, ptr %84, align 4
  %85 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 3
  store ptr null, ptr %85, align 4
  %86 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 4
  store ptr null, ptr %86, align 4
  br label %87

87:                                               ; preds = %79, %77
  call void @_raw_spin_unlock_irqrestore(ptr noundef %15, i32 noundef %16) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_dma_tasklet(ptr noundef %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -264
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %26, label %5

5:                                                ; preds = %21, %1
  %6 = phi ptr [ %24, %21 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -32
  %8 = getelementptr i8, ptr %6, i32 60
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #11
  %9 = getelementptr i8, ptr %6, i32 164
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %21, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.sun6i_pchan, ptr %10, i32 0, i32 4
  %14 = load ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = tail call fastcc i32 @sun6i_dma_start_desc(ptr noundef %7)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %16
  store ptr null, ptr %9, align 4
  %20 = getelementptr inbounds %struct.sun6i_pchan, ptr %10, i32 0, i32 2
  store ptr null, ptr %20, align 4
  br label %21

21:                                               ; preds = %19, %16, %12, %5
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %22 = load i16, ptr %8, align 4
  %23 = add i16 %22, 1
  store i16 %23, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %24 = load ptr, ptr %6, align 4
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %26, label %5

26:                                               ; preds = %21, %1
  %27 = getelementptr i8, ptr %0, i32 -8
  tail call void @_raw_spin_lock_irq(ptr noundef %27) #11
  %28 = getelementptr i8, ptr %0, i32 52
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %61, label %31

31:                                               ; preds = %26
  %32 = getelementptr i8, ptr %0, i32 40
  %33 = getelementptr i8, ptr %0, i32 28
  br label %34

34:                                               ; preds = %56, %31
  %35 = phi i32 [ %29, %31 ], [ %57, %56 ]
  %36 = phi i32 [ 0, %31 ], [ %58, %56 ]
  %37 = phi i32 [ 0, %31 ], [ %59, %56 ]
  %38 = load ptr, ptr %32, align 4
  %39 = getelementptr %struct.sun6i_pchan, ptr %38, i32 %37
  %40 = getelementptr %struct.sun6i_pchan, ptr %38, i32 %37, i32 2
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %34
  %44 = load volatile ptr, ptr %33, align 4
  %45 = icmp eq ptr %44, %33
  br i1 %45, label %56, label %46

46:                                               ; preds = %43
  %47 = getelementptr i8, ptr %44, i32 -140
  %48 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = load ptr, ptr %48, align 4
  %50 = load ptr, ptr %44, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  store ptr %49, ptr %51, align 4
  store volatile ptr %50, ptr %49, align 4
  store volatile ptr %44, ptr %44, align 4
  store ptr %44, ptr %48, align 4
  %52 = shl nuw i32 1, %37
  %53 = or i32 %36, %52
  store ptr %47, ptr %40, align 4
  %54 = getelementptr i8, ptr %44, i32 56
  store ptr %39, ptr %54, align 4
  %55 = load i32, ptr %28, align 4
  br label %56

56:                                               ; preds = %46, %43, %34
  %57 = phi i32 [ %35, %34 ], [ %35, %43 ], [ %55, %46 ]
  %58 = phi i32 [ %36, %34 ], [ %36, %43 ], [ %53, %46 ]
  %59 = add nuw i32 %37, 1
  %60 = icmp ult i32 %59, %57
  br i1 %60, label %34, label %61

61:                                               ; preds = %56, %26
  %62 = phi i32 [ 0, %26 ], [ %58, %56 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %63 = load i16, ptr %27, align 4
  %64 = add i16 %63, 1
  store i16 %64, ptr %27, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %65 = load i32, ptr %28, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %90, label %67

67:                                               ; preds = %61
  %68 = getelementptr i8, ptr %0, i32 40
  br label %69

69:                                               ; preds = %86, %67
  %70 = phi i32 [ %65, %67 ], [ %87, %86 ]
  %71 = phi i32 [ 0, %67 ], [ %88, %86 ]
  %72 = shl nuw i32 1, %71
  %73 = and i32 %72, %62
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %69
  %76 = load ptr, ptr %68, align 4
  %77 = getelementptr %struct.sun6i_pchan, ptr %76, i32 %71, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, null
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.virt_dma_chan, ptr %78, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %81) #11
  %82 = tail call fastcc i32 @sun6i_dma_start_desc(ptr noundef nonnull %78)
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %83 = load i16, ptr %81, align 4
  %84 = add i16 %83, 1
  store i16 %84, ptr %81, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !21
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !29
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !30
  %85 = load i32, ptr %28, align 4
  br label %86

86:                                               ; preds = %80, %75, %69
  %87 = phi i32 [ %70, %75 ], [ %85, %80 ], [ %70, %69 ]
  %88 = add nuw i32 %71, 1
  %89 = icmp ult i32 %88, %87
  br i1 %89, label %69, label %90

90:                                               ; preds = %86, %61
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_dma_free_desc(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %0, null
  br i1 %5, label %24, label %6, !prof !9

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.sun6i_desc, ptr %0, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.sun6i_desc, ptr %0, i32 0, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %4, i32 0, i32 10
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %12, %10 ], [ %20, %14 ]
  %16 = phi ptr [ %8, %10 ], [ %18, %14 ]
  %17 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %16, i32 0, i32 6
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %16, i32 0, i32 5
  %20 = load i32, ptr %19, align 4
  %21 = load ptr, ptr %13, align 4
  tail call void @dma_pool_free(ptr noundef %21, ptr noundef nonnull %16, i32 noundef %15) #11
  %22 = icmp eq ptr %18, null
  br i1 %22, label %23, label %14

23:                                               ; preds = %14, %6
  tail call void @kfree(ptr noundef nonnull %0) #11
  br label %24

24:                                               ; preds = %23, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @sun6i_dma_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 14
  %4 = load i32, ptr %3, align 4
  %5 = icmp ult i32 %4, 8
  br i1 %5, label %97, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 1
  %8 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 11
  %9 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 8
  %10 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 7, i32 1
  %11 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 7
  br label %12

12:                                               ; preds = %91, %6
  %13 = phi i32 [ 0, %6 ], [ %93, %91 ]
  %14 = phi i32 [ 0, %6 ], [ %92, %91 ]
  %15 = load ptr, ptr %7, align 4
  %16 = shl i32 %13, 2
  %17 = add nuw i32 %16, 16
  %18 = getelementptr i8, ptr %15, i32 %17
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !31
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %91, label %21

21:                                               ; preds = %12
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !32
  tail call void @arm_heavy_mb() #11
  %22 = load ptr, ptr %7, align 4
  %23 = getelementptr i8, ptr %22, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %19) #11, !srcloc !11
  br label %24

24:                                               ; preds = %78, %21
  %25 = phi i32 [ %19, %21 ], [ %79, %78 ]
  %26 = phi i32 [ 0, %21 ], [ %80, %78 ]
  %27 = load ptr, ptr %8, align 4
  %28 = getelementptr %struct.sun6i_pchan, ptr %27, i32 %26, i32 2
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %78, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.sun6i_vchan, ptr %29, i32 0, i32 5
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = and i32 %25, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %78, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.sun6i_vchan, ptr %29, i32 0, i32 6
  %39 = load i8, ptr %38, align 2, !range !8
  %40 = icmp eq i8 %39, 0
  br i1 %40, label %52, label %41

41:                                               ; preds = %37
  %42 = getelementptr %struct.sun6i_pchan, ptr %27, i32 %26, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 9
  store ptr %43, ptr %46, align 4
  %47 = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 1, i32 1
  %48 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %47) #11
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %51) #11
  br label %78

52:                                               ; preds = %37
  %53 = getelementptr inbounds %struct.virt_dma_chan, ptr %29, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %53) #11
  %54 = getelementptr %struct.sun6i_pchan, ptr %27, i32 %26, i32 3
  %55 = load ptr, ptr %54, align 4
  %56 = load i32, ptr %55, align 4
  %57 = icmp slt i32 %56, 1
  br i1 %57, label %58, label %59, !prof !9

58:                                               ; preds = %52
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !33
  unreachable

59:                                               ; preds = %52
  %60 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %55, i32 0, i32 3
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr inbounds %struct.dma_chan, ptr %61, i32 0, i32 3
  store i32 %56, ptr %62, align 4
  store i32 0, ptr %55, align 4
  %63 = getelementptr inbounds %struct.virt_dma_desc, ptr %55, i32 0, i32 2
  %64 = getelementptr inbounds %struct.virt_dma_chan, ptr %61, i32 0, i32 7
  %65 = getelementptr inbounds %struct.virt_dma_chan, ptr %61, i32 0, i32 7, i32 1
  %66 = load ptr, ptr %65, align 4
  store ptr %63, ptr %65, align 4
  store ptr %64, ptr %63, align 4
  %67 = getelementptr inbounds %struct.virt_dma_desc, ptr %55, i32 0, i32 2, i32 1
  store ptr %66, ptr %67, align 4
  store volatile ptr %63, ptr %66, align 4
  %68 = getelementptr inbounds %struct.virt_dma_chan, ptr %61, i32 0, i32 1, i32 1
  %69 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %68) #11
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.virt_dma_chan, ptr %61, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %72) #11
  br label %73

73:                                               ; preds = %71, %59
  %74 = load ptr, ptr %54, align 4
  %75 = getelementptr %struct.sun6i_pchan, ptr %27, i32 %26, i32 4
  store ptr %74, ptr %75, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !19
  %76 = load i16, ptr %53, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %53, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !20
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !21
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !22
  br label %78

78:                                               ; preds = %73, %50, %41, %31, %24
  %79 = lshr i32 %25, 4
  %80 = add nuw nsw i32 %26, 1
  %81 = icmp ult i32 %26, 7
  %82 = icmp ugt i32 %25, 15
  %83 = select i1 %81, i1 %82, i1 false
  br i1 %83, label %24, label %84

84:                                               ; preds = %78
  %85 = load volatile i32, ptr %9, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %10) #11
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  tail call void @__tasklet_schedule(ptr noundef %11) #11
  br label %91

91:                                               ; preds = %90, %87, %84, %12
  %92 = phi i32 [ %14, %12 ], [ 1, %84 ], [ 1, %87 ], [ 1, %90 ]
  %93 = add nuw nsw i32 %13, 1
  %94 = load i32, ptr %3, align 4
  %95 = lshr i32 %94, 3
  %96 = icmp ult i32 %93, %95
  br i1 %96, label %12, label %97

97:                                               ; preds = %91, %2
  %98 = phi i32 [ 0, %2 ], [ %92, %91 ]
  ret i32 %98
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @sun6i_dma_of_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = trunc i32 %6 to i8
  %8 = and i32 %6, 255
  %9 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %4, i32 0, i32 16
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = tail call ptr @dma_get_any_slave_channel(ptr noundef %4) #11
  %14 = icmp eq ptr %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.sun6i_vchan, ptr %13, i32 0, i32 4
  store i8 %7, ptr %16, align 4
  br label %17

17:                                               ; preds = %15, %12, %2
  %18 = phi ptr [ %13, %15 ], [ null, %2 ], [ null, %12 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sun6i_kill_tasklet(ptr noundef %0) unnamed_addr #7 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !10
  tail call void @arm_heavy_mb() #11
  %2 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !12
  tail call void @arm_heavy_mb() #11
  %4 = load ptr, ptr %2, align 4
  %5 = getelementptr i8, ptr %4, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #11, !srcloc !11
  %6 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %0, i32 0, i32 8
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #11, !srcloc !13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #11, !srcloc !14
  %8 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %0, i32 0, i32 4
  %11 = load i32, ptr %10, align 4
  tail call void @devm_free_irq(ptr noundef %9, i32 noundef %11, ptr noundef %0) #11
  %12 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %0, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %12) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @sun6i_dma_free(ptr nocapture noundef readonly %0) unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %0, i32 0, i32 15
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %20, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %0, i32 0, i32 12
  br label %7

7:                                                ; preds = %7, %5
  %8 = phi i32 [ 0, %5 ], [ %17, %7 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr %struct.sun6i_vchan, ptr %9, i32 %8
  %11 = getelementptr inbounds %struct.dma_chan, ptr %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = load ptr, ptr %11, align 4
  %15 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %15, align 4
  store volatile ptr %14, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %16 = getelementptr inbounds %struct.virt_dma_chan, ptr %10, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %16) #11
  %17 = add nuw i32 %8, 1
  %18 = load i32, ptr %2, align 4
  %19 = icmp ult i32 %17, %18
  br i1 %19, label %7, label %20

20:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @set_config(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr noundef %3) unnamed_addr #2 {
  %5 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 5
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  switch i32 %2, label %82 [
    i32 1, label %13
    i32 2, label %18
  ]

13:                                               ; preds = %4
  %14 = icmp eq i32 %6, 0
  %15 = select i1 %14, i32 4, i32 %6
  %16 = icmp eq i32 %10, 0
  %17 = select i1 %16, i32 8, i32 %10
  br label %23

18:                                               ; preds = %4
  %19 = icmp eq i32 %8, 0
  %20 = select i1 %19, i32 4, i32 %8
  %21 = icmp eq i32 %12, 0
  %22 = select i1 %21, i32 8, i32 %12
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i32 [ %6, %18 ], [ %15, %13 ]
  %25 = phi i32 [ %20, %18 ], [ %8, %13 ]
  %26 = phi i32 [ %10, %18 ], [ %17, %13 ]
  %27 = phi i32 [ %22, %18 ], [ %12, %13 ]
  %28 = shl nuw i32 1, %24
  %29 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 19
  %30 = load i32, ptr %29, align 4
  %31 = and i32 %30, %28
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %82, label %33

33:                                               ; preds = %23
  %34 = shl nuw i32 1, %25
  %35 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 20
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %82, label %39

39:                                               ; preds = %33
  %40 = shl nuw i32 1, %26
  %41 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %0, i32 0, i32 13
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.sun6i_dma_config, ptr %42, i32 0, i32 7
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, %40
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %82, label %47

47:                                               ; preds = %39
  %48 = shl nuw i32 1, %27
  %49 = getelementptr inbounds %struct.sun6i_dma_config, ptr %42, i32 0, i32 8
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, %48
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %82, label %53

53:                                               ; preds = %47
  %54 = icmp eq i32 %24, 0
  %55 = tail call i32 @llvm.ctlz.i32(i32 %24, i1 false) #11, !range !34
  %56 = icmp eq i32 %25, 0
  %57 = tail call i32 @llvm.ctlz.i32(i32 %25, i1 false) #11, !range !34
  switch i32 %27, label %61 [
    i32 1, label %62
    i32 4, label %58
    i32 8, label %59
    i32 16, label %60
  ]

58:                                               ; preds = %53
  br label %62

59:                                               ; preds = %53
  br label %62

60:                                               ; preds = %53
  br label %62

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %60, %59, %58, %53
  %63 = phi i8 [ -22, %61 ], [ 3, %60 ], [ 2, %59 ], [ 1, %58 ], [ 0, %53 ]
  switch i32 %26, label %67 [
    i32 1, label %68
    i32 4, label %64
    i32 8, label %65
    i32 16, label %66
  ]

64:                                               ; preds = %62
  br label %68

65:                                               ; preds = %62
  br label %68

66:                                               ; preds = %62
  br label %68

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %66, %65, %64, %62
  %69 = phi i8 [ -22, %67 ], [ 3, %66 ], [ 2, %65 ], [ 1, %64 ], [ 0, %62 ]
  %70 = mul nuw nsw i32 %55, 1536
  %71 = add nuw nsw i32 %70, 1536
  %72 = and i32 %71, 1536
  %73 = select i1 %54, i32 1536, i32 %72
  %74 = mul i32 %57, 100663296
  %75 = add i32 %74, 100663296
  %76 = and i32 %75, 100663296
  %77 = select i1 %56, i32 100663296, i32 %76
  %78 = or i32 %77, %73
  store i32 %78, ptr %3, align 4
  %79 = load ptr, ptr %41, align 4
  %80 = getelementptr inbounds %struct.sun6i_dma_config, ptr %79, i32 0, i32 4
  %81 = load ptr, ptr %80, align 4
  tail call void %81(ptr noundef %3, i8 noundef signext %69, i8 noundef signext %63) #11
  br label %82

82:                                               ; preds = %68, %47, %39, %33, %23, %4
  %83 = phi i32 [ 0, %68 ], [ -22, %4 ], [ -22, %23 ], [ -22, %33 ], [ -22, %39 ], [ -22, %47 ]
  ret i32 %83
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @sun6i_dma_start_desc(ptr noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %4 = load volatile ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, %3
  %6 = getelementptr i8, ptr %4, i32 -68
  %7 = select i1 %5, ptr null, ptr %6
  %8 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, null
  br i1 %10, label %61, label %11

11:                                               ; preds = %1
  %12 = icmp eq ptr %7, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %11
  %14 = getelementptr inbounds %struct.sun6i_pchan, ptr %9, i32 0, i32 3
  store ptr null, ptr %14, align 4
  %15 = getelementptr inbounds %struct.sun6i_pchan, ptr %9, i32 0, i32 4
  store ptr null, ptr %15, align 4
  br label %61

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2
  %18 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %20, ptr %19, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %18, align 4
  %22 = getelementptr inbounds %struct.sun6i_pchan, ptr %9, i32 0, i32 3
  store ptr %7, ptr %22, align 4
  %23 = getelementptr inbounds %struct.sun6i_pchan, ptr %9, i32 0, i32 4
  store ptr null, ptr %23, align 4
  %24 = getelementptr inbounds %struct.sun6i_desc, ptr %7, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = ptrtoint ptr %25 to i32
  %27 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %26, i32 -2130706432, i32 8454144) #14, !srcloc !24
  %28 = load i32, ptr %9, align 4
  %29 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 6
  %30 = load i8, ptr %29, align 2, !range !8
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i8 4, i8 2
  %33 = getelementptr inbounds %struct.sun6i_vchan, ptr %0, i32 0, i32 5
  store i8 %32, ptr %33, align 1
  %34 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %2, i32 0, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = lshr i32 %28, 1
  %37 = and i32 %36, 2147483644
  %38 = getelementptr i8, ptr %35, i32 %37
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #11, !srcloc !16
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !35
  %40 = shl i32 %28, 2
  %41 = and i32 %40, 28
  %42 = shl nuw nsw i32 7, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  %45 = load i8, ptr %33, align 1
  %46 = zext i8 %45 to i32
  %47 = shl i32 %46, %41
  %48 = or i32 %47, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !36
  tail call void @arm_heavy_mb() #11
  %49 = load ptr, ptr %34, align 4
  %50 = getelementptr i8, ptr %49, i32 %37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !37
  tail call void @arm_heavy_mb() #11
  %51 = load ptr, ptr %22, align 4
  %52 = getelementptr inbounds %struct.sun6i_desc, ptr %51, i32 0, i32 1
  %53 = load i32, ptr %52, align 4
  %54 = getelementptr inbounds %struct.sun6i_pchan, ptr %9, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %53) #11, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !38
  tail call void @arm_heavy_mb() #11
  %57 = load ptr, ptr %54, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 1) #11, !srcloc !11
  %58 = load ptr, ptr %54, align 4
  %59 = ptrtoint ptr %58 to i32
  %60 = tail call i32 asm "@ __pv_stub\0A1:\09add\09$0, $1, $2\0A2:\09add\09$0, $0, $3\0A\09.pushsection .pv_table,\22a\22\0A\09.long\091b - ., 2b - .\0A\09.popsection\0A", "=r,r,I,I"(i32 %59, i32 -2130706432, i32 8454144) #14, !srcloc !24
  br label %61

61:                                               ; preds = %16, %13, %1
  %62 = phi i32 [ 0, %16 ], [ -11, %13 ], [ -11, %1 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_burst_length_a31(ptr nocapture noundef %0, i8 noundef signext %1, i8 noundef signext %2) #10 {
  %4 = and i8 %1, 3
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 7
  %7 = and i8 %2, 3
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 23
  %10 = or i32 %9, %6
  %11 = load i32, ptr %0, align 4
  %12 = or i32 %11, %10
  store i32 %12, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_drq_a31(ptr nocapture noundef %0, i8 noundef signext %1, i8 noundef signext %2) #10 {
  %4 = and i8 %1, 31
  %5 = zext i8 %4 to i32
  %6 = and i8 %2, 31
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or i32 %8, %5
  %10 = load i32, ptr %0, align 4
  %11 = or i32 %10, %9
  store i32 %11, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_mode_a31(ptr nocapture noundef %0, i8 noundef signext %1, i8 noundef signext %2) #10 {
  %4 = shl i8 %1, 5
  %5 = and i8 %4, 32
  %6 = zext i8 %5 to i32
  %7 = shl i8 %2, 5
  %8 = and i8 %7, 32
  %9 = zext i8 %8 to i32
  %10 = shl nuw nsw i32 %9, 16
  %11 = or i32 %10, %6
  %12 = load i32, ptr %0, align 4
  %13 = or i32 %12, %11
  store i32 %13, ptr %0, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_enable_clock_autogate_a23(ptr nocapture noundef readonly %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !39
  tail call void @arm_heavy_mb() #11
  %2 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 4) #11, !srcloc !11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @sun6i_enable_clock_autogate_h3(ptr nocapture noundef readonly %0) #2 {
  tail call void asm sideeffect "dsb st", "~{memory}"() #11, !srcloc !40
  tail call void @arm_heavy_mb() #11
  %2 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 4) #11, !srcloc !11
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_burst_length_h3(ptr nocapture noundef %0, i8 noundef signext %1, i8 noundef signext %2) #10 {
  %4 = shl i8 %1, 6
  %5 = zext i8 %4 to i32
  %6 = shl i8 %2, 6
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or i32 %8, %5
  %10 = load i32, ptr %0, align 4
  %11 = or i32 %10, %9
  store i32 %11, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_drq_h6(ptr nocapture noundef %0, i8 noundef signext %1, i8 noundef signext %2) #10 {
  %4 = and i8 %1, 63
  %5 = zext i8 %4 to i32
  %6 = and i8 %2, 63
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or i32 %8, %5
  %10 = load i32, ptr %0, align 4
  %11 = or i32 %10, %9
  store i32 %11, ptr %0, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_mode_h6(ptr nocapture noundef %0, i8 noundef signext %1, i8 noundef signext %2) #10 {
  %4 = and i8 %1, 1
  %5 = zext i8 %4 to i32
  %6 = shl nuw nsw i32 %5, 8
  %7 = and i8 %2, 1
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 24
  %10 = or i32 %9, %6
  %11 = load i32, ptr %0, align 4
  %12 = or i32 %11, %10
  store i32 %12, ptr %0, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind readnone }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{i64 2153236449}
!11 = !{i64 5081268}
!12 = !{i64 2153236792}
!13 = !{i64 479421, i64 2147969392, i64 2147969418, i64 2147969465, i64 2147969487, i64 2147969515, i64 2147969535}
!14 = !{i64 2147981604, i64 2147981630, i64 2147981659, i64 2147981693, i64 2147981724, i64 2147981747}
!15 = !{i64 2153146152}
!16 = !{i64 5081686}
!17 = !{i64 2153209476}
!18 = !{i64 2153209818}
!19 = !{i64 2148917973}
!20 = !{i64 2148913797}
!21 = !{i64 2148913872, i64 2148913899, i64 2148913946, i64 2148913968, i64 2148913996, i64 2148914016}
!22 = !{i64 2148940976}
!23 = !{!"auto-init"}
!24 = !{i64 2148848282, i64 2148848305, i64 2148848337, i64 2148848369, i64 2148848407, i64 2148848437}
!25 = !{i64 2153231186}
!26 = !{i64 2153232492}
!27 = !{i64 2153233257}
!28 = !{i64 2153233574}
!29 = !{i64 374905}
!30 = !{i64 2148942117}
!31 = !{i64 2153221995}
!32 = !{i64 2153222873}
!33 = !{i64 2153145216, i64 2153145703, i64 2153145253, i64 2153145309, i64 2153145343, i64 2153145367, i64 2153145408, i64 2153145429, i64 2153145457, i64 2153145491}
!34 = !{i32 0, i32 33}
!35 = !{i64 2153212022}
!36 = !{i64 2153212498}
!37 = !{i64 2153212857}
!38 = !{i64 2153213314}
!39 = !{i64 2153208015}
!40 = !{i64 2153208338}
