; ModuleID = '/llk/IR/drivers/spi/spi-pl022.c_pt.bc'
source_filename = "../drivers/spi/spi-pl022.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.pl022_config_chip = type { i32, i32, i8, %struct.ssp_clock_params, i32, i32, i32, i32, i32, i32, i32 }
%struct.ssp_clock_params = type { i8, i8 }
%struct.vendor_data = type { i32, i32, i8, i8, i8, i8, i8 }
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
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.pl022_ssp_controller = type { i16, i8, ptr, ptr, ptr, i32, i8 }
%struct.pl022 = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, %struct.tasklet_struct, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, ptr, %struct.sg_table, %struct.sg_table, ptr, i8, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.sg_table = type { ptr, i32, i32 }
%struct.spi_controller = type { %struct.device, %struct.list_head, i16, i16, i16, i32, i32, i32, i32, i32, i16, i8, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.spinlock, %struct.mutex, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, %struct.kthread_work, %struct.spinlock, %struct.list_head, ptr, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, %struct.completion, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, %struct.spi_statistics, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.spi_statistics = type { %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, [17 x i32], i32 }
%struct.spi_device = type { %struct.device, ptr, ptr, i32, i8, i8, i8, i32, i32, ptr, ptr, [32 x i8], ptr, i32, ptr, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, %struct.spi_statistics }
%struct.spi_delay = type { i16, i8 }
%struct.chip_data = type { i32, i16, i16, i16, i8, i8, i32, i32, i32 }
%struct.spi_message = type { %struct.list_head, ptr, i8, ptr, ptr, i32, i32, i32, %struct.list_head, ptr, %struct.list_head }
%struct.spi_transfer = type { ptr, ptr, i32, i32, i32, %struct.sg_table, %struct.sg_table, i8, i8, %struct.spi_delay, %struct.spi_delay, %struct.spi_delay, i32, i32, i32, i32, ptr, i8, %struct.list_head, i16 }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.page = type { i32, %union.anon.1, %union.anon.66, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_spi_pl022__254_2443_pl022_init4 = internal global ptr @pl022_init, section ".initcall4.init", align 4
@pl022_driver = internal global %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl022_dev_pm_ops, ptr null, ptr null }, ptr @pl022_probe, ptr @pl022_remove, ptr null, ptr @pl022_ids }, align 4
@__exitcall_pl022_exit = internal global ptr @pl022_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author255 = internal constant [62 x i8] c"spi_pl022.author=Linus Walleij <linus.walleij@stericsson.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description256 = internal constant [50 x i8] c"spi_pl022.description=PL022 SSP Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file257 = internal constant [37 x i8] c"spi_pl022.file=drivers/spi/spi-pl022\00", section ".modinfo", align 1
@__UNIQUE_ID_license258 = internal constant [22 x i8] c"spi_pl022.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"ssp-pl022\00", align 1
@pl022_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pl022_suspend, ptr @pl022_resume, ptr @pl022_suspend, ptr @pl022_resume, ptr @pl022_suspend, ptr @pl022_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl022_runtime_suspend, ptr @pl022_runtime_resume, ptr null }, align 4
@pl022_ids = internal constant [5 x %struct.amba_id] [%struct.amba_id { i32 266274, i32 1048575, ptr @vendor_arm }, %struct.amba_id { i32 17301538, i32 -1, ptr @vendor_st }, %struct.amba_id { i32 524323, i32 -1, ptr @vendor_st_pl023 }, %struct.amba_id { i32 745506, i32 1048575, ptr @vendor_lsi }, %struct.amba_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"problem resuming\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"ARM PL022 driver, device ID: 0x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"probe: no platform data defined\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"probe - cannot alloc SPI master\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"mapped registers from %pa to %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"could not retrieve SSP/SPI bus clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"could not enable SSP/SPI bus clock\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"pl022\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"probe - cannot get IRQ (%d)\0A\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"probe - problem registering spi master\0A\00", align 1
@.str.11 = private unnamed_addr constant [49 x i8] c"will use autosuspend for runtime pm, delay %dms\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"no dt node defined\0A\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"pl022,autosuspend-delay\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"pl022,rt\00", align 1
@pl022_default_chip_info = internal unnamed_addr constant %struct.pl022_config_chip { i32 0, i32 0, i8 1, %struct.ssp_clock_params zeroinitializer, i32 0, i32 0, i32 0, i32 7, i32 0, i32 0, i32 0 }, align 4
@.str.15 = private unnamed_addr constant [16 x i8] c"pl022,interface\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"pl022,com-mode\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"pl022,rx-level-trig\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"pl022,tx-level-trig\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"pl022,ctrl-len\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"pl022,wait-state\00", align 1
@.str.21 = private unnamed_addr constant [13 x i8] c"pl022,duplex\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"cpsdvsr is configured incorrectly\0A\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"controller data is incorrect\00", align 1
@.str.24 = private unnamed_addr constant [40 x i8] c"illegal data size for this controller!\0A\00", align 1
@.str.25 = private unnamed_addr constant [56 x i8] c"This controller can only handle 4 <= n <= %d bit words\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.26 = private unnamed_addr constant [61 x i8] c"Max speed that can be programmed is %d Hz, you requested %d\0A\00", align 1
@.str.27 = private unnamed_addr constant [64 x i8] c"Requested frequency: %d Hz is less than minimum possible %d Hz\0A\00", align 1
@.str.28 = private unnamed_addr constant [24 x i8] c"drivers/spi/spi-pl022.c\00", align 1
@.str.29 = private unnamed_addr constant [59 x i8] c"pl022: Matching cpsdvsr and scr not found for %d Hz rate \0A\00", align 1
@.str.30 = private unnamed_addr constant [37 x i8] c"interface is configured incorrectly\0A\00", align 1
@.str.31 = private unnamed_addr constant [60 x i8] c"unidirectional mode not supported in this hardware version\0A\00", align 1
@.str.32 = private unnamed_addr constant [37 x i8] c"hierarchy is configured incorrectly\0A\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"Communication mode is configured incorrectly\0A\00", align 1
@.str.34 = private unnamed_addr constant [49 x i8] c"RX FIFO Trigger Level is configured incorrectly\0A\00", align 1
@.str.35 = private unnamed_addr constant [49 x i8] c"TX FIFO Trigger Level is configured incorrectly\0A\00", align 1
@.str.36 = private unnamed_addr constant [36 x i8] c"CTRL LEN is configured incorrectly\0A\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Wait State is configured incorrectly\0A\00", align 1
@.str.38 = private unnamed_addr constant [49 x i8] c"Microwire duplex mode is configured incorrectly\0A\00", align 1
@.str.39 = private unnamed_addr constant [93 x i8] c"Microwire half duplex mode requested, but this is only available in the ST version of PL022\0A\00", align 1
@loops_per_jiffy = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 64
@.str.40 = private unnamed_addr constant [14 x i8] c"%s: timeout!\0A\00", align 1
@__func__.do_polling_transfer = private unnamed_addr constant [20 x i8] c"do_polling_transfer\00", align 1
@.str.41 = private unnamed_addr constant [88 x i8] c"message of %u bytes to transmit but the current chip bus has a data width of %u bytes!\0A\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"skipping this message\0A\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"spi-pl022 CR0: %x\0A\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"spi-pl022 CR1: %x\0A\00", align 1
@.str.45 = private unnamed_addr constant [21 x i8] c"spi-pl022 DMACR: %x\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"spi-pl022 SR: %x\0A\00", align 1
@.str.47 = private unnamed_addr constant [43 x i8] c"spi-pl022 exp_fifo_level/fifodepth: %u/%d\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.48 = private unnamed_addr constant [39 x i8] c"bad message state in interrupt handler\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"FIFO overrun\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"RXFIFO is full\0A\00", align 1
@.str.51 = private unnamed_addr constant [80 x i8] c"read %u surplus bytes (did you request an odd number of bytes on a 16bit bus?)\0A\00", align 1
@.str.52 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@.str.54 = private unnamed_addr constant [31 x i8] c"setup for DMA on RX %s, TX %s\0A\00", align 1
@.str.55 = private unnamed_addr constant [47 x i8] c"Failed to work in dma mode, work without dma!\0A\00", align 1
@vendor_arm = internal global %struct.vendor_data { i32 8, i32 16, i8 0, i8 0, i8 0, i8 1, i8 0 }, align 4
@vendor_st = internal global %struct.vendor_data { i32 32, i32 32, i8 0, i8 1, i8 0, i8 1, i8 0 }, align 4
@vendor_st_pl023 = internal global %struct.vendor_data { i32 32, i32 32, i8 0, i8 1, i8 1, i8 0, i8 0 }, align 4
@vendor_lsi = internal global %struct.vendor_data { i32 8, i32 16, i8 0, i8 0, i8 0, i8 1, i8 1 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author255, ptr @__UNIQUE_ID_description256, ptr @__UNIQUE_ID_file257, ptr @__UNIQUE_ID_license258, ptr @__exitcall_pl022_exit, ptr @__initcall__kmod_spi_pl022__254_2443_pl022_init4, ptr @pl022_exit], section "llvm.metadata"
@switch.table.configure_dma.56 = private unnamed_addr constant [5 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32], align 4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @pl022_init() #0 section ".init.text" {
  %1 = tail call i32 @amba_driver_register(ptr noundef nonnull @pl022_driver) #10
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @pl022_exit() #0 section ".exit.text" {
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl022_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl022_probe(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 4
  %6 = load i32, ptr %5, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.2, i32 noundef %6) #11
  %7 = icmp eq ptr %4, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %10 = load ptr, ptr %9, align 8
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.12) #11
  br label %26

13:                                               ; preds = %8
  %14 = tail call noalias ptr @devm_kmalloc(ptr noundef %0, i32 noundef 24, i32 noundef 3520) #10
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  store i16 -1, ptr %14, align 4
  %17 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %14, i32 0, i32 1
  %18 = load i8, ptr %17, align 2
  %19 = or i8 %18, 1
  store i8 %19, ptr %17, align 2
  %20 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %14, i32 0, i32 5
  %21 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %10, ptr noundef nonnull @.str.13, ptr noundef %20, i32 noundef 1, i32 noundef 0) #10
  %22 = tail call ptr @of_find_property(ptr noundef nonnull %10, ptr noundef nonnull @.str.14, ptr noundef null) #10
  %23 = icmp ne ptr %22, null
  %24 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %14, i32 0, i32 6
  %25 = zext i1 %23 to i8
  store i8 %25, ptr %24, align 4
  br label %27

26:                                               ; preds = %13, %12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.3) #11
  br label %140

27:                                               ; preds = %16, %2
  %28 = phi ptr [ %4, %2 ], [ %14, %16 ]
  %29 = tail call ptr @__spi_alloc_controller(ptr noundef %0, i32 noundef 152, i1 noundef zeroext false) #10
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.4) #11
  br label %140

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 8
  %34 = load ptr, ptr %33, align 8
  %35 = getelementptr inbounds %struct.pl022, ptr %34, i32 0, i32 5
  store ptr %29, ptr %35, align 4
  %36 = getelementptr inbounds %struct.pl022, ptr %34, i32 0, i32 6
  store ptr %28, ptr %36, align 4
  store ptr %0, ptr %34, align 4
  %37 = getelementptr inbounds %struct.amba_id, ptr %1, i32 0, i32 2
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.pl022, ptr %34, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = load i16, ptr %28, align 4
  %41 = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 2
  store i16 %40, ptr %41, align 8
  %42 = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 23
  store ptr @pl022_cleanup, ptr %42, align 8
  %43 = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 20
  store ptr @pl022_setup, ptr %43, align 4
  %44 = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 36
  store i8 1, ptr %44, align 4
  %45 = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 45
  store ptr @pl022_transfer_one_message, ptr %45, align 4
  %46 = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 46
  store ptr @pl022_unprepare_transfer_hardware, ptr %46, align 8
  %47 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %28, i32 0, i32 6
  %48 = load i8, ptr %47, align 4, !range !8
  %49 = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 35
  store i8 %48, ptr %49, align 1
  %50 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %51 = load ptr, ptr %50, align 8
  %52 = getelementptr inbounds %struct.device, ptr %29, i32 0, i32 25
  store ptr %51, ptr %52, align 8
  %53 = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 56
  store i8 1, ptr %53, align 8
  %54 = getelementptr inbounds %struct.spi_controller, ptr %29, i32 0, i32 5
  store i32 39, ptr %54, align 8
  %55 = load ptr, ptr %39, align 4
  %56 = getelementptr inbounds %struct.vendor_data, ptr %55, i32 0, i32 3
  %57 = load i8, ptr %56, align 1, !range !8
  %58 = icmp eq i8 %57, 0
  %59 = select i1 %58, i32 39, i32 47
  store i32 %59, ptr %54, align 8
  %60 = tail call i32 @amba_request_regions(ptr noundef %0, ptr noundef null) #10
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %138

62:                                               ; preds = %32
  %63 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1
  %64 = load i32, ptr %63, align 8
  %65 = getelementptr inbounds %struct.pl022, ptr %34, i32 0, i32 2
  store i32 %64, ptr %65, align 4
  %66 = load i32, ptr %63, align 8
  %67 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 1, i32 1
  %68 = load i32, ptr %67, align 4
  %69 = sub i32 1, %66
  %70 = add i32 %69, %68
  %71 = tail call ptr @devm_ioremap(ptr noundef %0, i32 noundef %66, i32 noundef %70) #10
  %72 = getelementptr inbounds %struct.pl022, ptr %34, i32 0, i32 3
  store ptr %71, ptr %72, align 4
  %73 = icmp eq ptr %71, null
  br i1 %73, label %136, label %74

74:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.5, ptr noundef %63, ptr noundef nonnull %71) #11
  %75 = tail call ptr @devm_clk_get(ptr noundef %0, ptr noundef null) #10
  %76 = getelementptr inbounds %struct.pl022, ptr %34, i32 0, i32 4
  store ptr %75, ptr %76, align 4
  %77 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = ptrtoint ptr %75 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.6) #11
  br label %136

80:                                               ; preds = %74
  %81 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %75)
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.7) #11
  br label %136

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.pl022, ptr %34, i32 0, i32 7
  %86 = ptrtoint ptr %34 to i32
  tail call void @tasklet_init(ptr noundef %85, ptr noundef nonnull @pump_transfers, i32 noundef %86) #10
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !9
  tail call void @arm_heavy_mb() #10
  %87 = load ptr, ptr %72, align 4
  %88 = getelementptr i8, ptr %87, i32 4
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %88) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !11
  %90 = and i16 %89, -3
  %91 = load ptr, ptr %72, align 4
  %92 = getelementptr i8, ptr %91, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %92, i16 %90) #10, !srcloc !12
  tail call fastcc void @load_ssp_default_config(ptr noundef %34)
  %93 = getelementptr inbounds %struct.amba_device, ptr %0, i32 0, i32 7
  %94 = load i32, ptr %93, align 8
  %95 = tail call i32 @devm_request_threaded_irq(ptr noundef %0, i32 noundef %94, ptr noundef nonnull @pl022_interrupt_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.8, ptr noundef %34) #10
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %84
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %95) #11
  br label %133

