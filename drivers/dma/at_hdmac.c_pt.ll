; ModuleID = '/llk/IR/drivers/dma/at_hdmac.c_pt.bc'
source_filename = "../drivers/dma/at_hdmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.at_dma_platform_data = type { i32, %struct.dma_cap_mask_t }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.at_dma = type { %struct.dma_device, ptr, ptr, i32, i8, ptr, ptr, [0 x %struct.at_dma_chan] }
%struct.at_dma_chan = type { %struct.dma_chan, ptr, ptr, i8, i8, i8, i32, %struct.tasklet_struct, i32, i32, %struct.dma_slave_config, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.at_dma_slave = type { ptr, i32 }
%struct.at_desc = type { %struct.at_lli, %struct.list_head, %struct.dma_async_tx_descriptor, %struct.list_head, i32, i32, i32, i32, i32, i8, i32, ptr }
%struct.at_lli = type { i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__param_str_init_nr_desc_per_channel = internal constant [34 x i8] c"at_hdmac.init_nr_desc_per_channel\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@init_nr_desc_per_channel = internal global i32 64, align 4
@__param_init_nr_desc_per_channel = internal constant %struct.kernel_param { ptr @__param_str_init_nr_desc_per_channel, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @init_nr_desc_per_channel } }, section "__param", align 4
@__UNIQUE_ID_init_nr_desc_per_channeltype228 = internal constant [48 x i8] c"at_hdmac.parmtype=init_nr_desc_per_channel:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_init_nr_desc_per_channel229 = internal constant [85 x i8] c"at_hdmac.parm=init_nr_desc_per_channel:initial descriptors per channel (default: 64)\00", section ".modinfo", align 1
@__initcall__kmod_at_hdmac__232_2170_at_dma_init4 = internal global ptr @at_dma_init, section ".initcall4.init", align 4
@at_dma_driver = internal global %struct.platform_driver { ptr null, ptr @at_dma_remove, ptr @at_dma_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str.1, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_dma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at_dma_dev_pm_ops, ptr null, ptr null }, ptr @atdma_devtypes, i8 0 }, align 4
@__exitcall_at_dma_exit = internal global ptr @at_dma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description233 = internal constant [53 x i8] c"at_hdmac.description=Atmel AHB DMA Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author234 = internal constant [56 x i8] c"at_hdmac.author=Nicolas Ferre <nicolas.ferre@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [35 x i8] c"at_hdmac.file=drivers/dma/at_hdmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [21 x i8] c"at_hdmac.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias237 = internal constant [33 x i8] c"at_hdmac.alias=platform:at_hdmac\00", section ".modinfo", align 1
@at91sam9rl_config = internal global %struct.at_dma_platform_data { i32 2, %struct.dma_cap_mask_t zeroinitializer }, align 4
@at91sam9g45_config = internal global %struct.at_dma_platform_data { i32 8, %struct.dma_cap_mask_t zeroinitializer }, align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str = private unnamed_addr constant [8 x i8] c"dma_clk\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"at_hdmac\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"at_hdmac_desc_pool\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"No memory for descriptors dma pool\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"at_hdmac_memset_pool\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"No memory for memset dma pool\0A\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"Atmel AHB DMA Controller ( %s%s%s), %d channels\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"cpy \00", align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"set \00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"slave \00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"could not register of_dma_controller\0A\00", align 1
@atmel_dma_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9rl-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9rl_config }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at91sam9g45_config }, %struct.of_device_id zeroinitializer], align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.12 = private unnamed_addr constant [35 x i8] c"Bad descriptor submitted for DMA!\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"  cookie: %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [42 x i8] c"BUG: Attempted to start non-idle channel\0A\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"  channel: s0x%x d0x%x ctrl0x%x:0x%x l0x%x\0A\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"desc: s%pad d%pad ctrl0x%x:0x%x l%pad\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Only %d initial descriptors\0A\00", align 1
@.str.18 = private unnamed_addr constant [62 x i8] c"%s: src=%pad, dest=%pad, numf=%d, frame_size=%d, flags=0x%lx\0A\00", align 1
@__func__.atc_prep_dma_interleaved = private unnamed_addr constant [25 x i8] c"atc_prep_dma_interleaved\00", align 1
@.str.19 = private unnamed_addr constant [55 x i8] c"%s: the controller can transfer only identical chunks\0A\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"%s: buffer is too big\0A\00", align 1
@.str.21 = private unnamed_addr constant [38 x i8] c"%s: couldn't allocate our descriptor\0A\00", align 1
@.str.22 = private unnamed_addr constant [30 x i8] c"%s: couldn't allocate buffer\0A\00", align 1
@__func__.atc_prep_dma_memset = private unnamed_addr constant [20 x i8] c"atc_prep_dma_memset\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"%s: couldn't get a descriptor\0A\00", align 1
@__func__.atc_create_memset_desc = private unnamed_addr constant [23 x i8] c"atc_create_memset_desc\00", align 1
@.str.24 = private unnamed_addr constant [28 x i8] c"%s: can't get a descriptor\0A\00", align 1
@__func__.atc_prep_dma_memset_sg = private unnamed_addr constant [23 x i8] c"atc_prep_dma_memset_sg\00", align 1
@.str.25 = private unnamed_addr constant [27 x i8] c"%s: buffer is not aligned\0A\00", align 1
@.str.26 = private unnamed_addr constant [34 x i8] c"not enough descriptors available\0A\00", align 1
@at_dma_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr @at_dma_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at_dma_suspend_noirq, ptr @at_dma_resume_noirq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@atdma_devtypes = internal constant [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"at91sam9rl_dma\00\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9rl_config to i32) }, %struct.platform_device_id { [20 x i8] c"at91sam9g45_dma\00\00\00\00\00", i32 ptrtoint (ptr @at91sam9g45_config to i32) }, %struct.platform_device_id zeroinitializer], align 4
@.str.27 = private unnamed_addr constant [59 x i8] c"cyclic channel not paused, should be done by channel user\0A\00", align 1
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_author234, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_init_nr_desc_per_channel229, ptr @__UNIQUE_ID_init_nr_desc_per_channeltype228, ptr @__UNIQUE_ID_license236, ptr @__exitcall_at_dma_exit, ptr @__initcall__kmod_at_hdmac__232_2170_at_dma_init4, ptr @__param_init_nr_desc_per_channel, ptr @at_dma_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at_dma_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @at_dma_driver, ptr noundef nonnull @at_dma_probe, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @at_dma_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at_dma_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at_dma_probe(ptr noundef %0) #0 section ".init.text" {
  tail call void @_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9rl_config, i32 0, i32 1)) #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #12
  tail call void @_set_bit(i32 noundef 6, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #12
  tail call void @_set_bit(i32 noundef 7, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #12
  tail call void @_set_bit(i32 noundef 9, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #12
  tail call void @_set_bit(i32 noundef 11, ptr noundef getelementptr inbounds (%struct.at_dma_platform_data, ptr @at91sam9g45_config, i32 0, i32 1)) #12
  %2 = tail call fastcc ptr @at_dma_get_driver_data(ptr noundef %0) #13
  %3 = icmp eq ptr %2, null
  br i1 %3, label %205, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %205, label %7

7:                                                ; preds = %4
  %8 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %205, label %10

10:                                               ; preds = %7
  %11 = load i32, ptr %2, align 4
  %12 = mul i32 %11, 188
  %13 = add i32 %12, 276
  %14 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %13, i32 noundef 3520) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %205, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 6
  %18 = getelementptr inbounds %struct.at_dma_platform_data, ptr %2, i32 0, i32 1
  %19 = load i32, ptr %18, align 4
  store i32 %19, ptr %17, align 8
  %20 = load i32, ptr %2, align 4
  %21 = shl nsw i32 -1, %20
  %22 = trunc i32 %21 to i8
  %23 = xor i8 %22, -1
  %24 = getelementptr inbounds %struct.at_dma, ptr %14, i32 0, i32 4
  store i8 %23, ptr %24, align 8
  %25 = getelementptr inbounds %struct.resource, ptr %5, i32 0, i32 1
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %5, align 4
  %28 = add i32 %26, 1
  %29 = sub i32 %28, %27
  %30 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %31 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %32, align 4
  %34 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %27, i32 noundef %29, ptr noundef %33, i32 noundef 0) #12
  %35 = icmp eq ptr %34, null
  br i1 %35, label %203, label %36

36:                                               ; preds = %16
  %37 = load i32, ptr %5, align 4
  %38 = tail call ptr @ioremap(i32 noundef %37, i32 noundef %29) #12
  %39 = getelementptr inbounds %struct.at_dma, ptr %14, i32 0, i32 1
  store ptr %38, ptr %39, align 4
  %40 = icmp eq ptr %38, null
  br i1 %40, label %200, label %41

41:                                               ; preds = %36
  %42 = tail call ptr @clk_get(ptr noundef %30, ptr noundef nonnull @.str) #12
  %43 = getelementptr inbounds %struct.at_dma, ptr %14, i32 0, i32 2
  store ptr %42, ptr %43, align 64
  %44 = icmp ugt ptr %42, inttoptr (i32 -4096 to ptr)
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = ptrtoint ptr %42 to i32
  br label %197

47:                                               ; preds = %41
  %48 = tail call i32 @clk_prepare(ptr noundef %42) #12
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %194

50:                                               ; preds = %47
  %51 = tail call i32 @clk_enable(ptr noundef %42) #12
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %191

53:                                               ; preds = %50
  tail call fastcc void @at_dma_off(ptr noundef nonnull %14)
  %54 = tail call i32 @request_threaded_irq(i32 noundef %8, ptr noundef nonnull @at_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.1, ptr noundef nonnull %14) #12
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %188

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %14, ptr %57, align 8
  %58 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.2, ptr noundef %30, i32 noundef 128, i32 noundef 4, i32 noundef 0) #12
  %59 = getelementptr inbounds %struct.at_dma, ptr %14, i32 0, i32 5
  store ptr %58, ptr %59, align 4
  %60 = icmp eq ptr %58, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.3) #15
  br label %184

62:                                               ; preds = %56
  %63 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.4, ptr noundef %30, i32 noundef 4, i32 noundef 4, i32 noundef 0) #12
  %64 = getelementptr inbounds %struct.at_dma, ptr %14, i32 0, i32 6
  store ptr %63, ptr %64, align 16
  %65 = icmp eq ptr %63, null
  br i1 %65, label %71, label %66

66:                                               ; preds = %62
  %67 = load ptr, ptr %39, align 4
  %68 = getelementptr i8, ptr %67, i32 36
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #12, !srcloc !8
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %77, label %72

71:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.5) #15
  br label %181

72:                                               ; preds = %72, %66
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !10
  %73 = load ptr, ptr %39, align 4
  %74 = getelementptr i8, ptr %73, i32 36
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %74) #12, !srcloc !8
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %72

77:                                               ; preds = %72, %66
  %78 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 3
  store volatile ptr %78, ptr %78, align 4
  %79 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 3, i32 1
  store ptr %78, ptr %79, align 16
  %80 = load i32, ptr %2, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %116, label %82

82:                                               ; preds = %82, %77
  %83 = phi i32 [ %113, %82 ], [ 0, %77 ]
  %84 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83
  %85 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 5
  store i8 0, ptr %85, align 2
  %86 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 4
  store i8 1, ptr %86, align 1
  store ptr %14, ptr %84, align 4
  %87 = getelementptr inbounds %struct.dma_chan, ptr %84, i32 0, i32 2
  store i32 1, ptr %87, align 4
  %88 = getelementptr inbounds %struct.dma_chan, ptr %84, i32 0, i32 3
  store i32 1, ptr %88, align 4
  %89 = getelementptr inbounds %struct.dma_chan, ptr %84, i32 0, i32 8
  %90 = load ptr, ptr %79, align 16
  store ptr %89, ptr %79, align 16
  store ptr %78, ptr %89, align 4
  %91 = getelementptr inbounds %struct.dma_chan, ptr %84, i32 0, i32 8, i32 1
  store ptr %90, ptr %91, align 4
  store volatile ptr %89, ptr %90, align 4
  %92 = load ptr, ptr %39, align 4
  %93 = mul i32 %83, 40
  %94 = add i32 %93, 60
  %95 = getelementptr i8, ptr %92, i32 %94
  %96 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 2
  store ptr %95, ptr %96, align 4
  %97 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 11
  store i32 0, ptr %97, align 4
  %98 = shl nuw i32 1, %83
  %99 = trunc i32 %98 to i8
  %100 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 3
  store i8 %99, ptr %100, align 4
  %101 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 12
  store volatile ptr %101, ptr %101, align 4
  %102 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 12, i32 1
  store ptr %101, ptr %102, align 4
  %103 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 13
  store volatile ptr %103, ptr %103, align 4
  %104 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 13, i32 1
  store ptr %103, ptr %104, align 4
  %105 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 14
  store volatile ptr %105, ptr %105, align 4
  %106 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 14, i32 1
  store ptr %105, ptr %106, align 4
  %107 = getelementptr %struct.at_dma, ptr %14, i32 0, i32 7, i32 %83, i32 7
  tail call void @tasklet_setup(ptr noundef %107, ptr noundef nonnull @atc_tasklet) #12
  %108 = add i32 %83, 16
  %109 = shl nuw i32 1, %108
  %110 = or i32 %109, %98
  %111 = load ptr, ptr %39, align 4
  %112 = getelementptr i8, ptr %111, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %110) #12, !srcloc !11
  %113 = add nuw i32 %83, 1
  %114 = load i32, ptr %2, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %82, label %116

116:                                              ; preds = %82, %77
  %117 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 27
  store ptr @atc_alloc_chan_resources, ptr %117, align 16
  %118 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 29
  store ptr @atc_free_chan_resources, ptr %118, align 8
  %119 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 49
  store ptr @atc_tx_status, ptr %119, align 8
  %120 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 50
  store ptr @atc_issue_pending, ptr %120, align 4
  %121 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 15
  store ptr %30, ptr %121, align 8
  %122 = load volatile i32, ptr %17, align 8
  %123 = and i32 %122, 8192
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %116
  %126 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 41
  store ptr @atc_prep_dma_interleaved, ptr %126, align 8
  br label %127

127:                                              ; preds = %125, %116
  %128 = load volatile i32, ptr %17, align 8
  %129 = and i32 %128, 1
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %127
  %132 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 30
  store ptr @atc_prep_dma_memcpy, ptr %132, align 4
  br label %133

133:                                              ; preds = %131, %127
  %134 = load volatile i32, ptr %17, align 8
  %135 = and i32 %134, 64
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %141, label %137

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 36
  store ptr @atc_prep_dma_memset, ptr %138, align 4
  %139 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 37
  store ptr @atc_prep_dma_memset_sg, ptr %139, align 8
  %140 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 13
  store i32 2, ptr %140, align 64
  br label %141