98:                                               ; preds = %84
  %99 = tail call fastcc i32 @pl022_dma_autoprobe(ptr noundef %34)
  switch i32 %99, label %104 [
    i32 -517, label %133
    i32 0, label %100
  ]

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %28, i32 0, i32 1
  %102 = load i8, ptr %101, align 2
  %103 = or i8 %102, 1
  store i8 %103, ptr %101, align 2
  br label %115

104:                                              ; preds = %98
  %105 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %28, i32 0, i32 1
  %106 = load i8, ptr %105, align 2
  %107 = and i8 %106, 1
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %104
  %110 = tail call fastcc i32 @pl022_dma_probe(ptr noundef %34)
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %115, label %112

112:                                              ; preds = %109
  %113 = load i8, ptr %105, align 2
  %114 = and i8 %113, -2
  store i8 %114, ptr %105, align 2
  br label %115

115:                                              ; preds = %112, %109, %104, %100
  %116 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  store ptr %34, ptr %116, align 8
  %117 = tail call i32 @devm_spi_register_controller(ptr noundef %0, ptr noundef nonnull %29) #10
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %124, label %119

119:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.10) #11
  %120 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %28, i32 0, i32 1
  %121 = load i8, ptr %120, align 2
  %122 = and i8 %121, 1
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %133, label %132

124:                                              ; preds = %115
  %125 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %28, i32 0, i32 5
  %126 = load i32, ptr %125, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %124
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %126) #11
  %129 = load i32, ptr %125, align 4
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %0, i32 noundef %129) #10
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %0, i1 noundef zeroext true) #10
  br label %130

130:                                              ; preds = %128, %124
  %131 = tail call i32 @__pm_runtime_idle(ptr noundef %0, i32 noundef 5) #10
  br label %140

132:                                              ; preds = %119
  tail call fastcc void @pl022_dma_remove(ptr noundef %34)
  br label %133

133:                                              ; preds = %132, %119, %98, %97
  %134 = phi i32 [ %95, %97 ], [ %99, %98 ], [ %117, %132 ], [ %117, %119 ]
  %135 = load ptr, ptr %76, align 4
  tail call void @clk_disable(ptr noundef %135) #10
  tail call void @clk_unprepare(ptr noundef %135) #10
  br label %136

136:                                              ; preds = %133, %83, %78, %62
  %137 = phi i32 [ %79, %78 ], [ %81, %83 ], [ %134, %133 ], [ -12, %62 ]
  tail call void @amba_release_regions(ptr noundef %0) #10
  br label %138

138:                                              ; preds = %136, %32
  %139 = phi i32 [ %60, %32 ], [ %137, %136 ]
  tail call void @put_device(ptr noundef nonnull %29) #10
  br label %140

140:                                              ; preds = %138, %130, %31, %26
  %141 = phi i32 [ -12, %31 ], [ %139, %138 ], [ 0, %130 ], [ -19, %26 ]
  ret i32 %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl022_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %6) #10, !srcloc !13
  %7 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %6, ptr %6, i32 1, ptr elementtype(i32) %6) #10, !srcloc !14
  tail call fastcc void @load_ssp_default_config(ptr noundef nonnull %3)
  %8 = getelementptr inbounds %struct.pl022, ptr %3, i32 0, i32 6
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %9, i32 0, i32 1
  %11 = load i8, ptr %10, align 2
  %12 = and i8 %11, 1
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %5
  tail call fastcc void @pl022_dma_remove(ptr noundef nonnull %3)
  br label %15

15:                                               ; preds = %14, %5
  %16 = getelementptr inbounds %struct.pl022, ptr %3, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  tail call void @clk_disable(ptr noundef %17) #10
  tail call void @clk_unprepare(ptr noundef %17) #10
  tail call void @amba_release_regions(ptr noundef %0) #10
  %18 = getelementptr inbounds %struct.pl022, ptr %3, i32 0, i32 7
  %19 = getelementptr inbounds %struct.pl022, ptr %3, i32 0, i32 7, i32 2
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %19) #10, !srcloc !13
  %20 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %19, ptr %19, i32 1, ptr elementtype(i32) %19) #10, !srcloc !14
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !15
  tail call void @tasklet_unlock_wait(ptr noundef %18) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !16
  br label %21

21:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl022_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pl022, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @spi_controller_suspend(ptr noundef %5) #10
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #10
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %4, align 4
  %13 = tail call i32 @spi_controller_resume(ptr noundef %12) #10
  br label %16

14:                                               ; preds = %8
  %15 = tail call i32 @pinctrl_pm_select_sleep_state(ptr noundef %0) #10
  br label %16

16:                                               ; preds = %14, %11, %1
  %17 = phi i32 [ %9, %11 ], [ 0, %14 ], [ %6, %1 ]
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl022_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #10
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.1) #11
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct.pl022, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = tail call i32 @spi_controller_resume(ptr noundef %9) #10
  ret i32 %10
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl022_runtime_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.pl022, ptr %3, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #10
  tail call void @clk_unprepare(ptr noundef %5) #10
  %6 = tail call i32 @pinctrl_pm_select_idle_state(ptr noundef %0) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl022_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call i32 @pinctrl_pm_select_default_state(ptr noundef %0) #10
  %5 = getelementptr inbounds %struct.pl022, ptr %3, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #10
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #10
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #10
  br label %13

13:                                               ; preds = %12, %9, %1
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_controller_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_sleep_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_idle_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_pm_select_default_state(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #10
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #10
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #10
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pl022_cleanup(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %3 = load ptr, ptr %2, align 8
  store ptr null, ptr %2, align 8
  tail call void @kfree(ptr noundef %3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl022_setup(ptr noundef %0) #2 {
  %2 = alloca %struct.pl022_config_chip, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #10
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, i8 0, i32 40, i1 false), !annotation !17
  %3 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %6 = load ptr, ptr %5, align 8
  %7 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 5
  %8 = load i8, ptr %7, align 1
  %9 = zext i8 %8 to i32
  %10 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 25
  %11 = load ptr, ptr %10, align 8
  %12 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 3
  %13 = load i32, ptr %12, align 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %341, label %15

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 9
  %17 = load ptr, ptr %16, align 8
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %21 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 24) #12
  %22 = icmp eq ptr %21, null
  br i1 %22, label %341, label %23

23:                                               ; preds = %19, %15
  %24 = phi ptr [ %21, %19 ], [ %17, %15 ]
  %25 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 10
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = icmp eq ptr %11, null
  br i1 %29, label %45, label %30

30:                                               ; preds = %28
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 4 dereferenceable(40) %2, ptr noundef nonnull align 4 dereferenceable(40) @pl022_default_chip_info, i32 40, i1 false)
  %31 = getelementptr inbounds %struct.pl022_config_chip, ptr %2, i32 0, i32 1
  store i32 0, ptr %31, align 4
  %32 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.15, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #10
  %33 = getelementptr inbounds %struct.pl022_config_chip, ptr %2, i32 0, i32 4
  %34 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.16, ptr noundef %33, i32 noundef 1, i32 noundef 0) #10
  %35 = getelementptr inbounds %struct.pl022_config_chip, ptr %2, i32 0, i32 5
  %36 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.17, ptr noundef %35, i32 noundef 1, i32 noundef 0) #10
  %37 = getelementptr inbounds %struct.pl022_config_chip, ptr %2, i32 0, i32 6
  %38 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.18, ptr noundef %37, i32 noundef 1, i32 noundef 0) #10
  %39 = getelementptr inbounds %struct.pl022_config_chip, ptr %2, i32 0, i32 7
  %40 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.19, ptr noundef %39, i32 noundef 1, i32 noundef 0) #10
  %41 = getelementptr inbounds %struct.pl022_config_chip, ptr %2, i32 0, i32 8
  %42 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.20, ptr noundef %41, i32 noundef 1, i32 noundef 0) #10
  %43 = getelementptr inbounds %struct.pl022_config_chip, ptr %2, i32 0, i32 9
  %44 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %11, ptr noundef nonnull @.str.21, ptr noundef %43, i32 noundef 1, i32 noundef 0) #10
  br label %45

45:                                               ; preds = %30, %28, %23
  %46 = phi ptr [ %2, %30 ], [ %26, %23 ], [ @pl022_default_chip_info, %28 ]
  %47 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 3
  %48 = load i8, ptr %47, align 1
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %100

50:                                               ; preds = %45
  %51 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 3, i32 1
  %52 = load i8, ptr %51, align 1
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %100

54:                                               ; preds = %50
  %55 = load i32, ptr %12, align 8
  %56 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 4
  %57 = load ptr, ptr %56, align 4
  %58 = call i32 @clk_get_rate(ptr noundef %57) #10
  %59 = lshr i32 %58, 1
  %60 = udiv i32 %58, 65024
  %61 = icmp ult i32 %59, %55
  br i1 %61, label %62, label %64

62:                                               ; preds = %54
  %63 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %63, ptr noundef nonnull @.str.26, i32 noundef %59, i32 noundef %55) #11
  br label %64

64:                                               ; preds = %62, %54
  %65 = icmp ugt i32 %60, %55
  br i1 %65, label %66, label %68

66:                                               ; preds = %64
  %67 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %67, ptr noundef nonnull @.str.27, i32 noundef %55, i32 noundef %60) #11
  br label %339

68:                                               ; preds = %86, %64
  %69 = phi i32 [ %91, %86 ], [ 2, %64 ]
  %70 = phi i32 [ %89, %86 ], [ 0, %64 ]
  %71 = phi i32 [ %88, %86 ], [ 0, %64 ]
  %72 = phi i32 [ %87, %86 ], [ 0, %64 ]
  br label %75

73:                                               ; preds = %75
  %74 = icmp eq i32 %77, 256
  br i1 %74, label %86, label %75

75:                                               ; preds = %73, %68
  %76 = phi i32 [ 0, %68 ], [ %77, %73 ]
  %77 = add nuw nsw i32 %76, 1
  %78 = mul nuw nsw i32 %77, %69
  %79 = udiv i32 %58, %78
  %80 = icmp ugt i32 %79, %55
  br i1 %80, label %73, label %81

81:                                               ; preds = %75
  %82 = icmp ugt i32 %79, %72
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = icmp eq i32 %79, %55
  %85 = zext i1 %84 to i32
  br label %86

86:                                               ; preds = %83, %81, %73
  %87 = phi i32 [ %72, %81 ], [ %79, %83 ], [ %72, %73 ]
  %88 = phi i32 [ %71, %81 ], [ %69, %83 ], [ %71, %73 ]
  %89 = phi i32 [ %70, %81 ], [ %76, %83 ], [ %70, %73 ]
  %90 = phi i32 [ 0, %81 ], [ %85, %83 ], [ 0, %73 ]
  %91 = add nuw nsw i32 %69, 2
  %92 = icmp ult i32 %69, 253
  %93 = icmp eq i32 %90, 0
  %94 = select i1 %92, i1 %93, i1 false
  br i1 %94, label %68, label %95

95:                                               ; preds = %86
  %96 = icmp eq i32 %87, 0
  br i1 %96, label %97, label %98, !prof !18

97:                                               ; preds = %95
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.28, i32 noundef 1799, i32 noundef 9, ptr noundef nonnull @.str.29, i32 noundef %55) #10
  br label %98

98:                                               ; preds = %97, %95
  %99 = trunc i32 %88 to i8
  br label %106

100:                                              ; preds = %50, %45
  %101 = load i16, ptr %47, align 1
  %102 = trunc i16 %101 to i8
  %103 = lshr i16 %101, 8
  %104 = zext i16 %103 to i32
  %105 = and i8 %102, -2
  br label %106

106:                                              ; preds = %100, %98
  %107 = phi i32 [ %89, %98 ], [ %104, %100 ]
  %108 = phi i8 [ %99, %98 ], [ %105, %100 ]
  %109 = add i8 %108, 1
  %110 = icmp ult i8 %109, 3
  br i1 %110, label %111, label %112

111:                                              ; preds = %106
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.22) #11
  br label %339

112:                                              ; preds = %106
  %113 = load i32, ptr %46, align 4
  %114 = icmp ugt i32 %113, 3
  br i1 %114, label %180, label %115

115:                                              ; preds = %112
  %116 = icmp eq i32 %113, 3
  br i1 %116, label %117, label %123

117:                                              ; preds = %115
  %118 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.vendor_data, ptr %119, i32 0, i32 2
  %121 = load i8, ptr %120, align 4, !range !8
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %180, label %123

123:                                              ; preds = %117, %115
  %124 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp ult i32 %125, 2
  br i1 %126, label %127, label %180

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 4
  %129 = load i32, ptr %128, align 4
  %130 = icmp ult i32 %129, 3
  br i1 %130, label %131, label %180

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 5
  %133 = load i32, ptr %132, align 4
  switch i32 %133, label %180 [
    i32 0, label %144
    i32 1, label %144
    i32 2, label %144
    i32 3, label %134
    i32 4, label %139
  ]

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 1
  %136 = load ptr, ptr %135, align 4
  %137 = load i32, ptr %136, align 4
  %138 = icmp slt i32 %137, 16
  br i1 %138, label %180, label %144

139:                                              ; preds = %131
  %140 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 1
  %141 = load ptr, ptr %140, align 4
  %142 = load i32, ptr %141, align 4
  %143 = icmp slt i32 %142, 32
  br i1 %143, label %180, label %144

144:                                              ; preds = %139, %134, %131, %131, %131
  %145 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 6
  %146 = load i32, ptr %145, align 4
  switch i32 %146, label %180 [
    i32 0, label %157
    i32 1, label %157
    i32 2, label %157
    i32 3, label %147
    i32 4, label %152
  ]

147:                                              ; preds = %144
  %148 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 1
  %149 = load ptr, ptr %148, align 4
  %150 = load i32, ptr %149, align 4
  %151 = icmp slt i32 %150, 16
  br i1 %151, label %180, label %157

152:                                              ; preds = %144
  %153 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 1
  %154 = load ptr, ptr %153, align 4
  %155 = load i32, ptr %154, align 4
  %156 = icmp slt i32 %155, 32
  br i1 %156, label %180, label %157

157:                                              ; preds = %152, %147, %144, %144, %144
  %158 = icmp eq i32 %113, 2
  br i1 %158, label %159, label %183