141:                                              ; preds = %137, %133
  %142 = load volatile i32, ptr %17, align 8
  %143 = and i32 %142, 2048
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %141
  %146 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 39
  store ptr @atc_prep_slave_sg, ptr %146, align 64
  tail call void @_set_bit(i32 noundef 12, ptr noundef %17) #12
  %147 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 40
  store ptr @atc_prep_dma_cyclic, ptr %147, align 4
  %148 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 44
  store ptr @atc_config, ptr %148, align 4
  %149 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 45
  store ptr @atc_pause, ptr %149, align 8
  %150 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 46
  store ptr @atc_resume, ptr %150, align 4
  %151 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 47
  store ptr @atc_terminate_all, ptr %151, align 32
  %152 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 19
  store i32 23, ptr %152, align 16
  %153 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 20
  store i32 23, ptr %153, align 4
  %154 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 21
  store i32 6, ptr %154, align 8
  %155 = getelementptr inbounds %struct.dma_device, ptr %14, i32 0, i32 26
  store i32 2, ptr %155, align 4
  br label %156

156:                                              ; preds = %145, %141
  %157 = load ptr, ptr %39, align 4
  %158 = getelementptr i8, ptr %157, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 1) #12, !srcloc !11
  %159 = load volatile i32, ptr %17, align 8
  %160 = and i32 %159, 1
  %161 = icmp eq i32 %160, 0
  %162 = select i1 %161, ptr @.str.8, ptr @.str.7
  %163 = load volatile i32, ptr %17, align 8
  %164 = and i32 %163, 64
  %165 = icmp eq i32 %164, 0
  %166 = select i1 %165, ptr @.str.8, ptr @.str.9
  %167 = load volatile i32, ptr %17, align 8
  %168 = and i32 %167, 2048
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, ptr @.str.8, ptr @.str.10
  %171 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.6, ptr noundef nonnull %162, ptr noundef nonnull %166, ptr noundef nonnull %170, i32 noundef %171) #15
  %172 = tail call i32 @dma_async_device_register(ptr noundef nonnull %14) #12
  %173 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %174 = load ptr, ptr %173, align 8
  %175 = icmp eq ptr %174, null
  br i1 %175, label %205, label %176

176:                                              ; preds = %156
  %177 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %174, ptr noundef nonnull @at_dma_xlate, ptr noundef nonnull %14) #12
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %205, label %179

179:                                              ; preds = %176
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.11) #15
  tail call void @dma_async_device_unregister(ptr noundef nonnull %14) #12
  %180 = load ptr, ptr %64, align 16
  tail call void @dma_pool_destroy(ptr noundef %180) #12
  br label %181

181:                                              ; preds = %179, %71
  %182 = phi i32 [ %177, %179 ], [ -12, %71 ]
  %183 = load ptr, ptr %59, align 4
  tail call void @dma_pool_destroy(ptr noundef %183) #12
  br label %184

184:                                              ; preds = %181, %61
  %185 = phi i32 [ %182, %181 ], [ -12, %61 ]
  %186 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %187 = tail call ptr @free_irq(i32 noundef %186, ptr noundef nonnull %14) #12
  br label %188

188:                                              ; preds = %184, %53
  %189 = phi i32 [ %54, %53 ], [ %185, %184 ]
  %190 = load ptr, ptr %43, align 64
  tail call void @clk_disable(ptr noundef %190) #12
  br label %191

191:                                              ; preds = %188, %50
  %192 = phi ptr [ %190, %188 ], [ %42, %50 ]
  %193 = phi i32 [ %189, %188 ], [ %51, %50 ]
  tail call void @clk_unprepare(ptr noundef %192) #12
  br label %194

194:                                              ; preds = %191, %47
  %195 = phi i32 [ %48, %47 ], [ %193, %191 ]
  %196 = load ptr, ptr %43, align 64
  tail call void @clk_put(ptr noundef %196) #12
  br label %197

197:                                              ; preds = %194, %45
  %198 = phi i32 [ %46, %45 ], [ %195, %194 ]
  %199 = load ptr, ptr %39, align 4
  tail call void @iounmap(ptr noundef %199) #12
  store ptr null, ptr %39, align 4
  br label %200

200:                                              ; preds = %197, %36
  %201 = phi i32 [ %198, %197 ], [ -12, %36 ]
  %202 = load i32, ptr %5, align 4
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %202, i32 noundef %29) #12
  br label %203

203:                                              ; preds = %200, %16
  %204 = phi i32 [ %201, %200 ], [ -16, %16 ]
  tail call void @kfree(ptr noundef nonnull %14) #12
  br label %205

205:                                              ; preds = %203, %176, %156, %10, %7, %4, %1
  %206 = phi i32 [ %204, %203 ], [ -19, %1 ], [ -22, %4 ], [ %8, %7 ], [ -12, %10 ], [ 0, %176 ], [ 0, %156 ]
  ret i32 %206
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc ptr @at_dma_get_driver_data(ptr nocapture noundef readonly %0) unnamed_addr #3 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = tail call ptr @of_match_node(ptr noundef nonnull @atmel_dma_dt_ids, ptr noundef nonnull %3) #12
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.of_device_id, ptr %6, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  br label %17

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 8
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.platform_device_id, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = inttoptr i32 %15 to ptr
  br label %17

17:                                               ; preds = %11, %8, %5
  %18 = phi ptr [ %16, %11 ], [ %10, %8 ], [ null, %5 ]
  ret ptr %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at_dma_off(ptr nocapture noundef readonly %0) unnamed_addr #5 {
  %2 = getelementptr inbounds %struct.at_dma, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 0) #12, !srcloc !11
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #12, !srcloc !11
  %7 = load ptr, ptr %2, align 4
  %8 = getelementptr i8, ptr %7, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !8
  %10 = getelementptr inbounds %struct.at_dma, ptr %0, i32 0, i32 4
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %15, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !13
  %16 = load ptr, ptr %2, align 4
  %17 = getelementptr i8, ptr %16, i32 48
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #12, !srcloc !8
  %19 = load i8, ptr %10, align 4
  %20 = zext i8 %19 to i32
  %21 = and i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %15

23:                                               ; preds = %15, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_dma_interrupt(i32 noundef %0, ptr noundef %1) #5 {
  %3 = getelementptr inbounds %struct.at_dma, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 32
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #12, !srcloc !8
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !8
  %10 = and i32 %9, %6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %62, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 1
  br label %24

14:                                               ; preds = %57, %24
  %15 = phi i32 [ %26, %24 ], [ %58, %57 ]
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 32
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #12, !srcloc !8
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #12, !srcloc !8
  %22 = and i32 %21, %18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %62, label %24

24:                                               ; preds = %14, %12
  %25 = phi i32 [ %10, %12 ], [ %22, %14 ]
  %26 = phi i32 [ 0, %12 ], [ %15, %14 ]
  %27 = load i32, ptr %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %14, label %29

29:                                               ; preds = %57, %24
  %30 = phi i32 [ %58, %57 ], [ %26, %24 ]
  %31 = phi i32 [ %59, %57 ], [ 0, %24 ]
  %32 = shl nuw i32 1, %31
  %33 = add i32 %31, 16
  %34 = shl nuw i32 1, %33
  %35 = or i32 %34, %32
  %36 = and i32 %35, %25
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %57, label %38

38:                                               ; preds = %29
  %39 = and i32 %34, %25
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = add i32 %31, 8
  %43 = shl nuw i32 1, %42
  %44 = getelementptr %struct.at_dma, ptr %1, i32 0, i32 7, i32 %31, i32 3
  %45 = load i8, ptr %44, align 4
  %46 = zext i8 %45 to i32
  %47 = or i32 %43, %46
  %48 = load ptr, ptr %3, align 4
  %49 = getelementptr i8, ptr %48, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %49, i32 %47) #12, !srcloc !11
  %50 = getelementptr %struct.at_dma, ptr %1, i32 0, i32 7, i32 %31, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %50) #12
  br label %51

51:                                               ; preds = %41, %38
  %52 = getelementptr %struct.at_dma, ptr %1, i32 0, i32 7, i32 %31, i32 7, i32 1
  %53 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %52) #12
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = getelementptr %struct.at_dma, ptr %1, i32 0, i32 7, i32 %31, i32 7
  tail call void @__tasklet_schedule(ptr noundef %56) #12
  br label %57

57:                                               ; preds = %55, %51, %29
  %58 = phi i32 [ %30, %29 ], [ 1, %51 ], [ 1, %55 ]
  %59 = add nuw i32 %31, 1
  %60 = load i32, ptr %13, align 4
  %61 = icmp ult i32 %59, %60
  br i1 %61, label %29, label %14

62:                                               ; preds = %14, %2
  %63 = phi i32 [ 0, %2 ], [ %15, %14 ]
  ret i32 %63
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atc_tasklet(ptr noundef %0) #5 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = getelementptr i8, ptr %0, i32 -80
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = tail call i32 @_test_and_clear_bit(i32 noundef 0, ptr noundef %4) #12
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %66, label %7

7:                                                ; preds = %1
  %8 = getelementptr i8, ptr %0, i32 80
  %9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #12
  %10 = getelementptr i8, ptr %0, i32 84
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 -88
  %13 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = load ptr, ptr %11, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %14, ptr %16, align 4
  store volatile ptr %15, ptr %14, align 4
  store volatile ptr %11, ptr %11, align 4
  store ptr %11, ptr %13, align 4
  %17 = getelementptr i8, ptr %0, i32 92
  %18 = getelementptr i8, ptr %0, i32 88
  %19 = load ptr, ptr %18, align 4
  %20 = load volatile ptr, ptr %17, align 4
  %21 = icmp eq ptr %20, %17
  br i1 %21, label %28, label %22

22:                                               ; preds = %7
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr i8, ptr %0, i32 96
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %26, align 4
  store ptr %20, ptr %19, align 4
  store ptr %23, ptr %25, align 4
  %27 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  store ptr %25, ptr %27, align 4
  store volatile ptr %17, ptr %17, align 4
  store ptr %17, ptr %24, align 4
  br label %28

28:                                               ; preds = %22, %7
  %29 = load volatile ptr, ptr %10, align 4
  %30 = icmp eq ptr %29, %10
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr i8, ptr %29, i32 -88
  tail call fastcc void @atc_dostart(ptr noundef %3, ptr noundef %32) #12
  br label %33

33:                                               ; preds = %31, %28
  %34 = getelementptr i8, ptr %0, i32 -60
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.dma_chan_dev, ptr %35, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %36, ptr noundef nonnull @.str.12) #15
  %37 = load ptr, ptr %34, align 4
  %38 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  %39 = getelementptr i8, ptr %11, i32 -60
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %38, ptr noundef nonnull @.str.13, i32 noundef %40) #15
  %41 = load ptr, ptr %34, align 4
  %42 = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  %43 = getelementptr i8, ptr %11, i32 -84
  %44 = getelementptr i8, ptr %11, i32 -80
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr i8, ptr %11, i32 -76
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr i8, ptr %11, i32 -72
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %42, ptr noundef nonnull @.str.16, ptr noundef %12, ptr noundef %43, i32 noundef %45, i32 noundef %47, ptr noundef %48) #15
  %49 = getelementptr i8, ptr %11, i32 -68
  %50 = load ptr, ptr %49, align 4
  %51 = icmp eq ptr %50, %49
  br i1 %51, label %65, label %52

52:                                               ; preds = %52, %33
  %53 = phi ptr [ %63, %52 ], [ %50, %33 ]
  %54 = getelementptr i8, ptr %53, i32 -88
  %55 = load ptr, ptr %34, align 4
  %56 = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1
  %57 = getelementptr i8, ptr %53, i32 -84
  %58 = getelementptr i8, ptr %53, i32 -80
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr i8, ptr %53, i32 -76
  %61 = load i32, ptr %60, align 4
  %62 = getelementptr i8, ptr %53, i32 -72
  tail call void (ptr, ptr, ...) @_dev_crit(ptr noundef %56, ptr noundef nonnull @.str.16, ptr noundef %54, ptr noundef %57, i32 noundef %59, i32 noundef %61, ptr noundef %62) #15
  %63 = load ptr, ptr %53, align 4
  %64 = icmp eq ptr %63, %49
  br i1 %64, label %65, label %52

65:                                               ; preds = %52, %33
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %9) #12
  tail call fastcc void @atc_chain_complete(ptr noundef %3, ptr noundef %12) #12
  br label %86

66:                                               ; preds = %1
  %67 = load volatile i32, ptr %4, align 4
  %68 = and i32 %67, 16777216
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %85, label %70

70:                                               ; preds = %66
  %71 = getelementptr i8, ptr %0, i32 84
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr i8, ptr %72, i32 -36
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %72, i32 -32
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr i8, ptr %72, i32 -28
  %78 = load ptr, ptr %77, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store i64 0, ptr %2, align 8
  %79 = icmp eq ptr %76, null
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  call void %76(ptr noundef %78, ptr noundef nonnull %2) #12
  br label %84

81:                                               ; preds = %70
  %82 = icmp eq ptr %74, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %81
  tail call void %74(ptr noundef %78) #12
  br label %84

84:                                               ; preds = %83, %81, %80
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %86

85:                                               ; preds = %66
  tail call fastcc void @atc_advance_work(ptr noundef %3)
  br label %86

86:                                               ; preds = %85, %84, %65
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atc_alloc_chan_resources(ptr noundef %0) #5 {
  %2 = alloca i32, align 4
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !8
  %8 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = and i32 %7, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %71

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 14
  %15 = load volatile ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %17, label %71

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 4
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24, !prof !14

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %22, %26
  br i1 %27, label %29, label %28, !prof !15

28:                                               ; preds = %24, %21
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/at_hdmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1582, 0\0A.popsection", ""() #12, !srcloc !16
  unreachable

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.at_dma_slave, ptr %19, i32 0, i32 1
  %31 = load i32, ptr %30, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 268435456, i32 %31
  br label %34

34:                                               ; preds = %29, %17
  %35 = phi i32 [ 268435456, %17 ], [ %33, %29 ]
  %36 = load i32, ptr @init_nr_desc_per_channel, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %64, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 14, i32 1
  br label %40

40:                                               ; preds = %50, %38
  %41 = phi i32 [ 0, %38 ], [ %61, %50 ]
  %42 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !17
  %43 = getelementptr inbounds %struct.at_dma, ptr %42, i32 0, i32 5
  %44 = load ptr, ptr %43, align 4
  %45 = call ptr @dma_pool_alloc(ptr noundef %44, i32 noundef 3520, ptr noundef nonnull %2) #12
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %48 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %49 = load ptr, ptr %48, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.17, i32 noundef %41) #15
  br label %64

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.at_desc, ptr %45, i32 0, i32 1
  store volatile ptr %51, ptr %51, align 4
  %52 = getelementptr inbounds %struct.at_desc, ptr %45, i32 0, i32 1, i32 1
  store ptr %51, ptr %52, align 4
  %53 = getelementptr inbounds %struct.at_desc, ptr %45, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %53, ptr noundef %0) #12
  %54 = getelementptr inbounds %struct.at_desc, ptr %45, i32 0, i32 2, i32 1
  store i32 2, ptr %54, align 4
  %55 = getelementptr inbounds %struct.at_desc, ptr %45, i32 0, i32 2, i32 4
  store ptr @atc_tx_submit, ptr %55, align 4
  %56 = load i32, ptr %2, align 4
  %57 = getelementptr inbounds %struct.at_desc, ptr %45, i32 0, i32 2, i32 2
  store i32 %56, ptr %57, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  %58 = getelementptr inbounds %struct.at_desc, ptr %45, i32 0, i32 3
  %59 = load ptr, ptr %39, align 4
  store ptr %58, ptr %39, align 4
  store ptr %14, ptr %58, align 4
  %60 = getelementptr inbounds %struct.at_desc, ptr %45, i32 0, i32 3, i32 1
  store ptr %59, ptr %60, align 4
  store volatile ptr %58, ptr %59, align 4
  %61 = add nuw i32 %41, 1
  %62 = load i32, ptr @init_nr_desc_per_channel, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %40, label %64

64:                                               ; preds = %50, %47, %34
  %65 = phi i32 [ %41, %47 ], [ 0, %34 ], [ %61, %50 ]
  %66 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  store i32 1, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  store i32 1, ptr %67, align 4
  %68 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 2
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr i8, ptr %69, i32 20
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %35) #12, !srcloc !11
  br label %71

71:                                               ; preds = %64, %13, %1
  %72 = phi i32 [ %65, %64 ], [ -5, %1 ], [ -5, %13 ]
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atc_free_chan_resources(ptr noundef %0) #5 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %4, align 4
  %5 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 12
  %6 = load volatile ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %9, label %8, !prof !15

8:                                                ; preds = %1
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/at_hdmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1623, 0\0A.popsection", ""() #12, !srcloc !18
  unreachable

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 13
  %11 = load volatile ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %14, label %13, !prof !15

13:                                               ; preds = %9
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/at_hdmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1624, 0\0A.popsection", ""() #12, !srcloc !19
  unreachable

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 48
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #12, !srcloc !8
  %19 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 3
  %20 = load i8, ptr %19, align 4
  %21 = zext i8 %20 to i32
  %22 = and i32 %18, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %25, label %24, !prof !15

24:                                               ; preds = %14
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/at_hdmac.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1625, 0\0A.popsection", ""() #12, !srcloc !20
  unreachable

25:                                               ; preds = %14
  %26 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 14
  %27 = load ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %42, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 5
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi ptr [ %27, %29 ], [ %34, %31 ]
  %33 = getelementptr i8, ptr %32, i32 -88
  %34 = load ptr, ptr %32, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %36, ptr %37, align 4
  store volatile ptr %34, ptr %36, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %35, align 4
  %38 = load ptr, ptr %30, align 4
  %39 = getelementptr i8, ptr %32, i32 -52
  %40 = load i32, ptr %39, align 4
  call void @dma_pool_free(ptr noundef %38, ptr noundef %33, i32 noundef %40) #12
  %41 = icmp eq ptr %34, %26
  br i1 %41, label %42, label %31

42:                                               ; preds = %31, %25
  %43 = load volatile ptr, ptr %26, align 4
  %44 = icmp eq ptr %43, %26
  br i1 %44, label %51, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 14, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %2, ptr %49, align 4
  store ptr %43, ptr %2, align 8
  store ptr %46, ptr %48, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %26, ptr %26, align 4
  store ptr %26, ptr %47, align 4
  br label %51

51:                                               ; preds = %45, %42
  %52 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 6
  store i32 0, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  %54 = load ptr, ptr %53, align 4
  call void @kfree(ptr noundef %54) #12
  store ptr null, ptr %53, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atc_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #5 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !21
  %8 = icmp eq ptr %2, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %3
  store i32 %7, ptr %2, align 4
  %10 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %5, ptr %10, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %12, align 4
  br label %13

13:                                               ; preds = %9, %3
  %14 = icmp sgt i32 %7, %5
  %15 = icmp sge i32 %7, %1
  %16 = icmp slt i32 %5, %1
  br i1 %14, label %21, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  %19 = or i1 %8, %18
  %20 = select i1 %18, i32 0, i32 3
  br i1 %19, label %203, label %25

21:                                               ; preds = %13
  %22 = and i1 %16, %15
  %23 = or i1 %8, %22
  %24 = select i1 %22, i32 0, i32 3
  br i1 %23, label %203, label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #12
  %28 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 12
  %29 = load ptr, ptr %28, align 4
  %30 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 13
  br label %31

31:                                               ; preds = %37, %25
  %32 = phi ptr [ %30, %25 ], [ %33, %37 ]
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %30
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = icmp eq ptr %29, %28
  br i1 %36, label %197, label %41

37:                                               ; preds = %31
  %38 = getelementptr i8, ptr %33, i32 -60
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, %1
  br i1 %40, label %49, label %31

41:                                               ; preds = %46, %35
  %42 = phi ptr [ %47, %46 ], [ %29, %35 ]
  %43 = getelementptr i8, ptr %42, i32 -60
  %44 = load i32, ptr %43, align 4
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load ptr, ptr %42, align 4
  %48 = icmp eq ptr %47, %28
  br i1 %48, label %197, label %41

49:                                               ; preds = %41, %37
  %50 = phi ptr [ %42, %41 ], [ %33, %37 ]
  %51 = getelementptr i8, ptr %50, i32 -88
  %52 = icmp eq ptr %51, null
  br i1 %52, label %197, label %53

53:                                               ; preds = %49
  %54 = icmp eq ptr %50, %29
  br i1 %54, label %58, label %55

55:                                               ; preds = %53
  %56 = getelementptr i8, ptr %50, i32 12
  %57 = load i32, ptr %56, align 4
  br label %198

58:                                               ; preds = %53
  %59 = getelementptr i8, ptr %29, i32 12
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr i8, ptr %29, i32 -72
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %62, 0
  %64 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  br i1 %63, label %189, label %66

66:                                               ; preds = %58
  %67 = getelementptr i8, ptr %65, i32 8
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !22
  %69 = load ptr, ptr %64, align 4
  %70 = getelementptr i8, ptr %69, i32 12
  %71 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %70) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %72 = load ptr, ptr %64, align 4
  %73 = getelementptr i8, ptr %72, i32 8
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #12, !srcloc !8
  %75 = icmp eq i32 %74, %68
  br i1 %75, label %152, label %76, !prof !15

76:                                               ; preds = %66
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %77 = load ptr, ptr %64, align 4
  %78 = getelementptr i8, ptr %77, i32 12
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %80 = load ptr, ptr %64, align 4
  %81 = getelementptr i8, ptr %80, i32 8
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #12, !srcloc !8
  %83 = icmp eq i32 %82, %74
  br i1 %83, label %152, label %84, !prof !15

84:                                               ; preds = %76
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %85 = load ptr, ptr %64, align 4
  %86 = getelementptr i8, ptr %85, i32 12
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %86) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %88 = load ptr, ptr %64, align 4
  %89 = getelementptr i8, ptr %88, i32 8
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #12, !srcloc !8
  %91 = icmp eq i32 %90, %82
  br i1 %91, label %152, label %92, !prof !15

92:                                               ; preds = %84
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %93 = load ptr, ptr %64, align 4
  %94 = getelementptr i8, ptr %93, i32 12
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %94) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %96 = load ptr, ptr %64, align 4
  %97 = getelementptr i8, ptr %96, i32 8
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #12, !srcloc !8
  %99 = icmp eq i32 %98, %90
  br i1 %99, label %152, label %100, !prof !15

100:                                              ; preds = %92
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %101 = load ptr, ptr %64, align 4
  %102 = getelementptr i8, ptr %101, i32 12
  %103 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %102) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %104 = load ptr, ptr %64, align 4
  %105 = getelementptr i8, ptr %104, i32 8
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #12, !srcloc !8
  %107 = icmp eq i32 %106, %98
  br i1 %107, label %152, label %108, !prof !15

108:                                              ; preds = %100
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %109 = load ptr, ptr %64, align 4
  %110 = getelementptr i8, ptr %109, i32 12
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %112 = load ptr, ptr %64, align 4
  %113 = getelementptr i8, ptr %112, i32 8
  %114 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %113) #12, !srcloc !8
  %115 = icmp eq i32 %114, %106
  br i1 %115, label %152, label %116, !prof !15

116:                                              ; preds = %108
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %117 = load ptr, ptr %64, align 4
  %118 = getelementptr i8, ptr %117, i32 12
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %118) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %120 = load ptr, ptr %64, align 4
  %121 = getelementptr i8, ptr %120, i32 8
  %122 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %121) #12, !srcloc !8
  %123 = icmp eq i32 %122, %114
  br i1 %123, label %152, label %124, !prof !15

124:                                              ; preds = %116
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %125 = load ptr, ptr %64, align 4
  %126 = getelementptr i8, ptr %125, i32 12
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %128 = load ptr, ptr %64, align 4
  %129 = getelementptr i8, ptr %128, i32 8
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %129) #12, !srcloc !8
  %131 = icmp eq i32 %130, %122
  br i1 %131, label %152, label %132, !prof !15

132:                                              ; preds = %124
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %133 = load ptr, ptr %64, align 4
  %134 = getelementptr i8, ptr %133, i32 12
  %135 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %134) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %136 = load ptr, ptr %64, align 4
  %137 = getelementptr i8, ptr %136, i32 8
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %137) #12, !srcloc !8
  %139 = icmp eq i32 %138, %130
  br i1 %139, label %152, label %140, !prof !15

140:                                              ; preds = %132
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %141 = load ptr, ptr %64, align 4
  %142 = getelementptr i8, ptr %141, i32 12
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %142) #12, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !23
  %144 = load ptr, ptr %64, align 4
  %145 = getelementptr i8, ptr %144, i32 8
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #12, !srcloc !8
  %147 = icmp eq i32 %146, %138
  br i1 %147, label %152, label %148, !prof !15

148:                                              ; preds = %140
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %149 = load ptr, ptr %64, align 4
  %150 = getelementptr i8, ptr %149, i32 12
  %151 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %150) #12, !srcloc !8
  br label %197

152:                                              ; preds = %140, %132, %124, %116, %108, %100, %92, %84, %76, %66
  %153 = phi i32 [ %68, %66 ], [ %74, %76 ], [ %82, %84 ], [ %90, %92 ], [ %98, %100 ], [ %106, %108 ], [ %114, %116 ], [ %122, %124 ], [ %130, %132 ], [ %138, %140 ]
  %154 = phi i32 [ %71, %66 ], [ %79, %76 ], [ %87, %84 ], [ %95, %92 ], [ %103, %100 ], [ %111, %108 ], [ %119, %116 ], [ %127, %124 ], [ %135, %132 ], [ %143, %140 ]
  %155 = load i32, ptr %61, align 4
  %156 = icmp eq i32 %155, %153
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = and i32 %154, 65535
  %159 = lshr i32 %154, 24
  %160 = and i32 %159, 3
  %161 = shl nuw nsw i32 %158, %160
  %162 = sub i32 %60, %161
  br label %198

163:                                              ; preds = %152
  %164 = getelementptr i8, ptr %29, i32 8
  %165 = load i32, ptr %164, align 4
  %166 = sub i32 %60, %165
  %167 = getelementptr i8, ptr %29, i32 -68
  %168 = load ptr, ptr %167, align 4
  %169 = icmp eq ptr %168, %167
  br i1 %169, label %182, label %170

170:                                              ; preds = %176, %163
  %171 = phi ptr [ %180, %176 ], [ %168, %163 ]
  %172 = phi i32 [ %179, %176 ], [ %166, %163 ]
  %173 = getelementptr i8, ptr %171, i32 -72
  %174 = load i32, ptr %173, align 4
  %175 = icmp eq i32 %174, %153
  br i1 %175, label %182, label %176

176:                                              ; preds = %170
  %177 = getelementptr i8, ptr %171, i32 8
  %178 = load i32, ptr %177, align 4
  %179 = sub i32 %172, %178
  %180 = load ptr, ptr %171, align 4
  %181 = icmp eq ptr %180, %167
  br i1 %181, label %182, label %170

182:                                              ; preds = %176, %170, %163
  %183 = phi i32 [ %166, %163 ], [ %179, %176 ], [ %172, %170 ]
  %184 = and i32 %154, 65535
  %185 = lshr i32 %154, 24
  %186 = and i32 %185, 3
  %187 = shl nuw nsw i32 %184, %186
  %188 = sub i32 %183, %187
  br label %198

189:                                              ; preds = %58
  %190 = getelementptr i8, ptr %65, i32 12
  %191 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %190) #12, !srcloc !8
  %192 = and i32 %191, 65535
  %193 = lshr i32 %191, 24
  %194 = and i32 %193, 3
  %195 = shl nuw nsw i32 %192, %194
  %196 = sub i32 %60, %195
  br label %198

197:                                              ; preds = %148, %49, %46, %35
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #12
  br label %203