159:                                              ; preds = %157
  %160 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 7
  %161 = load i32, ptr %160, align 4
  %162 = add i32 %161, -32
  %163 = icmp ult i32 %162, -29
  br i1 %163, label %180, label %164

164:                                              ; preds = %159
  %165 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 8
  %166 = load i32, ptr %165, align 4
  %167 = icmp ult i32 %166, 2
  br i1 %167, label %168, label %180

168:                                              ; preds = %164
  %169 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 1
  %170 = load ptr, ptr %169, align 4
  %171 = getelementptr inbounds %struct.vendor_data, ptr %170, i32 0, i32 3
  %172 = load i8, ptr %171, align 1, !range !8
  %173 = icmp eq i8 %172, 0
  %174 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 9
  %175 = load i32, ptr %174, align 4
  br i1 %173, label %178, label %176

176:                                              ; preds = %168
  %177 = icmp ult i32 %175, 2
  br i1 %177, label %183, label %180

178:                                              ; preds = %168
  %179 = icmp eq i32 %175, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %178, %176, %164, %159, %152, %147, %144, %139, %134, %131, %127, %123, %117, %112
  %181 = phi ptr [ @.str.30, %112 ], [ @.str.31, %117 ], [ @.str.32, %123 ], [ @.str.33, %127 ], [ @.str.34, %134 ], [ @.str.34, %139 ], [ @.str.34, %131 ], [ @.str.35, %147 ], [ @.str.35, %152 ], [ @.str.35, %144 ], [ @.str.36, %159 ], [ @.str.37, %164 ], [ @.str.38, %176 ], [ @.str.39, %178 ]
  %182 = load ptr, ptr %6, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull %181) #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.23) #11
  br label %339

183:                                              ; preds = %178, %176, %157
  %184 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 19
  store i32 %133, ptr %184, align 4
  %185 = load i32, ptr %145, align 4
  %186 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 20
  store i32 %185, ptr %186, align 4
  %187 = load i32, ptr %128, align 4
  %188 = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 8
  store i32 %187, ptr %188, align 4
  %189 = icmp ult i8 %8, 4
  br i1 %189, label %196, label %190

190:                                              ; preds = %183
  %191 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 1
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr inbounds %struct.vendor_data, ptr %192, i32 0, i32 1
  %194 = load i32, ptr %193, align 4
  %195 = icmp ult i32 %194, %9
  br i1 %195, label %196, label %201

196:                                              ; preds = %190, %183
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.24) #11
  %197 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 1
  %198 = load ptr, ptr %197, align 4
  %199 = getelementptr inbounds %struct.vendor_data, ptr %198, i32 0, i32 1
  %200 = load i32, ptr %199, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.25, i32 noundef %200) #11
  br label %339

201:                                              ; preds = %190
  %202 = icmp ult i8 %8, 9
  br i1 %202, label %203, label %205

203:                                              ; preds = %201
  %204 = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 4
  store i8 1, ptr %204, align 2
  br label %210

205:                                              ; preds = %201
  %206 = icmp ult i8 %8, 17
  %207 = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 4
  br i1 %206, label %208, label %209

208:                                              ; preds = %205
  store i8 2, ptr %207, align 2
  br label %210

209:                                              ; preds = %205
  store i8 4, ptr %207, align 2
  br label %210

210:                                              ; preds = %209, %208, %203
  %211 = phi i32 [ 1, %203 ], [ 3, %209 ], [ 2, %208 ]
  %212 = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 6
  store i32 %211, ptr %212, align 4
  %213 = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 7
  store i32 %211, ptr %213, align 4
  %214 = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 1
  %215 = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 2
  %216 = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(10) %24, i8 0, i64 10, i1 false)
  %217 = load i32, ptr %128, align 4
  %218 = icmp eq i32 %217, 2
  br i1 %218, label %219, label %226

219:                                              ; preds = %210
  %220 = getelementptr inbounds %struct.pl022, ptr %6, i32 0, i32 6
  %221 = load ptr, ptr %220, align 4
  %222 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %221, i32 0, i32 1
  %223 = load i8, ptr %222, align 2
  %224 = and i8 %223, 1
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %219, %210
  br label %227

227:                                              ; preds = %226, %219
  %228 = phi i8 [ 0, %226 ], [ 1, %219 ]
  %229 = phi i16 [ 0, %226 ], [ 3, %219 ]
  %230 = getelementptr inbounds %struct.chip_data, ptr %24, i32 0, i32 5
  store i8 %228, ptr %230, align 1
  store i16 %229, ptr %215, align 2
  %231 = zext i8 %108 to i16
  store i16 %231, ptr %216, align 4
  %232 = load ptr, ptr %191, align 4
  %233 = getelementptr inbounds %struct.vendor_data, ptr %232, i32 0, i32 3
  %234 = load i8, ptr %233, align 1, !range !8
  %235 = icmp eq i8 %234, 0
  br i1 %235, label %289, label %236

236:                                              ; preds = %227
  %237 = getelementptr inbounds %struct.vendor_data, ptr %232, i32 0, i32 4
  %238 = load i8, ptr %237, align 2, !range !8
  %239 = icmp eq i8 %238, 0
  br i1 %239, label %245, label %240

240:                                              ; preds = %236
  %241 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 10
  %242 = load i32, ptr %241, align 4
  %243 = trunc i32 %242 to i16
  %244 = shl i16 %243, 13
  br label %264

245:                                              ; preds = %236
  %246 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 9
  %247 = load i32, ptr %246, align 4
  %248 = shl i32 %247, 5
  %249 = and i32 %248, 32
  store i32 %249, ptr %24, align 4
  %250 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 7
  %251 = load i32, ptr %250, align 4
  %252 = shl i32 %251, 16
  %253 = and i32 %252, 2031616
  %254 = or i32 %249, %253
  store i32 %254, ptr %24, align 4
  %255 = load i32, ptr %46, align 4
  %256 = shl i32 %255, 21
  %257 = and i32 %256, 6291456
  %258 = or i32 %254, %257
  store i32 %258, ptr %24, align 4
  %259 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 8
  %260 = load i32, ptr %259, align 4
  %261 = trunc i32 %260 to i16
  %262 = shl i16 %261, 6
  %263 = and i16 %262, 64
  br label %264

264:                                              ; preds = %245, %240
  %265 = phi i32 [ %258, %245 ], [ 0, %240 ]
  %266 = phi i16 [ %263, %245 ], [ %244, %240 ]
  store i16 %266, ptr %214, align 4
  %267 = add nuw nsw i32 %9, 31
  %268 = and i32 %267, 31
  %269 = or i32 %265, %268
  store i32 %269, ptr %24, align 4
  %270 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %271 = load i32, ptr %270, align 8
  %272 = trunc i32 %271 to i16
  %273 = lshr i16 %272, 3
  %274 = and i16 %273, 1
  %275 = shl nuw nsw i16 %274, 4
  %276 = or i16 %275, %266
  %277 = shl nuw nsw i16 %274, 5
  %278 = or i16 %276, %277
  store i16 %278, ptr %214, align 4
  %279 = load i32, ptr %132, align 4
  %280 = trunc i32 %279 to i16
  %281 = shl i16 %280, 7
  %282 = and i16 %281, 896
  %283 = or i16 %278, %282
  store i16 %283, ptr %214, align 4
  %284 = load i32, ptr %145, align 4
  %285 = trunc i32 %284 to i16
  %286 = shl i16 %285, 10
  %287 = and i16 %286, 7168
  %288 = or i16 %283, %287
  store i16 %288, ptr %214, align 4
  br label %296

289:                                              ; preds = %227
  %290 = add nuw nsw i32 %9, 15
  %291 = and i32 %290, 15
  store i32 %291, ptr %24, align 4
  %292 = load i32, ptr %46, align 4
  %293 = shl i32 %292, 4
  %294 = and i32 %293, 48
  %295 = or i32 %294, %291
  store i32 %295, ptr %24, align 4
  br label %296

296:                                              ; preds = %289, %264
  %297 = phi i16 [ 0, %289 ], [ %288, %264 ]
  %298 = phi i32 [ %295, %289 ], [ %269, %264 ]
  %299 = getelementptr inbounds %struct.spi_device, ptr %0, i32 0, i32 7
  %300 = load i32, ptr %299, align 8
  %301 = shl i32 %300, 5
  %302 = and i32 %301, 64
  %303 = and i32 %298, -65
  %304 = or i32 %303, %302
  store i32 %304, ptr %24, align 4
  %305 = load i32, ptr %299, align 8
  %306 = shl i32 %305, 7
  %307 = and i32 %306, 128
  %308 = and i32 %304, -65409
  %309 = shl i32 %107, 8
  %310 = and i32 %309, 65280
  %311 = or i32 %308, %310
  %312 = or i32 %311, %307
  store i32 %312, ptr %24, align 4
  %313 = load ptr, ptr %191, align 4
  %314 = getelementptr inbounds %struct.vendor_data, ptr %313, i32 0, i32 5
  %315 = load i8, ptr %314, align 1, !range !8
  %316 = icmp eq i8 %315, 0
  br i1 %316, label %324, label %317

317:                                              ; preds = %296
  %318 = load i32, ptr %299, align 8
  %319 = trunc i32 %318 to i16
  %320 = lshr i16 %319, 5
  %321 = and i16 %320, 1
  %322 = and i16 %297, -2
  %323 = or i16 %321, %322
  store i16 %323, ptr %214, align 4
  br label %324

324:                                              ; preds = %317, %296
  %325 = phi i16 [ %323, %317 ], [ %297, %296 ]
  %326 = and i16 %325, -3
  store i16 %326, ptr %214, align 4
  %327 = and i16 %325, -7
  %328 = load i32, ptr %124, align 4
  %329 = trunc i32 %328 to i16
  %330 = shl i16 %329, 2
  %331 = and i16 %330, 4
  %332 = or i16 %331, %327
  store i16 %332, ptr %214, align 4
  %333 = and i16 %332, -11
  %334 = getelementptr inbounds %struct.pl022_config_chip, ptr %46, i32 0, i32 2
  %335 = load i8, ptr %334, align 4, !range !8
  %336 = shl nuw nsw i8 %335, 3
  %337 = zext i8 %336 to i16
  %338 = or i16 %333, %337
  store i16 %338, ptr %214, align 4
  store ptr %24, ptr %16, align 8
  br label %341

339:                                              ; preds = %196, %180, %111, %66
  %340 = phi i32 [ -22, %111 ], [ -22, %180 ], [ -524, %196 ], [ -22, %66 ]
  store ptr null, ptr %16, align 8
  call void @kfree(ptr noundef %24) #10
  br label %341

341:                                              ; preds = %339, %324, %19, %1
  %342 = phi i32 [ %340, %339 ], [ 0, %324 ], [ -22, %1 ], [ -12, %19 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #10
  ret i32 %342
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl022_transfer_one_message(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 8
  store ptr %1, ptr %5, align 4
  %6 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 9
  store ptr null, ptr %6, align 4
  %7 = load ptr, ptr %1, align 4
  %8 = getelementptr i8, ptr %7, i32 -84
  %9 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 9
  store ptr %8, ptr %9, align 4
  %10 = getelementptr inbounds %struct.spi_message, ptr %1, i32 0, i32 1
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.spi_device, ptr %11, i32 0, i32 9
  %13 = load ptr, ptr %12, align 8
  %14 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 10
  store ptr %13, ptr %14, align 4
  %15 = load ptr, ptr %10, align 4
  %16 = getelementptr inbounds %struct.spi_device, ptr %15, i32 0, i32 4
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 27
  store i32 %18, ptr %19, align 4
  %20 = load ptr, ptr %10, align 4
  %21 = getelementptr inbounds %struct.spi_device, ptr %20, i32 0, i32 14
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 28
  store ptr %22, ptr %23, align 4
  %24 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.vendor_data, ptr %25, i32 0, i32 3
  %27 = load i8, ptr %26, align 1, !range !8
  %28 = icmp eq i8 %27, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  %29 = load i32, ptr %13, align 4
  br i1 %28, label %33, label %30

30:                                               ; preds = %2
  %31 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #10, !srcloc !19
  br label %37

33:                                               ; preds = %2
  %34 = trunc i32 %29 to i16
  %35 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 3
  %36 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %34) #10, !srcloc !12
  br label %37

37:                                               ; preds = %33, %30
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !20
  tail call void @arm_heavy_mb() #10
  %38 = getelementptr inbounds %struct.chip_data, ptr %13, i32 0, i32 1
  %39 = load i16, ptr %38, align 4
  %40 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 3
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 %39) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !21
  tail call void @arm_heavy_mb() #10
  %43 = getelementptr inbounds %struct.chip_data, ptr %13, i32 0, i32 2
  %44 = load i16, ptr %43, align 2
  %45 = load ptr, ptr %40, align 4
  %46 = getelementptr i8, ptr %45, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 %44) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !22
  tail call void @arm_heavy_mb() #10
  %47 = getelementptr inbounds %struct.chip_data, ptr %13, i32 0, i32 3
  %48 = load i16, ptr %47, align 4
  %49 = load ptr, ptr %40, align 4
  %50 = getelementptr i8, ptr %49, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %50, i16 %48) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !23
  tail call void @arm_heavy_mb() #10
  %51 = load ptr, ptr %40, align 4
  %52 = getelementptr i8, ptr %51, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !24
  tail call void @arm_heavy_mb() #10
  %53 = load ptr, ptr %40, align 4
  %54 = getelementptr i8, ptr %53, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %54, i16 3) #10, !srcloc !12
  %55 = load i32, ptr @loops_per_jiffy, align 4
  %56 = shl i32 %55, 1
  br label %57

57:                                               ; preds = %73, %37
  %58 = phi i32 [ %56, %37 ], [ %79, %73 ]
  %59 = load ptr, ptr %40, align 4
  %60 = getelementptr i8, ptr %59, i32 12
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %60) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %62 = and i16 %61, 4
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %64, %57
  %65 = load ptr, ptr %40, align 4
  %66 = getelementptr i8, ptr %65, i32 8
  %67 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %66) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %68 = load ptr, ptr %40, align 4
  %69 = getelementptr i8, ptr %68, i32 12
  %70 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %69) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %71 = and i16 %70, 4
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %73, label %64