198:                                              ; preds = %189, %182, %157, %55
  %199 = phi i32 [ %57, %55 ], [ %162, %157 ], [ %188, %182 ], [ %196, %189 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %203, label %201, !prof !14

201:                                              ; preds = %198
  %202 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %199, ptr %202, align 4
  br label %203

203:                                              ; preds = %201, %198, %197, %21, %17
  %204 = phi i32 [ 1, %201 ], [ 3, %198 ], [ 3, %197 ], [ %20, %17 ], [ %24, %21 ]
  ret i32 %204
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @atc_issue_pending(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 6
  %3 = load volatile i32, ptr %2, align 4
  %4 = and i32 %3, 16777216
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call fastcc void @atc_advance_work(ptr noundef %0)
  br label %7

7:                                                ; preds = %6, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @atc_prep_dma_interleaved(ptr noundef %0, ptr noundef %1, i32 noundef %2) #5 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %171, label %5, !prof !14

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %171, !prof !15

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 8
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %171, label %13, !prof !14

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 9
  %15 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %17, ptr noundef nonnull @.str.18, ptr noundef nonnull @__func__.atc_prep_dma_interleaved, ptr noundef nonnull %1, ptr noundef %18, i32 noundef 1, i32 noundef %11, i32 noundef %2) #15
  %19 = load i32, ptr %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %93, label %21

21:                                               ; preds = %13
  %22 = load i32, ptr %14, align 4
  %23 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 4
  %24 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 6
  %25 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 2
  %26 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 1
  %27 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 3
  %28 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 5
  %29 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 3
  %30 = load i8, ptr %23, align 1, !range !25
  %31 = icmp eq i8 %30, 0
  br label %32

32:                                               ; preds = %89, %21
  %33 = phi i32 [ 0, %21 ], [ %86, %89 ]
  %34 = phi i32 [ 0, %21 ], [ %87, %89 ]
  br i1 %31, label %51, label %35

35:                                               ; preds = %32
  %36 = getelementptr %struct.data_chunk, ptr %14, i32 %34, i32 2
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.data_chunk, ptr %14, i32 %34, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = load i8, ptr %24, align 1, !range !25
  %41 = icmp ne i8 %40, 0
  %42 = icmp ne i32 %37, 0
  %43 = or i1 %42, %41
  %44 = select i1 %42, i32 %37, i32 %39
  %45 = select i1 %43, i32 %44, i32 0
  %46 = load i32, ptr %25, align 4
  %47 = load i32, ptr %26, align 4
  %48 = icmp ne i32 %46, 0
  %49 = or i1 %48, %41
  %50 = select i1 %48, i32 %46, i32 %47
  br i1 %49, label %53, label %51

51:                                               ; preds = %35, %32
  %52 = phi i32 [ %45, %35 ], [ 0, %32 ]
  br label %53

53:                                               ; preds = %51, %35
  %54 = phi i32 [ %52, %51 ], [ %45, %35 ]
  %55 = phi i32 [ 0, %51 ], [ %50, %35 ]
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %82

57:                                               ; preds = %53
  %58 = load i8, ptr %27, align 4, !range !25
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %57
  %61 = getelementptr %struct.data_chunk, ptr %14, i32 %34, i32 3
  %62 = load i32, ptr %61, align 4
  %63 = getelementptr %struct.data_chunk, ptr %14, i32 %34, i32 1
  %64 = load i32, ptr %63, align 4
  %65 = load i8, ptr %28, align 2, !range !25
  %66 = icmp ne i8 %65, 0
  %67 = icmp ne i32 %62, 0
  %68 = or i1 %67, %66
  %69 = select i1 %67, i32 %62, i32 %64
  %70 = select i1 %68, i32 %69, i32 0
  %71 = load i32, ptr %29, align 4
  %72 = load i32, ptr %26, align 4
  %73 = icmp ne i32 %71, 0
  %74 = or i1 %73, %66
  %75 = select i1 %73, i32 %71, i32 %72
  br i1 %74, label %78, label %76

76:                                               ; preds = %60, %57
  %77 = phi i32 [ %70, %60 ], [ 0, %57 ]
  br label %78

78:                                               ; preds = %76, %60
  %79 = phi i32 [ %77, %76 ], [ %70, %60 ]
  %80 = phi i32 [ 0, %76 ], [ %75, %60 ]
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %89, %78, %53
  %83 = load ptr, ptr %15, align 4
  %84 = getelementptr inbounds %struct.dma_chan_dev, ptr %83, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.atc_prep_dma_interleaved) #15
  br label %171

85:                                               ; preds = %78
  %86 = add i32 %22, %33
  %87 = add nuw i32 %34, 1
  %88 = icmp eq i32 %87, %19
  br i1 %88, label %93, label %89

89:                                               ; preds = %85
  %90 = getelementptr %struct.data_chunk, ptr %14, i32 %87
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, %22
  br i1 %92, label %32, label %82

93:                                               ; preds = %85, %13
  %94 = phi i32 [ 0, %13 ], [ %86, %85 ]
  %95 = load i32, ptr %1, align 4
  %96 = load i32, ptr %18, align 4
  %97 = or i32 %95, %94
  %98 = or i32 %97, %96
  %99 = and i32 %98, 3
  %100 = icmp eq i32 %99, 0
  %101 = and i32 %98, 1
  %102 = xor i32 %101, 1
  %103 = select i1 %100, i32 2, i32 %102
  %104 = lshr i32 %94, %103
  %105 = icmp ugt i32 %104, 65535
  br i1 %105, label %106, label %109

106:                                              ; preds = %93
  %107 = load ptr, ptr %15, align 4
  %108 = getelementptr inbounds %struct.dma_chan_dev, ptr %107, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %108, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.atc_prep_dma_interleaved) #15
  br label %171

109:                                              ; preds = %93
  %110 = tail call fastcc ptr @atc_desc_get(ptr noundef %0)
  %111 = icmp eq ptr %110, null
  br i1 %111, label %112, label %115

112:                                              ; preds = %109
  %113 = load ptr, ptr %15, align 4
  %114 = getelementptr inbounds %struct.dma_chan_dev, ptr %113, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.21, ptr noundef nonnull @__func__.atc_prep_dma_interleaved) #15
  br label %171

115:                                              ; preds = %109
  %116 = mul nuw nsw i32 %103, 285212672
  %117 = load i32, ptr %1, align 4
  store i32 %117, ptr %110, align 4
  %118 = load i32, ptr %18, align 4
  %119 = getelementptr inbounds %struct.at_lli, ptr %110, i32 0, i32 1
  store i32 %118, ptr %119, align 4
  %120 = or i32 %116, %104
  %121 = getelementptr inbounds %struct.at_lli, ptr %110, i32 0, i32 2
  store i32 %120, ptr %121, align 4
  %122 = getelementptr inbounds %struct.at_lli, ptr %110, i32 0, i32 3
  store i32 1073746176, ptr %122, align 4
  %123 = load i32, ptr %14, align 4
  %124 = lshr i32 %123, %103
  %125 = getelementptr inbounds %struct.at_desc, ptr %110, i32 0, i32 6
  store i32 %124, ptr %125, align 4
  %126 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 4
  %127 = load i8, ptr %126, align 1, !range !25
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %115
  %130 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 2
  %131 = load i32, ptr %130, align 4
  %132 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 1
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 6
  %135 = load i8, ptr %134, align 1, !range !25
  %136 = icmp ne i8 %135, 0
  %137 = icmp ne i32 %131, 0
  %138 = or i1 %137, %136
  %139 = select i1 %137, i32 %131, i32 %133
  br i1 %138, label %141, label %140

140:                                              ; preds = %129, %115
  br label %141

141:                                              ; preds = %140, %129
  %142 = phi i32 [ 0, %140 ], [ %139, %129 ]
  %143 = lshr i32 %142, %103
  %144 = add i32 %143, 1
  %145 = getelementptr inbounds %struct.at_desc, ptr %110, i32 0, i32 7
  store i32 %144, ptr %145, align 4
  %146 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 3
  %147 = load i8, ptr %146, align 4, !range !25
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %160, label %149

149:                                              ; preds = %141
  %150 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 1
  %153 = load i32, ptr %152, align 4
  %154 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 5
  %155 = load i8, ptr %154, align 2, !range !25
  %156 = icmp ne i8 %155, 0
  %157 = icmp ne i32 %151, 0
  %158 = or i1 %157, %156
  %159 = select i1 %157, i32 %151, i32 %153
  br i1 %158, label %161, label %160

160:                                              ; preds = %149, %141
  br label %161

161:                                              ; preds = %160, %149
  %162 = phi i32 [ 0, %160 ], [ %159, %149 ]
  %163 = lshr i32 %162, %103
  %164 = add i32 %163, 1
  %165 = getelementptr inbounds %struct.at_desc, ptr %110, i32 0, i32 8
  store i32 %164, ptr %165, align 4
  %166 = getelementptr inbounds %struct.at_desc, ptr %110, i32 0, i32 2
  store i32 -16, ptr %166, align 4
  %167 = getelementptr inbounds %struct.at_desc, ptr %110, i32 0, i32 4
  store i32 %94, ptr %167, align 4
  %168 = getelementptr inbounds %struct.at_desc, ptr %110, i32 0, i32 5
  store i32 %94, ptr %168, align 4
  store i32 1118464, ptr %122, align 4
  %169 = getelementptr inbounds %struct.at_lli, ptr %110, i32 0, i32 4
  store i32 0, ptr %169, align 4
  %170 = getelementptr inbounds %struct.at_desc, ptr %110, i32 0, i32 2, i32 1
  store i32 %2, ptr %170, align 4
  br label %171

171:                                              ; preds = %161, %112, %106, %82, %9, %5, %3
  %172 = phi ptr [ null, %82 ], [ null, %106 ], [ %166, %161 ], [ null, %112 ], [ null, %9 ], [ null, %5 ], [ null, %3 ]
  ret ptr %172
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @atc_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %83, label %7, !prof !14

7:                                                ; preds = %5
  %8 = or i32 %2, %1
  %9 = or i32 %8, %3
  %10 = and i32 %9, 3
  %11 = icmp eq i32 %10, 0
  %12 = and i32 %9, 1
  %13 = xor i32 %12, 1
  %14 = select i1 %11, i32 2, i32 %13
  %15 = mul nuw nsw i32 %14, 285212672
  br label %16

16:                                               ; preds = %45, %7
  %17 = phi i32 [ %47, %45 ], [ 0, %7 ]
  %18 = phi ptr [ %20, %45 ], [ null, %7 ]
  %19 = phi ptr [ %46, %45 ], [ null, %7 ]
  %20 = tail call fastcc ptr @atc_desc_get(ptr noundef %0)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %58, label %22

22:                                               ; preds = %16
  %23 = sub i32 %3, %17
  %24 = lshr i32 %23, %14
  %25 = tail call i32 @llvm.umin.i32(i32 %24, i32 65535)
  %26 = add i32 %17, %2
  store i32 %26, ptr %20, align 4
  %27 = add i32 %17, %1
  %28 = getelementptr inbounds %struct.at_lli, ptr %20, i32 0, i32 1
  store i32 %27, ptr %28, align 4
  %29 = or i32 %25, %15
  %30 = getelementptr inbounds %struct.at_lli, ptr %20, i32 0, i32 2
  store i32 %29, ptr %30, align 4
  %31 = getelementptr inbounds %struct.at_lli, ptr %20, i32 0, i32 3
  store i32 1073741824, ptr %31, align 4
  %32 = getelementptr inbounds %struct.at_desc, ptr %20, i32 0, i32 2
  store i32 0, ptr %32, align 4
  %33 = shl i32 %25, %14
  %34 = getelementptr inbounds %struct.at_desc, ptr %20, i32 0, i32 4
  store i32 %33, ptr %34, align 4
  %35 = icmp eq ptr %19, null
  br i1 %35, label %45, label %36

36:                                               ; preds = %22
  %37 = getelementptr inbounds %struct.at_desc, ptr %20, i32 0, i32 2, i32 2
  %38 = load i32, ptr %37, align 4
  %39 = getelementptr inbounds %struct.at_lli, ptr %18, i32 0, i32 4
  store i32 %38, ptr %39, align 4
  %40 = getelementptr inbounds %struct.at_desc, ptr %20, i32 0, i32 3
  %41 = getelementptr inbounds %struct.at_desc, ptr %19, i32 0, i32 1
  %42 = getelementptr inbounds %struct.at_desc, ptr %19, i32 0, i32 1, i32 1
  %43 = load ptr, ptr %42, align 4
  store ptr %40, ptr %42, align 4
  store ptr %41, ptr %40, align 4
  %44 = getelementptr inbounds %struct.at_desc, ptr %20, i32 0, i32 3, i32 1
  store ptr %43, ptr %44, align 4
  store volatile ptr %40, ptr %43, align 4
  br label %45

45:                                               ; preds = %36, %22
  %46 = phi ptr [ %19, %36 ], [ %20, %22 ]
  %47 = add i32 %33, %17
  %48 = icmp ult i32 %47, %3
  br i1 %48, label %16, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.at_desc, ptr %46, i32 0, i32 2
  store i32 -16, ptr %50, align 4
  %51 = getelementptr inbounds %struct.at_desc, ptr %46, i32 0, i32 5
  store i32 %3, ptr %51, align 4
  %52 = getelementptr inbounds %struct.at_lli, ptr %20, i32 0, i32 3
  %53 = load i32, ptr %52, align 4
  %54 = and i32 %53, -1074855937
  %55 = or i32 %54, 1114112
  store i32 %55, ptr %52, align 4
  %56 = getelementptr inbounds %struct.at_lli, ptr %20, i32 0, i32 4
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.at_desc, ptr %46, i32 0, i32 2, i32 1
  store i32 %4, ptr %57, align 4
  br label %83

58:                                               ; preds = %16
  %59 = icmp eq ptr %19, null
  br i1 %59, label %83, label %60

60:                                               ; preds = %58
  %61 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %61) #12
  %63 = getelementptr inbounds %struct.at_desc, ptr %19, i32 0, i32 1
  br label %64

64:                                               ; preds = %64, %60
  %65 = phi ptr [ %63, %60 ], [ %66, %64 ]
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %63
  br i1 %67, label %68, label %64

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 14
  %70 = load volatile ptr, ptr %63, align 4
  %71 = icmp eq ptr %70, %63
  br i1 %71, label %78, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %69, align 4
  %74 = getelementptr inbounds %struct.at_desc, ptr %19, i32 0, i32 1, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  store ptr %69, ptr %76, align 4
  store ptr %70, ptr %69, align 4
  store ptr %73, ptr %75, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  store ptr %75, ptr %77, align 4
  store volatile ptr %63, ptr %63, align 4
  store ptr %63, ptr %74, align 4
  br label %78

78:                                               ; preds = %72, %68
  %79 = getelementptr inbounds %struct.at_desc, ptr %19, i32 0, i32 3
  %80 = load ptr, ptr %69, align 4
  %81 = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  store ptr %79, ptr %81, align 4
  store ptr %80, ptr %79, align 4
  %82 = getelementptr inbounds %struct.at_desc, ptr %19, i32 0, i32 3, i32 1
  store ptr %69, ptr %82, align 4
  store volatile ptr %79, ptr %69, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %61, i32 noundef %62) #12
  br label %83

83:                                               ; preds = %78, %58, %49, %5
  %84 = phi ptr [ %50, %49 ], [ null, %5 ], [ null, %58 ], [ null, %78 ]
  ret ptr %84
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @atc_prep_dma_memset(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !17
  %8 = icmp eq i32 %3, 0
  br i1 %8, label %57, label %9, !prof !14

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 13
  %11 = load i32, ptr %10, align 4
  %12 = shl nsw i32 -1, %11
  %13 = xor i32 %12, -1
  %14 = or i32 %3, %1
  %15 = and i32 %14, %13
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %57

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.at_dma, ptr %7, i32 0, i32 6
  %19 = load ptr, ptr %18, align 4
  %20 = call ptr @dma_pool_alloc(ptr noundef %19, i32 noundef 2048, ptr noundef nonnull %6) #12
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.dma_chan_dev, ptr %24, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.atc_prep_dma_memset) #15
  br label %57

26:                                               ; preds = %17
  store i32 %2, ptr %20, align 4
  %27 = load i32, ptr %6, align 4
  %28 = lshr i32 %3, 2
  %29 = icmp ugt i32 %3, 262143
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = call fastcc ptr @atc_desc_get(ptr noundef %0) #12
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %30, %26
  %34 = phi ptr [ @.str.20, %26 ], [ @.str.24, %30 ]
  %35 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.dma_chan_dev, ptr %36, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull %34, ptr noundef nonnull @__func__.atc_create_memset_desc) #15
  %38 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.23, ptr noundef nonnull @__func__.atc_prep_dma_memset) #15
  %41 = load ptr, ptr %18, align 4
  %42 = load i32, ptr %6, align 4
  call void @dma_pool_free(ptr noundef %41, ptr noundef nonnull %20, i32 noundef %42) #12
  br label %57