73:                                               ; preds = %64, %57
  %74 = load ptr, ptr %40, align 4
  %75 = getelementptr i8, ptr %74, i32 12
  %76 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %75) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !27
  %77 = and i16 %76, 16
  %78 = icmp eq i16 %77, 0
  %79 = add i32 %58, -1
  %80 = icmp eq i32 %58, 0
  %81 = select i1 %78, i1 true, i1 %80
  br i1 %81, label %82, label %57

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 18
  store i32 0, ptr %83, align 4
  %84 = load ptr, ptr %14, align 4
  %85 = getelementptr inbounds %struct.chip_data, ptr %84, i32 0, i32 8
  %86 = load i32, ptr %85, align 4
  %87 = icmp eq i32 %86, 1
  br i1 %87, label %88, label %322

88:                                               ; preds = %82
  %89 = load ptr, ptr %5, align 4
  %90 = getelementptr inbounds %struct.spi_message, ptr %89, i32 0, i32 9
  %91 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 11
  %92 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 12
  %93 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 13
  %94 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 14
  %95 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 15
  %96 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 17
  %97 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 16
  %98 = getelementptr inbounds %struct.spi_message, ptr %89, i32 0, i32 6
  br label %99

99:                                               ; preds = %314, %88
  %100 = load ptr, ptr %90, align 4
  %101 = ptrtoint ptr %100 to i32
  switch i32 %101, label %102 [
    i32 2, label %315
    i32 -1, label %315
  ]

102:                                              ; preds = %99
  %103 = load ptr, ptr %9, align 4
  %104 = icmp eq ptr %100, inttoptr (i32 1 to ptr)
  br i1 %104, label %105, label %135

105:                                              ; preds = %102
  %106 = getelementptr inbounds %struct.spi_transfer, ptr %103, i32 0, i32 18, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr i8, ptr %107, i32 -84
  %109 = getelementptr i8, ptr %107, i32 -38
  %110 = tail call i32 @spi_delay_exec(ptr noundef %109, ptr noundef %108) #10
  %111 = getelementptr i8, ptr %107, i32 -40
  %112 = load i8, ptr %111, align 4
  %113 = and i8 %112, 2
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %158, label %115

115:                                              ; preds = %105
  %116 = load ptr, ptr %24, align 4
  %117 = getelementptr inbounds %struct.vendor_data, ptr %116, i32 0, i32 6
  %118 = load i8, ptr %117, align 4, !range !8
  %119 = icmp eq i8 %118, 0
  br i1 %119, label %131, label %120

120:                                              ; preds = %115
  %121 = load ptr, ptr %40, align 4
  %122 = getelementptr i8, ptr %121, i32 48
  %123 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %122) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  %124 = load i32, ptr %19, align 4
  %125 = shl nuw i32 1, %124
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %126 = trunc i32 %125 to i16
  %127 = xor i16 %126, -1
  %128 = and i16 %123, %127
  %129 = load ptr, ptr %40, align 4
  %130 = getelementptr i8, ptr %129, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %130, i16 %128) #10, !srcloc !12
  br label %158

131:                                              ; preds = %115
  %132 = load ptr, ptr %23, align 4
  %133 = icmp eq ptr %132, null
  br i1 %133, label %158, label %134

134:                                              ; preds = %131
  tail call void @gpiod_set_value(ptr noundef nonnull %132, i32 noundef 1) #10
  br label %158

135:                                              ; preds = %102
  store ptr inttoptr (i32 1 to ptr), ptr %90, align 4
  %136 = load i8, ptr %91, align 4, !range !8
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %135
  %139 = load ptr, ptr %24, align 4
  %140 = getelementptr inbounds %struct.vendor_data, ptr %139, i32 0, i32 6
  %141 = load i8, ptr %140, align 4, !range !8
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %138
  %144 = load ptr, ptr %40, align 4
  %145 = getelementptr i8, ptr %144, i32 48
  %146 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %145) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  %147 = load i32, ptr %19, align 4
  %148 = shl nuw i32 1, %147
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %149 = trunc i32 %148 to i16
  %150 = xor i16 %149, -1
  %151 = and i16 %146, %150
  %152 = load ptr, ptr %40, align 4
  %153 = getelementptr i8, ptr %152, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %153, i16 %151) #10, !srcloc !12
  br label %158

154:                                              ; preds = %138
  %155 = load ptr, ptr %23, align 4
  %156 = icmp eq ptr %155, null
  br i1 %156, label %158, label %157

157:                                              ; preds = %154
  tail call void @gpiod_set_value(ptr noundef nonnull %155, i32 noundef 1) #10
  br label %158

158:                                              ; preds = %157, %154, %143, %135, %134, %131, %120, %105
  %159 = load ptr, ptr %9, align 4
  %160 = getelementptr inbounds %struct.spi_transfer, ptr %159, i32 0, i32 2
  %161 = load i32, ptr %160, align 4
  %162 = load ptr, ptr %14, align 4
  %163 = getelementptr inbounds %struct.chip_data, ptr %162, i32 0, i32 4
  %164 = load i8, ptr %163, align 2
  %165 = zext i8 %164 to i32
  %166 = urem i32 %161, %165
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %168, label %186, !prof !30

168:                                              ; preds = %158
  %169 = load ptr, ptr %103, align 4
  store ptr %169, ptr %92, align 4
  %170 = load i32, ptr %160, align 4
  %171 = getelementptr i8, ptr %169, i32 %170
  store ptr %171, ptr %93, align 4
  %172 = getelementptr inbounds %struct.spi_transfer, ptr %103, i32 0, i32 1
  %173 = load ptr, ptr %172, align 4
  store ptr %173, ptr %94, align 4
  %174 = load i32, ptr %160, align 4
  %175 = getelementptr i8, ptr %173, i32 %174
  store ptr %175, ptr %95, align 4
  %176 = icmp eq ptr %169, null
  br i1 %176, label %180, label %177

177:                                              ; preds = %168
  %178 = getelementptr inbounds %struct.chip_data, ptr %162, i32 0, i32 7
  %179 = load i32, ptr %178, align 4
  br label %180

180:                                              ; preds = %177, %168
  %181 = phi i32 [ %179, %177 ], [ 0, %168 ]
  store i32 %181, ptr %96, align 4
  %182 = icmp eq ptr %173, null
  br i1 %182, label %190, label %183

183:                                              ; preds = %180
  %184 = getelementptr inbounds %struct.chip_data, ptr %162, i32 0, i32 6
  %185 = load i32, ptr %184, align 4
  br label %190

186:                                              ; preds = %158
  %187 = zext i8 %164 to i32
  %188 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %188, ptr noundef nonnull @.str.41, i32 noundef %161, i32 noundef %187) #11
  %189 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.42) #11
  store ptr inttoptr (i32 -1 to ptr), ptr %90, align 4
  br label %315

190:                                              ; preds = %183, %180
  %191 = phi i32 [ %185, %183 ], [ 0, %180 ]
  store i32 %191, ptr %97, align 4
  %192 = load i32, ptr @loops_per_jiffy, align 4
  %193 = shl i32 %192, 1
  br label %194

194:                                              ; preds = %210, %190
  %195 = phi i32 [ %193, %190 ], [ %216, %210 ]
  %196 = load ptr, ptr %40, align 4
  %197 = getelementptr i8, ptr %196, i32 12
  %198 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %197) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %199 = and i16 %198, 4
  %200 = icmp eq i16 %199, 0
  br i1 %200, label %210, label %201

201:                                              ; preds = %201, %194
  %202 = load ptr, ptr %40, align 4
  %203 = getelementptr i8, ptr %202, i32 8
  %204 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %203) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %205 = load ptr, ptr %40, align 4
  %206 = getelementptr i8, ptr %205, i32 12
  %207 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %206) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %208 = and i16 %207, 4
  %209 = icmp eq i16 %208, 0
  br i1 %209, label %210, label %201

210:                                              ; preds = %201, %194
  %211 = load ptr, ptr %40, align 4
  %212 = getelementptr i8, ptr %211, i32 12
  %213 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %212) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !27
  %214 = and i16 %213, 16
  %215 = icmp eq i16 %214, 0
  %216 = add i32 %195, -1
  %217 = icmp eq i32 %195, 0
  %218 = select i1 %215, i1 true, i1 %217
  br i1 %218, label %219, label %194

219:                                              ; preds = %210
  store i32 0, ptr %83, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !31
  tail call void @arm_heavy_mb() #10
  %220 = load ptr, ptr %40, align 4
  %221 = getelementptr i8, ptr %220, i32 4
  %222 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %221) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !32
  %223 = or i16 %222, 2
  %224 = load ptr, ptr %40, align 4
  %225 = getelementptr i8, ptr %224, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %225, i16 %223) #10, !srcloc !12
  %226 = load volatile i32, ptr @jiffies, align 64
  %227 = add i32 %226, 100
  br label %228

228:                                              ; preds = %275, %219
  %229 = load ptr, ptr %92, align 4
  %230 = load ptr, ptr %93, align 4
  %231 = icmp ult ptr %229, %230
  br i1 %231, label %236, label %232

232:                                              ; preds = %228
  %233 = load ptr, ptr %94, align 4
  %234 = load ptr, ptr %95, align 4
  %235 = icmp ult ptr %233, %234
  br i1 %235, label %236, label %276

236:                                              ; preds = %232, %228
  %237 = load volatile i32, ptr @jiffies, align 64
  tail call fastcc void @readwriter(ptr noundef %4) #10
  %238 = sub i32 %227, %237
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %275

240:                                              ; preds = %236
  %241 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %241, ptr noundef nonnull @.str.40, ptr noundef nonnull @__func__.do_polling_transfer) #11
  store ptr inttoptr (i32 -2 to ptr), ptr %90, align 4
  %242 = load ptr, ptr %24, align 4
  %243 = getelementptr inbounds %struct.vendor_data, ptr %242, i32 0, i32 3
  %244 = load i8, ptr %243, align 1, !range !8
  %245 = icmp eq i8 %244, 0
  %246 = load ptr, ptr %40, align 4
  br i1 %245, label %249, label %247

247:                                              ; preds = %240
  %248 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %246) #10, !srcloc !33
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !34
  br label %252

249:                                              ; preds = %240
  %250 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %246) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !35
  %251 = zext i16 %250 to i32
  br label %252

252:                                              ; preds = %249, %247
  %253 = phi i32 [ %248, %247 ], [ %251, %249 ]
  %254 = load ptr, ptr %40, align 4
  %255 = getelementptr i8, ptr %254, i32 4
  %256 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %255) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !36
  %257 = load ptr, ptr %40, align 4
  %258 = getelementptr i8, ptr %257, i32 36
  %259 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %258) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !37
  %260 = load ptr, ptr %40, align 4
  %261 = getelementptr i8, ptr %260, i32 12
  %262 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %261) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !38
  %263 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %263, ptr noundef nonnull @.str.43, i32 noundef %253) #11
  %264 = load ptr, ptr %4, align 4
  %265 = zext i16 %256 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %264, ptr noundef nonnull @.str.44, i32 noundef %265) #11
  %266 = load ptr, ptr %4, align 4
  %267 = zext i16 %259 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %266, ptr noundef nonnull @.str.45, i32 noundef %267) #11
  %268 = load ptr, ptr %4, align 4
  %269 = zext i16 %262 to i32
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %268, ptr noundef nonnull @.str.46, i32 noundef %269) #11
  %270 = load ptr, ptr %4, align 4
  %271 = load i32, ptr %83, align 4
  %272 = load ptr, ptr %24, align 4
  %273 = load i32, ptr %272, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %270, ptr noundef nonnull @.str.47, i32 noundef %271, i32 noundef %273) #11
  %274 = load ptr, ptr %90, align 4
  br label %315

275:                                              ; preds = %236
  tail call void asm sideeffect "dmb ish", "~{memory}"() #10, !srcloc !39
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !40
  br label %228

276:                                              ; preds = %232
  %277 = load ptr, ptr %9, align 4
  %278 = getelementptr inbounds %struct.spi_transfer, ptr %277, i32 0, i32 2
  %279 = load i32, ptr %278, align 4
  %280 = load i32, ptr %98, align 4
  %281 = add i32 %280, %279
  store i32 %281, ptr %98, align 4
  %282 = load ptr, ptr %5, align 4
  %283 = load ptr, ptr %9, align 4
  %284 = getelementptr inbounds %struct.spi_transfer, ptr %283, i32 0, i32 18
  %285 = load ptr, ptr %284, align 4
  %286 = icmp eq ptr %285, %282
  br i1 %286, label %287, label %288

287:                                              ; preds = %276
  store ptr inttoptr (i32 2 to ptr), ptr %90, align 4
  br label %314

288:                                              ; preds = %276
  %289 = getelementptr i8, ptr %285, i32 -84
  store ptr %289, ptr %9, align 4
  store ptr inttoptr (i32 1 to ptr), ptr %90, align 4
  %290 = load ptr, ptr %9, align 4
  %291 = getelementptr inbounds %struct.spi_transfer, ptr %290, i32 0, i32 7
  %292 = load i8, ptr %291, align 4
  %293 = and i8 %292, 2
  %294 = icmp eq i8 %293, 0
  br i1 %294, label %314, label %295

295:                                              ; preds = %288
  %296 = load ptr, ptr %24, align 4
  %297 = getelementptr inbounds %struct.vendor_data, ptr %296, i32 0, i32 6
  %298 = load i8, ptr %297, align 4, !range !8
  %299 = icmp eq i8 %298, 0
  br i1 %299, label %310, label %300

300:                                              ; preds = %295
  %301 = load ptr, ptr %40, align 4
  %302 = getelementptr i8, ptr %301, i32 48
  %303 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %302) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  %304 = load i32, ptr %19, align 4
  %305 = shl nuw i32 1, %304
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %306 = trunc i32 %305 to i16
  %307 = or i16 %303, %306
  %308 = load ptr, ptr %40, align 4
  %309 = getelementptr i8, ptr %308, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %309, i16 %307) #10, !srcloc !12
  br label %314

310:                                              ; preds = %295
  %311 = load ptr, ptr %23, align 4
  %312 = icmp eq ptr %311, null
  br i1 %312, label %314, label %313

313:                                              ; preds = %310
  tail call void @gpiod_set_value(ptr noundef nonnull %311, i32 noundef 0) #10
  br label %314

314:                                              ; preds = %313, %310, %300, %288, %287
  br label %99

315:                                              ; preds = %252, %186, %99, %99
  %316 = phi ptr [ inttoptr (i32 -1 to ptr), %186 ], [ %274, %252 ], [ %100, %99 ], [ %100, %99 ]
  %317 = icmp eq ptr %316, inttoptr (i32 -2 to ptr)
  %318 = select i1 %317, i32 -11, i32 -5
  %319 = icmp eq ptr %316, inttoptr (i32 2 to ptr)
  %320 = select i1 %319, i32 0, i32 %318
  %321 = getelementptr inbounds %struct.spi_message, ptr %89, i32 0, i32 7
  store i32 %320, ptr %321, align 4
  tail call fastcc void @giveback(ptr noundef %4) #10
  br label %406