43:                                               ; preds = %30
  store i32 %27, ptr %31, align 4
  %44 = getelementptr inbounds %struct.at_lli, ptr %31, i32 0, i32 1
  store i32 %1, ptr %44, align 4
  %45 = or i32 %28, 570425344
  %46 = getelementptr inbounds %struct.at_lli, ptr %31, i32 0, i32 2
  store i32 %45, ptr %46, align 4
  %47 = getelementptr inbounds %struct.at_lli, ptr %31, i32 0, i32 3
  %48 = getelementptr inbounds %struct.at_desc, ptr %31, i32 0, i32 2
  %49 = getelementptr inbounds %struct.at_desc, ptr %31, i32 0, i32 4
  store i32 %3, ptr %49, align 4
  %50 = load i32, ptr %6, align 4
  %51 = getelementptr inbounds %struct.at_desc, ptr %31, i32 0, i32 10
  store i32 %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.at_desc, ptr %31, i32 0, i32 11
  store ptr %20, ptr %52, align 4
  %53 = getelementptr inbounds %struct.at_desc, ptr %31, i32 0, i32 9
  store i8 1, ptr %53, align 4
  store i32 -16, ptr %48, align 4
  %54 = getelementptr inbounds %struct.at_desc, ptr %31, i32 0, i32 5
  store i32 %3, ptr %54, align 4
  store i32 34668544, ptr %47, align 4
  %55 = getelementptr inbounds %struct.at_lli, ptr %31, i32 0, i32 4
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.at_desc, ptr %31, i32 0, i32 2, i32 1
  store i32 %4, ptr %56, align 4
  br label %57

57:                                               ; preds = %43, %33, %22, %9, %5
  %58 = phi ptr [ %48, %43 ], [ null, %33 ], [ null, %22 ], [ null, %5 ], [ null, %9 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret ptr %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @atc_prep_dma_memset_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = alloca i32, align 4
  %7 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  store i32 0, ptr %6, align 4, !annotation !17
  %8 = icmp eq ptr %1, null
  %9 = icmp eq i32 %2, 0
  %10 = or i1 %8, %9
  br i1 %10, label %119, label %11, !prof !14

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.at_dma, ptr %7, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = call ptr @dma_pool_alloc(ptr noundef %13, i32 noundef 2048, ptr noundef nonnull %6) #12
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.atc_prep_dma_memset_sg) #15
  br label %119

20:                                               ; preds = %11
  store i32 %3, ptr %14, align 4
  br label %21

21:                                               ; preds = %75, %20
  %22 = phi i32 [ %78, %75 ], [ 0, %20 ]
  %23 = phi i32 [ %77, %75 ], [ 0, %20 ]
  %24 = phi ptr [ %79, %75 ], [ %1, %20 ]
  %25 = phi ptr [ %52, %75 ], [ null, %20 ]
  %26 = phi ptr [ %76, %75 ], [ null, %20 ]
  %27 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 4
  %30 = load i32, ptr %29, align 4
  %31 = load ptr, ptr %0, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 13
  %33 = load i32, ptr %32, align 4
  %34 = shl nsw i32 -1, %33
  %35 = xor i32 %34, -1
  %36 = or i32 %30, %28
  %37 = and i32 %36, %35
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %21
  %40 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.25, ptr noundef nonnull @__func__.atc_prep_dma_memset_sg) #15
  br label %94

43:                                               ; preds = %21
  %44 = load i32, ptr %6, align 4
  %45 = lshr i32 %30, 2
  %46 = icmp ugt i32 %30, 262143
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dma_chan_dev, ptr %49, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.atc_create_memset_desc) #15
  br label %94

51:                                               ; preds = %43
  %52 = call fastcc ptr @atc_desc_get(ptr noundef %0) #12
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.dma_chan_dev, ptr %56, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.atc_create_memset_desc) #15
  br label %94

58:                                               ; preds = %51
  store i32 %44, ptr %52, align 4
  %59 = getelementptr inbounds %struct.at_lli, ptr %52, i32 0, i32 1
  store i32 %28, ptr %59, align 4
  %60 = or i32 %45, 570425344
  %61 = getelementptr inbounds %struct.at_lli, ptr %52, i32 0, i32 2
  store i32 %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.at_lli, ptr %52, i32 0, i32 3
  store i32 1107296256, ptr %62, align 4
  %63 = getelementptr inbounds %struct.at_desc, ptr %52, i32 0, i32 2
  store i32 0, ptr %63, align 4
  %64 = getelementptr inbounds %struct.at_desc, ptr %52, i32 0, i32 4
  store i32 %30, ptr %64, align 4
  %65 = icmp eq ptr %26, null
  br i1 %65, label %75, label %66

66:                                               ; preds = %58
  %67 = getelementptr inbounds %struct.at_desc, ptr %52, i32 0, i32 2, i32 2
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.at_lli, ptr %25, i32 0, i32 4
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.at_desc, ptr %52, i32 0, i32 3
  %71 = getelementptr inbounds %struct.at_desc, ptr %26, i32 0, i32 1
  %72 = getelementptr inbounds %struct.at_desc, ptr %26, i32 0, i32 1, i32 1
  %73 = load ptr, ptr %72, align 4
  store ptr %70, ptr %72, align 4
  store ptr %71, ptr %70, align 4
  %74 = getelementptr inbounds %struct.at_desc, ptr %52, i32 0, i32 3, i32 1
  store ptr %73, ptr %74, align 4
  store volatile ptr %70, ptr %73, align 4
  br label %75

75:                                               ; preds = %66, %58
  %76 = phi ptr [ %26, %66 ], [ %52, %58 ]
  %77 = add i32 %30, %23
  %78 = add nuw i32 %22, 1
  %79 = call ptr @sg_next(ptr noundef %24) #12
  %80 = icmp eq i32 %78, %2
  br i1 %80, label %81, label %21

81:                                               ; preds = %75
  %82 = load i32, ptr %6, align 4
  %83 = getelementptr inbounds %struct.at_desc, ptr %52, i32 0, i32 10
  store i32 %82, ptr %83, align 4
  %84 = getelementptr inbounds %struct.at_desc, ptr %52, i32 0, i32 11
  store ptr %14, ptr %84, align 4
  %85 = getelementptr inbounds %struct.at_desc, ptr %52, i32 0, i32 9
  store i8 1, ptr %85, align 4
  %86 = getelementptr inbounds %struct.at_desc, ptr %76, i32 0, i32 2
  store i32 -16, ptr %86, align 4
  %87 = getelementptr inbounds %struct.at_desc, ptr %76, i32 0, i32 5
  store i32 %77, ptr %87, align 4
  %88 = getelementptr inbounds %struct.at_lli, ptr %52, i32 0, i32 3
  %89 = load i32, ptr %88, align 4
  %90 = and i32 %89, -1074855937
  %91 = or i32 %90, 1114112
  store i32 %91, ptr %88, align 4
  %92 = getelementptr inbounds %struct.at_lli, ptr %52, i32 0, i32 4
  store i32 0, ptr %92, align 4
  %93 = getelementptr inbounds %struct.at_desc, ptr %76, i32 0, i32 2, i32 1
  store i32 %4, ptr %93, align 4
  br label %119

94:                                               ; preds = %54, %47, %39
  %95 = icmp eq ptr %26, null
  br i1 %95, label %119, label %96

96:                                               ; preds = %94
  %97 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %98 = call i32 @_raw_spin_lock_irqsave(ptr noundef %97) #12
  %99 = getelementptr inbounds %struct.at_desc, ptr %26, i32 0, i32 1
  br label %100

100:                                              ; preds = %100, %96
  %101 = phi ptr [ %99, %96 ], [ %102, %100 ]
  %102 = load ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %99
  br i1 %103, label %104, label %100

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 14
  %106 = load volatile ptr, ptr %99, align 4
  %107 = icmp eq ptr %106, %99
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %105, align 4
  %110 = getelementptr inbounds %struct.at_desc, ptr %26, i32 0, i32 1, i32 1
  %111 = load ptr, ptr %110, align 4
  %112 = getelementptr inbounds %struct.list_head, ptr %106, i32 0, i32 1
  store ptr %105, ptr %112, align 4
  store ptr %106, ptr %105, align 4
  store ptr %109, ptr %111, align 4
  %113 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  store ptr %111, ptr %113, align 4
  store volatile ptr %99, ptr %99, align 4
  store ptr %99, ptr %110, align 4
  br label %114

114:                                              ; preds = %108, %104
  %115 = getelementptr inbounds %struct.at_desc, ptr %26, i32 0, i32 3
  %116 = load ptr, ptr %105, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  store ptr %115, ptr %117, align 4
  store ptr %116, ptr %115, align 4
  %118 = getelementptr inbounds %struct.at_desc, ptr %26, i32 0, i32 3, i32 1
  store ptr %105, ptr %118, align 4
  store volatile ptr %115, ptr %105, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %97, i32 noundef %98) #12
  br label %119

119:                                              ; preds = %114, %94, %81, %16, %5
  %120 = phi ptr [ %86, %81 ], [ null, %16 ], [ null, %5 ], [ null, %94 ], [ null, %114 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  ret ptr %120
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @atc_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #5 {
  %7 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, null
  %10 = icmp eq i32 %2, 0
  %11 = or i1 %10, %9
  br i1 %11, label %199, label %12, !prof !14

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 5
  %14 = load i32, ptr %13, align 4
  %15 = shl i32 %14, 16
  %16 = and i32 %15, 458752
  %17 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = shl i32 %18, 20
  %20 = and i32 %19, 7340032
  %21 = or i32 %20, %16
  switch i32 %3, label %199 [
    i32 1, label %22
    i32 2, label %89
  ]

22:                                               ; preds = %12
  %23 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 4
  %26 = icmp eq i32 %24, 2
  %27 = select i1 %25, i32 536870912, i32 0
  %28 = select i1 %26, i32 268435456, i32 %27
  %29 = or i32 %21, %28
  %30 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 5
  %31 = load i8, ptr %30, align 2
  %32 = and i8 %31, 3
  %33 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 4
  %34 = load i8, ptr %33, align 1
  %35 = shl i8 %34, 4
  %36 = and i8 %35, 48
  %37 = or i8 %36, %32
  %38 = zext i8 %37 to i32
  %39 = or i32 %38, 1612709888
  %40 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 2
  %41 = load i32, ptr %40, align 4
  br label %42

42:                                               ; preds = %83, %22
  %43 = phi i32 [ %85, %83 ], [ 0, %22 ]
  %44 = phi ptr [ %87, %83 ], [ %1, %22 ]
  %45 = phi i32 [ %86, %83 ], [ 0, %22 ]
  %46 = phi ptr [ %48, %83 ], [ null, %22 ]
  %47 = phi ptr [ %84, %83 ], [ null, %22 ]
  %48 = tail call fastcc ptr @atc_desc_get(ptr noundef %0)
  %49 = icmp eq ptr %48, null
  br i1 %49, label %168, label %50

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 4
  %54 = load i32, ptr %53, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %173, label %56, !prof !14

56:                                               ; preds = %50
  %57 = and i32 %52, 3
  %58 = icmp ne i32 %57, 0
  %59 = and i32 %54, 3
  %60 = icmp ne i32 %59, 0
  %61 = select i1 %58, i1 true, i1 %60, !prof !14
  br i1 %61, label %62, label %63, !prof !14

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %56
  %64 = phi i32 [ 0, %62 ], [ 2, %56 ]
  store i32 %52, ptr %48, align 4
  %65 = getelementptr inbounds %struct.at_lli, ptr %48, i32 0, i32 1
  store i32 %41, ptr %65, align 4
  %66 = shl nuw nsw i32 %64, 24
  %67 = or i32 %66, %29
  %68 = lshr i32 %54, %64
  %69 = or i32 %67, %68
  %70 = getelementptr inbounds %struct.at_lli, ptr %48, i32 0, i32 2
  store i32 %69, ptr %70, align 4
  %71 = getelementptr inbounds %struct.at_lli, ptr %48, i32 0, i32 3
  store i32 %39, ptr %71, align 4
  %72 = getelementptr inbounds %struct.at_desc, ptr %48, i32 0, i32 4
  store i32 %54, ptr %72, align 4
  %73 = icmp eq ptr %47, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %63
  %75 = getelementptr inbounds %struct.at_desc, ptr %48, i32 0, i32 2, i32 2
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr inbounds %struct.at_lli, ptr %46, i32 0, i32 4
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.at_desc, ptr %48, i32 0, i32 3
  %79 = getelementptr inbounds %struct.at_desc, ptr %47, i32 0, i32 1
  %80 = getelementptr inbounds %struct.at_desc, ptr %47, i32 0, i32 1, i32 1
  %81 = load ptr, ptr %80, align 4
  store ptr %78, ptr %80, align 4
  store ptr %79, ptr %78, align 4
  %82 = getelementptr inbounds %struct.at_desc, ptr %48, i32 0, i32 3, i32 1
  store ptr %81, ptr %82, align 4
  store volatile ptr %78, ptr %81, align 4
  br label %83

83:                                               ; preds = %74, %63
  %84 = phi ptr [ %47, %74 ], [ %48, %63 ]
  %85 = add i32 %54, %43
  %86 = add nuw i32 %45, 1
  %87 = tail call ptr @sg_next(ptr noundef %44) #12
  %88 = icmp eq i32 %86, %2
  br i1 %88, label %156, label %42

89:                                               ; preds = %12
  %90 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 3
  %91 = load i32, ptr %90, align 4
  %92 = icmp eq i32 %91, 4
  %93 = icmp eq i32 %91, 2
  %94 = select i1 %92, i32 2, i32 0
  %95 = select i1 %93, i32 1, i32 %94
  %96 = shl nuw nsw i32 %95, 24
  %97 = or i32 %96, %21
  %98 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 4
  %99 = load i8, ptr %98, align 1
  %100 = and i8 %99, 3
  %101 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 5
  %102 = load i8, ptr %101, align 2
  %103 = shl i8 %102, 4
  %104 = and i8 %103, 48
  %105 = or i8 %104, %100
  %106 = zext i8 %105 to i32
  %107 = or i32 %106, 1111490560
  %108 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 1
  %109 = load i32, ptr %108, align 4
  br label %110

110:                                              ; preds = %150, %89
  %111 = phi i32 [ %152, %150 ], [ 0, %89 ]
  %112 = phi ptr [ %154, %150 ], [ %1, %89 ]
  %113 = phi i32 [ %153, %150 ], [ 0, %89 ]
  %114 = phi ptr [ %116, %150 ], [ null, %89 ]
  %115 = phi ptr [ %151, %150 ], [ null, %89 ]
  %116 = tail call fastcc ptr @atc_desc_get(ptr noundef %0)
  %117 = icmp eq ptr %116, null
  br i1 %117, label %168, label %118

118:                                              ; preds = %110
  %119 = getelementptr inbounds %struct.scatterlist, ptr %112, i32 0, i32 3
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr inbounds %struct.scatterlist, ptr %112, i32 0, i32 4
  %122 = load i32, ptr %121, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %173, label %124, !prof !14

124:                                              ; preds = %118
  %125 = and i32 %120, 3
  %126 = icmp ne i32 %125, 0
  %127 = and i32 %122, 3
  %128 = icmp ne i32 %127, 0
  %129 = select i1 %126, i1 true, i1 %128, !prof !14
  br i1 %129, label %130, label %131, !prof !14

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130, %124
  %132 = phi i32 [ 0, %130 ], [ 536870912, %124 ]
  store i32 %109, ptr %116, align 4
  %133 = getelementptr inbounds %struct.at_lli, ptr %116, i32 0, i32 1
  store i32 %120, ptr %133, align 4
  %134 = or i32 %132, %97
  %135 = lshr i32 %122, %95
  %136 = or i32 %134, %135
  %137 = getelementptr inbounds %struct.at_lli, ptr %116, i32 0, i32 2
  store i32 %136, ptr %137, align 4
  %138 = getelementptr inbounds %struct.at_lli, ptr %116, i32 0, i32 3
  store i32 %107, ptr %138, align 4
  %139 = getelementptr inbounds %struct.at_desc, ptr %116, i32 0, i32 4
  store i32 %122, ptr %139, align 4
  %140 = icmp eq ptr %115, null
  br i1 %140, label %150, label %141

141:                                              ; preds = %131
  %142 = getelementptr inbounds %struct.at_desc, ptr %116, i32 0, i32 2, i32 2
  %143 = load i32, ptr %142, align 4
  %144 = getelementptr inbounds %struct.at_lli, ptr %114, i32 0, i32 4
  store i32 %143, ptr %144, align 4
  %145 = getelementptr inbounds %struct.at_desc, ptr %116, i32 0, i32 3
  %146 = getelementptr inbounds %struct.at_desc, ptr %115, i32 0, i32 1
  %147 = getelementptr inbounds %struct.at_desc, ptr %115, i32 0, i32 1, i32 1
  %148 = load ptr, ptr %147, align 4
  store ptr %145, ptr %147, align 4
  store ptr %146, ptr %145, align 4
  %149 = getelementptr inbounds %struct.at_desc, ptr %116, i32 0, i32 3, i32 1
  store ptr %148, ptr %149, align 4
  store volatile ptr %145, ptr %148, align 4
  br label %150

150:                                              ; preds = %141, %131
  %151 = phi ptr [ %115, %141 ], [ %116, %131 ]
  %152 = add i32 %122, %111
  %153 = add nuw i32 %113, 1
  %154 = tail call ptr @sg_next(ptr noundef %112) #12
  %155 = icmp eq i32 %153, %2
  br i1 %155, label %156, label %110

156:                                              ; preds = %150, %83
  %157 = phi ptr [ %84, %83 ], [ %151, %150 ]
  %158 = phi ptr [ %48, %83 ], [ %116, %150 ]
  %159 = phi i32 [ %85, %83 ], [ %152, %150 ]
  %160 = getelementptr inbounds %struct.at_lli, ptr %158, i32 0, i32 3
  %161 = load i32, ptr %160, align 4
  %162 = and i32 %161, -1074855937
  %163 = or i32 %162, 1114112
  store i32 %163, ptr %160, align 4
  %164 = getelementptr inbounds %struct.at_lli, ptr %158, i32 0, i32 4
  store i32 0, ptr %164, align 4
  %165 = getelementptr inbounds %struct.at_desc, ptr %157, i32 0, i32 2
  store i32 -16, ptr %165, align 4
  %166 = getelementptr inbounds %struct.at_desc, ptr %157, i32 0, i32 5
  store i32 %159, ptr %166, align 4
  %167 = getelementptr inbounds %struct.at_desc, ptr %157, i32 0, i32 2, i32 1
  store i32 %4, ptr %167, align 4
  br label %199

168:                                              ; preds = %110, %42
  %169 = phi ptr [ %47, %42 ], [ %115, %110 ]
  %170 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.dma_chan_dev, ptr %171, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %172, ptr noundef nonnull @.str.26) #15
  br label %173