322:                                              ; preds = %82
  %323 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 11
  %324 = load i8, ptr %323, align 4, !range !8
  %325 = icmp eq i8 %324, 0
  br i1 %325, label %326, label %346

326:                                              ; preds = %322
  %327 = load ptr, ptr %24, align 4
  %328 = getelementptr inbounds %struct.vendor_data, ptr %327, i32 0, i32 6
  %329 = load i8, ptr %328, align 4, !range !8
  %330 = icmp eq i8 %329, 0
  br i1 %330, label %342, label %331

331:                                              ; preds = %326
  %332 = load ptr, ptr %40, align 4
  %333 = getelementptr i8, ptr %332, i32 48
  %334 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %333) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  %335 = load i32, ptr %19, align 4
  %336 = shl nuw i32 1, %335
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %337 = trunc i32 %336 to i16
  %338 = xor i16 %337, -1
  %339 = and i16 %334, %338
  %340 = load ptr, ptr %40, align 4
  %341 = getelementptr i8, ptr %340, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %341, i16 %339) #10, !srcloc !12
  br label %346

342:                                              ; preds = %326
  %343 = load ptr, ptr %23, align 4
  %344 = icmp eq ptr %343, null
  br i1 %344, label %346, label %345

345:                                              ; preds = %342
  tail call void @gpiod_set_value(ptr noundef nonnull %343, i32 noundef 1) #10
  br label %346

346:                                              ; preds = %345, %342, %331, %322
  %347 = load ptr, ptr %9, align 4
  %348 = getelementptr inbounds %struct.spi_transfer, ptr %347, i32 0, i32 2
  %349 = load i32, ptr %348, align 4
  %350 = load ptr, ptr %14, align 4
  %351 = getelementptr inbounds %struct.chip_data, ptr %350, i32 0, i32 4
  %352 = load i8, ptr %351, align 2
  %353 = zext i8 %352 to i32
  %354 = urem i32 %349, %353
  %355 = icmp eq i32 %354, 0
  br i1 %355, label %356, label %379, !prof !30

356:                                              ; preds = %346
  %357 = load ptr, ptr %347, align 4
  %358 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 12
  store ptr %357, ptr %358, align 4
  %359 = load i32, ptr %348, align 4
  %360 = getelementptr i8, ptr %357, i32 %359
  %361 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 13
  store ptr %360, ptr %361, align 4
  %362 = getelementptr inbounds %struct.spi_transfer, ptr %347, i32 0, i32 1
  %363 = load ptr, ptr %362, align 4
  %364 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 14
  store ptr %363, ptr %364, align 4
  %365 = load i32, ptr %348, align 4
  %366 = getelementptr i8, ptr %363, i32 %365
  %367 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 15
  store ptr %366, ptr %367, align 4
  %368 = icmp eq ptr %357, null
  br i1 %368, label %372, label %369

369:                                              ; preds = %356
  %370 = getelementptr inbounds %struct.chip_data, ptr %350, i32 0, i32 7
  %371 = load i32, ptr %370, align 4
  br label %372

372:                                              ; preds = %369, %356
  %373 = phi i32 [ %371, %369 ], [ 0, %356 ]
  %374 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 17
  store i32 %373, ptr %374, align 4
  %375 = icmp eq ptr %363, null
  br i1 %375, label %386, label %376

376:                                              ; preds = %372
  %377 = getelementptr inbounds %struct.chip_data, ptr %350, i32 0, i32 6
  %378 = load i32, ptr %377, align 4
  br label %386

379:                                              ; preds = %346
  %380 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %380, ptr noundef nonnull @.str.41, i32 noundef %349, i32 noundef %353) #11
  %381 = load ptr, ptr %4, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %381, ptr noundef nonnull @.str.42) #11
  %382 = load ptr, ptr %5, align 4
  %383 = getelementptr inbounds %struct.spi_message, ptr %382, i32 0, i32 9
  store ptr inttoptr (i32 -1 to ptr), ptr %383, align 4
  %384 = load ptr, ptr %5, align 4
  %385 = getelementptr inbounds %struct.spi_message, ptr %384, i32 0, i32 7
  store i32 -5, ptr %385, align 4
  tail call fastcc void @giveback(ptr noundef %4) #10
  br label %406

386:                                              ; preds = %376, %372
  %387 = phi i32 [ %378, %376 ], [ 0, %372 ]
  %388 = getelementptr inbounds %struct.pl022, ptr %4, i32 0, i32 16
  store i32 %387, ptr %388, align 4
  %389 = getelementptr inbounds %struct.chip_data, ptr %350, i32 0, i32 5
  %390 = load i8, ptr %389, align 1, !range !8
  %391 = icmp eq i8 %390, 0
  br i1 %391, label %396, label %392

392:                                              ; preds = %386
  %393 = tail call fastcc i32 @configure_dma(ptr noundef %4) #10
  %394 = icmp eq i32 %393, 0
  %395 = select i1 %394, i16 0, i16 11
  br label %396

396:                                              ; preds = %392, %386
  %397 = phi i16 [ 11, %386 ], [ %395, %392 ]
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !41
  tail call void @arm_heavy_mb() #10
  %398 = load ptr, ptr %40, align 4
  %399 = getelementptr i8, ptr %398, i32 4
  %400 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %399) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !42
  %401 = or i16 %400, 2
  %402 = load ptr, ptr %40, align 4
  %403 = getelementptr i8, ptr %402, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %403, i16 %401) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !43
  tail call void @arm_heavy_mb() #10
  %404 = load ptr, ptr %40, align 4
  %405 = getelementptr i8, ptr %404, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %405, i16 %397) #10, !srcloc !12
  br label %406

406:                                              ; preds = %396, %379, %315
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl022_unprepare_transfer_hardware(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !44
  tail call void @arm_heavy_mb() #10
  %4 = getelementptr inbounds %struct.pl022, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %6) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !45
  %8 = and i16 %7, -3
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 %8) #10, !srcloc !12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_request_regions(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_init(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @pump_transfers(i32 noundef %0) #2 {
  %2 = inttoptr i32 %0 to ptr
  %3 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 9
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 9
  %8 = load ptr, ptr %7, align 4
  %9 = ptrtoint ptr %8 to i32
  switch i32 %9, label %48 [
    i32 -1, label %10
    i32 2, label %12
    i32 1, label %14
  ]

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 7
  store i32 -5, ptr %11, align 4
  tail call fastcc void @giveback(ptr noundef %2)
  br label %130

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 7
  store i32 0, ptr %13, align 4
  tail call fastcc void @giveback(ptr noundef %2)
  br label %130

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 18, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 -84
  %18 = getelementptr i8, ptr %16, i32 -38
  %19 = tail call i32 @spi_delay_exec(ptr noundef %18, ptr noundef %17) #10
  %20 = getelementptr i8, ptr %16, i32 -40
  %21 = load i8, ptr %20, align 4
  %22 = and i8 %21, 2
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %49, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 1
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.vendor_data, ptr %26, i32 0, i32 6
  %28 = load i8, ptr %27, align 4, !range !8
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 48
  %34 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %33) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  %35 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 27
  %36 = load i32, ptr %35, align 4
  %37 = shl nuw i32 1, %36
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %38 = trunc i32 %37 to i16
  %39 = xor i16 %38, -1
  %40 = and i16 %34, %39
  %41 = load ptr, ptr %31, align 4
  %42 = getelementptr i8, ptr %41, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 %40) #10, !srcloc !12
  br label %49

43:                                               ; preds = %24
  %44 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 28
  %45 = load ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  tail call void @gpiod_set_value(ptr noundef nonnull %45, i32 noundef 1) #10
  br label %49

48:                                               ; preds = %1
  store ptr inttoptr (i32 1 to ptr), ptr %7, align 4
  br label %49

49:                                               ; preds = %48, %47, %43, %30, %14
  %50 = load ptr, ptr %5, align 4
  %51 = getelementptr inbounds %struct.spi_transfer, ptr %50, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 10
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.chip_data, ptr %54, i32 0, i32 4
  %56 = load i8, ptr %55, align 2
  %57 = zext i8 %56 to i32
  %58 = urem i32 %52, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %83, !prof !30

60:                                               ; preds = %49
  %61 = load ptr, ptr %6, align 4
  %62 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 12
  store ptr %61, ptr %62, align 4
  %63 = load i32, ptr %51, align 4
  %64 = getelementptr i8, ptr %61, i32 %63
  %65 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 13
  store ptr %64, ptr %65, align 4
  %66 = getelementptr inbounds %struct.spi_transfer, ptr %6, i32 0, i32 1
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 14
  store ptr %67, ptr %68, align 4
  %69 = load i32, ptr %51, align 4
  %70 = getelementptr i8, ptr %67, i32 %69
  %71 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 15
  store ptr %70, ptr %71, align 4
  %72 = icmp eq ptr %61, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = getelementptr inbounds %struct.chip_data, ptr %54, i32 0, i32 7
  %75 = load i32, ptr %74, align 4
  br label %76

76:                                               ; preds = %73, %60
  %77 = phi i32 [ %75, %73 ], [ 0, %60 ]
  %78 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 17
  store i32 %77, ptr %78, align 4
  %79 = icmp eq ptr %67, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.chip_data, ptr %54, i32 0, i32 6
  %82 = load i32, ptr %81, align 4
  br label %87

83:                                               ; preds = %49
  %84 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.41, i32 noundef %52, i32 noundef %57) #11
  %85 = load ptr, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %85, ptr noundef nonnull @.str.42) #11
  store ptr inttoptr (i32 -1 to ptr), ptr %7, align 4
  %86 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 7
  store i32 -5, ptr %86, align 4
  tail call fastcc void @giveback(ptr noundef %2)
  br label %130

87:                                               ; preds = %80, %76
  %88 = phi i32 [ %82, %80 ], [ 0, %76 ]
  %89 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 16
  store i32 %88, ptr %89, align 4
  %90 = load i32, ptr @loops_per_jiffy, align 4
  %91 = shl i32 %90, 1
  %92 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 3
  br label %93

93:                                               ; preds = %109, %87
  %94 = phi i32 [ %91, %87 ], [ %115, %109 ]
  %95 = load ptr, ptr %92, align 4
  %96 = getelementptr i8, ptr %95, i32 12
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %96) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %98 = and i16 %97, 4
  %99 = icmp eq i16 %98, 0
  br i1 %99, label %109, label %100

100:                                              ; preds = %100, %93
  %101 = load ptr, ptr %92, align 4
  %102 = getelementptr i8, ptr %101, i32 8
  %103 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %102) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !26
  %104 = load ptr, ptr %92, align 4
  %105 = getelementptr i8, ptr %104, i32 12
  %106 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %105) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !25
  %107 = and i16 %106, 4
  %108 = icmp eq i16 %107, 0
  br i1 %108, label %109, label %100

109:                                              ; preds = %100, %93
  %110 = load ptr, ptr %92, align 4
  %111 = getelementptr i8, ptr %110, i32 12
  %112 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %111) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !27
  %113 = and i16 %112, 16
  %114 = icmp eq i16 %113, 0
  %115 = add i32 %94, -1
  %116 = icmp eq i32 %94, 0
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %118, label %93

118:                                              ; preds = %109
  %119 = getelementptr inbounds %struct.pl022, ptr %2, i32 0, i32 18
  store i32 0, ptr %119, align 4
  %120 = load ptr, ptr %53, align 4
  %121 = getelementptr inbounds %struct.chip_data, ptr %120, i32 0, i32 5
  %122 = load i8, ptr %121, align 1, !range !8
  %123 = icmp eq i8 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %118
  %125 = tail call fastcc i32 @configure_dma(ptr noundef %2)
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %124, %118
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !46
  tail call void @arm_heavy_mb() #10
  %128 = load ptr, ptr %92, align 4
  %129 = getelementptr i8, ptr %128, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %129, i16 11) #10, !srcloc !12
  br label %130

130:                                              ; preds = %127, %124, %83, %12, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @load_ssp_default_config(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.vendor_data, ptr %3, i32 0, i32 4
  %5 = load i8, ptr %4, align 2, !range !8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !47
  tail call void @arm_heavy_mb() #10
  %8 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 651) #10, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !48
  tail call void @arm_heavy_mb() #10
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %11, i16 8) #10, !srcloc !12
  br label %24

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.vendor_data, ptr %3, i32 0, i32 3
  %14 = load i8, ptr %13, align 1, !range !8
  %15 = icmp eq i8 %14, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #10
  tail call void @arm_heavy_mb() #10
  %16 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  br i1 %15, label %21, label %18

18:                                               ; preds = %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 459403) #10, !srcloc !19
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !49
  tail call void @arm_heavy_mb() #10
  %19 = load ptr, ptr %16, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 8) #10, !srcloc !12
  br label %24

21:                                               ; preds = %12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %17, i16 651) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !50
  tail call void @arm_heavy_mb() #10
  %22 = load ptr, ptr %16, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 8) #10, !srcloc !12
  br label %24

24:                                               ; preds = %21, %18, %7
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !51
  tail call void @arm_heavy_mb() #10
  %25 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 36
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %27, i16 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !52
  tail call void @arm_heavy_mb() #10
  %28 = load ptr, ptr %25, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 64) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !53
  tail call void @arm_heavy_mb() #10
  %30 = load ptr, ptr %25, align 4
  %31 = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !54
  tail call void @arm_heavy_mb() #10
  %32 = load ptr, ptr %25, align 4
  %33 = getelementptr i8, ptr %32, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %33, i16 3) #10, !srcloc !12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @pl022_interrupt_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8, !prof !18

6:                                                ; preds = %2
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.48) #11
  br label %123

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 28
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %11) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !55
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %123, label %14, !prof !18

14:                                               ; preds = %8
  %15 = and i16 %12, 1
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %39, label %17, !prof !30

17:                                               ; preds = %14
  %18 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.49) #11
  %19 = load ptr, ptr %9, align 4
  %20 = getelementptr i8, ptr %19, i32 12
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !56
  %22 = and i16 %21, 8
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.50) #11
  br label %26

26:                                               ; preds = %24, %17
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !57
  tail call void @arm_heavy_mb() #10
  %27 = load ptr, ptr %9, align 4
  %28 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !58
  tail call void @arm_heavy_mb() #10
  %29 = load ptr, ptr %9, align 4
  %30 = getelementptr i8, ptr %29, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 3) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !59
  tail call void @arm_heavy_mb() #10
  %31 = load ptr, ptr %9, align 4
  %32 = getelementptr i8, ptr %31, i32 4
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %32) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !60
  %34 = and i16 %33, -3
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %36, i16 %34) #10, !srcloc !12
  %37 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 9
  store ptr inttoptr (i32 -1 to ptr), ptr %37, align 4
  %38 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 7
  tail call fastcc void @tasklet_schedule(ptr noundef %38)
  br label %123

39:                                               ; preds = %14
  tail call fastcc void @readwriter(ptr noundef %1)
  %40 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 12
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 13
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %41, %43
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  %46 = load ptr, ptr %9, align 4
  %47 = getelementptr i8, ptr %46, i32 20
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %47) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !62
  %49 = and i16 %48, -13
  %50 = or i16 %49, 4
  %51 = load ptr, ptr %9, align 4
  %52 = getelementptr i8, ptr %51, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %52, i16 %50) #10, !srcloc !12
  br label %53

53:                                               ; preds = %45, %39
  %54 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 14
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 15
  %57 = load ptr, ptr %56, align 4
  %58 = icmp ult ptr %55, %57
  br i1 %58, label %123, label %59

59:                                               ; preds = %53
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !63
  tail call void @arm_heavy_mb() #10
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr i8, ptr %60, i32 20
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %61, i16 0) #10, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !64
  tail call void @arm_heavy_mb() #10
  %62 = load ptr, ptr %9, align 4
  %63 = getelementptr i8, ptr %62, i32 32
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 3) #10, !srcloc !12
  %64 = load ptr, ptr %54, align 4
  %65 = load ptr, ptr %56, align 4
  %66 = icmp ugt ptr %64, %65
  br i1 %66, label %67, label %72, !prof !18

67:                                               ; preds = %59
  %68 = load ptr, ptr %1, align 4
  %69 = ptrtoint ptr %64 to i32
  %70 = ptrtoint ptr %65 to i32
  %71 = sub i32 %69, %70
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %68, ptr noundef nonnull @.str.51, i32 noundef %71) #11
  br label %72

72:                                               ; preds = %67, %59
  %73 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 9
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr inbounds %struct.spi_transfer, ptr %74, i32 0, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 6
  %78 = load i32, ptr %77, align 4
  %79 = add i32 %78, %76
  store i32 %79, ptr %77, align 4
  %80 = load ptr, ptr %3, align 4
  %81 = load ptr, ptr %73, align 4
  %82 = getelementptr inbounds %struct.spi_transfer, ptr %81, i32 0, i32 18
  %83 = load ptr, ptr %82, align 4
  %84 = icmp eq ptr %83, %80
  br i1 %84, label %85, label %87

85:                                               ; preds = %72
  %86 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 9
  store ptr inttoptr (i32 2 to ptr), ptr %86, align 4
  br label %117

87:                                               ; preds = %72
  %88 = getelementptr i8, ptr %83, i32 -84
  store ptr %88, ptr %73, align 4
  %89 = getelementptr inbounds %struct.spi_message, ptr %4, i32 0, i32 9
  store ptr inttoptr (i32 1 to ptr), ptr %89, align 4
  %90 = load ptr, ptr %73, align 4
  %91 = getelementptr inbounds %struct.spi_transfer, ptr %90, i32 0, i32 7
  %92 = load i8, ptr %91, align 4
  %93 = and i8 %92, 2
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %117, label %95

95:                                               ; preds = %87
  %96 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 1
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.vendor_data, ptr %97, i32 0, i32 6
  %99 = load i8, ptr %98, align 4, !range !8
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %9, align 4
  %103 = getelementptr i8, ptr %102, i32 48
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %103) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  %105 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 27
  %106 = load i32, ptr %105, align 4
  %107 = shl nuw i32 1, %106
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %108 = trunc i32 %107 to i16
  %109 = or i16 %104, %108
  %110 = load ptr, ptr %9, align 4
  %111 = getelementptr i8, ptr %110, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %111, i16 %109) #10, !srcloc !12
  br label %117

112:                                              ; preds = %95
  %113 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 28
  %114 = load ptr, ptr %113, align 4
  %115 = icmp eq ptr %114, null
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void @gpiod_set_value(ptr noundef nonnull %114, i32 noundef 0) #10
  br label %117

117:                                              ; preds = %116, %112, %101, %87, %85
  %118 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 7, i32 1
  %119 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %118) #10
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %117
  %122 = getelementptr inbounds %struct.pl022, ptr %1, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %122) #10
  br label %123

123:                                              ; preds = %121, %117, %53, %26, %8, %6
  %124 = phi i32 [ 1, %6 ], [ 1, %26 ], [ 0, %8 ], [ 1, %53 ], [ 1, %117 ], [ 1, %121 ]
  ret i32 %124
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl022_dma_autoprobe(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = tail call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull @.str.52) #10
  %4 = icmp ugt ptr %3, inttoptr (i32 -4096 to ptr)
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = ptrtoint ptr %3 to i32
  br label %24

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 21
  store ptr %3, ptr %8, align 4
  %9 = tail call ptr @dma_request_chan(ptr noundef %2, ptr noundef nonnull @.str.53) #10
  %10 = icmp ugt ptr %9, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = ptrtoint ptr %9 to i32
  br label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 22
  store ptr %9, ptr %14, align 4
  %15 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %16 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 4096) #12
  %17 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 25
  store ptr %16, ptr %17, align 4
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load ptr, ptr %14, align 4
  tail call void @dma_release_channel(ptr noundef %20) #10
  store ptr null, ptr %14, align 4
  br label %21

21:                                               ; preds = %19, %11
  %22 = phi i32 [ %12, %11 ], [ -12, %19 ]
  %23 = load ptr, ptr %8, align 4
  tail call void @dma_release_channel(ptr noundef %23) #10
  store ptr null, ptr %8, align 4
  br label %24

24:                                               ; preds = %21, %13, %5
  %25 = phi i32 [ 0, %13 ], [ %6, %5 ], [ %22, %21 ]
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pl022_dma_probe(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.dma_cap_mask_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #10
  store i32 0, ptr %2, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %2) #10
  %3 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 6
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %4, i32 0, i32 3
  %8 = load ptr, ptr %7, align 4
  %9 = call ptr @__dma_request_channel(ptr noundef nonnull %2, ptr noundef %6, ptr noundef %8, ptr noundef null) #10
  %10 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 21
  store ptr %9, ptr %10, align 4
  %11 = icmp eq ptr %9, null
  br i1 %11, label %54, label %12

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %13, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pl022_ssp_controller, ptr %13, i32 0, i32 4
  %17 = load ptr, ptr %16, align 4
  %18 = call ptr @__dma_request_channel(ptr noundef nonnull %2, ptr noundef %15, ptr noundef %17, ptr noundef null) #10
  %19 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 22
  store ptr %18, ptr %19, align 4
  %20 = icmp eq ptr %18, null
  br i1 %20, label %52, label %21

21:                                               ; preds = %12
  %22 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %23 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3264, i32 noundef 4096) #12
  %24 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 25
  store ptr %23, ptr %24, align 4
  %25 = icmp eq ptr %23, null
  br i1 %25, label %50, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %0, align 4
  %28 = load ptr, ptr %10, align 4
  %29 = getelementptr inbounds %struct.dma_chan, ptr %28, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = getelementptr inbounds %struct.dma_chan_dev, ptr %30, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  br label %37

37:                                               ; preds = %34, %26
  %38 = phi ptr [ %36, %34 ], [ %32, %26 ]
  %39 = load ptr, ptr %19, align 4
  %40 = getelementptr inbounds %struct.dma_chan, ptr %39, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %48

45:                                               ; preds = %37
  %46 = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  br label %48

48:                                               ; preds = %45, %37
  %49 = phi ptr [ %47, %45 ], [ %43, %37 ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %27, ptr noundef nonnull @.str.54, ptr noundef %38, ptr noundef %49) #11
  br label %56

50:                                               ; preds = %21
  %51 = load ptr, ptr %19, align 4
  call void @dma_release_channel(ptr noundef %51) #10
  br label %52

52:                                               ; preds = %50, %12
  %53 = load ptr, ptr %10, align 4
  call void @dma_release_channel(ptr noundef %53) #10
  store ptr null, ptr %10, align 4
  br label %54

54:                                               ; preds = %52, %1
  %55 = load ptr, ptr %0, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %55, ptr noundef nonnull @.str.55) #11
  br label %56

56:                                               ; preds = %54, %48
  %57 = phi i32 [ 0, %48 ], [ -19, %54 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #10
  ret i32 %57
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_spi_register_controller(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @pl022_dma_remove(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 26
  %3 = load i8, ptr %2, align 4, !range !8
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 21
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 22
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 47
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  %15 = tail call i32 %12(ptr noundef %7) #10
  br label %16

16:                                               ; preds = %14, %5
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 47
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = tail call i32 %19(ptr noundef %9) #10
  br label %23

23:                                               ; preds = %21, %16
  %24 = load ptr, ptr %8, align 4
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.dma_device, ptr %25, i32 0, i32 15
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 24
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 24, i32 1
  %31 = load i32, ptr %30, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %27, ptr noundef %29, i32 noundef %31, i32 noundef 1, i32 noundef 0) #10
  %32 = load ptr, ptr %6, align 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 15
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 23
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 23, i32 1
  %39 = load i32, ptr %38, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %35, ptr noundef %37, i32 noundef %39, i32 noundef 2, i32 noundef 0) #10
  tail call void @sg_free_table(ptr noundef %36) #10
  tail call void @sg_free_table(ptr noundef %28) #10
  store i8 0, ptr %2, align 4
  br label %40

40:                                               ; preds = %23, %1
  %41 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 22
  %42 = load ptr, ptr %41, align 4
  %43 = icmp eq ptr %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  tail call void @dma_release_channel(ptr noundef nonnull %42) #10
  br label %45

45:                                               ; preds = %44, %40
  %46 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 21
  %47 = load ptr, ptr %46, align 4
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %45
  tail call void @dma_release_channel(ptr noundef nonnull %47) #10
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 25
  %52 = load ptr, ptr %51, align 4
  tail call void @kfree(ptr noundef %52) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_release_regions(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__spi_alloc_controller(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #6

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @readwriter(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 14
  %3 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 12
  %6 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %5) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !65
  %7 = and i16 %6, 4
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %54, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 15
  %11 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 16
  %12 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 10
  %13 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 18
  br label %14

14:                                               ; preds = %40, %9
  %15 = load ptr, ptr %2, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = icmp ult ptr %15, %16
  br i1 %17, label %18, label %54

18:                                               ; preds = %14
  %19 = load i32, ptr %11, align 4
  switch i32 %19, label %40 [
    i32 0, label %20
    i32 1, label %24
    i32 2, label %30
    i32 3, label %35
  ]

20:                                               ; preds = %18
  %21 = load ptr, ptr %3, align 4
  %22 = getelementptr i8, ptr %21, i32 8
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !66
  br label %40

24:                                               ; preds = %18
  %25 = load ptr, ptr %3, align 4
  %26 = getelementptr i8, ptr %25, i32 8
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %26) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !67
  %28 = trunc i16 %27 to i8
  %29 = load ptr, ptr %2, align 4
  store i8 %28, ptr %29, align 1
  br label %40

30:                                               ; preds = %18
  %31 = load ptr, ptr %3, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  %33 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %32) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !68
  %34 = load ptr, ptr %2, align 4
  store i16 %33, ptr %34, align 2
  br label %40

35:                                               ; preds = %18
  %36 = load ptr, ptr %3, align 4
  %37 = getelementptr i8, ptr %36, i32 8
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %37) #10, !srcloc !33
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !69
  %39 = load ptr, ptr %2, align 4
  store i32 %38, ptr %39, align 4
  br label %40

40:                                               ; preds = %35, %30, %24, %20, %18
  %41 = load ptr, ptr %12, align 4
  %42 = getelementptr inbounds %struct.chip_data, ptr %41, i32 0, i32 4
  %43 = load i8, ptr %42, align 2
  %44 = zext i8 %43 to i32
  %45 = load ptr, ptr %2, align 4
  %46 = getelementptr i8, ptr %45, i32 %44
  store ptr %46, ptr %2, align 4
  %47 = load i32, ptr %13, align 4
  %48 = add i32 %47, -1
  store i32 %48, ptr %13, align 4
  %49 = load ptr, ptr %3, align 4
  %50 = getelementptr i8, ptr %49, i32 12
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %50) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !65
  %52 = and i16 %51, 4
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %54, label %14

54:                                               ; preds = %40, %14, %1
  %55 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 12
  %56 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 18
  %57 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 1
  %58 = load i32, ptr %56, align 4
  %59 = load ptr, ptr %57, align 4
  %60 = load i32, ptr %59, align 4
  %61 = icmp ult i32 %58, %60
  br i1 %61, label %62, label %152

62:                                               ; preds = %54
  %63 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 13
  %64 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 17
  %65 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 10
  %66 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 15
  %67 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 16
  br label %68

68:                                               ; preds = %147, %62
  %69 = load ptr, ptr %55, align 4
  %70 = load ptr, ptr %63, align 4
  %71 = icmp ult ptr %69, %70
  br i1 %71, label %72, label %152

72:                                               ; preds = %68
  %73 = load i32, ptr %64, align 4
  switch i32 %73, label %93 [
    i32 0, label %74
    i32 1, label %77
    i32 2, label %83
    i32 3, label %88
  ]

74:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !70
  tail call void @arm_heavy_mb() #10
  %75 = load ptr, ptr %3, align 4
  %76 = getelementptr i8, ptr %75, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 0) #10, !srcloc !12
  br label %93

77:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !71
  tail call void @arm_heavy_mb() #10
  %78 = load ptr, ptr %55, align 4
  %79 = load i8, ptr %78, align 1
  %80 = zext i8 %79 to i16
  %81 = load ptr, ptr %3, align 4
  %82 = getelementptr i8, ptr %81, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %82, i16 %80) #10, !srcloc !12
  br label %93

83:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !72
  tail call void @arm_heavy_mb() #10
  %84 = load ptr, ptr %55, align 4
  %85 = load i16, ptr %84, align 2
  %86 = load ptr, ptr %3, align 4
  %87 = getelementptr i8, ptr %86, i32 8
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %87, i16 %85) #10, !srcloc !12
  br label %93

88:                                               ; preds = %72
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !73
  tail call void @arm_heavy_mb() #10
  %89 = load ptr, ptr %55, align 4
  %90 = load i32, ptr %89, align 4
  %91 = load ptr, ptr %3, align 4
  %92 = getelementptr i8, ptr %91, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 %90) #10, !srcloc !19
  br label %93