173:                                              ; preds = %168, %118, %50
  %174 = phi ptr [ %169, %168 ], [ %47, %50 ], [ %115, %118 ]
  %175 = icmp eq ptr %174, null
  br i1 %175, label %199, label %176

176:                                              ; preds = %173
  %177 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %178 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %177) #12
  %179 = getelementptr inbounds %struct.at_desc, ptr %174, i32 0, i32 1
  br label %180

180:                                              ; preds = %180, %176
  %181 = phi ptr [ %179, %176 ], [ %182, %180 ]
  %182 = load ptr, ptr %181, align 4
  %183 = icmp eq ptr %182, %179
  br i1 %183, label %184, label %180

184:                                              ; preds = %180
  %185 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 14
  %186 = load volatile ptr, ptr %179, align 4
  %187 = icmp eq ptr %186, %179
  br i1 %187, label %194, label %188

188:                                              ; preds = %184
  %189 = load ptr, ptr %185, align 4
  %190 = getelementptr inbounds %struct.at_desc, ptr %174, i32 0, i32 1, i32 1
  %191 = load ptr, ptr %190, align 4
  %192 = getelementptr inbounds %struct.list_head, ptr %186, i32 0, i32 1
  store ptr %185, ptr %192, align 4
  store ptr %186, ptr %185, align 4
  store ptr %189, ptr %191, align 4
  %193 = getelementptr inbounds %struct.list_head, ptr %189, i32 0, i32 1
  store ptr %191, ptr %193, align 4
  store volatile ptr %179, ptr %179, align 4
  store ptr %179, ptr %190, align 4
  br label %194

194:                                              ; preds = %188, %184
  %195 = getelementptr inbounds %struct.at_desc, ptr %174, i32 0, i32 3
  %196 = load ptr, ptr %185, align 4
  %197 = getelementptr inbounds %struct.list_head, ptr %196, i32 0, i32 1
  store ptr %195, ptr %197, align 4
  store ptr %196, ptr %195, align 4
  %198 = getelementptr inbounds %struct.at_desc, ptr %174, i32 0, i32 3, i32 1
  store ptr %185, ptr %198, align 4
  store volatile ptr %195, ptr %185, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %177, i32 noundef %178) #12
  br label %199

199:                                              ; preds = %194, %173, %156, %12, %6
  %200 = phi ptr [ %165, %156 ], [ null, %6 ], [ null, %12 ], [ null, %173 ], [ null, %194 ]
  ret ptr %200
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @atc_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #5 {
  %7 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  %8 = load ptr, ptr %7, align 4
  %9 = udiv i32 %2, %3
  %10 = icmp eq ptr %8, null
  %11 = icmp eq i32 %2, 0
  %12 = icmp eq i32 %3, 0
  %13 = or i1 %11, %10
  %14 = or i1 %12, %13
  br i1 %14, label %123, label %15, !prof !14

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 6
  %17 = tail call i32 @_test_and_set_bit(i32 noundef 24, ptr noundef %16) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %123

19:                                               ; preds = %15
  %20 = add i32 %4, -1
  %21 = icmp ult i32 %20, 2
  br i1 %21, label %22, label %122, !prof !15

22:                                               ; preds = %19
  %23 = icmp eq i32 %4, 1
  %24 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 3
  %25 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 4
  %26 = select i1 %23, ptr %25, ptr %24
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 4
  %29 = select i1 %28, i32 2, i32 0
  %30 = icmp eq i32 %27, 2
  %31 = select i1 %30, i32 1, i32 %29
  %32 = shl nuw nsw i32 65535, %31
  %33 = icmp ult i32 %32, %3
  br i1 %33, label %122, label %34

34:                                               ; preds = %22
  %35 = shl nsw i32 -1, %31
  %36 = xor i32 %35, -1
  %37 = or i32 %3, %1
  %38 = and i32 %37, %36
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %122, !prof !26

40:                                               ; preds = %34
  %41 = icmp ugt i32 %3, %2
  br i1 %41, label %109, label %42

42:                                               ; preds = %40
  %43 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 5
  %44 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 6
  %45 = shl nuw nsw i32 %31, 28
  %46 = shl nuw nsw i32 %31, 24
  %47 = lshr i32 %3, %31
  %48 = or i32 %47, %46
  %49 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 1
  %50 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 4
  %51 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 5
  %52 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 2
  %53 = call i32 @llvm.umax.i32(i32 %9, i32 1)
  br label %54

54:                                               ; preds = %105, %42
  %55 = phi i32 [ 0, %42 ], [ %107, %105 ]
  %56 = phi ptr [ null, %42 ], [ %58, %105 ]
  %57 = phi ptr [ null, %42 ], [ %106, %105 ]
  %58 = tail call fastcc ptr @atc_desc_get(ptr noundef %0)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %117, label %60

60:                                               ; preds = %54
  %61 = load i32, ptr %43, align 4
  %62 = shl i32 %61, 16
  %63 = and i32 %62, 458752
  %64 = load i32, ptr %44, align 4
  %65 = shl i32 %64, 20
  %66 = and i32 %65, 7340032
  %67 = or i32 %63, %66
  %68 = or i32 %67, %45
  %69 = or i32 %48, %68
  switch i32 %4, label %117 [
    i32 1, label %70
    i32 2, label %74
  ]

70:                                               ; preds = %60
  %71 = mul i32 %55, %3
  %72 = add i32 %71, %1
  store i32 %72, ptr %58, align 4
  %73 = load i32, ptr %52, align 4
  br label %78

74:                                               ; preds = %60
  %75 = load i32, ptr %49, align 4
  store i32 %75, ptr %58, align 4
  %76 = mul i32 %55, %3
  %77 = add i32 %76, %1
  br label %78

78:                                               ; preds = %74, %70
  %79 = phi i32 [ %73, %70 ], [ %77, %74 ]
  %80 = phi ptr [ %50, %70 ], [ %51, %74 ]
  %81 = phi ptr [ %51, %70 ], [ %50, %74 ]
  %82 = phi i32 [ 538968064, %70 ], [ 37748736, %74 ]
  %83 = getelementptr inbounds %struct.at_lli, ptr %58, i32 0, i32 1
  store i32 %79, ptr %83, align 4
  %84 = getelementptr inbounds %struct.at_lli, ptr %58, i32 0, i32 2
  store i32 %69, ptr %84, align 4
  %85 = load i8, ptr %81, align 1
  %86 = and i8 %85, 3
  %87 = load i8, ptr %80, align 1
  %88 = shl i8 %87, 4
  %89 = and i8 %88, 48
  %90 = or i8 %89, %86
  %91 = zext i8 %90 to i32
  %92 = or i32 %82, %91
  %93 = getelementptr inbounds %struct.at_lli, ptr %58, i32 0, i32 3
  store i32 %92, ptr %93, align 4
  %94 = getelementptr inbounds %struct.at_desc, ptr %58, i32 0, i32 4
  store i32 %3, ptr %94, align 4
  %95 = icmp eq ptr %57, null
  br i1 %95, label %105, label %96

96:                                               ; preds = %78
  %97 = getelementptr inbounds %struct.at_desc, ptr %58, i32 0, i32 2, i32 2
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr inbounds %struct.at_lli, ptr %56, i32 0, i32 4
  store i32 %98, ptr %99, align 4
  %100 = getelementptr inbounds %struct.at_desc, ptr %58, i32 0, i32 3
  %101 = getelementptr inbounds %struct.at_desc, ptr %57, i32 0, i32 1
  %102 = getelementptr inbounds %struct.at_desc, ptr %57, i32 0, i32 1, i32 1
  %103 = load ptr, ptr %102, align 4
  store ptr %100, ptr %102, align 4
  store ptr %101, ptr %100, align 4
  %104 = getelementptr inbounds %struct.at_desc, ptr %58, i32 0, i32 3, i32 1
  store ptr %103, ptr %104, align 4
  store volatile ptr %100, ptr %103, align 4
  br label %105

105:                                              ; preds = %96, %78
  %106 = phi ptr [ %58, %78 ], [ %57, %96 ]
  %107 = add nuw i32 %55, 1
  %108 = icmp eq i32 %107, %53
  br i1 %108, label %109, label %54

109:                                              ; preds = %105, %40
  %110 = phi ptr [ null, %40 ], [ %106, %105 ]
  %111 = phi ptr [ null, %40 ], [ %58, %105 ]
  %112 = getelementptr inbounds %struct.at_desc, ptr %110, i32 0, i32 2, i32 2
  %113 = load i32, ptr %112, align 4
  %114 = getelementptr inbounds %struct.at_lli, ptr %111, i32 0, i32 4
  store i32 %113, ptr %114, align 4
  %115 = getelementptr inbounds %struct.at_desc, ptr %110, i32 0, i32 2
  store i32 -16, ptr %115, align 4
  %116 = getelementptr inbounds %struct.at_desc, ptr %110, i32 0, i32 5
  store i32 %2, ptr %116, align 4
  br label %123

117:                                              ; preds = %60, %54
  %118 = phi ptr [ %57, %54 ], [ null, %60 ]
  %119 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %120 = load ptr, ptr %119, align 4
  %121 = getelementptr inbounds %struct.dma_chan_dev, ptr %120, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %121, ptr noundef nonnull @.str.26) #15
  tail call fastcc void @atc_desc_put(ptr noundef %0, ptr noundef %118)
  br label %122

122:                                              ; preds = %117, %34, %22, %19
  tail call void @_clear_bit(i32 noundef 24, ptr noundef %16) #12
  br label %123

123:                                              ; preds = %122, %109, %15, %6
  %124 = phi ptr [ null, %122 ], [ %115, %109 ], [ null, %6 ], [ null, %15 ]
  ret ptr %124
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @atc_config(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %7, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  %8 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 5
  %9 = load i32, ptr %8, align 4
  %10 = icmp ugt i32 %9, 1
  %11 = tail call i32 @llvm.ctlz.i32(i32 %9, i1 false) #12, !range !27
  %12 = sub nsw i32 30, %11
  %13 = select i1 %10, i32 %12, i32 0
  store i32 %13, ptr %8, align 4
  %14 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 10, i32 6
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %15, 1
  %17 = tail call i32 @llvm.ctlz.i32(i32 %15, i1 false) #12, !range !27
  %18 = sub nsw i32 30, %17
  %19 = select i1 %16, i32 %18, i32 0
  store i32 %19, ptr %14, align 4
  br label %20

20:                                               ; preds = %6, %2
  %21 = phi i32 [ 0, %6 ], [ -22, %2 ]
  ret i32 %21
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atc_pause(ptr noundef %0) #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = add i32 %4, 8
  %8 = shl nuw i32 1, %7
  %9 = getelementptr inbounds %struct.at_dma, ptr %2, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %8) #12, !srcloc !11
  %12 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 1, ptr noundef %12) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atc_resume(ptr noundef %0) #5 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 6
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #12
  %12 = add i32 %4, 8
  %13 = shl nuw i32 1, %12
  %14 = getelementptr inbounds %struct.at_dma, ptr %2, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #12, !srcloc !11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %5) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #12
  br label %17

17:                                               ; preds = %9, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atc_terminate_all(ptr noundef %0) #5 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %6 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %8 = call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #12
  %9 = add i32 %5, 8
  %10 = shl nuw i32 1, %9
  %11 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 3
  %12 = load i8, ptr %11, align 4
  %13 = zext i8 %12 to i32
  %14 = or i32 %10, %13
  %15 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 44
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %14) #12, !srcloc !11
  %18 = load ptr, ptr %15, align 4
  %19 = getelementptr i8, ptr %18, i32 48
  %20 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !8
  %21 = load i8, ptr %11, align 4
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %25, %1
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !28
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !29
  %26 = load ptr, ptr %15, align 4
  %27 = getelementptr i8, ptr %26, i32 48
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #12, !srcloc !8
  %29 = load i8, ptr %11, align 4
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %25

33:                                               ; preds = %25, %1
  %34 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 13
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %43, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 13, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %2, ptr %41, align 4
  store ptr %35, ptr %2, align 8
  store ptr %38, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %34, ptr %34, align 4
  store ptr %34, ptr %39, align 4
  br label %43

43:                                               ; preds = %37, %33
  %44 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 12
  %45 = load volatile ptr, ptr %44, align 4
  %46 = icmp eq ptr %45, %44
  br i1 %46, label %53, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %2, align 8
  %49 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 12, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  store ptr %2, ptr %51, align 4
  store ptr %45, ptr %2, align 8
  store ptr %48, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %44, ptr %44, align 4
  store ptr %44, ptr %49, align 4
  br label %53

53:                                               ; preds = %47, %43
  call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #12
  %54 = load ptr, ptr %2, align 8
  %55 = icmp eq ptr %54, %2
  br i1 %55, label %61, label %56

56:                                               ; preds = %56, %53
  %57 = phi ptr [ %59, %56 ], [ %54, %53 ]
  %58 = getelementptr i8, ptr %57, i32 -88
  %59 = load ptr, ptr %57, align 4
  call fastcc void @atc_chain_complete(ptr noundef %0, ptr noundef %58)
  %60 = icmp eq ptr %59, %2
  br i1 %60, label %61, label %56

61:                                               ; preds = %56, %53
  %62 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 6
  call void @_clear_bit(i32 noundef 1, ptr noundef %62) #12
  call void @_clear_bit(i32 noundef 24, ptr noundef %62) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @at_dma_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readnone %1) #5 {
  %3 = alloca %struct.dma_cap_mask_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 2
  br i1 %6, label %7, label %50

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 4
  %9 = tail call ptr @of_find_device_by_node(ptr noundef %8) #12
  %10 = icmp eq ptr %9, null
  br i1 %10, label %50, label %11

11:                                               ; preds = %7
  store i32 0, ptr %3, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %3) #12
  %12 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 6), align 4
  %13 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 8) #16
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  call void @put_device(ptr noundef %16) #12
  br label %50

17:                                               ; preds = %11
  %18 = getelementptr inbounds %struct.at_dma_slave, ptr %13, i32 0, i32 1
  %19 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %20 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %21 = load i32, ptr %20, align 4
  %22 = lshr i32 %21, 4
  %23 = and i32 %22, 3
  %24 = shl nuw nsw i32 %23, 14
  %25 = and i32 %21, 15
  %26 = shl nuw nsw i32 %25, 4
  %27 = or i32 %24, %26
  %28 = shl nuw nsw i32 %23, 10
  %29 = or i32 %27, %28
  %30 = or i32 %29, %25
  %31 = or i32 %30, 8704
  store i32 %31, ptr %18, align 4
  %32 = and i32 %21, 3840
  switch i32 %32, label %33 [
    i32 256, label %37
    i32 512, label %34
  ]

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %17
  %35 = phi i32 [ 268444160, %33 ], [ 536879616, %17 ]
  %36 = or i32 %30, %35
  store i32 %36, ptr %18, align 4
  br label %37

37:                                               ; preds = %34, %17
  %38 = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  store ptr %38, ptr %13, align 8
  %39 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef nonnull @at_dma_filter, ptr noundef nonnull %13, ptr noundef null) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  call void @put_device(ptr noundef %38) #12
  call void @kfree(ptr noundef nonnull %13) #12
  br label %50

42:                                               ; preds = %37
  %43 = load i32, ptr %19, align 4
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.at_dma_chan, ptr %39, i32 0, i32 4
  store i8 %44, ptr %45, align 1
  %46 = load i32, ptr %19, align 4
  %47 = lshr i32 %46, 16
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds %struct.at_dma_chan, ptr %39, i32 0, i32 5
  store i8 %48, ptr %49, align 2
  br label %50

50:                                               ; preds = %42, %41, %15, %7, %2
  %51 = phi ptr [ %39, %42 ], [ null, %41 ], [ null, %15 ], [ null, %2 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atc_advance_work(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.at_dma, ptr %5, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 48
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !8
  %10 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 3
  %11 = load i8, ptr %10, align 4
  %12 = zext i8 %11 to i32
  %13 = and i32 %9, %12
  %14 = icmp eq i32 %13, 0
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  br i1 %14, label %15, label %65

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 12
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load volatile ptr, ptr %16, align 4
  %21 = icmp eq ptr %20, %16
  br i1 %21, label %60, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 12, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %20, %24
  br i1 %25, label %26, label %60

26:                                               ; preds = %22, %15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %27, align 4
  %28 = call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %29 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 13
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %34, label %32

32:                                               ; preds = %26
  %33 = getelementptr i8, ptr %30, i32 -88
  call fastcc void @atc_dostart(ptr noundef %0, ptr noundef %33) #12
  br label %34

34:                                               ; preds = %32, %26
  %35 = load volatile ptr, ptr %16, align 4
  %36 = icmp eq ptr %35, %16
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr %2, align 8
  %39 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 12, i32 1
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %2, ptr %41, align 4
  store ptr %35, ptr %2, align 8
  store ptr %38, ptr %40, align 4
  %42 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  store ptr %40, ptr %42, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %39, align 4
  br label %43

43:                                               ; preds = %37, %34
  %44 = load volatile ptr, ptr %29, align 4
  %45 = icmp eq ptr %44, %29
  br i1 %45, label %51, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 13, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %16, ptr %49, align 4
  store ptr %44, ptr %16, align 4
  store ptr %16, ptr %48, align 4
  %50 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 12, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %29, ptr %29, align 4
  store ptr %29, ptr %47, align 4
  br label %51

51:                                               ; preds = %46, %43
  call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %28) #12
  %52 = load ptr, ptr %2, align 8
  %53 = icmp eq ptr %52, %2
  br i1 %53, label %59, label %54

54:                                               ; preds = %54, %51
  %55 = phi ptr [ %57, %54 ], [ %52, %51 ]
  %56 = getelementptr i8, ptr %55, i32 -88
  %57 = load ptr, ptr %55, align 4
  call fastcc void @atc_chain_complete(ptr noundef %0, ptr noundef %56) #12
  %58 = icmp eq ptr %57, %2
  br i1 %58, label %59, label %54

59:                                               ; preds = %54, %51
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %65

60:                                               ; preds = %22, %19
  %61 = getelementptr i8, ptr %20, i32 -88
  tail call fastcc void @atc_chain_complete(ptr noundef %0, ptr noundef %61)
  %62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %63 = load ptr, ptr %16, align 4
  %64 = getelementptr i8, ptr %63, i32 -88
  tail call fastcc void @atc_dostart(ptr noundef %0, ptr noundef %64)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %62) #12
  br label %65

65:                                               ; preds = %60, %59, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atc_dostart(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #5 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 48
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !8
  %8 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 3
  %9 = load i8, ptr %8, align 4
  %10 = zext i8 %9 to i32
  %11 = and i32 %7, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %34, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dma_chan_dev, ptr %15, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %16, ptr noundef nonnull @.str.14) #15
  %17 = load ptr, ptr %14, align 4
  %18 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #12, !srcloc !8
  %22 = load ptr, ptr %19, align 4
  %23 = getelementptr i8, ptr %22, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #12, !srcloc !8
  %25 = load ptr, ptr %19, align 4
  %26 = getelementptr i8, ptr %25, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #12, !srcloc !8
  %28 = load ptr, ptr %19, align 4
  %29 = getelementptr i8, ptr %28, i32 16
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #12, !srcloc !8
  %31 = load ptr, ptr %19, align 4
  %32 = getelementptr i8, ptr %31, i32 8
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %32) #12, !srcloc !8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.15, i32 noundef %21, i32 noundef %24, i32 noundef %27, i32 noundef %30, i32 noundef %33) #15
  br label %70

34:                                               ; preds = %2
  %35 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 0) #12, !srcloc !11
  %37 = load ptr, ptr %35, align 4
  %38 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %38, i32 0) #12, !srcloc !11
  %39 = load ptr, ptr %35, align 4
  %40 = getelementptr i8, ptr %39, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 0) #12, !srcloc !11
  %41 = load ptr, ptr %35, align 4
  %42 = getelementptr i8, ptr %41, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 0) #12, !srcloc !11
  %43 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 2, i32 2
  %44 = load i32, ptr %43, align 4
  %45 = load ptr, ptr %35, align 4
  %46 = getelementptr i8, ptr %45, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #12, !srcloc !11
  %47 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 65535
  %50 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 6
  %51 = load i32, ptr %50, align 4
  %52 = shl i32 %51, 16
  %53 = and i32 %52, 67043328
  %54 = or i32 %53, %49
  %55 = load ptr, ptr %35, align 4
  %56 = getelementptr i8, ptr %55, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #12, !srcloc !11
  %57 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 7
  %58 = load i32, ptr %57, align 4
  %59 = and i32 %58, 65535
  %60 = load i32, ptr %50, align 4
  %61 = shl i32 %60, 16
  %62 = and i32 %61, 67043328
  %63 = or i32 %62, %59
  %64 = load ptr, ptr %35, align 4
  %65 = getelementptr i8, ptr %64, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #12, !srcloc !11
  %66 = load i8, ptr %8, align 4
  %67 = zext i8 %66 to i32
  %68 = load ptr, ptr %4, align 4
  %69 = getelementptr i8, ptr %68, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %67) #12, !srcloc !11
  br label %70

70:                                               ; preds = %34, %13
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_crit(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atc_chain_complete(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = alloca %struct.dmaengine_result, align 8
  %4 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 2
  %5 = load ptr, ptr %0, align 4
  %6 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %6) #12
  %8 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 6
  %9 = load volatile i32, ptr %8, align 4
  %10 = and i32 %9, 16777216
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load i32, ptr %4, align 4
  %14 = icmp slt i32 %13, 1
  br i1 %14, label %15, label %16, !prof !14

15:                                               ; preds = %12
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #12, !srcloc !30
  unreachable

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 2, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.dma_chan, ptr %18, i32 0, i32 3
  store i32 %13, ptr %19, align 4
  store i32 0, ptr %4, align 4
  br label %20

20:                                               ; preds = %16, %2
  %21 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 9
  %22 = load i8, ptr %21, align 4, !range !25
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.at_dma, ptr %5, i32 0, i32 6
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 11
  %28 = load ptr, ptr %27, align 4
  %29 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 10
  %30 = load i32, ptr %29, align 4
  tail call void @dma_pool_free(ptr noundef %26, ptr noundef %28, i32 noundef %30) #12
  store i8 0, ptr %21, align 4
  br label %31

31:                                               ; preds = %24, %20
  %32 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 1
  %33 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 14
  %34 = load volatile ptr, ptr %32, align 4
  %35 = icmp eq ptr %34, %32
  br i1 %35, label %42, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %33, align 4
  %38 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 1, i32 1
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  store ptr %33, ptr %40, align 4
  store ptr %34, ptr %33, align 4
  store ptr %37, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %39, ptr %41, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %38, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 3
  %44 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 3, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = load ptr, ptr %43, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %45, ptr %47, align 4
  store volatile ptr %46, ptr %45, align 4
  %48 = load ptr, ptr %33, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %43, ptr %49, align 4
  store ptr %48, ptr %43, align 4
  store ptr %33, ptr %44, align 4
  store volatile ptr %43, ptr %33, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %6, i32 noundef %7) #12
  %50 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 2, i32 9
  %51 = load ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %42
  tail call void @dmaengine_unmap_put(ptr noundef nonnull %51) #12
  store ptr null, ptr %50, align 4
  br label %54

54:                                               ; preds = %53, %42
  %55 = load volatile i32, ptr %8, align 4
  %56 = and i32 %55, 16777216
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 2, i32 6
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 2, i32 7
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 2, i32 8
  %64 = load ptr, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8
  %65 = icmp eq ptr %62, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  call void %62(ptr noundef %64, ptr noundef nonnull %3) #12
  br label %70

67:                                               ; preds = %58
  %68 = icmp eq ptr %60, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %67
  tail call void %60(ptr noundef %64) #12
  br label %70

70:                                               ; preds = %69, %67, %66
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  br label %71

71:                                               ; preds = %70, %54
  call void @dma_run_dependencies(ptr noundef %4) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atc_tx_submit(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.at_dma_chan, ptr %3, i32 0, i32 11
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1) #12
  store i32 %10, ptr %7, align 4
  store i32 %10, ptr %0, align 4
  %11 = getelementptr inbounds %struct.at_dma_chan, ptr %3, i32 0, i32 12
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = getelementptr i8, ptr %0, i32 -28
  tail call fastcc void @atc_dostart(ptr noundef %3, ptr noundef %15)
  %16 = getelementptr i8, ptr %0, i32 60
  %17 = getelementptr inbounds %struct.at_dma_chan, ptr %3, i32 0, i32 12, i32 1
  %18 = load ptr, ptr %17, align 4
  store ptr %16, ptr %17, align 4
  store ptr %11, ptr %16, align 4
  %19 = getelementptr i8, ptr %0, i32 64
  store ptr %18, ptr %19, align 4
  store volatile ptr %16, ptr %18, align 4
  br label %26

20:                                               ; preds = %1
  %21 = getelementptr i8, ptr %0, i32 60
  %22 = getelementptr inbounds %struct.at_dma_chan, ptr %3, i32 0, i32 13
  %23 = getelementptr inbounds %struct.at_dma_chan, ptr %3, i32 0, i32 13, i32 1
  %24 = load ptr, ptr %23, align 4
  store ptr %21, ptr %23, align 4
  store ptr %22, ptr %21, align 4
  %25 = getelementptr i8, ptr %0, i32 64
  store ptr %24, ptr %25, align 4
  store volatile ptr %21, ptr %24, align 4
  br label %26