93:                                               ; preds = %88, %83, %77, %74, %72
  %94 = load ptr, ptr %65, align 4
  %95 = getelementptr inbounds %struct.chip_data, ptr %94, i32 0, i32 4
  %96 = load i8, ptr %95, align 2
  %97 = zext i8 %96 to i32
  %98 = load ptr, ptr %55, align 4
  %99 = getelementptr i8, ptr %98, i32 %97
  store ptr %99, ptr %55, align 4
  %100 = load i32, ptr %56, align 4
  %101 = add i32 %100, 1
  store i32 %101, ptr %56, align 4
  %102 = load ptr, ptr %3, align 4
  %103 = getelementptr i8, ptr %102, i32 12
  %104 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %103) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !74
  %105 = and i16 %104, 4
  %106 = icmp eq i16 %105, 0
  br i1 %106, label %147, label %107

107:                                              ; preds = %133, %93
  %108 = load ptr, ptr %2, align 4
  %109 = load ptr, ptr %66, align 4
  %110 = icmp ult ptr %108, %109
  br i1 %110, label %111, label %147

111:                                              ; preds = %107
  %112 = load i32, ptr %67, align 4
  switch i32 %112, label %133 [
    i32 0, label %113
    i32 1, label %117
    i32 2, label %123
    i32 3, label %128
  ]

113:                                              ; preds = %111
  %114 = load ptr, ptr %3, align 4
  %115 = getelementptr i8, ptr %114, i32 8
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %115) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !75
  br label %133

117:                                              ; preds = %111
  %118 = load ptr, ptr %3, align 4
  %119 = getelementptr i8, ptr %118, i32 8
  %120 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %119) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !76
  %121 = trunc i16 %120 to i8
  %122 = load ptr, ptr %2, align 4
  store i8 %121, ptr %122, align 1
  br label %133

123:                                              ; preds = %111
  %124 = load ptr, ptr %3, align 4
  %125 = getelementptr i8, ptr %124, i32 8
  %126 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %125) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !77
  %127 = load ptr, ptr %2, align 4
  store i16 %126, ptr %127, align 2
  br label %133

128:                                              ; preds = %111
  %129 = load ptr, ptr %3, align 4
  %130 = getelementptr i8, ptr %129, i32 8
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #10, !srcloc !33
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !78
  %132 = load ptr, ptr %2, align 4
  store i32 %131, ptr %132, align 4
  br label %133

133:                                              ; preds = %128, %123, %117, %113, %111
  %134 = load ptr, ptr %65, align 4
  %135 = getelementptr inbounds %struct.chip_data, ptr %134, i32 0, i32 4
  %136 = load i8, ptr %135, align 2
  %137 = zext i8 %136 to i32
  %138 = load ptr, ptr %2, align 4
  %139 = getelementptr i8, ptr %138, i32 %137
  store ptr %139, ptr %2, align 4
  %140 = load i32, ptr %56, align 4
  %141 = add i32 %140, -1
  store i32 %141, ptr %56, align 4
  %142 = load ptr, ptr %3, align 4
  %143 = getelementptr i8, ptr %142, i32 12
  %144 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %143) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !74
  %145 = and i16 %144, 4
  %146 = icmp eq i16 %145, 0
  br i1 %146, label %147, label %107

147:                                              ; preds = %133, %107, %93
  %148 = load i32, ptr %56, align 4
  %149 = load ptr, ptr %57, align 4
  %150 = load i32, ptr %149, align 4
  %151 = icmp ult i32 %148, %150
  br i1 %151, label %68, label %152

152:                                              ; preds = %147, %68, %54
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @giveback(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 11
  store i8 0, ptr %2, align 4
  %3 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %6, i32 -84
  %8 = getelementptr i8, ptr %6, i32 -38
  %9 = tail call i32 @spi_delay_exec(ptr noundef %8, ptr noundef %7) #10
  %10 = getelementptr i8, ptr %6, i32 -40
  %11 = load i8, ptr %10, align 4
  %12 = and i8 %11, 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %54

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = tail call ptr @spi_get_next_queued_message(ptr noundef %16) #10
  %18 = icmp eq ptr %17, null
  br i1 %18, label %30, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.spi_message, ptr %17, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load ptr, ptr %3, align 4
  %23 = getelementptr inbounds %struct.spi_message, ptr %22, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %21, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct.spi_message, ptr %22, i32 0, i32 9
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, inttoptr (i32 -1 to ptr)
  br i1 %29, label %30, label %53

30:                                               ; preds = %26, %19, %14
  %31 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.vendor_data, ptr %32, i32 0, i32 6
  %34 = load i8, ptr %33, align 4, !range !8
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %48, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr i8, ptr %38, i32 48
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %39) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  %41 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 27
  %42 = load i32, ptr %41, align 4
  %43 = shl nuw i32 1, %42
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %44 = trunc i32 %43 to i16
  %45 = or i16 %40, %44
  %46 = load ptr, ptr %37, align 4
  %47 = getelementptr i8, ptr %46, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %47, i16 %45) #10, !srcloc !12
  br label %54

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 28
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, null
  br i1 %51, label %54, label %52

52:                                               ; preds = %48
  tail call void @gpiod_set_value(ptr noundef nonnull %50, i32 noundef 0) #10
  br label %54

53:                                               ; preds = %26
  store i8 1, ptr %2, align 4
  br label %54

54:                                               ; preds = %53, %52, %48, %36, %1
  store ptr null, ptr %3, align 4
  %55 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 9
  store ptr null, ptr %55, align 4
  %56 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 10
  store ptr null, ptr %56, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !79
  tail call void @arm_heavy_mb() #10
  %57 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 3
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr i8, ptr %58, i32 4
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %59) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !80
  %61 = and i16 %60, -3
  %62 = load ptr, ptr %57, align 4
  %63 = getelementptr i8, ptr %62, i32 4
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %63, i16 %61) #10, !srcloc !12
  %64 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 5
  %65 = load ptr, ptr %64, align 4
  tail call void @spi_finalize_current_message(ptr noundef %65) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @spi_delay_exec(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @spi_get_next_queued_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @spi_finalize_current_message(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @configure_dma(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.dma_slave_config, align 4
  %3 = alloca %struct.dma_slave_config, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %2) #10
  %4 = getelementptr inbounds i8, ptr %2, i32 8
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(40) %4, i8 0, i64 40, i1 false)
  store i32 2, ptr %2, align 4
  %5 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 1
  %6 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = add i32 %7, 8
  store i32 %8, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %3) #10
  %9 = getelementptr inbounds i8, ptr %3, i32 4
  call void @llvm.memset.p0.i64(ptr noundef align 4 dereferenceable(44) %9, i8 0, i64 44, i1 false)
  store i32 1, ptr %3, align 4
  %10 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 2
  store i32 %8, ptr %10, align 4
  %11 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 21
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 22
  %14 = load ptr, ptr %13, align 4
  %15 = icmp ne ptr %12, null
  %16 = icmp ne ptr %14, null
  %17 = select i1 %15, i1 %16, i1 false
  br i1 %17, label %18, label %205

18:                                               ; preds = %1
  %19 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 19
  %20 = load i32, ptr %19, align 4
  %21 = icmp ult i32 %20, 5
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load i32, ptr %24, align 4
  %26 = ashr i32 %25, 1
  br label %30

27:                                               ; preds = %18
  %28 = getelementptr inbounds [5 x i32], ptr @switch.table.configure_dma.56, i32 0, i32 %20
  %29 = load i32, ptr %28, align 4
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i32 [ %26, %22 ], [ %29, %27 ]
  %32 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 5
  store i32 %31, ptr %32, align 4
  %33 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 20
  %34 = load i32, ptr %33, align 4
  %35 = icmp ult i32 %34, 5
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = load i32, ptr %38, align 4
  %40 = ashr i32 %39, 1
  br label %44

41:                                               ; preds = %30
  %42 = getelementptr inbounds [5 x i32], ptr @switch.table.configure_dma.56, i32 0, i32 %34
  %43 = load i32, ptr %42, align 4
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi i32 [ %40, %36 ], [ %43, %41 ]
  %46 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 6
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 16
  %48 = load i32, ptr %47, align 4
  switch i32 %48, label %56 [
    i32 0, label %52
    i32 1, label %49
    i32 2, label %50
    i32 3, label %51
  ]

49:                                               ; preds = %44
  br label %52

50:                                               ; preds = %44
  br label %52

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %50, %49, %44
  %53 = phi i32 [ 4, %51 ], [ %48, %50 ], [ %48, %49 ], [ %48, %44 ]
  %54 = phi i1 [ false, %51 ], [ false, %50 ], [ false, %49 ], [ true, %44 ]
  %55 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 %53, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %44
  %57 = phi i1 [ true, %44 ], [ %54, %52 ]
  %58 = phi i32 [ 0, %44 ], [ %53, %52 ]
  %59 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 17
  %60 = load i32, ptr %59, align 4
  switch i32 %60, label %68 [
    i32 0, label %64
    i32 1, label %61
    i32 2, label %62
    i32 3, label %63
  ]

61:                                               ; preds = %56
  br label %64

62:                                               ; preds = %56
  br label %64

63:                                               ; preds = %56
  br label %64

64:                                               ; preds = %63, %62, %61, %56
  %65 = phi i32 [ 4, %63 ], [ %60, %62 ], [ %60, %61 ], [ %60, %56 ]
  %66 = phi i1 [ false, %63 ], [ false, %62 ], [ false, %61 ], [ true, %56 ]
  %67 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 %65, ptr %67, align 4
  br label %68

68:                                               ; preds = %64, %56
  %69 = phi i1 [ true, %56 ], [ %66, %64 ]
  %70 = phi i32 [ 0, %56 ], [ %65, %64 ]
  br i1 %57, label %71, label %73

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.dma_slave_config, ptr %2, i32 0, i32 3
  store i32 %70, ptr %72, align 4
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i32 [ %70, %71 ], [ %58, %68 ]
  br i1 %69, label %75, label %77

75:                                               ; preds = %73
  %76 = getelementptr inbounds %struct.dma_slave_config, ptr %3, i32 0, i32 4
  store i32 %74, ptr %76, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi i32 [ %70, %73 ], [ %74, %75 ]
  %79 = icmp eq i32 %74, %78
  br i1 %79, label %81, label %80, !prof !30

80:                                               ; preds = %77
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/spi/spi-pl022.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1020, 0\0A.popsection", ""() #10, !srcloc !81
  unreachable

81:                                               ; preds = %77
  %82 = load ptr, ptr %12, align 4
  %83 = getelementptr inbounds %struct.dma_device, ptr %82, i32 0, i32 44
  %84 = load ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = call i32 %84(ptr noundef nonnull %12, ptr noundef nonnull %2) #10
  br label %88

88:                                               ; preds = %86, %81
  %89 = load ptr, ptr %14, align 4
  %90 = getelementptr inbounds %struct.dma_device, ptr %89, i32 0, i32 44
  %91 = load ptr, ptr %90, align 4
  %92 = icmp eq ptr %91, null
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = call i32 %91(ptr noundef nonnull %14, ptr noundef nonnull %3) #10
  br label %95

95:                                               ; preds = %93, %88
  %96 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 9
  %97 = load ptr, ptr %96, align 4
  %98 = getelementptr inbounds %struct.spi_transfer, ptr %97, i32 0, i32 2
  %99 = load i32, ptr %98, align 4
  %100 = add i32 %99, 4095
  %101 = lshr i32 %100, 12
  %102 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 23
  %103 = call i32 @sg_alloc_table(ptr noundef %102, i32 noundef %101, i32 noundef 2592) #10
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %205

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 24
  %107 = call i32 @sg_alloc_table(ptr noundef %106, i32 noundef %101, i32 noundef 2592) #10
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %204

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 14
  %111 = load ptr, ptr %110, align 4
  %112 = load ptr, ptr %96, align 4
  %113 = getelementptr inbounds %struct.spi_transfer, ptr %112, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  call fastcc void @setup_dma_scatter(ptr noundef %0, ptr noundef %111, i32 noundef %114, ptr noundef %102)
  %115 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 12
  %116 = load ptr, ptr %115, align 4
  %117 = load ptr, ptr %96, align 4
  %118 = getelementptr inbounds %struct.spi_transfer, ptr %117, i32 0, i32 2
  %119 = load i32, ptr %118, align 4
  call fastcc void @setup_dma_scatter(ptr noundef %0, ptr noundef %116, i32 noundef %119, ptr noundef %106)
  %120 = load ptr, ptr %12, align 4
  %121 = getelementptr inbounds %struct.dma_device, ptr %120, i32 0, i32 15
  %122 = load ptr, ptr %121, align 4
  %123 = load ptr, ptr %102, align 4
  %124 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 23, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = call i32 @dma_map_sg_attrs(ptr noundef %122, ptr noundef %123, i32 noundef %125, i32 noundef 2, i32 noundef 0) #10
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %203, label %128

128:                                              ; preds = %109
  %129 = load ptr, ptr %14, align 4
  %130 = getelementptr inbounds %struct.dma_device, ptr %129, i32 0, i32 15
  %131 = load ptr, ptr %130, align 4
  %132 = load ptr, ptr %106, align 4
  %133 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 24, i32 1
  %134 = load i32, ptr %133, align 4
  %135 = call i32 @dma_map_sg_attrs(ptr noundef %131, ptr noundef %132, i32 noundef %134, i32 noundef 1, i32 noundef 0) #10
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %197, label %137

137:                                              ; preds = %128
  %138 = load ptr, ptr %102, align 4
  %139 = load ptr, ptr %12, align 4
  %140 = icmp eq ptr %139, null
  br i1 %140, label %184, label %141

141:                                              ; preds = %137
  %142 = getelementptr inbounds %struct.dma_device, ptr %139, i32 0, i32 39
  %143 = load ptr, ptr %142, align 4
  %144 = icmp eq ptr %143, null
  br i1 %144, label %184, label %145

145:                                              ; preds = %141
  %146 = call ptr %143(ptr noundef nonnull %12, ptr noundef %138, i32 noundef %126, i32 noundef 2, i32 noundef 3, ptr noundef null) #10
  %147 = icmp eq ptr %146, null
  br i1 %147, label %184, label %148

148:                                              ; preds = %145
  %149 = load ptr, ptr %106, align 4
  %150 = load ptr, ptr %14, align 4
  %151 = icmp eq ptr %150, null
  br i1 %151, label %177, label %152

152:                                              ; preds = %148
  %153 = getelementptr inbounds %struct.dma_device, ptr %150, i32 0, i32 39
  %154 = load ptr, ptr %153, align 4
  %155 = icmp eq ptr %154, null
  br i1 %155, label %177, label %156

156:                                              ; preds = %152
  %157 = call ptr %154(ptr noundef nonnull %14, ptr noundef %149, i32 noundef %135, i32 noundef 1, i32 noundef 3, ptr noundef null) #10
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load ptr, ptr %14, align 4
  br label %177