26:                                               ; preds = %20, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #12
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @atc_desc_get(ptr noundef %0) unnamed_addr #5 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #12
  %5 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 14
  %6 = load ptr, ptr %5, align 4
  br label %7

7:                                                ; preds = %11, %1
  %8 = phi ptr [ %6, %1 ], [ %12, %11 ]
  %9 = icmp eq ptr %8, %5
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  br label %23

11:                                               ; preds = %7
  %12 = load ptr, ptr %8, align 4
  %13 = getelementptr i8, ptr %8, i32 -56
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %7, label %17

17:                                               ; preds = %11
  %18 = getelementptr i8, ptr %8, i32 -88
  %19 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  store ptr %20, ptr %21, align 4
  store volatile ptr %12, ptr %20, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %8, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %19, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #12
  %22 = icmp eq ptr %18, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %17, %10
  %24 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #12
  store i32 0, ptr %2, align 4, !annotation !17
  %25 = getelementptr inbounds %struct.at_dma, ptr %24, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = call ptr @dma_pool_alloc(ptr noundef %26, i32 noundef 2304, ptr noundef nonnull %2) #12
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.at_desc, ptr %27, i32 0, i32 1
  store volatile ptr %30, ptr %30, align 4
  %31 = getelementptr inbounds %struct.at_desc, ptr %27, i32 0, i32 1, i32 1
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.at_desc, ptr %27, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %32, ptr noundef %0) #12
  %33 = getelementptr inbounds %struct.at_desc, ptr %27, i32 0, i32 2, i32 1
  store i32 2, ptr %33, align 4
  %34 = getelementptr inbounds %struct.at_desc, ptr %27, i32 0, i32 2, i32 4
  store ptr @atc_tx_submit, ptr %34, align 4
  %35 = load i32, ptr %2, align 4
  %36 = getelementptr inbounds %struct.at_desc, ptr %27, i32 0, i32 2, i32 2
  store i32 %35, ptr %36, align 4
  br label %37

37:                                               ; preds = %29, %23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #12
  br label %38

38:                                               ; preds = %37, %17
  %39 = phi ptr [ %18, %17 ], [ %27, %37 ]
  ret ptr %39
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @atc_desc_put(ptr noundef %0, ptr noundef %1) unnamed_addr #5 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %27, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 11
  %6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
  %7 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 1
  br label %8

8:                                                ; preds = %8, %4
  %9 = phi ptr [ %7, %4 ], [ %10, %8 ]
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, %7
  br i1 %11, label %12, label %8

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.at_dma_chan, ptr %0, i32 0, i32 14
  %14 = load volatile ptr, ptr %7, align 4
  %15 = icmp eq ptr %14, %7
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %13, align 4
  %18 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 1, i32 1
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  store ptr %13, ptr %20, align 4
  store ptr %14, ptr %13, align 4
  store ptr %17, ptr %19, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %18, align 4
  br label %22

22:                                               ; preds = %16, %12
  %23 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 3
  %24 = load ptr, ptr %13, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %23, ptr %25, align 4
  store ptr %24, ptr %23, align 4
  %26 = getelementptr inbounds %struct.at_desc, ptr %1, i32 0, i32 3, i32 1
  store ptr %13, ptr %26, align 4
  store volatile ptr %23, ptr %13, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  br label %27

27:                                               ; preds = %22, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @at_dma_filter(ptr nocapture noundef %0, ptr noundef %1) #11 {
  %3 = load ptr, ptr %1, align 4
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %3, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 14
  store ptr %1, ptr %9, align 4
  br label %10

10:                                               ; preds = %8, %2
  ret i1 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_dma_remove(ptr noundef %0) #5 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #12, !srcloc !11
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #12, !srcloc !11
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !8
  %12 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %11, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %17, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !13
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !8
  %21 = load i8, ptr %12, align 4
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %17

25:                                               ; preds = %17, %1
  %26 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %27 = load ptr, ptr %26, align 8
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call void @of_dma_controller_free(ptr noundef nonnull %27) #12
  br label %30

30:                                               ; preds = %29, %25
  tail call void @dma_async_device_unregister(ptr noundef %3) #12
  %31 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 6
  %32 = load ptr, ptr %31, align 4
  tail call void @dma_pool_destroy(ptr noundef %32) #12
  %33 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 5
  %34 = load ptr, ptr %33, align 4
  tail call void @dma_pool_destroy(ptr noundef %34) #12
  %35 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #12
  %36 = tail call ptr @free_irq(i32 noundef %35, ptr noundef %3) #12
  %37 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = icmp eq ptr %38, %37
  br i1 %39, label %57, label %40

40:                                               ; preds = %40, %30
  %41 = phi ptr [ %42, %40 ], [ %38, %30 ]
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %41, i32 -16
  %44 = load i32, ptr %43, align 4
  %45 = shl nuw i32 1, %44
  %46 = add i32 %44, 16
  %47 = shl nuw i32 1, %46
  %48 = or i32 %47, %45
  %49 = load ptr, ptr %4, align 4
  %50 = getelementptr i8, ptr %49, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #12, !srcloc !11
  %51 = getelementptr i8, ptr %41, i32 48
  tail call void @tasklet_kill(ptr noundef %51) #12
  %52 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %41, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  %56 = icmp eq ptr %42, %37
  br i1 %56, label %57, label %40

57:                                               ; preds = %40, %30
  %58 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  tail call void @clk_disable(ptr noundef %59) #12
  tail call void @clk_unprepare(ptr noundef %59) #12
  %60 = load ptr, ptr %58, align 4
  tail call void @clk_put(ptr noundef %60) #12
  %61 = load ptr, ptr %4, align 4
  tail call void @iounmap(ptr noundef %61) #12
  store ptr null, ptr %4, align 4
  %62 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.resource, ptr %62, i32 0, i32 1
  %65 = load i32, ptr %64, align 4
  %66 = sub i32 1, %63
  %67 = add i32 %66, %65
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %63, i32 noundef %67) #12
  tail call void @kfree(ptr noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at_dma_shutdown(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #12, !srcloc !11
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 -1) #12, !srcloc !11
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 48
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #12, !srcloc !8
  %12 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 4
  %13 = load i8, ptr %12, align 4
  %14 = zext i8 %13 to i32
  %15 = and i32 %11, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %17, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !13
  %18 = load ptr, ptr %4, align 4
  %19 = getelementptr i8, ptr %18, i32 48
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !8
  %21 = load i8, ptr %12, align 4
  %22 = zext i8 %21 to i32
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %17

25:                                               ; preds = %17, %1
  %26 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  tail call void @clk_disable(ptr noundef %27) #12
  tail call void @clk_unprepare(ptr noundef %27) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_dma_prepare(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %28, label %7

7:                                                ; preds = %26, %1
  %8 = phi ptr [ %9, %26 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %8, i32 -32
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.at_dma, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 48
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !8
  %16 = getelementptr i8, ptr %8, i32 40
  %17 = load i8, ptr %16, align 4
  %18 = zext i8 %17 to i32
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %7
  %22 = getelementptr i8, ptr %8, i32 44
  %23 = load volatile i32, ptr %22, align 4
  %24 = and i32 %23, 16777216
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %21, %7
  %27 = icmp eq ptr %9, %4
  br i1 %27, label %28, label %7

28:                                               ; preds = %26, %21, %1
  %29 = phi i32 [ 0, %1 ], [ 0, %26 ], [ -11, %21 ]
  ret i32 %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_dma_suspend_noirq(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %46, label %7

7:                                                ; preds = %39, %1
  %8 = phi ptr [ %9, %39 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %8, i32 -32
  %11 = getelementptr i8, ptr %8, i32 44
  %12 = load volatile i32, ptr %11, align 4
  %13 = and i32 %12, 16777216
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15

15:                                               ; preds = %7
  %16 = load volatile i32, ptr %11, align 4
  %17 = and i32 %16, 2
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15
  %20 = getelementptr i8, ptr %8, i32 -12
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.27) #15
  %23 = load ptr, ptr %10, align 4
  %24 = getelementptr i8, ptr %8, i32 -16
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr i8, ptr %8, i32 128
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #12
  %28 = add i32 %25, 8
  %29 = shl nuw i32 1, %28
  %30 = getelementptr inbounds %struct.at_dma, ptr %23, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr i8, ptr %31, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %29) #12, !srcloc !11
  tail call void @_set_bit(i32 noundef 1, ptr noundef %11) #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #12
  br label %33

33:                                               ; preds = %19, %15
  %34 = getelementptr i8, ptr %8, i32 36
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %36) #12, !srcloc !8
  %38 = getelementptr i8, ptr %8, i32 76
  store i32 %37, ptr %38, align 4
  br label %39

39:                                               ; preds = %33, %7
  %40 = getelementptr i8, ptr %8, i32 36
  %41 = load ptr, ptr %40, align 4
  %42 = getelementptr i8, ptr %41, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #12, !srcloc !8
  %44 = getelementptr i8, ptr %8, i32 72
  store i32 %43, ptr %44, align 4
  %45 = icmp eq ptr %9, %4
  br i1 %45, label %46, label %7

46:                                               ; preds = %39, %1
  %47 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr i8, ptr %48, i32 32
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %49) #12, !srcloc !8
  %51 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 3
  store i32 %50, ptr %51, align 4
  %52 = load ptr, ptr %47, align 4
  %53 = getelementptr i8, ptr %52, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 0) #12, !srcloc !11
  %54 = load ptr, ptr %47, align 4
  %55 = getelementptr i8, ptr %54, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 -1) #12, !srcloc !11
  %56 = load ptr, ptr %47, align 4
  %57 = getelementptr i8, ptr %56, i32 48
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %57) #12, !srcloc !8
  %59 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 4
  %60 = load i8, ptr %59, align 4
  %61 = zext i8 %60 to i32
  %62 = and i32 %58, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %64, %46
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !13
  %65 = load ptr, ptr %47, align 4
  %66 = getelementptr i8, ptr %65, i32 48
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %66) #12, !srcloc !8
  %68 = load i8, ptr %59, align 4
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %64

72:                                               ; preds = %64, %46
  %73 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 2
  %74 = load ptr, ptr %73, align 4
  tail call void @clk_disable(ptr noundef %74) #12
  tail call void @clk_unprepare(ptr noundef %74) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_dma_resume_noirq(ptr nocapture noundef readonly %0) #5 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_prepare(ptr noundef %5) #12
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = tail call i32 @clk_enable(ptr noundef %5) #12
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  tail call void @clk_unprepare(ptr noundef %5) #12
  br label %12

12:                                               ; preds = %11, %8, %1
  %13 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 1
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr i8, ptr %14, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 1) #12, !srcloc !11
  %16 = load ptr, ptr %13, align 4
  %17 = getelementptr i8, ptr %16, i32 36
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #12, !srcloc !8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %20, %12
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !31
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !32
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr i8, ptr %21, i32 36
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !8
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %20

25:                                               ; preds = %20, %12
  %26 = getelementptr inbounds %struct.at_dma, ptr %3, i32 0, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %13, align 4
  %29 = getelementptr i8, ptr %28, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %27) #12, !srcloc !11
  %30 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %31 = load ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %67, label %33

33:                                               ; preds = %65, %25
  %34 = phi ptr [ %35, %65 ], [ %31, %25 ]
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %34, i32 72
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr i8, ptr %34, i32 36
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %37) #12, !srcloc !11
  %41 = getelementptr i8, ptr %34, i32 44
  %42 = load volatile i32, ptr %41, align 4
  %43 = and i32 %42, 16777216
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %65, label %45

45:                                               ; preds = %33
  %46 = getelementptr i8, ptr %34, i32 -32
  %47 = load ptr, ptr %46, align 4
  %48 = load ptr, ptr %38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 0) #12, !srcloc !11
  %49 = load ptr, ptr %38, align 4
  %50 = getelementptr i8, ptr %49, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 0) #12, !srcloc !11
  %51 = load ptr, ptr %38, align 4
  %52 = getelementptr i8, ptr %51, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 0) #12, !srcloc !11
  %53 = load ptr, ptr %38, align 4
  %54 = getelementptr i8, ptr %53, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 0) #12, !srcloc !11
  %55 = getelementptr i8, ptr %34, i32 76
  %56 = load i32, ptr %55, align 4
  %57 = load ptr, ptr %38, align 4
  %58 = getelementptr i8, ptr %57, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %58, i32 %56) #12, !srcloc !11
  %59 = getelementptr i8, ptr %34, i32 40
  %60 = load i8, ptr %59, align 4
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds %struct.at_dma, ptr %47, i32 0, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr i8, ptr %63, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %64, i32 %61) #12, !srcloc !11
  br label %65

65:                                               ; preds = %45, %33
  %66 = icmp eq ptr %35, %30
  br i1 %66, label %67, label %33

67:                                               ; preds = %65, %25
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #10

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold inlinehint nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(2) }

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
!8 = !{i64 5094854}
!9 = !{i64 2153317084}
!10 = !{i64 2153316926}
!11 = !{i64 5094436}
!12 = !{i64 2153314546}
!13 = !{i64 2153314388}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{!"branch_weights", i32 2000, i32 1}
!16 = !{i64 2153300783, i64 2153301271, i64 2153300820, i64 2153300876, i64 2153300910, i64 2153300934, i64 2153300975, i64 2153300996, i64 2153301024, i64 2153301058}
!17 = !{!"auto-init"}
!18 = !{i64 2153303570, i64 2153304058, i64 2153303607, i64 2153303663, i64 2153303697, i64 2153303721, i64 2153303762, i64 2153303783, i64 2153303811, i64 2153303845}
!19 = !{i64 2153304628, i64 2153305116, i64 2153304665, i64 2153304721, i64 2153304755, i64 2153304779, i64 2153304820, i64 2153304841, i64 2153304869, i64 2153304903}
!20 = !{i64 2153305686, i64 2153306174, i64 2153305723, i64 2153305779, i64 2153305813, i64 2153305837, i64 2153305878, i64 2153305899, i64 2153305927, i64 2153305961}
!21 = !{i64 2153167788}
!22 = !{i64 2153240636}
!23 = !{i64 2153240801}
!24 = !{i64 2153241005}
!25 = !{i8 0, i8 2}
!26 = !{!"branch_weights", i32 4000000, i32 4001}
!27 = !{i32 0, i32 33}
!28 = !{i64 2153290761}
!29 = !{i64 2153290603}
!30 = !{i64 2153166852, i64 2153167339, i64 2153166889, i64 2153166945, i64 2153166979, i64 2153167003, i64 2153167044, i64 2153167065, i64 2153167093, i64 2153167127}
!31 = !{i64 2153344131}
!32 = !{i64 2153343973}