161:                                              ; preds = %156
  %162 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %146, i32 0, i32 6
  store ptr @dma_callback, ptr %162, align 4
  %163 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %146, i32 0, i32 8
  store ptr %0, ptr %163, align 4
  %164 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %146, i32 0, i32 4
  %165 = load ptr, ptr %164, align 4
  %166 = call i32 %165(ptr noundef nonnull %146) #10
  %167 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %157, i32 0, i32 4
  %168 = load ptr, ptr %167, align 4
  %169 = call i32 %168(ptr noundef nonnull %157) #10
  %170 = load ptr, ptr %12, align 4
  %171 = getelementptr inbounds %struct.dma_device, ptr %170, i32 0, i32 50
  %172 = load ptr, ptr %171, align 4
  call void %172(ptr noundef nonnull %12) #10
  %173 = load ptr, ptr %14, align 4
  %174 = getelementptr inbounds %struct.dma_device, ptr %173, i32 0, i32 50
  %175 = load ptr, ptr %174, align 4
  call void %175(ptr noundef nonnull %14) #10
  %176 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 26
  store i8 1, ptr %176, align 4
  br label %205

177:                                              ; preds = %159, %152, %148
  %178 = phi ptr [ %160, %159 ], [ null, %148 ], [ %150, %152 ]
  %179 = getelementptr inbounds %struct.dma_device, ptr %178, i32 0, i32 47
  %180 = load ptr, ptr %179, align 4
  %181 = icmp eq ptr %180, null
  br i1 %181, label %184, label %182

182:                                              ; preds = %177
  %183 = call i32 %180(ptr noundef nonnull %14) #10
  br label %184

184:                                              ; preds = %182, %177, %145, %141, %137
  %185 = load ptr, ptr %12, align 4
  %186 = getelementptr inbounds %struct.dma_device, ptr %185, i32 0, i32 47
  %187 = load ptr, ptr %186, align 4
  %188 = icmp eq ptr %187, null
  br i1 %188, label %191, label %189

189:                                              ; preds = %184
  %190 = call i32 %187(ptr noundef nonnull %12) #10
  br label %191

191:                                              ; preds = %189, %184
  %192 = load ptr, ptr %14, align 4
  %193 = getelementptr inbounds %struct.dma_device, ptr %192, i32 0, i32 15
  %194 = load ptr, ptr %193, align 4
  %195 = load ptr, ptr %106, align 4
  %196 = load i32, ptr %133, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %194, ptr noundef %195, i32 noundef %196, i32 noundef 1, i32 noundef 0) #10
  br label %197

197:                                              ; preds = %191, %128
  %198 = load ptr, ptr %12, align 4
  %199 = getelementptr inbounds %struct.dma_device, ptr %198, i32 0, i32 15
  %200 = load ptr, ptr %199, align 4
  %201 = load ptr, ptr %102, align 4
  %202 = load i32, ptr %124, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %200, ptr noundef %201, i32 noundef %202, i32 noundef 2, i32 noundef 0) #10
  br label %203

203:                                              ; preds = %197, %109
  call void @sg_free_table(ptr noundef %106) #10
  br label %204

204:                                              ; preds = %203, %105
  call void @sg_free_table(ptr noundef %102) #10
  br label %205

205:                                              ; preds = %204, %161, %95, %1
  %206 = phi i32 [ 0, %161 ], [ -19, %1 ], [ -12, %95 ], [ -12, %204 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %2) #10
  ret i32 %206
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_alloc_table(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @setup_dma_scatter(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) unnamed_addr #2 {
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds %struct.sg_table, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %5, label %41, label %9

9:                                                ; preds = %4
  br i1 %8, label %71, label %10

10:                                               ; preds = %9
  %11 = load ptr, ptr %3, align 4
  br label %12

12:                                               ; preds = %26, %10
  %13 = phi i32 [ %37, %26 ], [ 0, %10 ]
  %14 = phi ptr [ %35, %26 ], [ %1, %10 ]
  %15 = phi i32 [ %36, %26 ], [ %2, %10 ]
  %16 = phi ptr [ %38, %26 ], [ %11, %10 ]
  %17 = ptrtoint ptr %14 to i32
  %18 = load ptr, ptr @mem_map, align 4
  %19 = add i32 %17, 1073741824
  %20 = lshr i32 %19, 12
  %21 = getelementptr %struct.page, ptr %18, i32 %20
  %22 = ptrtoint ptr %21 to i32
  %23 = and i32 %22, 3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !30

25:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

26:                                               ; preds = %12
  %27 = and i32 %17, 4095
  %28 = sub nuw nsw i32 4096, %27
  %29 = tail call i32 @llvm.umin.i32(i32 %15, i32 %28)
  %30 = load i32, ptr %16, align 4
  %31 = and i32 %30, 3
  %32 = or i32 %31, %22
  store i32 %32, ptr %16, align 4
  %33 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 1
  store i32 %27, ptr %33, align 4
  %34 = getelementptr inbounds %struct.scatterlist, ptr %16, i32 0, i32 2
  store i32 %29, ptr %34, align 4
  %35 = getelementptr i8, ptr %14, i32 %29
  %36 = sub i32 %15, %29
  %37 = add nuw i32 %13, 1
  %38 = tail call ptr @sg_next(ptr noundef %16) #10
  %39 = load i32, ptr %6, align 4
  %40 = icmp ult i32 %37, %39
  br i1 %40, label %12, label %71

41:                                               ; preds = %4
  br i1 %8, label %71, label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 25
  br label %45

45:                                               ; preds = %59, %42
  %46 = phi i32 [ 0, %42 ], [ %67, %59 ]
  %47 = phi i32 [ %2, %42 ], [ %66, %59 ]
  %48 = phi ptr [ %43, %42 ], [ %68, %59 ]
  %49 = load ptr, ptr @mem_map, align 4
  %50 = load ptr, ptr %44, align 4
  %51 = ptrtoint ptr %50 to i32
  %52 = add i32 %51, 1073741824
  %53 = lshr i32 %52, 12
  %54 = getelementptr %struct.page, ptr %49, i32 %53
  %55 = ptrtoint ptr %54 to i32
  %56 = and i32 %55, 3
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %59, label %58, !prof !30

58:                                               ; preds = %45
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #10, !srcloc !82
  unreachable

59:                                               ; preds = %45
  %60 = tail call i32 @llvm.umin.i32(i32 %47, i32 4096)
  %61 = load i32, ptr %48, align 4
  %62 = and i32 %61, 3
  %63 = or i32 %62, %55
  store i32 %63, ptr %48, align 4
  %64 = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 1
  store i32 0, ptr %64, align 4
  %65 = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 2
  store i32 %60, ptr %65, align 4
  %66 = sub i32 %47, %60
  %67 = add nuw i32 %46, 1
  %68 = tail call ptr @sg_next(ptr noundef %48) #10
  %69 = load i32, ptr %6, align 4
  %70 = icmp ult i32 %67, %69
  br i1 %70, label %45, label %71

71:                                               ; preds = %59, %41, %26, %9
  %72 = phi i32 [ %2, %41 ], [ %2, %9 ], [ %66, %59 ], [ %36, %26 ]
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74, !prof !30

74:                                               ; preds = %71
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/spi/spi-pl022.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 904, 0\0A.popsection", ""() #10, !srcloc !83
  unreachable

75:                                               ; preds = %71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_callback(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 23
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %6, !prof !18

5:                                                ; preds = %1
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/spi/spi-pl022.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 805, 0\0A.popsection", ""() #10, !srcloc !84
  unreachable

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 8
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 22
  %10 = load ptr, ptr %9, align 4
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.dma_device, ptr %11, i32 0, i32 15
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 24
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 24, i32 1
  %17 = load i32, ptr %16, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %13, ptr noundef %15, i32 noundef %17, i32 noundef 1, i32 noundef 0) #10
  %18 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 21
  %19 = load ptr, ptr %18, align 4
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 15
  %22 = load ptr, ptr %21, align 4
  %23 = load ptr, ptr %2, align 4
  %24 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 23, i32 1
  %25 = load i32, ptr %24, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %22, ptr noundef %23, i32 noundef %25, i32 noundef 2, i32 noundef 0) #10
  tail call void @sg_free_table(ptr noundef %2) #10
  tail call void @sg_free_table(ptr noundef %14) #10
  %26 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 9
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.spi_transfer, ptr %27, i32 0, i32 2
  %29 = load i32, ptr %28, align 4
  %30 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 6
  %31 = load i32, ptr %30, align 4
  %32 = add i32 %31, %29
  store i32 %32, ptr %30, align 4
  %33 = load ptr, ptr %7, align 4
  %34 = load ptr, ptr %26, align 4
  %35 = getelementptr inbounds %struct.spi_transfer, ptr %34, i32 0, i32 18
  %36 = load ptr, ptr %35, align 4
  %37 = icmp eq ptr %36, %33
  br i1 %37, label %38, label %40

38:                                               ; preds = %6
  %39 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 9
  store ptr inttoptr (i32 2 to ptr), ptr %39, align 4
  br label %71

40:                                               ; preds = %6
  %41 = getelementptr i8, ptr %36, i32 -84
  store ptr %41, ptr %26, align 4
  %42 = getelementptr inbounds %struct.spi_message, ptr %8, i32 0, i32 9
  store ptr inttoptr (i32 1 to ptr), ptr %42, align 4
  %43 = load ptr, ptr %26, align 4
  %44 = getelementptr inbounds %struct.spi_transfer, ptr %43, i32 0, i32 7
  %45 = load i8, ptr %44, align 4
  %46 = and i8 %45, 2
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %71, label %48

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.vendor_data, ptr %50, i32 0, i32 6
  %52 = load i8, ptr %51, align 4, !range !8
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 48
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %57) #10, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #10, !srcloc !28
  %59 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 27
  %60 = load i32, ptr %59, align 4
  %61 = shl nuw i32 1, %60
  tail call void asm sideeffect "dsb st", "~{memory}"() #10, !srcloc !29
  tail call void @arm_heavy_mb() #10
  %62 = trunc i32 %61 to i16
  %63 = or i16 %58, %62
  %64 = load ptr, ptr %55, align 4
  %65 = getelementptr i8, ptr %64, i32 48
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %65, i16 %63) #10, !srcloc !12
  br label %71

66:                                               ; preds = %48
  %67 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 28
  %68 = load ptr, ptr %67, align 4
  %69 = icmp eq ptr %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @gpiod_set_value(ptr noundef nonnull %68, i32 noundef 0) #10
  br label %71

71:                                               ; preds = %70, %66, %54, %40, %38
  %72 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 7, i32 1
  %73 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %72) #10
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.pl022, ptr %0, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %76) #10
  br label %77

77:                                               ; preds = %75, %71
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_free_table(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @tasklet_schedule(ptr noundef %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.tasklet_struct, ptr %0, i32 0, i32 1
  %3 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %2) #10
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  tail call void @__tasklet_schedule(ptr noundef %0) #10
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_unlock_wait(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

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
!9 = !{i64 2153971385}
!10 = !{i64 3760289}
!11 = !{i64 2153971908}
!12 = !{i64 3760089}
!13 = !{i64 620866, i64 2148110837, i64 2148110863, i64 2148110910, i64 2148110932, i64 2148110960, i64 2148110980}
!14 = !{i64 2148122252, i64 2148122278, i64 2148122307, i64 2148122341, i64 2148122372, i64 2148122395}
!15 = !{i64 2151561369}
!16 = !{i64 2151561959}
!17 = !{!"auto-init"}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{i64 3760709}
!20 = !{i64 2153873945}
!21 = !{i64 2153874325}
!22 = !{i64 2153874708}
!23 = !{i64 2153875111}
!24 = !{i64 2153875479}
!25 = !{i64 2153872157}
!26 = !{i64 2153872559}
!27 = !{i64 2153872948}
!28 = !{i64 2153867502}
!29 = !{i64 2153867898}
!30 = !{!"branch_weights", i32 2000, i32 1}
!31 = !{i64 2153933522}
!32 = !{i64 2153934041}
!33 = !{i64 3761127}
!34 = !{i64 2153926417}
!35 = !{i64 2153926806}
!36 = !{i64 2153927195}
!37 = !{i64 2153927584}
!38 = !{i64 2153927973}
!39 = !{i64 2153935819}
!40 = !{i64 2153935661}
!41 = !{i64 2153925115}
!42 = !{i64 2153925634}
!43 = !{i64 2153925880}
!44 = !{i64 2153938320}
!45 = !{i64 2153938845}
!46 = !{i64 2153922991}
!47 = !{i64 2153876578}
!48 = !{i64 2153878820}
!49 = !{i64 2153884166}
!50 = !{i64 2153887948}
!51 = !{i64 2153888997}
!52 = !{i64 2153889695}
!53 = !{i64 2153890168}
!54 = !{i64 2153890536}
!55 = !{i64 2153911323}
!56 = !{i64 2153912319}
!57 = !{i64 2153913097}
!58 = !{i64 2153913465}
!59 = !{i64 2153914434}
!60 = !{i64 2153914960}
!61 = !{i64 2153915863}
!62 = !{i64 2153916408}
!63 = !{i64 2153916704}
!64 = !{i64 2153917072}
!65 = !{i64 2153891888}
!66 = !{i64 2153892290}
!67 = !{i64 2153892679}
!68 = !{i64 2153893068}
!69 = !{i64 2153893457}
!70 = !{i64 2153893679}
!71 = !{i64 2153894055}
!72 = !{i64 2153894466}
!73 = !{i64 2153894881}
!74 = !{i64 2153895442}
!75 = !{i64 2153895844}
!76 = !{i64 2153896233}
!77 = !{i64 2153896622}
!78 = !{i64 2153897011}
!79 = !{i64 2153870725}
!80 = !{i64 2153871250}
!81 = !{i64 2153904529, i64 2153905018, i64 2153904566, i64 2153904622, i64 2153904656, i64 2153904680, i64 2153904721, i64 2153904742, i64 2153904770, i64 2153904804}
!82 = !{i64 2152916020, i64 2152916512, i64 2152916057, i64 2152916113, i64 2152916147, i64 2152916171, i64 2152916212, i64 2152916233, i64 2152916261, i64 2152916295}
!83 = !{i64 2153903370, i64 2153903858, i64 2153903407, i64 2153903463, i64 2153903497, i64 2153903521, i64 2153903562, i64 2153903583, i64 2153903611, i64 2153903645}
!84 = !{i64 2153899178, i64 2153899666, i64 2153899215, i64 2153899271, i64 2153899305, i64 2153899329, i64 2153899370, i64 2153899391, i64 2153899419, i64 2153899453}
