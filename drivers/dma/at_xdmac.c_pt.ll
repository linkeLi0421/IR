; ModuleID = '/llk/IR/drivers/dma/at_xdmac.c_pt.bc'
source_filename = "../drivers/dma/at_xdmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.63 }
%union.anon.63 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.at_xdmac_layout = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.at_xdmac = type { %struct.dma_device, ptr, i32, ptr, i32, ptr, ptr, [0 x %struct.at_xdmac_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.at_xdmac_chan = type { %struct.dma_chan, ptr, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.tasklet_struct, %struct.dma_slave_config, %struct.spinlock, %struct.list_head, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.at_xdmac_desc = type { %struct.at_xdmac_lld, i32, %struct.dma_async_tx_descriptor, %struct.list_head, i8, i32, %struct.list_head, %struct.list_head, [4 x i8] }
%struct.at_xdmac_lld = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__param_str_init_nr_desc_per_channel = internal constant [34 x i8] c"at_xdmac.init_nr_desc_per_channel\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@init_nr_desc_per_channel = internal global i32 64, align 4
@__param_init_nr_desc_per_channel = internal constant %struct.kernel_param { ptr @__param_str_init_nr_desc_per_channel, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.63 { ptr @init_nr_desc_per_channel } }, section "__param", align 4
@__UNIQUE_ID_init_nr_desc_per_channeltype226 = internal constant [48 x i8] c"at_xdmac.parmtype=init_nr_desc_per_channel:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_init_nr_desc_per_channel227 = internal constant [85 x i8] c"at_xdmac.parm=init_nr_desc_per_channel:initial descriptors per channel (default: 64)\00", section ".modinfo", align 1
@__initcall__kmod_at_xdmac__228_2236_at_xdmac_init4 = internal global ptr @at_xdmac_init, section ".initcall4.init", align 4
@at_xdmac_driver = internal global %struct.platform_driver { ptr @at_xdmac_probe, ptr @at_xdmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_xdmac_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_xdmac_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_at_xdmac_exit = internal global ptr @at_xdmac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description229 = internal constant [58 x i8] c"at_xdmac.description=Atmel Extended DMA Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [64 x i8] c"at_xdmac.author=Ludovic Desroches <ludovic.desroches@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [35 x i8] c"at_xdmac.file=drivers/dma/at_xdmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [21 x i8] c"at_xdmac.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"at_xdmac\00", align 1
@atmel_xdmac_dt_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at_xdmac_sama5d4_layout }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at_xdmac_sama7g5_layout }, %struct.of_device_id zeroinitializer], align 4
@atmel_xdmac_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr @atmel_xdmac_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_xdmac_suspend, ptr @atmel_xdmac_resume, ptr @atmel_xdmac_suspend, ptr @atmel_xdmac_resume, ptr @atmel_xdmac_suspend, ptr @atmel_xdmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"can't allocate at_xdmac structure\0A\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"dma_clk\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"can't get dma_clk\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"can't request irq\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"can't prepare or enable clock\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"no memory for descriptors dma pool\0A\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"fail to register DMA engine device\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"could not register of dma controller\0A\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"%d channels, mapped at 0x%p\0A\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"can't allocate channel resources (channel enabled)\0A\00", align 1
@.str.12 = private unnamed_addr constant [73 x i8] c"can't allocate channel resources (channel not free from a previous use)\0A\00", align 1
@.str.13 = private unnamed_addr constant [41 x i8] c"only %d descriptors have been allocated\0A\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"invalid DMA direction\0A\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"channel currently used\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"can't get descriptor\0A\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"invalid src maxburst value\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"invalid src addr width value\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"invalid dst addr width value\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"%s: Transfer too large, aborting...\0A\00", align 1
@__func__.at_xdmac_memset_create_desc = private unnamed_addr constant [28 x i8] c"at_xdmac_memset_create_desc\00", align 1
@.str.21 = private unnamed_addr constant [24 x i8] c"sg data length is zero\0A\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"invalid slave configuration\0A\00", align 1
@.str.23 = private unnamed_addr constant [25 x i8] c"Xfer not active: exiting\00", align 1
@.str.24 = private unnamed_addr constant [18 x i8] c"read bus error!!!\00", align 1
@.str.25 = private unnamed_addr constant [19 x i8] c"write bus error!!!\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"request overflow error!!!\00", align 1
@.str.27 = private unnamed_addr constant [39 x i8] c"dma phandler args: bad number of args\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"can't get a dma channel\0A\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"controller in mem2mem mode.\0A\00", align 1
@at_xdmac_sama5d4_layout = internal constant %struct.at_xdmac_layout { i8 40, i8 44, i8 48, i8 52, i8 56, i8 60, i8 64, i8 80, i8 1, i8 0 }, align 1
@at_xdmac_sama7g5_layout = internal constant %struct.at_xdmac_layout { i8 48, i8 56, i8 64, i8 68, i8 72, i8 76, i8 80, i8 96, i8 0, i8 1 }, align 1
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description229, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_init_nr_desc_per_channel227, ptr @__UNIQUE_ID_init_nr_desc_per_channeltype226, ptr @__UNIQUE_ID_license232, ptr @__exitcall_at_xdmac_exit, ptr @__initcall__kmod_at_xdmac__228_2236_at_xdmac_init4, ptr @__param_init_nr_desc_per_channel, ptr @at_xdmac_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @at_xdmac_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @at_xdmac_driver, ptr noundef null) #9
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @at_xdmac_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @at_xdmac_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_xdmac_probe(ptr noundef %0) #2 {
  %2 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #9
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %132, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #9
  %6 = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = ptrtoint ptr %5 to i32
  br label %132

9:                                                ; preds = %4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %11 = and i32 %10, 31
  %12 = add nuw nsw i32 %11, 1
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %14 = mul nuw nsw i32 %12, 196
  %15 = add nuw nsw i32 %14, 276
  %16 = tail call noalias ptr @devm_kmalloc(ptr noundef %13, i32 noundef %15, i32 noundef 3520) #9
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.2) #10
  br label %132

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.at_xdmac, ptr %16, i32 0, i32 1
  store ptr %5, ptr %20, align 4
  %21 = getelementptr inbounds %struct.at_xdmac, ptr %16, i32 0, i32 2
  store i32 %2, ptr %21, align 4
  %22 = tail call ptr @of_device_get_match_data(ptr noundef %13) #9
  %23 = getelementptr inbounds %struct.at_xdmac, ptr %16, i32 0, i32 6
  store ptr %22, ptr %23, align 4
  %24 = icmp eq ptr %22, null
  br i1 %24, label %132, label %25

25:                                               ; preds = %19
  %26 = tail call ptr @devm_clk_get(ptr noundef %13, ptr noundef nonnull @.str.3) #9
  %27 = getelementptr inbounds %struct.at_xdmac, ptr %16, i32 0, i32 3
  store ptr %26, ptr %27, align 4
  %28 = icmp ugt ptr %26, inttoptr (i32 -4096 to ptr)
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.4) #10
  %30 = load ptr, ptr %27, align 4
  %31 = ptrtoint ptr %30 to i32
  br label %132

32:                                               ; preds = %25
  %33 = load i32, ptr %21, align 4
  %34 = tail call i32 @request_threaded_irq(i32 noundef %33, ptr noundef nonnull @at_xdmac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %16) #9
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.5) #10
  br label %132

37:                                               ; preds = %32
  %38 = load ptr, ptr %27, align 4
  %39 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %38)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.6) #10
  br label %128

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %44 = load ptr, ptr %43, align 4
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load ptr, ptr %13, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi ptr [ %47, %46 ], [ %44, %42 ]
  %50 = tail call ptr @dmam_pool_create(ptr noundef %49, ptr noundef %13, i32 noundef 136, i32 noundef 4, i32 noundef 0) #9
  %51 = getelementptr inbounds %struct.at_xdmac, ptr %16, i32 0, i32 5
  store ptr %50, ptr %51, align 4
  %52 = icmp eq ptr %50, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.7) #10
  br label %125

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 12, ptr noundef %55) #9
  tail call void @_set_bit(i32 noundef 13, ptr noundef %55) #9
  tail call void @_set_bit(i32 noundef 0, ptr noundef %55) #9
  tail call void @_set_bit(i32 noundef 6, ptr noundef %55) #9
  tail call void @_set_bit(i32 noundef 7, ptr noundef %55) #9
  tail call void @_set_bit(i32 noundef 11, ptr noundef %55) #9
  tail call void @_set_bit(i32 noundef 9, ptr noundef %55) #9
  %56 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 15
  store ptr %13, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 27
  store ptr @at_xdmac_alloc_chan_resources, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 29
  store ptr @at_xdmac_free_chan_resources, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 49
  store ptr @at_xdmac_tx_status, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 50
  store ptr @at_xdmac_issue_pending, ptr %60, align 4
  %61 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 40
  store ptr @at_xdmac_prep_dma_cyclic, ptr %61, align 4
  %62 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 41
  store ptr @at_xdmac_prep_interleaved, ptr %62, align 4
  %63 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 30
  store ptr @at_xdmac_prep_dma_memcpy, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 36
  store ptr @at_xdmac_prep_dma_memset, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 37
  store ptr @at_xdmac_prep_dma_memset_sg, ptr %65, align 4
  %66 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 39
  store ptr @at_xdmac_prep_slave_sg, ptr %66, align 4
  %67 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 44
  store ptr @at_xdmac_device_config, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 45
  store ptr @at_xdmac_device_pause, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 46
  store ptr @at_xdmac_device_resume, ptr %69, align 4
  %70 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 47
  store ptr @at_xdmac_device_terminate_all, ptr %70, align 4
  %71 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 19
  store i32 279, ptr %71, align 4
  %72 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 20
  store i32 279, ptr %72, align 4
  %73 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 21
  store i32 6, ptr %73, align 4
  %74 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 26
  store i32 2, ptr %74, align 4
  tail call fastcc void @at_xdmac_off(ptr noundef nonnull %16)
  %75 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 3
  store volatile ptr %75, ptr %75, align 4
  %76 = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 3, i32 1
  store ptr %75, ptr %76, align 4
  br label %77

77:                                               ; preds = %109, %54
  %78 = phi i32 [ 0, %54 ], [ %110, %109 ]
  %79 = getelementptr %struct.at_xdmac, ptr %16, i32 0, i32 7, i32 %78
  store ptr %16, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dma_chan, ptr %79, i32 0, i32 8
  %81 = load ptr, ptr %76, align 4
  store ptr %80, ptr %76, align 4
  store ptr %75, ptr %80, align 4
  %82 = getelementptr inbounds %struct.dma_chan, ptr %79, i32 0, i32 8, i32 1
  store ptr %81, ptr %82, align 4
  store volatile ptr %80, ptr %81, align 4
  %83 = load ptr, ptr %20, align 4
  %84 = load ptr, ptr %23, align 4
  %85 = getelementptr inbounds %struct.at_xdmac_layout, ptr %84, i32 0, i32 7
  %86 = load i8, ptr %85, align 1
  %87 = zext i8 %86 to i32
  %88 = shl i32 %78, 6
  %89 = add i32 %88, %87
  %90 = getelementptr i8, ptr %83, i32 %89
  %91 = getelementptr %struct.at_xdmac, ptr %16, i32 0, i32 7, i32 %78, i32 1
  store ptr %90, ptr %91, align 4
  %92 = shl nuw i32 1, %78
  %93 = getelementptr %struct.at_xdmac, ptr %16, i32 0, i32 7, i32 %78, i32 2
  store i32 %92, ptr %93, align 4
  %94 = getelementptr %struct.at_xdmac, ptr %16, i32 0, i32 7, i32 %78, i32 15
  store i32 0, ptr %94, align 4
  %95 = getelementptr %struct.at_xdmac, ptr %16, i32 0, i32 7, i32 %78, i32 16
  store volatile ptr %95, ptr %95, align 4
  %96 = getelementptr %struct.at_xdmac, ptr %16, i32 0, i32 7, i32 %78, i32 16, i32 1
  store ptr %95, ptr %96, align 4
  %97 = getelementptr %struct.at_xdmac, ptr %16, i32 0, i32 7, i32 %78, i32 17
  store volatile ptr %97, ptr %97, align 4
  %98 = getelementptr %struct.at_xdmac, ptr %16, i32 0, i32 7, i32 %78, i32 17, i32 1
  store ptr %97, ptr %98, align 4
  %99 = getelementptr %struct.at_xdmac, ptr %16, i32 0, i32 7, i32 %78, i32 13
  tail call void @tasklet_setup(ptr noundef %99, ptr noundef nonnull @at_xdmac_tasklet) #9
  %100 = load ptr, ptr %91, align 4
  %101 = getelementptr i8, ptr %100, i32 12
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #9, !srcloc !8
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %104, %77
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !9
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !10
  %105 = load ptr, ptr %91, align 4
  %106 = getelementptr i8, ptr %105, i32 12
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #9, !srcloc !8
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %104

109:                                              ; preds = %104, %77
  %110 = add nuw nsw i32 %78, 1
  %111 = icmp eq i32 %78, %11
  br i1 %111, label %112, label %77

112:                                              ; preds = %109
  %113 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %16, ptr %113, align 8
  %114 = tail call i32 @dma_async_device_register(ptr noundef nonnull %16) #9
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.8) #10
  br label %125

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %119 = load ptr, ptr %118, align 8
  %120 = tail call i32 @of_dma_controller_register(ptr noundef %119, ptr noundef nonnull @at_xdmac_xlate, ptr noundef nonnull %16) #9
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %123, label %122

122:                                              ; preds = %117
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.9) #10
  tail call void @dma_async_device_unregister(ptr noundef nonnull %16) #9
  br label %125

123:                                              ; preds = %117
  %124 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %13, ptr noundef nonnull @.str.10, i32 noundef %12, ptr noundef %124) #10
  tail call fastcc void @at_xdmac_axi_config(ptr noundef %0)
  br label %132

125:                                              ; preds = %122, %116, %53
  %126 = phi i32 [ %114, %116 ], [ %120, %122 ], [ -12, %53 ]
  %127 = load ptr, ptr %27, align 4
  tail call void @clk_disable(ptr noundef %127) #9
  tail call void @clk_unprepare(ptr noundef %127) #9
  br label %128

128:                                              ; preds = %125, %41
  %129 = phi i32 [ %39, %41 ], [ %126, %125 ]
  %130 = load i32, ptr %21, align 4
  %131 = tail call ptr @free_irq(i32 noundef %130, ptr noundef nonnull %16) #9
  br label %132

132:                                              ; preds = %128, %123, %36, %29, %19, %18, %7, %1
  %133 = phi i32 [ %8, %7 ], [ %31, %29 ], [ %34, %36 ], [ %129, %128 ], [ 0, %123 ], [ -12, %18 ], [ %2, %1 ], [ -19, %19 ]
  ret i32 %133
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_xdmac_remove(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.at_xdmac, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 -1) #9, !srcloc !11
  %7 = load ptr, ptr %4, align 4
  %8 = getelementptr i8, ptr %7, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %11, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !13
  %12 = load ptr, ptr %4, align 4
  %13 = getelementptr i8, ptr %12, i32 36
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %11

16:                                               ; preds = %11, %1
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 -1) #9, !srcloc !11
  %19 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %20 = load ptr, ptr %19, align 8
  tail call void @of_dma_controller_free(ptr noundef %20) #9
  tail call void @dma_async_device_unregister(ptr noundef %3) #9
  %21 = getelementptr inbounds %struct.at_xdmac, ptr %3, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  tail call void @clk_disable(ptr noundef %22) #9
  tail call void @clk_unprepare(ptr noundef %22) #9
  %23 = getelementptr inbounds %struct.at_xdmac, ptr %3, i32 0, i32 2
  %24 = load i32, ptr %23, align 4
  %25 = tail call ptr @free_irq(i32 noundef %24, ptr noundef %3) #9
  %26 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 1
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %54, label %29

29:                                               ; preds = %50, %16
  %30 = phi i32 [ %51, %50 ], [ 0, %16 ]
  %31 = getelementptr %struct.at_xdmac, ptr %3, i32 0, i32 7, i32 %30, i32 13
  tail call void @tasklet_kill(ptr noundef %31) #9
  %32 = getelementptr %struct.at_xdmac, ptr %3, i32 0, i32 7, i32 %30, i32 17
  %33 = load ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %50, label %35

35:                                               ; preds = %29
  %36 = getelementptr %struct.at_xdmac, ptr %3, i32 0, i32 7, i32 %30
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.at_xdmac, ptr %37, i32 0, i32 5
  br label %39

39:                                               ; preds = %39, %35
  %40 = phi ptr [ %33, %35 ], [ %42, %39 ]
  %41 = getelementptr i8, ptr %40, i32 -100
  %42 = load ptr, ptr %40, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  store ptr %44, ptr %45, align 4
  store volatile ptr %42, ptr %44, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %40, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %43, align 4
  %46 = load ptr, ptr %38, align 4
  %47 = getelementptr i8, ptr %40, i32 -52
  %48 = load i32, ptr %47, align 8
  tail call void @dma_pool_free(ptr noundef %46, ptr noundef %41, i32 noundef %48) #9
  %49 = icmp eq ptr %42, %32
  br i1 %49, label %50, label %39

50:                                               ; preds = %39, %29
  %51 = add nuw i32 %30, 1
  %52 = load i32, ptr %26, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %29, label %54

54:                                               ; preds = %50, %16
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_xdmac_interrupt(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 20
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = load ptr, ptr %3, align 4
  %8 = getelementptr i8, ptr %7, i32 24
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #9, !srcloc !8
  %10 = and i32 %9, %6
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %63, label %12

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 1
  br label %24

14:                                               ; preds = %58, %24
  %15 = phi i32 [ %26, %24 ], [ %59, %58 ]
  %16 = load ptr, ptr %3, align 4
  %17 = getelementptr i8, ptr %16, i32 20
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #9, !srcloc !8
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr i8, ptr %19, i32 24
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #9, !srcloc !8
  %22 = and i32 %21, %18
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %63, label %24

24:                                               ; preds = %14, %12
  %25 = phi i32 [ %10, %12 ], [ %22, %14 ]
  %26 = phi i32 [ 0, %12 ], [ %15, %14 ]
  %27 = load i32, ptr %13, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %14, label %29

29:                                               ; preds = %58, %24
  %30 = phi i32 [ %60, %58 ], [ 0, %24 ]
  %31 = phi i32 [ %59, %58 ], [ %26, %24 ]
  %32 = shl nuw i32 1, %30
  %33 = and i32 %32, %25
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %58, label %35

35:                                               ; preds = %29
  %36 = getelementptr %struct.at_xdmac, ptr %1, i32 0, i32 7, i32 %30, i32 1
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr i8, ptr %37, i32 8
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #9, !srcloc !8
  %40 = load ptr, ptr %36, align 4
  %41 = getelementptr i8, ptr %40, i32 12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #9, !srcloc !8
  %43 = and i32 %42, %39
  %44 = getelementptr %struct.at_xdmac, ptr %1, i32 0, i32 7, i32 %30, i32 11
  store i32 %43, ptr %44, align 4
  %45 = and i32 %43, 48
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %35
  %48 = getelementptr %struct.at_xdmac, ptr %1, i32 0, i32 7, i32 %30, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = load ptr, ptr %3, align 4
  %51 = getelementptr i8, ptr %50, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #9, !srcloc !11
  br label %52

52:                                               ; preds = %47, %35
  %53 = getelementptr %struct.at_xdmac, ptr %1, i32 0, i32 7, i32 %30, i32 13, i32 1
  %54 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %53) #9
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = getelementptr %struct.at_xdmac, ptr %1, i32 0, i32 7, i32 %30, i32 13
  tail call void @__tasklet_schedule(ptr noundef %57) #9
  br label %58

58:                                               ; preds = %56, %52, %29
  %59 = phi i32 [ %31, %29 ], [ 1, %52 ], [ 1, %56 ]
  %60 = add nuw i32 %30, 1
  %61 = load i32, ptr %13, align 4
  %62 = icmp ult i32 %60, %61
  br i1 %62, label %29, label %14

63:                                               ; preds = %14, %2
  %64 = phi i32 [ 0, %2 ], [ %15, %14 ]
  ret i32 %64
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %0) unnamed_addr #5 {
  %2 = tail call i32 @clk_prepare(ptr noundef %0) #9
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %8

4:                                                ; preds = %1
  %5 = tail call i32 @clk_enable(ptr noundef %0) #9
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call void @clk_unprepare(ptr noundef %0) #9
  br label %8

8:                                                ; preds = %7, %4, %1
  %9 = phi i32 [ %2, %1 ], [ %5, %7 ], [ 0, %4 ]
  ret i32 %9
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_xdmac_alloc_chan_resources(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %4, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #9, !srcloc !8
  %7 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = and i32 %8, %6
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.11) #10
  br label %56

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %19, label %24

19:                                               ; preds = %15
  %20 = load i32, ptr @init_nr_desc_per_channel, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %52, label %22

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17, i32 1
  br label %28

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.12) #10
  br label %56

28:                                               ; preds = %39, %22
  %29 = phi i32 [ 0, %22 ], [ %49, %39 ]
  %30 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !14
  %31 = getelementptr inbounds %struct.at_xdmac, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = call ptr @dma_pool_alloc(ptr noundef %32, i32 noundef 3520, ptr noundef nonnull %2) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %36 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.13, i32 noundef %29) #10
  br label %52

39:                                               ; preds = %28
  %40 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 6
  store volatile ptr %40, ptr %40, align 4
  %41 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 6, i32 1
  store ptr %40, ptr %41, align 4
  %42 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %42, ptr noundef %0) #9
  %43 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 2, i32 4
  store ptr @at_xdmac_tx_submit, ptr %43, align 8
  %44 = load i32, ptr %2, align 4
  %45 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 2, i32 2
  store i32 %44, ptr %45, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %46 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 3
  %47 = load ptr, ptr %23, align 4
  store ptr %46, ptr %23, align 4
  store ptr %16, ptr %46, align 4
  %48 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 3, i32 1
  store ptr %47, ptr %48, align 4
  store volatile ptr %46, ptr %47, align 4
  %49 = add nuw i32 %29, 1
  %50 = load i32, ptr @init_nr_desc_per_channel, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %28, label %52

52:                                               ; preds = %39, %35, %19
  %53 = phi i32 [ %29, %35 ], [ 0, %19 ], [ %49, %39 ]
  %54 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  store i32 1, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  store i32 1, ptr %55, align 4
  br label %56

56:                                               ; preds = %52, %24, %11
  %57 = phi i32 [ -5, %11 ], [ %53, %52 ], [ -5, %24 ]
  ret i32 %57
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at_xdmac_free_chan_resources(ptr noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.at_xdmac, ptr %6, i32 0, i32 5
  br label %8

8:                                                ; preds = %8, %5
  %9 = phi ptr [ %3, %5 ], [ %11, %8 ]
  %10 = getelementptr i8, ptr %9, i32 -100
  %11 = load ptr, ptr %9, align 4
  %12 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  store ptr %13, ptr %14, align 4
  store volatile ptr %11, ptr %13, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %12, align 4
  %15 = load ptr, ptr %7, align 4
  %16 = getelementptr i8, ptr %9, i32 -52
  %17 = load i32, ptr %16, align 8
  tail call void @dma_pool_free(ptr noundef %15, ptr noundef %10, i32 noundef %17) #9
  %18 = icmp eq ptr %11, %2
  br i1 %18, label %19, label %8

19:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_xdmac_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !15
  %9 = icmp eq ptr %2, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  store i32 %8, ptr %2, align 4
  %11 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %6, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 0, ptr %12, align 4
  %13 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 3
  store i32 0, ptr %13, align 4
  br label %14

14:                                               ; preds = %10, %3
  %15 = icmp sgt i32 %8, %6
  %16 = icmp sge i32 %8, %1
  %17 = icmp slt i32 %6, %1
  br i1 %15, label %23, label %18

18:                                               ; preds = %14
  %19 = or i1 %17, %16
  %20 = or i1 %9, %19
  %21 = xor i1 %19, true
  %22 = zext i1 %21 to i32
  br i1 %20, label %227, label %28

23:                                               ; preds = %14
  %24 = and i1 %17, %16
  %25 = or i1 %9, %24
  %26 = xor i1 %24, true
  %27 = zext i1 %26 to i32
  br i1 %25, label %227, label %28

28:                                               ; preds = %23, %18
  %29 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 15
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #9
  %31 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 16
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr i8, ptr %32, i32 -16
  %34 = load i8, ptr %33, align 4, !range !16
  %35 = icmp eq i8 %34, 0
  %36 = getelementptr i8, ptr %32, i32 -12
  %37 = load i32, ptr %36, align 8
  br i1 %35, label %222, label %38

38:                                               ; preds = %28
  %39 = getelementptr i8, ptr %32, i32 -108
  %40 = load i32, ptr %39, align 8
  %41 = and i32 %40, 17
  %42 = icmp eq i32 %41, 1
  br i1 %42, label %43, label %66

43:                                               ; preds = %38
  %44 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 2
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.at_xdmac, ptr %4, i32 0, i32 1
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.at_xdmac, ptr %4, i32 0, i32 6
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.at_xdmac_layout, ptr %49, i32 0, i32 6
  %51 = load i8, ptr %50, align 1
  %52 = zext i8 %51 to i32
  %53 = getelementptr i8, ptr %47, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %45) #9, !srcloc !11
  %54 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 1
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr i8, ptr %55, i32 12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %56) #9, !srcloc !8
  %58 = and i32 %57, 8
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %60, %43
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !17
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !18
  %61 = load ptr, ptr %54, align 4
  %62 = getelementptr i8, ptr %61, i32 12
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #9, !srcloc !8
  %64 = and i32 %63, 8
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %60, label %66

66:                                               ; preds = %60, %43, %38
  %67 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr i8, ptr %68, i32 24
  %70 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %69) #9, !srcloc !8
  %71 = and i32 %70, -4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %72 = load ptr, ptr %67, align 4
  %73 = getelementptr i8, ptr %72, i32 32
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %75 = load ptr, ptr %67, align 4
  %76 = getelementptr i8, ptr %75, i32 40
  %77 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %76) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %78 = load ptr, ptr %67, align 4
  %79 = getelementptr i8, ptr %78, i32 24
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #9, !srcloc !8
  %81 = and i32 %80, -4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %82 = icmp ne i32 %71, %81
  %83 = and i32 %77, 2097152
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %82, i1 true, i1 %84
  br i1 %85, label %86, label %162

86:                                               ; preds = %66
  %87 = load ptr, ptr %67, align 4
  %88 = getelementptr i8, ptr %87, i32 24
  %89 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %88) #9, !srcloc !8
  %90 = and i32 %89, -4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %91 = load ptr, ptr %67, align 4
  %92 = getelementptr i8, ptr %91, i32 32
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %92) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %94 = load ptr, ptr %67, align 4
  %95 = getelementptr i8, ptr %94, i32 40
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %95) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %97 = load ptr, ptr %67, align 4
  %98 = getelementptr i8, ptr %97, i32 24
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %98) #9, !srcloc !8
  %100 = and i32 %99, -4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %101 = icmp ne i32 %90, %100
  %102 = and i32 %96, 2097152
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %101, i1 true, i1 %103
  br i1 %104, label %105, label %162

105:                                              ; preds = %86
  %106 = load ptr, ptr %67, align 4
  %107 = getelementptr i8, ptr %106, i32 24
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %107) #9, !srcloc !8
  %109 = and i32 %108, -4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %110 = load ptr, ptr %67, align 4
  %111 = getelementptr i8, ptr %110, i32 32
  %112 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %113 = load ptr, ptr %67, align 4
  %114 = getelementptr i8, ptr %113, i32 40
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %116 = load ptr, ptr %67, align 4
  %117 = getelementptr i8, ptr %116, i32 24
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #9, !srcloc !8
  %119 = and i32 %118, -4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %120 = icmp ne i32 %109, %119
  %121 = and i32 %115, 2097152
  %122 = icmp eq i32 %121, 0
  %123 = select i1 %120, i1 true, i1 %122
  br i1 %123, label %124, label %162

124:                                              ; preds = %105
  %125 = load ptr, ptr %67, align 4
  %126 = getelementptr i8, ptr %125, i32 24
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #9, !srcloc !8
  %128 = and i32 %127, -4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %129 = load ptr, ptr %67, align 4
  %130 = getelementptr i8, ptr %129, i32 32
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %132 = load ptr, ptr %67, align 4
  %133 = getelementptr i8, ptr %132, i32 40
  %134 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %133) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %135 = load ptr, ptr %67, align 4
  %136 = getelementptr i8, ptr %135, i32 24
  %137 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %136) #9, !srcloc !8
  %138 = and i32 %137, -4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %139 = icmp ne i32 %128, %138
  %140 = and i32 %134, 2097152
  %141 = icmp eq i32 %140, 0
  %142 = select i1 %139, i1 true, i1 %141
  br i1 %142, label %143, label %162

143:                                              ; preds = %124
  %144 = load ptr, ptr %67, align 4
  %145 = getelementptr i8, ptr %144, i32 24
  %146 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %145) #9, !srcloc !8
  %147 = and i32 %146, -4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !19
  %148 = load ptr, ptr %67, align 4
  %149 = getelementptr i8, ptr %148, i32 32
  %150 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %149) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !20
  %151 = load ptr, ptr %67, align 4
  %152 = getelementptr i8, ptr %151, i32 40
  %153 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %152) #9, !srcloc !8
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !21
  %154 = load ptr, ptr %67, align 4
  %155 = getelementptr i8, ptr %154, i32 24
  %156 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %155) #9, !srcloc !8
  %157 = and i32 %156, -4
  tail call void asm sideeffect "dsb ", "~{memory}"() #9, !srcloc !22
  %158 = icmp ne i32 %147, %157
  %159 = and i32 %153, 2097152
  %160 = icmp eq i32 %159, 0
  %161 = select i1 %158, i1 true, i1 %160
  br i1 %161, label %225, label %162

162:                                              ; preds = %143, %124, %105, %86, %66
  %163 = phi i32 [ %74, %66 ], [ %93, %86 ], [ %112, %105 ], [ %131, %124 ], [ %150, %143 ]
  %164 = phi i32 [ %71, %66 ], [ %90, %86 ], [ %109, %105 ], [ %128, %124 ], [ %147, %143 ]
  %165 = load i32, ptr %39, align 8
  %166 = and i32 %165, 17
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %190

168:                                              ; preds = %162
  %169 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 2
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr inbounds %struct.at_xdmac, ptr %4, i32 0, i32 1
  %172 = load ptr, ptr %171, align 4
  %173 = getelementptr inbounds %struct.at_xdmac, ptr %4, i32 0, i32 6
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr inbounds %struct.at_xdmac_layout, ptr %174, i32 0, i32 6
  %176 = load i8, ptr %175, align 1
  %177 = zext i8 %176 to i32
  %178 = getelementptr i8, ptr %172, i32 %177
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %170) #9, !srcloc !11
  %179 = load ptr, ptr %67, align 4
  %180 = getelementptr i8, ptr %179, i32 12
  %181 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %180) #9, !srcloc !8
  %182 = and i32 %181, 8
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %184, %168
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !24
  %185 = load ptr, ptr %67, align 4
  %186 = getelementptr i8, ptr %185, i32 12
  %187 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %186) #9, !srcloc !8
  %188 = and i32 %187, 8
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %184, label %190

190:                                              ; preds = %184, %168, %162
  %191 = getelementptr i8, ptr %32, i32 -8
  %192 = load ptr, ptr %191, align 4
  %193 = icmp eq ptr %192, %191
  br i1 %193, label %217, label %197

194:                                              ; preds = %197
  %195 = load ptr, ptr %198, align 4
  %196 = icmp eq ptr %195, %191
  br i1 %196, label %215, label %197

197:                                              ; preds = %194, %190
  %198 = phi ptr [ %195, %194 ], [ %192, %190 ]
  %199 = phi i32 [ %211, %194 ], [ %37, %190 ]
  %200 = getelementptr i8, ptr %198, i32 -100
  %201 = getelementptr i8, ptr %198, i32 -84
  %202 = load i32, ptr %201, align 8
  %203 = lshr i32 %202, 11
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 3
  %206 = getelementptr i8, ptr %198, i32 -96
  %207 = load i32, ptr %206, align 4
  %208 = and i32 %207, 16777215
  %209 = zext i8 %205 to i32
  %210 = shl nuw nsw i32 %208, %209
  %211 = sub i32 %199, %210
  %212 = load i32, ptr %200, align 8
  %213 = and i32 %212, -4
  %214 = icmp eq i32 %213, %164
  br i1 %214, label %215, label %194

215:                                              ; preds = %197, %194
  %216 = zext i8 %205 to i32
  br label %217

217:                                              ; preds = %215, %190
  %218 = phi i32 [ %216, %215 ], [ 0, %190 ]
  %219 = phi i32 [ %211, %215 ], [ %37, %190 ]
  %220 = shl i32 %163, %218
  %221 = add i32 %220, %219
  br label %222

222:                                              ; preds = %217, %28
  %223 = phi i32 [ %221, %217 ], [ %37, %28 ]
  %224 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %223, ptr %224, align 4
  br label %225

225:                                              ; preds = %222, %143
  %226 = phi i32 [ 3, %143 ], [ 1, %222 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #9
  br label %227

227:                                              ; preds = %225, %23, %18
  %228 = phi i32 [ %226, %225 ], [ %22, %18 ], [ %27, %23 ]
  ret i32 %228
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at_xdmac_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 15
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #9
  tail call fastcc void @at_xdmac_advance_work(ptr noundef %0)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = alloca i32, align 4
  %8 = udiv i32 %2, %3
  %9 = add i32 %4, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %15, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.14) #10
  br label %137

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 12
  %17 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %16) #9
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.15) #10
  br label %137

23:                                               ; preds = %15
  %24 = tail call fastcc i32 @at_xdmac_compute_chan_conf(ptr noundef %0, i32 noundef %4)
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %137

26:                                               ; preds = %23
  %27 = icmp ugt i32 %3, %2
  br i1 %27, label %131, label %28

28:                                               ; preds = %26
  %29 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 15
  %30 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17
  %31 = icmp eq i32 %4, 2
  %32 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 14, i32 2
  %33 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 14, i32 1
  %34 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 3
  %35 = call i32 @llvm.umax.i32(i32 %8, i32 1)
  br label %36

36:                                               ; preds = %115, %28
  %37 = phi i32 [ 0, %28 ], [ %123, %115 ]
  %38 = phi ptr [ null, %28 ], [ %69, %115 ]
  %39 = phi ptr [ null, %28 ], [ %117, %115 ]
  %40 = call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #9
  %41 = load volatile ptr, ptr %30, align 4
  %42 = icmp eq ptr %41, %30
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !14
  %45 = getelementptr inbounds %struct.at_xdmac, ptr %44, i32 0, i32 5
  %46 = load ptr, ptr %45, align 4
  %47 = call ptr @dma_pool_alloc(ptr noundef %46, i32 noundef 2304, ptr noundef nonnull %7) #9
  %48 = icmp eq ptr %47, null
  br i1 %48, label %56, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.at_xdmac_desc, ptr %47, i32 0, i32 6
  store volatile ptr %50, ptr %50, align 4
  %51 = getelementptr inbounds %struct.at_xdmac_desc, ptr %47, i32 0, i32 6, i32 1
  store ptr %50, ptr %51, align 4
  %52 = getelementptr inbounds %struct.at_xdmac_desc, ptr %47, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %52, ptr noundef %0) #9
  %53 = getelementptr inbounds %struct.at_xdmac_desc, ptr %47, i32 0, i32 2, i32 4
  store ptr @at_xdmac_tx_submit, ptr %53, align 8
  %54 = load i32, ptr %7, align 4
  %55 = getelementptr inbounds %struct.at_xdmac_desc, ptr %47, i32 0, i32 2, i32 2
  store i32 %54, ptr %55, align 8
  br label %56

56:                                               ; preds = %49, %43
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %68

57:                                               ; preds = %36
  %58 = getelementptr i8, ptr %41, i32 -100
  %59 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %41, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  store volatile ptr %61, ptr %60, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %41, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %59, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(36) %58, i8 0, i32 36, i1 false) #9
  %63 = getelementptr i8, ptr %41, i32 16
  store volatile ptr %63, ptr %63, align 4
  %64 = getelementptr i8, ptr %41, i32 20
  store ptr %63, ptr %64, align 4
  %65 = getelementptr i8, ptr %41, i32 -64
  store i32 4, ptr %65, align 4
  %66 = getelementptr i8, ptr %41, i32 12
  store i32 0, ptr %66, align 8
  %67 = getelementptr i8, ptr %41, i32 8
  store i8 0, ptr %67, align 4
  br label %68

68:                                               ; preds = %57, %56
  %69 = phi ptr [ %47, %56 ], [ %58, %57 ]
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.dma_chan_dev, ptr %73, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.16) #10
  %75 = icmp eq ptr %39, null
  br i1 %75, label %86, label %76

76:                                               ; preds = %71
  %77 = getelementptr inbounds %struct.at_xdmac_desc, ptr %39, i32 0, i32 6
  %78 = load volatile ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %77
  br i1 %79, label %86, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17, i32 1
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.at_xdmac_desc, ptr %39, i32 0, i32 6, i32 1
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.list_head, ptr %78, i32 0, i32 1
  store ptr %82, ptr %85, align 4
  store ptr %78, ptr %82, align 4
  store ptr %30, ptr %84, align 4
  store ptr %84, ptr %81, align 4
  store volatile ptr %77, ptr %77, align 4
  store ptr %77, ptr %83, align 4
  br label %86

86:                                               ; preds = %80, %76, %71
  call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %40) #9
  br label %137

87:                                               ; preds = %68
  call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %40) #9
  br i1 %31, label %88, label %93

88:                                               ; preds = %87
  %89 = load i32, ptr %33, align 4
  %90 = getelementptr inbounds %struct.at_xdmac_lld, ptr %69, i32 0, i32 2
  store i32 %89, ptr %90, align 8
  %91 = mul i32 %37, %3
  %92 = add i32 %91, %1
  br label %98

93:                                               ; preds = %87
  %94 = mul i32 %37, %3
  %95 = add i32 %94, %1
  %96 = getelementptr inbounds %struct.at_xdmac_lld, ptr %69, i32 0, i32 2
  store i32 %95, ptr %96, align 8
  %97 = load i32, ptr %32, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = phi i32 [ %92, %88 ], [ %97, %93 ]
  %100 = getelementptr inbounds %struct.at_xdmac_lld, ptr %69, i32 0, i32 3
  store i32 %99, ptr %100, align 4
  %101 = load i32, ptr %34, align 4
  %102 = getelementptr inbounds %struct.at_xdmac_lld, ptr %69, i32 0, i32 4
  store i32 %101, ptr %102, align 8
  %103 = lshr i32 %101, 11
  %104 = and i32 %103, 3
  %105 = lshr i32 %3, %104
  %106 = or i32 %105, 234881024
  %107 = getelementptr inbounds %struct.at_xdmac_lld, ptr %69, i32 0, i32 1
  store i32 %106, ptr %107, align 4
  %108 = icmp eq ptr %38, null
  br i1 %108, label %115, label %109

109:                                              ; preds = %98
  %110 = getelementptr inbounds %struct.at_xdmac_desc, ptr %69, i32 0, i32 2, i32 2
  %111 = load i32, ptr %110, align 8
  store i32 %111, ptr %38, align 8
  %112 = getelementptr inbounds %struct.at_xdmac_lld, ptr %38, i32 0, i32 1
  %113 = load i32, ptr %112, align 4
  %114 = or i32 %113, 16777216
  store i32 %114, ptr %112, align 4
  br label %115

115:                                              ; preds = %109, %98
  %116 = icmp eq ptr %39, null
  %117 = select i1 %116, ptr %69, ptr %39
  %118 = getelementptr inbounds %struct.at_xdmac_desc, ptr %69, i32 0, i32 3
  %119 = getelementptr inbounds %struct.at_xdmac_desc, ptr %117, i32 0, i32 6
  %120 = getelementptr inbounds %struct.at_xdmac_desc, ptr %117, i32 0, i32 6, i32 1
  %121 = load ptr, ptr %120, align 4
  store ptr %118, ptr %120, align 4
  store ptr %119, ptr %118, align 4
  %122 = getelementptr inbounds %struct.at_xdmac_desc, ptr %69, i32 0, i32 3, i32 1
  store ptr %121, ptr %122, align 4
  store volatile ptr %118, ptr %121, align 4
  %123 = add nuw i32 %37, 1
  %124 = icmp eq i32 %123, %35
  br i1 %124, label %125, label %36

125:                                              ; preds = %115
  %126 = getelementptr inbounds %struct.at_xdmac_desc, ptr %117, i32 0, i32 2, i32 2
  %127 = load i32, ptr %126, align 8
  store i32 %127, ptr %69, align 8
  %128 = getelementptr inbounds %struct.at_xdmac_lld, ptr %69, i32 0, i32 1
  %129 = load i32, ptr %128, align 4
  %130 = or i32 %129, 16777216
  store i32 %130, ptr %128, align 4
  br label %131

131:                                              ; preds = %125, %26
  %132 = phi ptr [ %117, %125 ], [ null, %26 ]
  %133 = getelementptr inbounds %struct.at_xdmac_desc, ptr %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.at_xdmac_desc, ptr %132, i32 0, i32 2, i32 1
  store i32 %5, ptr %134, align 4
  %135 = getelementptr inbounds %struct.at_xdmac_desc, ptr %132, i32 0, i32 5
  store i32 %2, ptr %135, align 8
  %136 = getelementptr inbounds %struct.at_xdmac_desc, ptr %132, i32 0, i32 1
  store i32 %4, ptr %136, align 4
  br label %137

137:                                              ; preds = %131, %86, %23, %19, %11
  %138 = phi ptr [ null, %19 ], [ %133, %131 ], [ null, %11 ], [ null, %23 ], [ null, %86 ]
  ret ptr %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_interleaved(ptr noundef %0, ptr noundef readonly %1, i32 noundef %2) #2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %140, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 7
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %140, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %140

13:                                               ; preds = %9
  %14 = icmp ugt i32 %7, 1
  %15 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  br i1 %14, label %17, label %19

17:                                               ; preds = %13
  %18 = icmp ugt i32 %16, 1
  br i1 %18, label %140, label %30

19:                                               ; preds = %13
  %20 = icmp eq i32 %16, 0
  br i1 %20, label %134, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = load i32, ptr %1, align 4
  %25 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 9
  %26 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 4
  %27 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 6
  %28 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 3
  %29 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 5
  br label %59

30:                                               ; preds = %17
  %31 = load i32, ptr %1, align 4
  %32 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 9
  %35 = tail call fastcc ptr @at_xdmac_interleaved_queue_desc(ptr noundef %0, ptr noundef %0, ptr noundef null, i32 noundef %31, i32 noundef %33, ptr noundef nonnull %1, ptr noundef %34)
  %36 = load i32, ptr %6, align 4
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %53, label %38

38:                                               ; preds = %30
  %39 = icmp eq ptr %35, null
  %40 = getelementptr inbounds %struct.at_xdmac_lld, ptr %35, i32 0, i32 5
  br label %41

41:                                               ; preds = %48, %38
  %42 = phi i32 [ %36, %38 ], [ %49, %48 ]
  %43 = phi i32 [ 0, %38 ], [ %50, %48 ]
  br i1 %39, label %48, label %44

44:                                               ; preds = %41
  %45 = load i32, ptr %40, align 4
  %46 = add i32 %45, 1
  store i32 %46, ptr %40, align 4
  %47 = load i32, ptr %6, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = phi i32 [ %42, %41 ], [ %47, %44 ]
  %50 = add nuw i32 %43, 1
  %51 = add i32 %49, -1
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %41, label %53

53:                                               ; preds = %48, %30
  %54 = getelementptr inbounds %struct.at_xdmac_desc, ptr %35, i32 0, i32 3
  %55 = getelementptr inbounds %struct.at_xdmac_desc, ptr %35, i32 0, i32 6
  %56 = getelementptr inbounds %struct.at_xdmac_desc, ptr %35, i32 0, i32 6, i32 1
  %57 = load ptr, ptr %56, align 4
  store ptr %54, ptr %56, align 4
  store ptr %55, ptr %54, align 4
  %58 = getelementptr inbounds %struct.at_xdmac_desc, ptr %35, i32 0, i32 3, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %54, ptr %57, align 4
  br label %134

59:                                               ; preds = %111, %21
  %60 = phi i32 [ 0, %21 ], [ %131, %111 ]
  %61 = phi i32 [ 0, %21 ], [ %130, %111 ]
  %62 = phi i32 [ %24, %21 ], [ %124, %111 ]
  %63 = phi i32 [ %23, %21 ], [ %128, %111 ]
  %64 = phi ptr [ null, %21 ], [ %115, %111 ]
  %65 = phi ptr [ null, %21 ], [ %98, %111 ]
  %66 = getelementptr %struct.data_chunk, ptr %25, i32 %60
  %67 = load i8, ptr %26, align 1, !range !16
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %59
  %70 = getelementptr %struct.data_chunk, ptr %25, i32 %60, i32 2
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr %struct.data_chunk, ptr %25, i32 %60, i32 1
  %73 = load i32, ptr %72, align 4
  %74 = load i8, ptr %27, align 1, !range !16
  %75 = icmp ne i8 %74, 0
  %76 = icmp ne i32 %71, 0
  %77 = or i1 %76, %75
  %78 = select i1 %76, i32 %71, i32 %73
  br i1 %77, label %80, label %79

79:                                               ; preds = %69, %59
  br label %80

80:                                               ; preds = %79, %69
  %81 = phi i32 [ 0, %79 ], [ %78, %69 ]
  %82 = load i8, ptr %28, align 4, !range !16
  %83 = icmp eq i8 %82, 0
  br i1 %83, label %94, label %84

84:                                               ; preds = %80
  %85 = getelementptr %struct.data_chunk, ptr %25, i32 %60, i32 3
  %86 = load i32, ptr %85, align 4
  %87 = getelementptr %struct.data_chunk, ptr %25, i32 %60, i32 1
  %88 = load i32, ptr %87, align 4
  %89 = load i8, ptr %29, align 2, !range !16
  %90 = icmp ne i8 %89, 0
  %91 = icmp ne i32 %86, 0
  %92 = or i1 %91, %90
  %93 = select i1 %91, i32 %86, i32 %88
  br i1 %92, label %95, label %94

94:                                               ; preds = %84, %80
  br label %95

95:                                               ; preds = %94, %84
  %96 = phi i32 [ 0, %94 ], [ %93, %84 ]
  %97 = load i32, ptr %66, align 4
  %98 = tail call fastcc ptr @at_xdmac_interleaved_queue_desc(ptr noundef %0, ptr noundef %0, ptr noundef %65, i32 noundef %62, i32 noundef %63, ptr noundef nonnull %1, ptr noundef %66)
  %99 = icmp eq ptr %98, null
  br i1 %99, label %100, label %111

100:                                              ; preds = %95
  %101 = getelementptr inbounds %struct.at_xdmac_desc, ptr %64, i32 0, i32 6
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %140, label %104

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17
  %106 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.at_xdmac_desc, ptr %64, i32 0, i32 6, i32 1
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  store ptr %107, ptr %110, align 4
  store ptr %102, ptr %107, align 4
  store ptr %105, ptr %109, align 4
  store ptr %109, ptr %106, align 4
  store volatile ptr %101, ptr %101, align 4
  store ptr %101, ptr %108, align 4
  br label %140

111:                                              ; preds = %95
  %112 = add i32 %97, %81
  %113 = add i32 %97, %96
  %114 = icmp eq ptr %64, null
  %115 = select i1 %114, ptr %98, ptr %64
  %116 = getelementptr inbounds %struct.at_xdmac_desc, ptr %98, i32 0, i32 3
  %117 = getelementptr inbounds %struct.at_xdmac_desc, ptr %115, i32 0, i32 6
  %118 = getelementptr inbounds %struct.at_xdmac_desc, ptr %115, i32 0, i32 6, i32 1
  %119 = load ptr, ptr %118, align 4
  store ptr %116, ptr %118, align 4
  store ptr %117, ptr %116, align 4
  %120 = getelementptr inbounds %struct.at_xdmac_desc, ptr %98, i32 0, i32 3, i32 1
  store ptr %119, ptr %120, align 4
  store volatile ptr %116, ptr %119, align 4
  %121 = load i8, ptr %29, align 2, !range !16
  %122 = icmp eq i8 %121, 0
  %123 = select i1 %122, i32 0, i32 %113
  %124 = add i32 %123, %62
  %125 = load i8, ptr %27, align 1, !range !16
  %126 = icmp eq i8 %125, 0
  %127 = select i1 %126, i32 0, i32 %112
  %128 = add i32 %127, %63
  %129 = load i32, ptr %66, align 4
  %130 = add i32 %129, %61
  %131 = add nuw i32 %60, 1
  %132 = load i32, ptr %15, align 4
  %133 = icmp ult i32 %131, %132
  br i1 %133, label %59, label %134

134:                                              ; preds = %111, %53, %19
  %135 = phi ptr [ %35, %53 ], [ null, %19 ], [ %115, %111 ]
  %136 = phi i32 [ 0, %53 ], [ 0, %19 ], [ %130, %111 ]
  %137 = getelementptr inbounds %struct.at_xdmac_desc, ptr %135, i32 0, i32 2
  store i32 -16, ptr %137, align 8
  %138 = getelementptr inbounds %struct.at_xdmac_desc, ptr %135, i32 0, i32 2, i32 1
  store i32 %2, ptr %138, align 4
  %139 = getelementptr inbounds %struct.at_xdmac_desc, ptr %135, i32 0, i32 5
  store i32 %136, ptr %139, align 8
  br label %140

140:                                              ; preds = %134, %104, %100, %17, %9, %5, %3
  %141 = phi ptr [ %137, %134 ], [ null, %9 ], [ null, %5 ], [ null, %3 ], [ null, %17 ], [ null, %104 ], [ null, %100 ]
  ret ptr %141
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca i32, align 4
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %125, label %8, !prof !25

8:                                                ; preds = %5
  %9 = or i32 %2, %1
  %10 = and i32 %9, 7
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %8
  %13 = and i32 %9, 3
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = and i32 %9, 1
  %17 = xor i32 %16, 1
  br label %18

18:                                               ; preds = %15, %12, %8
  %19 = phi i32 [ 3, %8 ], [ 2, %12 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 15
  %21 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17
  br label %22

22:                                               ; preds = %112, %18
  %23 = phi i32 [ 2131034118, %18 ], [ %97, %112 ]
  %24 = phi i32 [ %19, %18 ], [ %93, %112 ]
  %25 = phi i32 [ %1, %18 ], [ %79, %112 ]
  %26 = phi i32 [ %2, %18 ], [ %78, %112 ]
  %27 = phi i32 [ 0, %18 ], [ %81, %112 ]
  %28 = phi i32 [ %3, %18 ], [ %99, %112 ]
  %29 = phi ptr [ null, %18 ], [ %60, %112 ]
  %30 = phi ptr [ null, %18 ], [ %114, %112 ]
  %31 = call i32 @_raw_spin_lock_irqsave(ptr noundef %20) #9
  %32 = load volatile ptr, ptr %21, align 4
  %33 = icmp eq ptr %32, %21
  br i1 %33, label %34, label %48

34:                                               ; preds = %22
  %35 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !14
  %36 = getelementptr inbounds %struct.at_xdmac, ptr %35, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = call ptr @dma_pool_alloc(ptr noundef %37, i32 noundef 2304, ptr noundef nonnull %6) #9
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.at_xdmac_desc, ptr %38, i32 0, i32 6
  store volatile ptr %41, ptr %41, align 4
  %42 = getelementptr inbounds %struct.at_xdmac_desc, ptr %38, i32 0, i32 6, i32 1
  store ptr %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.at_xdmac_desc, ptr %38, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %43, ptr noundef %0) #9
  %44 = getelementptr inbounds %struct.at_xdmac_desc, ptr %38, i32 0, i32 2, i32 4
  store ptr @at_xdmac_tx_submit, ptr %44, align 8
  %45 = load i32, ptr %6, align 4
  %46 = getelementptr inbounds %struct.at_xdmac_desc, ptr %38, i32 0, i32 2, i32 2
  store i32 %45, ptr %46, align 8
  br label %47

47:                                               ; preds = %40, %34
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %59

48:                                               ; preds = %22
  %49 = getelementptr i8, ptr %32, i32 -100
  %50 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = load ptr, ptr %32, align 4
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %51, ptr %53, align 4
  store volatile ptr %52, ptr %51, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %50, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(36) %49, i8 0, i32 36, i1 false) #9
  %54 = getelementptr i8, ptr %32, i32 16
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr i8, ptr %32, i32 20
  store ptr %54, ptr %55, align 4
  %56 = getelementptr i8, ptr %32, i32 -64
  store i32 4, ptr %56, align 4
  %57 = getelementptr i8, ptr %32, i32 12
  store i32 0, ptr %57, align 8
  %58 = getelementptr i8, ptr %32, i32 8
  store i8 0, ptr %58, align 4
  br label %59

59:                                               ; preds = %48, %47
  %60 = phi ptr [ %38, %47 ], [ %49, %48 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %20, i32 noundef %31) #9
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %77

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr inbounds %struct.dma_chan_dev, ptr %64, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.16) #10
  %66 = icmp eq ptr %30, null
  br i1 %66, label %125, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %struct.at_xdmac_desc, ptr %30, i32 0, i32 6
  %69 = load volatile ptr, ptr %68, align 4
  %70 = icmp eq ptr %69, %68
  br i1 %70, label %125, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17, i32 1
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr inbounds %struct.at_xdmac_desc, ptr %30, i32 0, i32 6, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %73, ptr %76, align 4
  store ptr %69, ptr %73, align 4
  store ptr %21, ptr %75, align 4
  store ptr %75, ptr %72, align 4
  store volatile ptr %68, ptr %68, align 4
  store ptr %68, ptr %74, align 4
  br label %125

77:                                               ; preds = %59
  %78 = add i32 %26, %27
  %79 = add i32 %25, %27
  %80 = shl i32 16777215, %24
  %81 = call i32 @llvm.umin.i32(i32 %28, i32 %80)
  %82 = or i32 %79, %78
  %83 = or i32 %82, %81
  %84 = and i32 %83, 7
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %77
  %87 = and i32 %83, 3
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %86
  %90 = and i32 %83, 1
  %91 = xor i32 %90, 1
  br label %92

92:                                               ; preds = %89, %86, %77
  %93 = phi i32 [ 3, %77 ], [ 2, %86 ], [ %91, %89 ]
  %94 = and i32 %23, -6145
  %95 = shl nsw i32 %93, 11
  %96 = and i32 %95, 6144
  %97 = or i32 %96, %94
  %98 = lshr i32 %81, %93
  %99 = sub i32 %28, %81
  %100 = getelementptr inbounds %struct.at_xdmac_lld, ptr %60, i32 0, i32 2
  store i32 %78, ptr %100, align 8
  %101 = getelementptr inbounds %struct.at_xdmac_lld, ptr %60, i32 0, i32 3
  store i32 %79, ptr %101, align 4
  %102 = or i32 %98, 369098752
  %103 = getelementptr inbounds %struct.at_xdmac_lld, ptr %60, i32 0, i32 1
  store i32 %102, ptr %103, align 4
  %104 = getelementptr inbounds %struct.at_xdmac_lld, ptr %60, i32 0, i32 4
  store i32 %97, ptr %104, align 8
  %105 = icmp eq ptr %29, null
  br i1 %105, label %112, label %106

106:                                              ; preds = %92
  %107 = getelementptr inbounds %struct.at_xdmac_desc, ptr %60, i32 0, i32 2, i32 2
  %108 = load i32, ptr %107, align 8
  store i32 %108, ptr %29, align 8
  %109 = getelementptr inbounds %struct.at_xdmac_lld, ptr %29, i32 0, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = or i32 %110, 16777216
  store i32 %111, ptr %109, align 4
  br label %112

112:                                              ; preds = %106, %92
  %113 = icmp eq ptr %30, null
  %114 = select i1 %113, ptr %60, ptr %30
  %115 = getelementptr inbounds %struct.at_xdmac_desc, ptr %60, i32 0, i32 3
  %116 = getelementptr inbounds %struct.at_xdmac_desc, ptr %114, i32 0, i32 6
  %117 = getelementptr inbounds %struct.at_xdmac_desc, ptr %114, i32 0, i32 6, i32 1
  %118 = load ptr, ptr %117, align 4
  store ptr %115, ptr %117, align 4
  store ptr %116, ptr %115, align 4
  %119 = getelementptr inbounds %struct.at_xdmac_desc, ptr %60, i32 0, i32 3, i32 1
  store ptr %118, ptr %119, align 4
  store volatile ptr %115, ptr %118, align 4
  %120 = icmp eq i32 %99, 0
  br i1 %120, label %121, label %22

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.at_xdmac_desc, ptr %114, i32 0, i32 2
  %123 = getelementptr inbounds %struct.at_xdmac_desc, ptr %114, i32 0, i32 2, i32 1
  store i32 %4, ptr %123, align 4
  %124 = getelementptr inbounds %struct.at_xdmac_desc, ptr %114, i32 0, i32 5
  store i32 %3, ptr %124, align 8
  br label %125

125:                                              ; preds = %121, %71, %67, %62, %5
  %126 = phi ptr [ %122, %121 ], [ null, %5 ], [ null, %71 ], [ null, %67 ], [ null, %62 ]
  ret ptr %126
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_dma_memset(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = icmp eq i32 %3, 0
  br i1 %6, label %17, label %7, !prof !25

7:                                                ; preds = %5
  %8 = tail call fastcc ptr @at_xdmac_memset_create_desc(ptr noundef %0, ptr noundef %0, i32 noundef %1, i32 noundef %3, i32 noundef %2)
  %9 = getelementptr inbounds %struct.at_xdmac_desc, ptr %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.at_xdmac_desc, ptr %8, i32 0, i32 6
  %11 = getelementptr inbounds %struct.at_xdmac_desc, ptr %8, i32 0, i32 6, i32 1
  %12 = load ptr, ptr %11, align 4
  store ptr %9, ptr %11, align 4
  store ptr %10, ptr %9, align 4
  %13 = getelementptr inbounds %struct.at_xdmac_desc, ptr %8, i32 0, i32 3, i32 1
  store ptr %12, ptr %13, align 4
  store volatile ptr %9, ptr %12, align 4
  %14 = getelementptr inbounds %struct.at_xdmac_desc, ptr %8, i32 0, i32 2
  store i32 -16, ptr %14, align 8
  %15 = getelementptr inbounds %struct.at_xdmac_desc, ptr %8, i32 0, i32 2, i32 1
  store i32 %4, ptr %15, align 4
  %16 = getelementptr inbounds %struct.at_xdmac_desc, ptr %8, i32 0, i32 5
  store i32 %3, ptr %16, align 8
  br label %17

17:                                               ; preds = %7, %5
  %18 = phi ptr [ %14, %7 ], [ null, %5 ]
  ret ptr %18
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_dma_memset_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = icmp eq ptr %1, null
  br i1 %6, label %121, label %7

7:                                                ; preds = %5
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %115, label %9

9:                                                ; preds = %7
  %10 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17
  %11 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17, i32 1
  %12 = add i32 %2, -1
  br label %13

13:                                               ; preds = %109, %9
  %14 = phi i32 [ 0, %9 ], [ %112, %109 ]
  %15 = phi i32 [ 0, %9 ], [ %111, %109 ]
  %16 = phi i32 [ 0, %9 ], [ %52, %109 ]
  %17 = phi ptr [ null, %9 ], [ %18, %109 ]
  %18 = phi ptr [ null, %9 ], [ %19, %109 ]
  %19 = phi ptr [ %1, %9 ], [ %113, %109 ]
  %20 = phi ptr [ null, %9 ], [ %41, %109 ]
  %21 = phi ptr [ null, %9 ], [ %91, %109 ]
  %22 = phi ptr [ null, %9 ], [ %27, %109 ]
  %23 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = tail call fastcc ptr @at_xdmac_memset_create_desc(ptr noundef %0, ptr noundef %0, i32 noundef %24, i32 noundef %26, i32 noundef %3)
  %28 = icmp eq ptr %27, null
  %29 = icmp ne ptr %20, null
  %30 = select i1 %28, i1 %29, i1 false
  br i1 %30, label %31, label %40

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.at_xdmac_desc, ptr %20, i32 0, i32 6
  %33 = load volatile ptr, ptr %32, align 4
  %34 = icmp eq ptr %33, %32
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %11, align 4
  %37 = getelementptr inbounds %struct.at_xdmac_desc, ptr %20, i32 0, i32 6, i32 1
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  store ptr %36, ptr %39, align 4
  store ptr %33, ptr %36, align 4
  store ptr %10, ptr %38, align 4
  store ptr %38, ptr %11, align 4
  store volatile ptr %32, ptr %32, align 4
  store ptr %32, ptr %37, align 4
  br label %40

40:                                               ; preds = %35, %31, %13
  %41 = select i1 %29, ptr %20, ptr %27
  %42 = icmp eq ptr %18, null
  br i1 %42, label %51, label %43

43:                                               ; preds = %40
  %44 = load i32, ptr %23, align 4
  %45 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 4
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %46, %48
  %50 = sub i32 %44, %49
  br label %51

51:                                               ; preds = %43, %40
  %52 = phi i32 [ %50, %43 ], [ %16, %40 ]
  %53 = icmp ne ptr %21, null
  %54 = icmp ne ptr %22, null
  %55 = select i1 %53, i1 %54, i1 false
  br i1 %55, label %56, label %90

56:                                               ; preds = %51
  %57 = icmp eq i32 %52, %16
  br i1 %57, label %58, label %72

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.scatterlist, ptr %17, i32 0, i32 4
  %60 = load i32, ptr %59, align 4
  %61 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 4
  %62 = load i32, ptr %61, align 4
  %63 = icmp eq i32 %60, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct.at_xdmac_lld, ptr %21, i32 0, i32 5
  %66 = load i32, ptr %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, ptr %65, align 4
  %68 = getelementptr inbounds %struct.at_xdmac_lld, ptr %21, i32 0, i32 8
  store i32 %16, ptr %68, align 8
  %69 = getelementptr inbounds %struct.at_xdmac_desc, ptr %22, i32 0, i32 3
  %70 = load ptr, ptr %11, align 4
  store ptr %69, ptr %11, align 4
  store ptr %10, ptr %69, align 4
  %71 = getelementptr inbounds %struct.at_xdmac_desc, ptr %22, i32 0, i32 3, i32 1
  store ptr %70, ptr %71, align 4
  store volatile ptr %69, ptr %70, align 4
  br label %90

72:                                               ; preds = %58, %56
  %73 = icmp eq i32 %16, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %72
  %75 = load i32, ptr %23, align 4
  %76 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 3
  %77 = load i32, ptr %76, align 4
  %78 = icmp ult i32 %75, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %74, %72
  %80 = getelementptr inbounds %struct.at_xdmac_desc, ptr %22, i32 0, i32 2, i32 2
  %81 = load i32, ptr %80, align 8
  store i32 %81, ptr %21, align 8
  %82 = getelementptr inbounds %struct.at_xdmac_lld, ptr %21, i32 0, i32 1
  %83 = load i32, ptr %82, align 4
  %84 = or i32 %83, 16777216
  store i32 %84, ptr %82, align 4
  %85 = getelementptr inbounds %struct.at_xdmac_desc, ptr %27, i32 0, i32 3
  %86 = getelementptr inbounds %struct.at_xdmac_desc, ptr %41, i32 0, i32 6
  %87 = getelementptr inbounds %struct.at_xdmac_desc, ptr %41, i32 0, i32 6, i32 1
  %88 = load ptr, ptr %87, align 4
  store ptr %85, ptr %87, align 4
  store ptr %86, ptr %85, align 4
  %89 = getelementptr inbounds %struct.at_xdmac_desc, ptr %27, i32 0, i32 3, i32 1
  store ptr %88, ptr %89, align 4
  store volatile ptr %85, ptr %88, align 4
  br label %90

90:                                               ; preds = %79, %74, %64, %51
  %91 = phi ptr [ %21, %64 ], [ %22, %79 ], [ %22, %74 ], [ %22, %51 ]
  %92 = icmp eq i32 %14, %12
  br i1 %92, label %93, label %109

93:                                               ; preds = %90
  %94 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 4
  %95 = load i32, ptr %94, align 4
  %96 = load i32, ptr %25, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = icmp eq ptr %91, null
  br i1 %99, label %104, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.at_xdmac_lld, ptr %91, i32 0, i32 5
  %102 = load i32, ptr %101, align 4
  %103 = add i32 %102, 1
  store i32 %103, ptr %101, align 4
  br label %104

104:                                              ; preds = %100, %98
  %105 = getelementptr inbounds %struct.at_xdmac_lld, ptr %91, i32 0, i32 8
  store i32 %52, ptr %105, align 8
  %106 = getelementptr inbounds %struct.at_xdmac_desc, ptr %27, i32 0, i32 3
  %107 = load ptr, ptr %11, align 4
  store ptr %106, ptr %11, align 4
  store ptr %10, ptr %106, align 4
  %108 = getelementptr inbounds %struct.at_xdmac_desc, ptr %27, i32 0, i32 3, i32 1
  store ptr %107, ptr %108, align 4
  store volatile ptr %106, ptr %107, align 4
  br label %109

109:                                              ; preds = %104, %93, %90
  %110 = load i32, ptr %25, align 4
  %111 = add i32 %110, %15
  %112 = add nuw i32 %14, 1
  %113 = tail call ptr @sg_next(ptr noundef %19) #9
  %114 = icmp eq i32 %112, %2
  br i1 %114, label %115, label %13

115:                                              ; preds = %109, %7
  %116 = phi ptr [ null, %7 ], [ %41, %109 ]
  %117 = phi i32 [ 0, %7 ], [ %111, %109 ]
  %118 = getelementptr inbounds %struct.at_xdmac_desc, ptr %116, i32 0, i32 2
  store i32 -16, ptr %118, align 8
  %119 = getelementptr inbounds %struct.at_xdmac_desc, ptr %116, i32 0, i32 2, i32 1
  store i32 %4, ptr %119, align 4
  %120 = getelementptr inbounds %struct.at_xdmac_desc, ptr %116, i32 0, i32 5
  store i32 %117, ptr %120, align 8
  br label %121

121:                                              ; preds = %115, %5
  %122 = phi ptr [ %118, %115 ], [ null, %5 ]
  ret ptr %122
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = alloca i32, align 4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %144, label %9

9:                                                ; preds = %6
  %10 = add i32 %3, -1
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.14) #10
  br label %144

16:                                               ; preds = %9
  %17 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 15
  %18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %17) #9
  %19 = tail call fastcc i32 @at_xdmac_compute_chan_conf(ptr noundef %0, i32 noundef %3)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %142

21:                                               ; preds = %16
  %22 = icmp eq i32 %2, 0
  br i1 %22, label %135, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17
  %25 = icmp eq i32 %3, 2
  %26 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 14, i32 2
  %27 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 14, i32 1
  %28 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 3
  br label %29

29:                                               ; preds = %123, %23
  %30 = phi i32 [ 0, %23 ], [ %131, %123 ]
  %31 = phi i32 [ 0, %23 ], [ %132, %123 ]
  %32 = phi ptr [ %1, %23 ], [ %133, %123 ]
  %33 = phi ptr [ null, %23 ], [ %73, %123 ]
  %34 = phi ptr [ null, %23 ], [ %125, %123 ]
  %35 = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds %struct.scatterlist, ptr %32, i32 0, i32 3
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %40, label %44, !prof !25

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.dma_chan_dev, ptr %42, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.21) #10
  br label %142

44:                                               ; preds = %29
  %45 = load volatile ptr, ptr %24, align 4
  %46 = icmp eq ptr %45, %24
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #9
  store i32 0, ptr %7, align 4, !annotation !14
  %49 = getelementptr inbounds %struct.at_xdmac, ptr %48, i32 0, i32 5
  %50 = load ptr, ptr %49, align 4
  %51 = call ptr @dma_pool_alloc(ptr noundef %50, i32 noundef 2304, ptr noundef nonnull %7) #9
  %52 = icmp eq ptr %51, null
  br i1 %52, label %60, label %53

53:                                               ; preds = %47
  %54 = getelementptr inbounds %struct.at_xdmac_desc, ptr %51, i32 0, i32 6
  store volatile ptr %54, ptr %54, align 4
  %55 = getelementptr inbounds %struct.at_xdmac_desc, ptr %51, i32 0, i32 6, i32 1
  store ptr %54, ptr %55, align 4
  %56 = getelementptr inbounds %struct.at_xdmac_desc, ptr %51, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %56, ptr noundef %0) #9
  %57 = getelementptr inbounds %struct.at_xdmac_desc, ptr %51, i32 0, i32 2, i32 4
  store ptr @at_xdmac_tx_submit, ptr %57, align 8
  %58 = load i32, ptr %7, align 4
  %59 = getelementptr inbounds %struct.at_xdmac_desc, ptr %51, i32 0, i32 2, i32 2
  store i32 %58, ptr %59, align 8
  br label %60

60:                                               ; preds = %53, %47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #9
  br label %72

61:                                               ; preds = %44
  %62 = getelementptr i8, ptr %45, i32 -100
  %63 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load ptr, ptr %45, align 4
  %66 = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  store ptr %64, ptr %66, align 4
  store volatile ptr %65, ptr %64, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %45, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %63, align 4
  call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(36) %62, i8 0, i32 36, i1 false) #9
  %67 = getelementptr i8, ptr %45, i32 16
  store volatile ptr %67, ptr %67, align 4
  %68 = getelementptr i8, ptr %45, i32 20
  store ptr %67, ptr %68, align 4
  %69 = getelementptr i8, ptr %45, i32 -64
  store i32 4, ptr %69, align 4
  %70 = getelementptr i8, ptr %45, i32 12
  store i32 0, ptr %70, align 8
  %71 = getelementptr i8, ptr %45, i32 8
  store i8 0, ptr %71, align 4
  br label %72

72:                                               ; preds = %61, %60
  %73 = phi ptr [ %51, %60 ], [ %62, %61 ]
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.dma_chan_dev, ptr %77, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.16) #10
  %79 = icmp eq ptr %34, null
  br i1 %79, label %142, label %80

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.at_xdmac_desc, ptr %34, i32 0, i32 6
  %82 = load volatile ptr, ptr %81, align 4
  %83 = icmp eq ptr %82, %81
  br i1 %83, label %142, label %84

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.at_xdmac_desc, ptr %34, i32 0, i32 6, i32 1
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr inbounds %struct.list_head, ptr %82, i32 0, i32 1
  store ptr %86, ptr %89, align 4
  store ptr %82, ptr %86, align 4
  store ptr %24, ptr %88, align 4
  store ptr %88, ptr %85, align 4
  store volatile ptr %81, ptr %81, align 4
  store ptr %81, ptr %87, align 4
  br label %142

90:                                               ; preds = %72
  br i1 %25, label %91, label %94

91:                                               ; preds = %90
  %92 = load i32, ptr %27, align 4
  %93 = getelementptr inbounds %struct.at_xdmac_lld, ptr %73, i32 0, i32 2
  store i32 %92, ptr %93, align 8
  br label %97

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct.at_xdmac_lld, ptr %73, i32 0, i32 2
  store i32 %38, ptr %95, align 8
  %96 = load i32, ptr %26, align 4
  br label %97

97:                                               ; preds = %94, %91
  %98 = phi i32 [ %38, %91 ], [ %96, %94 ]
  %99 = getelementptr inbounds %struct.at_xdmac_lld, ptr %73, i32 0, i32 3
  store i32 %98, ptr %99, align 4
  %100 = load i32, ptr %28, align 4
  %101 = lshr i32 %100, 11
  %102 = and i32 %101, 3
  %103 = shl nsw i32 -1, %102
  %104 = xor i32 %103, -1
  %105 = and i32 %36, %104
  %106 = icmp eq i32 %105, 0
  %107 = select i1 %106, i32 %102, i32 0
  %108 = lshr i32 %36, %107
  %109 = or i32 %108, 369098752
  %110 = getelementptr inbounds %struct.at_xdmac_lld, ptr %73, i32 0, i32 1
  store i32 %109, ptr %110, align 4
  %111 = load i32, ptr %28, align 4
  %112 = and i32 %111, -6145
  %113 = shl nuw nsw i32 %107, 11
  %114 = or i32 %113, %112
  %115 = getelementptr inbounds %struct.at_xdmac_lld, ptr %73, i32 0, i32 4
  store i32 %114, ptr %115, align 8
  %116 = icmp eq ptr %33, null
  br i1 %116, label %123, label %117

117:                                              ; preds = %97
  %118 = getelementptr inbounds %struct.at_xdmac_desc, ptr %73, i32 0, i32 2, i32 2
  %119 = load i32, ptr %118, align 8
  store i32 %119, ptr %33, align 8
  %120 = getelementptr inbounds %struct.at_xdmac_lld, ptr %33, i32 0, i32 1
  %121 = load i32, ptr %120, align 4
  %122 = or i32 %121, 16777216
  store i32 %122, ptr %120, align 4
  br label %123

123:                                              ; preds = %117, %97
  %124 = icmp eq ptr %34, null
  %125 = select i1 %124, ptr %73, ptr %34
  %126 = getelementptr inbounds %struct.at_xdmac_desc, ptr %73, i32 0, i32 3
  %127 = getelementptr inbounds %struct.at_xdmac_desc, ptr %125, i32 0, i32 6
  %128 = getelementptr inbounds %struct.at_xdmac_desc, ptr %125, i32 0, i32 6, i32 1
  %129 = load ptr, ptr %128, align 4
  store ptr %126, ptr %128, align 4
  store ptr %127, ptr %126, align 4
  %130 = getelementptr inbounds %struct.at_xdmac_desc, ptr %73, i32 0, i32 3, i32 1
  store ptr %129, ptr %130, align 4
  store volatile ptr %126, ptr %129, align 4
  %131 = add i32 %36, %30
  %132 = add nuw i32 %31, 1
  %133 = call ptr @sg_next(ptr noundef %32) #9
  %134 = icmp eq i32 %132, %2
  br i1 %134, label %135, label %29

135:                                              ; preds = %123, %21
  %136 = phi ptr [ null, %21 ], [ %125, %123 ]
  %137 = phi i32 [ 0, %21 ], [ %131, %123 ]
  %138 = getelementptr inbounds %struct.at_xdmac_desc, ptr %136, i32 0, i32 2
  %139 = getelementptr inbounds %struct.at_xdmac_desc, ptr %136, i32 0, i32 2, i32 1
  store i32 %4, ptr %139, align 4
  %140 = getelementptr inbounds %struct.at_xdmac_desc, ptr %136, i32 0, i32 5
  store i32 %137, ptr %140, align 8
  %141 = getelementptr inbounds %struct.at_xdmac_desc, ptr %136, i32 0, i32 1
  store i32 %3, ptr %141, align 4
  br label %142

142:                                              ; preds = %135, %84, %80, %75, %40, %16
  %143 = phi ptr [ null, %16 ], [ %138, %135 ], [ null, %40 ], [ null, %75 ], [ null, %80 ], [ null, %84 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %17, i32 noundef %18) #9
  br label %144

144:                                              ; preds = %142, %12, %6
  %145 = phi ptr [ %143, %142 ], [ null, %12 ], [ null, %6 ]
  ret ptr %145
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_xdmac_device_config(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 15
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = icmp ugt i32 %6, 16
  br i1 %7, label %20, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = icmp ugt i32 %10, 16
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = icmp ugt i32 %14, 8
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 4
  %18 = load i32, ptr %17, align 4
  %19 = icmp ugt i32 %18, 8
  br i1 %19, label %20, label %24

20:                                               ; preds = %16, %12, %8, %2
  %21 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.dma_chan_dev, ptr %22, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.22) #10
  br label %26

24:                                               ; preds = %16
  %25 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 14
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %25, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false) #9
  br label %26

26:                                               ; preds = %24, %20
  %27 = phi i32 [ -22, %20 ], [ 0, %24 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret i32 %27
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_xdmac_device_pause(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 12
  %4 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %3) #9
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %32

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 15
  %8 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %7) #9
  %9 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.at_xdmac, ptr %2, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.at_xdmac, ptr %2, i32 0, i32 6
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.at_xdmac_layout, ptr %14, i32 0, i32 2
  %16 = load i8, ptr %15, align 1
  %17 = zext i8 %16 to i32
  %18 = getelementptr i8, ptr %12, i32 %17
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 %10) #9, !srcloc !11
  %19 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 40
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #9, !srcloc !8
  %23 = and i32 %22, 12582912
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %25, %6
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 40
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #9, !srcloc !8
  %29 = and i32 %28, 12582912
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %25

31:                                               ; preds = %25, %6
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %7, i32 noundef %8) #9
  br label %32

32:                                               ; preds = %31, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_xdmac_device_resume(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 15
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 12
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 2
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %20, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 2
  %11 = load i32, ptr %10, align 4
  %12 = getelementptr inbounds %struct.at_xdmac, ptr %2, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.at_xdmac, ptr %2, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.at_xdmac_layout, ptr %15, i32 0, i32 3
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i32
  %19 = getelementptr i8, ptr %13, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 %11) #9, !srcloc !11
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %5) #9
  br label %20

20:                                               ; preds = %9, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_xdmac_device_terminate_all(ptr noundef %0) #2 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 15
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #9
  %5 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.at_xdmac, ptr %2, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %9, i32 %6) #9, !srcloc !11
  %10 = load ptr, ptr %7, align 4
  %11 = getelementptr i8, ptr %10, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  %13 = load i32, ptr %5, align 4
  %14 = and i32 %13, %12
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %16, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !28
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !29
  %17 = load ptr, ptr %7, align 4
  %18 = getelementptr i8, ptr %17, i32 36
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #9, !srcloc !8
  %20 = load i32, ptr %5, align 4
  %21 = and i32 %20, %19
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %16

23:                                               ; preds = %16, %1
  %24 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 16
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, %24
  br i1 %26, label %46, label %27

27:                                               ; preds = %23
  %28 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17
  %29 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 17, i32 1
  br label %30

30:                                               ; preds = %44, %27
  %31 = phi ptr [ %25, %27 ], [ %32, %44 ]
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  store ptr %34, ptr %35, align 4
  store volatile ptr %32, ptr %34, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %31, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %33, align 4
  %36 = getelementptr i8, ptr %31, i32 -8
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = load ptr, ptr %29, align 4
  %41 = getelementptr i8, ptr %31, i32 -4
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %40, ptr %43, align 4
  store ptr %37, ptr %40, align 4
  store ptr %28, ptr %42, align 4
  store ptr %42, ptr %29, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %41, align 4
  br label %44

44:                                               ; preds = %39, %30
  %45 = icmp eq ptr %32, %24
  br i1 %45, label %46, label %30

46:                                               ; preds = %44, %23
  %47 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %47) #9
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %47) #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at_xdmac_off(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.at_xdmac, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 -1) #9, !srcloc !11
  %5 = load ptr, ptr %2, align 4
  %6 = getelementptr i8, ptr %5, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #9, !srcloc !8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %9, %1
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !13
  %10 = load ptr, ptr %2, align 4
  %11 = getelementptr i8, ptr %10, i32 36
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !8
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %9

14:                                               ; preds = %9, %1
  %15 = load ptr, ptr %2, align 4
  %16 = getelementptr i8, ptr %15, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 -1) #9, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @at_xdmac_tasklet(ptr noundef %0) #2 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = alloca %struct.dmaengine_result, align 8
  %4 = getelementptr i8, ptr %0, i32 -104
  %5 = getelementptr i8, ptr %0, i32 -4
  %6 = load volatile i32, ptr %5, align 4
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  %9 = getelementptr i8, ptr %0, i32 72
  tail call void @_raw_spin_lock_irq(ptr noundef %9) #9
  br i1 %8, label %34, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 76
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9
  %14 = load i16, ptr %9, align 4
  %15 = add i16 %14, 1
  store i16 %15, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9
  tail call void asm sideeffect "", "~{memory}"() #9
  br i1 %13, label %148, label %16

16:                                               ; preds = %10
  %17 = getelementptr i8, ptr %12, i32 -80
  %18 = load i32, ptr %17, align 4
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %148, label %21

21:                                               ; preds = %16
  %22 = getelementptr i8, ptr %12, i32 -60
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %12, i32 -56
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr i8, ptr %12, i32 -52
  %27 = load ptr, ptr %26, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #9
  store i64 0, ptr %3, align 8
  %28 = icmp eq ptr %25, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  call void %25(ptr noundef %27, ptr noundef nonnull %3) #9
  br label %33

30:                                               ; preds = %21
  %31 = icmp eq ptr %23, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %30
  tail call void %23(ptr noundef %27) #9
  br label %33

33:                                               ; preds = %32, %30, %29
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #9
  br label %148

34:                                               ; preds = %1
  %35 = getelementptr i8, ptr %0, i32 -8
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, 114
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %40 = load i16, ptr %9, align 4
  %41 = add i16 %40, 1
  store i16 %41, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  br label %148

42:                                               ; preds = %34
  %43 = and i32 %36, 112
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %90, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %4, align 4
  %47 = and i32 %36, 16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %45
  %50 = getelementptr i8, ptr %0, i32 -84
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dma_chan_dev, ptr %51, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.24) #10
  %53 = load i32, ptr %35, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = phi i32 [ %53, %49 ], [ %36, %45 ]
  %56 = and i32 %55, 32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %54
  %59 = getelementptr i8, ptr %0, i32 -84
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.dma_chan_dev, ptr %60, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %61, ptr noundef nonnull @.str.25) #10
  %62 = load i32, ptr %35, align 4
  br label %63

63:                                               ; preds = %58, %54
  %64 = phi i32 [ %62, %58 ], [ %55, %54 ]
  %65 = and i32 %64, 64
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = getelementptr i8, ptr %0, i32 -84
  %69 = load ptr, ptr %68, align 4
  %70 = getelementptr inbounds %struct.dma_chan_dev, ptr %69, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %70, ptr noundef nonnull @.str.26) #10
  br label %71

71:                                               ; preds = %67, %63
  %72 = getelementptr i8, ptr %0, i32 -36
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr inbounds %struct.at_xdmac, ptr %46, i32 0, i32 1
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr i8, ptr %75, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %76, i32 %73) #9, !srcloc !11
  %77 = load ptr, ptr %74, align 4
  %78 = getelementptr i8, ptr %77, i32 36
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %78) #9, !srcloc !8
  %80 = load i32, ptr %72, align 4
  %81 = and i32 %80, %79
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %83, %71
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !35
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !36
  %84 = load ptr, ptr %74, align 4
  %85 = getelementptr i8, ptr %84, i32 36
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %85) #9, !srcloc !8
  %87 = load i32, ptr %72, align 4
  %88 = and i32 %87, %86
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %83

90:                                               ; preds = %83, %71, %42
  %91 = getelementptr i8, ptr %0, i32 76
  %92 = load ptr, ptr %91, align 4
  %93 = getelementptr i8, ptr %92, i32 -16
  %94 = load i8, ptr %93, align 4, !range !16
  %95 = icmp eq i8 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = getelementptr i8, ptr %0, i32 -84
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.dma_chan_dev, ptr %98, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.23) #10
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %100 = load i16, ptr %9, align 4
  %101 = add i16 %100, 1
  store i16 %101, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  br label %148

102:                                              ; preds = %90
  %103 = getelementptr i8, ptr %92, i32 -84
  %104 = load i32, ptr %103, align 4
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %106, label %107, !prof !25

106:                                              ; preds = %102
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !37
  unreachable

107:                                              ; preds = %102
  %108 = getelementptr i8, ptr %92, i32 -72
  %109 = load ptr, ptr %108, align 4
  %110 = getelementptr inbounds %struct.dma_chan, ptr %109, i32 0, i32 3
  store i32 %104, ptr %110, align 4
  store i32 0, ptr %103, align 4
  %111 = getelementptr inbounds %struct.list_head, ptr %92, i32 0, i32 1
  %112 = load ptr, ptr %111, align 4
  %113 = load ptr, ptr %92, align 4
  %114 = getelementptr inbounds %struct.list_head, ptr %113, i32 0, i32 1
  store ptr %112, ptr %114, align 4
  store volatile ptr %113, ptr %112, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %92, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %111, align 4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %115 = load i16, ptr %9, align 4
  %116 = add i16 %115, 1
  store i16 %116, ptr %9, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !31
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !32
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !33
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  %117 = getelementptr i8, ptr %92, i32 -80
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %134, label %121

121:                                              ; preds = %107
  %122 = getelementptr i8, ptr %92, i32 -60
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %92, i32 -56
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr i8, ptr %92, i32 -52
  %127 = load ptr, ptr %126, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #9
  store i64 0, ptr %2, align 8
  %128 = icmp eq ptr %125, null
  br i1 %128, label %130, label %129

129:                                              ; preds = %121
  call void %125(ptr noundef %127, ptr noundef nonnull %2) #9
  br label %133

130:                                              ; preds = %121
  %131 = icmp eq ptr %123, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %130
  tail call void %123(ptr noundef %127) #9
  br label %133

133:                                              ; preds = %132, %130, %129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #9
  br label %134

134:                                              ; preds = %133, %107
  call void @dma_run_dependencies(ptr noundef %103) #9
  call void @_raw_spin_lock_irq(ptr noundef %9) #9
  %135 = getelementptr i8, ptr %92, i32 -8
  %136 = load volatile ptr, ptr %135, align 4
  %137 = icmp eq ptr %136, %135
  br i1 %137, label %145, label %138

138:                                              ; preds = %134
  %139 = getelementptr i8, ptr %0, i32 84
  %140 = getelementptr i8, ptr %0, i32 88
  %141 = load ptr, ptr %140, align 4
  %142 = getelementptr i8, ptr %92, i32 -4
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr inbounds %struct.list_head, ptr %136, i32 0, i32 1
  store ptr %141, ptr %144, align 4
  store ptr %136, ptr %141, align 4
  store ptr %139, ptr %143, align 4
  store ptr %143, ptr %140, align 4
  store volatile ptr %135, ptr %135, align 4
  store ptr %135, ptr %142, align 4
  br label %145

145:                                              ; preds = %138, %134
  call fastcc void @at_xdmac_advance_work(ptr noundef %4)
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !30
  %146 = load i16, ptr %9, align 4
  %147 = add i16 %146, 1
  store i16 %147, ptr %9, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #9, !srcloc !31
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #9, !srcloc !32
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !33
  call void asm sideeffect "", "~{memory}"() #9, !srcloc !34
  br label %148

148:                                              ; preds = %145, %96, %39, %33, %16, %10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @at_xdmac_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.27) #10
  br label %32

11:                                               ; preds = %2
  %12 = tail call ptr @dma_get_any_slave_channel(ptr noundef %4) #9
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.28) #10
  br label %32

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = lshr i32 %17, 13
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = getelementptr inbounds %struct.at_xdmac_chan, ptr %12, i32 0, i32 6
  store i8 %20, ptr %21, align 2
  %22 = load i32, ptr %16, align 4
  %23 = lshr i32 %22, 14
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.at_xdmac_chan, ptr %12, i32 0, i32 5
  store i8 %25, ptr %26, align 1
  %27 = load i32, ptr %16, align 4
  %28 = lshr i32 %27, 24
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 127
  %31 = getelementptr inbounds %struct.at_xdmac_chan, ptr %12, i32 0, i32 4
  store i8 %30, ptr %31, align 4
  br label %32

32:                                               ; preds = %15, %14, %10
  %33 = phi ptr [ null, %10 ], [ %12, %15 ], [ null, %14 ]
  ret ptr %33
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at_xdmac_axi_config(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !14
  %5 = getelementptr inbounds %struct.at_xdmac, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.at_xdmac_layout, ptr %6, i32 0, i32 9
  %8 = load i8, ptr %7, align 1, !range !16
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.29, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %14 = icmp sgt i32 %13, -1
  br i1 %14, label %15, label %22

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %16, ptr noundef nonnull @.str.30) #10
  %17 = getelementptr inbounds %struct.at_xdmac, ptr %4, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %19, i32 251719680) #9, !srcloc !11
  %20 = load ptr, ptr %17, align 4
  %21 = getelementptr i8, ptr %20, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #9, !srcloc !11
  br label %28

22:                                               ; preds = %10
  %23 = getelementptr inbounds %struct.at_xdmac, ptr %4, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %24, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 268632144) #9, !srcloc !11
  %26 = load ptr, ptr %23, align 4
  %27 = getelementptr i8, ptr %26, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 3855) #9, !srcloc !11
  br label %28

28:                                               ; preds = %22, %15, %1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @at_xdmac_tx_submit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.at_xdmac_chan, ptr %3, i32 0, i32 15
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #9
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1) #9
  store i32 %10, ptr %7, align 4
  store i32 %10, ptr %0, align 4
  %11 = getelementptr i8, ptr %0, i32 84
  %12 = getelementptr inbounds %struct.at_xdmac_chan, ptr %3, i32 0, i32 16
  %13 = getelementptr inbounds %struct.at_xdmac_chan, ptr %3, i32 0, i32 16, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %11, ptr %13, align 4
  store ptr %12, ptr %11, align 4
  %15 = getelementptr i8, ptr %0, i32 88
  store ptr %14, ptr %15, align 4
  store volatile ptr %11, ptr %14, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #9
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @at_xdmac_advance_work(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %3, i32 36
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #9, !srcloc !8
  %6 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, %5
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %79

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 16
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %79, label %14

14:                                               ; preds = %10
  %15 = getelementptr i8, ptr %12, i32 -16
  %16 = load i8, ptr %15, align 4, !range !16
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %14
  %19 = load ptr, ptr %0, align 4
  store i8 1, ptr %15, align 4
  %20 = getelementptr i8, ptr %12, i32 -76
  %21 = load i32, ptr %20, align 8
  %22 = and i32 %21, -4
  %23 = getelementptr inbounds %struct.at_xdmac, ptr %19, i32 0, i32 6
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.at_xdmac_layout, ptr %24, i32 0, i32 8
  %26 = load i8, ptr %25, align 1, !range !16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 6
  %30 = load i8, ptr %29, align 2
  %31 = and i8 %30, 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %22, %32
  br label %34

34:                                               ; preds = %28, %18
  %35 = phi i32 [ %33, %28 ], [ %22, %18 ]
  %36 = load ptr, ptr %2, align 4
  %37 = getelementptr i8, ptr %36, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 %35) #9, !srcloc !11
  %38 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 12
  %39 = load volatile i32, ptr %38, align 4
  %40 = and i32 %39, 1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = getelementptr i8, ptr %12, i32 -120
  %44 = load i32, ptr %43, align 4
  %45 = and i32 %44, 402653184
  %46 = icmp eq i32 %45, 402653184
  %47 = select i1 %46, i32 31, i32 23
  br label %48

48:                                               ; preds = %42, %34
  %49 = phi i32 [ 15, %34 ], [ %47, %42 ]
  %50 = getelementptr i8, ptr %12, i32 -108
  %51 = load i32, ptr %50, align 8
  %52 = load ptr, ptr %2, align 4
  %53 = getelementptr i8, ptr %52, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #9, !srcloc !11
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr i8, ptr %54, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %49) #9, !srcloc !11
  %56 = load ptr, ptr %2, align 4
  %57 = getelementptr i8, ptr %56, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 -1) #9, !srcloc !11
  %58 = load i32, ptr %50, align 8
  %59 = and i32 %58, 1
  %60 = icmp eq i32 %59, 0
  %61 = select i1 %60, i32 48, i32 112
  %62 = load volatile i32, ptr %38, align 4
  %63 = and i32 %62, 1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %48
  %66 = or i32 %61, 1
  %67 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %66) #9, !srcloc !11
  br label %71

68:                                               ; preds = %48
  %69 = or i32 %61, 2
  %70 = load ptr, ptr %2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %70, i32 %69) #9, !srcloc !11
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32, ptr %6, align 4
  %73 = getelementptr inbounds %struct.at_xdmac, ptr %19, i32 0, i32 1
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr i8, ptr %74, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %72) #9, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !38
  tail call void @arm_heavy_mb() #9
  %76 = load i32, ptr %6, align 4
  %77 = load ptr, ptr %73, align 4
  %78 = getelementptr i8, ptr %77, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %78, i32 %76) #9, !srcloc !11
  br label %79

79:                                               ; preds = %71, %14, %10, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @at_xdmac_compute_chan_conf(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = load ptr, ptr %0, align 4
  switch i32 %1, label %108 [
    i32 2, label %4
    i32 1, label %56
  ]

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 4
  %6 = load i8, ptr %5, align 4
  %7 = and i8 %6, 127
  %8 = zext i8 %7 to i32
  %9 = shl nuw nsw i32 %8, 24
  %10 = or i32 %9, 262151
  %11 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 3
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.at_xdmac, ptr %3, i32 0, i32 6
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.at_xdmac_layout, ptr %13, i32 0, i32 8
  %15 = load i8, ptr %14, align 1, !range !16
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %4
  %18 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 6
  %19 = load i8, ptr %18, align 2
  %20 = and i8 %19, 1
  %21 = zext i8 %20 to i32
  %22 = shl nuw nsw i32 %21, 14
  %23 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 5
  %24 = load i8, ptr %23, align 1
  %25 = and i8 %24, 1
  %26 = zext i8 %25 to i32
  %27 = shl nuw nsw i32 %26, 13
  %28 = or i32 %27, %22
  %29 = or i32 %28, %10
  store i32 %29, ptr %11, align 4
  br label %30

30:                                               ; preds = %17, %4
  %31 = phi i32 [ %29, %17 ], [ %10, %4 ]
  %32 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 14, i32 5
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %37 = load ptr, ptr %36, align 4
  %38 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.17) #10
  br label %108

39:                                               ; preds = %30
  %40 = tail call i32 @llvm.cttz.i32(i32 %33, i1 true), !range !39
  %41 = shl nuw nsw i32 %40, 8
  %42 = and i32 %41, 1792
  %43 = or i32 %31, %42
  store i32 %43, ptr %11, align 4
  %44 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 14, i32 3
  %45 = load i32, ptr %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %49 = load ptr, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dma_chan_dev, ptr %49, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.18) #10
  br label %108

51:                                               ; preds = %39
  %52 = tail call i32 @llvm.cttz.i32(i32 %45, i1 true), !range !39
  %53 = shl nuw nsw i32 %52, 11
  %54 = and i32 %53, 6144
  %55 = or i32 %54, %43
  store i32 %55, ptr %11, align 4
  br label %108

56:                                               ; preds = %2
  %57 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 4
  %58 = load i8, ptr %57, align 4
  %59 = and i8 %58, 127
  %60 = zext i8 %59 to i32
  %61 = shl nuw nsw i32 %60, 24
  %62 = or i32 %61, 65559
  %63 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 3
  store i32 %62, ptr %63, align 4
  %64 = getelementptr inbounds %struct.at_xdmac, ptr %3, i32 0, i32 6
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.at_xdmac_layout, ptr %65, i32 0, i32 8
  %67 = load i8, ptr %66, align 1, !range !16
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %82, label %69

69:                                               ; preds = %56
  %70 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 5
  %71 = load i8, ptr %70, align 1
  %72 = and i8 %71, 1
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %73, 14
  %75 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 6
  %76 = load i8, ptr %75, align 2
  %77 = and i8 %76, 1
  %78 = zext i8 %77 to i32
  %79 = shl nuw nsw i32 %78, 13
  %80 = or i32 %79, %74
  %81 = or i32 %80, %62
  store i32 %81, ptr %63, align 4
  br label %82

82:                                               ; preds = %69, %56
  %83 = phi i32 [ %81, %69 ], [ %62, %56 ]
  %84 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 14, i32 6
  %85 = load i32, ptr %84, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.dma_chan_dev, ptr %89, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.17) #10
  br label %108

91:                                               ; preds = %82
  %92 = tail call i32 @llvm.cttz.i32(i32 %85, i1 true), !range !39
  %93 = shl nuw nsw i32 %92, 8
  %94 = and i32 %93, 1792
  %95 = or i32 %83, %94
  store i32 %95, ptr %63, align 4
  %96 = getelementptr inbounds %struct.at_xdmac_chan, ptr %0, i32 0, i32 14, i32 4
  %97 = load i32, ptr %96, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %101 = load ptr, ptr %100, align 4
  %102 = getelementptr inbounds %struct.dma_chan_dev, ptr %101, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.19) #10
  br label %108

103:                                              ; preds = %91
  %104 = tail call i32 @llvm.cttz.i32(i32 %97, i1 true), !range !39
  %105 = shl nuw nsw i32 %104, 11
  %106 = and i32 %105, 6144
  %107 = or i32 %106, %95
  store i32 %107, ptr %63, align 4
  br label %108

108:                                              ; preds = %103, %99, %87, %51, %47, %35, %2
  %109 = phi i32 [ -22, %35 ], [ -22, %47 ], [ -22, %87 ], [ -22, %99 ], [ 0, %2 ], [ 0, %103 ], [ 0, %51 ]
  ret i32 %109
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @at_xdmac_interleaved_queue_desc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #2 {
  %8 = alloca i32, align 4
  %9 = or i32 %4, %3
  %10 = load i32, ptr %6, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %11, 7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %7
  %15 = and i32 %11, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = and i32 %11, 1
  %19 = xor i32 %18, 1
  br label %20

20:                                               ; preds = %17, %14, %7
  %21 = phi i32 [ 3, %7 ], [ 2, %14 ], [ %19, %17 ]
  %22 = shl i32 16777215, %21
  %23 = icmp ult i32 %10, %22
  br i1 %23, label %24, label %137

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.dma_interleaved_template, ptr %5, i32 0, i32 3
  %26 = load i8, ptr %25, align 4, !range !16
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.dma_interleaved_template, ptr %5, i32 0, i32 5
  %30 = load i8, ptr %29, align 2, !range !16
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %31, i32 2130771974, i32 2130837510
  br label %33

33:                                               ; preds = %28, %24
  %34 = phi i32 [ 2130706438, %24 ], [ %32, %28 ]
  %35 = getelementptr inbounds %struct.dma_interleaved_template, ptr %5, i32 0, i32 4
  %36 = load i8, ptr %35, align 1, !range !16
  %37 = icmp eq i8 %36, 0
  br i1 %37, label %46, label %38

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.dma_interleaved_template, ptr %5, i32 0, i32 6
  %40 = load i8, ptr %39, align 1, !range !16
  %41 = icmp eq i8 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %38
  %43 = or i32 %34, 524288
  br label %46

44:                                               ; preds = %38
  %45 = or i32 %34, 262144
  br label %46

46:                                               ; preds = %44, %42, %33
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ], [ %34, %33 ]
  %48 = getelementptr inbounds %struct.at_xdmac_chan, ptr %1, i32 0, i32 15
  %49 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %48) #9
  %50 = getelementptr inbounds %struct.at_xdmac_chan, ptr %1, i32 0, i32 17
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %53, label %67

53:                                               ; preds = %46
  %54 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #9
  store i32 0, ptr %8, align 4, !annotation !14
  %55 = getelementptr inbounds %struct.at_xdmac, ptr %54, i32 0, i32 5
  %56 = load ptr, ptr %55, align 4
  %57 = call ptr @dma_pool_alloc(ptr noundef %56, i32 noundef 2304, ptr noundef nonnull %8) #9
  %58 = icmp eq ptr %57, null
  br i1 %58, label %66, label %59

59:                                               ; preds = %53
  %60 = getelementptr inbounds %struct.at_xdmac_desc, ptr %57, i32 0, i32 6
  store volatile ptr %60, ptr %60, align 4
  %61 = getelementptr inbounds %struct.at_xdmac_desc, ptr %57, i32 0, i32 6, i32 1
  store ptr %60, ptr %61, align 4
  %62 = getelementptr inbounds %struct.at_xdmac_desc, ptr %57, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %62, ptr noundef %1) #9
  %63 = getelementptr inbounds %struct.at_xdmac_desc, ptr %57, i32 0, i32 2, i32 4
  store ptr @at_xdmac_tx_submit, ptr %63, align 8
  %64 = load i32, ptr %8, align 4
  %65 = getelementptr inbounds %struct.at_xdmac_desc, ptr %57, i32 0, i32 2, i32 2
  store i32 %64, ptr %65, align 8
  br label %66

66:                                               ; preds = %59, %53
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #9
  br label %78

67:                                               ; preds = %46
  %68 = getelementptr i8, ptr %51, i32 -100
  %69 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = load ptr, ptr %51, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %70, ptr %72, align 4
  store volatile ptr %71, ptr %70, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %69, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(36) %68, i8 0, i32 36, i1 false) #9
  %73 = getelementptr i8, ptr %51, i32 16
  store volatile ptr %73, ptr %73, align 4
  %74 = getelementptr i8, ptr %51, i32 20
  store ptr %73, ptr %74, align 4
  %75 = getelementptr i8, ptr %51, i32 -64
  store i32 4, ptr %75, align 4
  %76 = getelementptr i8, ptr %51, i32 12
  store i32 0, ptr %76, align 8
  %77 = getelementptr i8, ptr %51, i32 8
  store i8 0, ptr %77, align 4
  br label %78

78:                                               ; preds = %67, %66
  %79 = phi ptr [ %57, %66 ], [ %68, %67 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %48, i32 noundef %49) #9
  %80 = icmp eq ptr %79, null
  br i1 %80, label %81, label %85

81:                                               ; preds = %78
  %82 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr inbounds %struct.dma_chan_dev, ptr %83, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.16) #10
  br label %137

85:                                               ; preds = %78
  %86 = shl nsw i32 %21, 11
  %87 = and i32 %86, 6144
  %88 = or i32 %47, %87
  %89 = load i32, ptr %6, align 4
  %90 = lshr i32 %89, %21
  %91 = getelementptr inbounds %struct.at_xdmac_lld, ptr %79, i32 0, i32 2
  store i32 %3, ptr %91, align 8
  %92 = getelementptr inbounds %struct.at_xdmac_lld, ptr %79, i32 0, i32 3
  store i32 %4, ptr %92, align 4
  %93 = load i8, ptr %25, align 4, !range !16
  %94 = icmp eq i8 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %85
  %96 = getelementptr inbounds %struct.data_chunk, ptr %6, i32 0, i32 3
  %97 = load i32, ptr %96, align 4
  %98 = getelementptr inbounds %struct.data_chunk, ptr %6, i32 0, i32 1
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr inbounds %struct.dma_interleaved_template, ptr %5, i32 0, i32 5
  %101 = load i8, ptr %100, align 2, !range !16
  %102 = icmp ne i8 %101, 0
  %103 = icmp ne i32 %97, 0
  %104 = or i1 %103, %102
  %105 = select i1 %103, i32 %97, i32 %99
  br i1 %104, label %107, label %106

106:                                              ; preds = %95, %85
  br label %107

107:                                              ; preds = %106, %95
  %108 = phi i32 [ 0, %106 ], [ %105, %95 ]
  %109 = getelementptr inbounds %struct.at_xdmac_lld, ptr %79, i32 0, i32 7
  store i32 %108, ptr %109, align 4
  %110 = load i8, ptr %35, align 1, !range !16
  %111 = icmp eq i8 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %107
  %113 = getelementptr inbounds %struct.data_chunk, ptr %6, i32 0, i32 2
  %114 = load i32, ptr %113, align 4
  %115 = getelementptr inbounds %struct.data_chunk, ptr %6, i32 0, i32 1
  %116 = load i32, ptr %115, align 4
  %117 = getelementptr inbounds %struct.dma_interleaved_template, ptr %5, i32 0, i32 6
  %118 = load i8, ptr %117, align 1, !range !16
  %119 = icmp ne i8 %118, 0
  %120 = icmp ne i32 %114, 0
  %121 = or i1 %120, %119
  %122 = select i1 %120, i32 %114, i32 %116
  br i1 %121, label %124, label %123

123:                                              ; preds = %112, %107
  br label %124

124:                                              ; preds = %123, %112
  %125 = phi i32 [ 0, %123 ], [ %122, %112 ]
  %126 = getelementptr inbounds %struct.at_xdmac_lld, ptr %79, i32 0, i32 8
  store i32 %125, ptr %126, align 8
  %127 = or i32 %90, 503316480
  %128 = getelementptr inbounds %struct.at_xdmac_lld, ptr %79, i32 0, i32 1
  store i32 %127, ptr %128, align 4
  %129 = getelementptr inbounds %struct.at_xdmac_lld, ptr %79, i32 0, i32 4
  store i32 %88, ptr %129, align 8
  %130 = icmp eq ptr %2, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %124
  %132 = getelementptr inbounds %struct.at_xdmac_desc, ptr %79, i32 0, i32 2, i32 2
  %133 = load i32, ptr %132, align 8
  store i32 %133, ptr %2, align 8
  %134 = getelementptr inbounds %struct.at_xdmac_lld, ptr %2, i32 0, i32 1
  %135 = load i32, ptr %134, align 4
  %136 = or i32 %135, 16777216
  store i32 %136, ptr %134, align 4
  br label %137

137:                                              ; preds = %131, %124, %81, %20
  %138 = phi ptr [ null, %81 ], [ null, %20 ], [ %79, %131 ], [ %79, %124 ]
  ret ptr %138
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @at_xdmac_memset_create_desc(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = alloca i32, align 4
  %7 = and i32 %2, 7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %5
  %10 = and i32 %2, 3
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = and i32 %2, 1
  %14 = xor i32 %13, 1
  br label %15

15:                                               ; preds = %12, %9, %5
  %16 = phi i32 [ 3, %5 ], [ 2, %9 ], [ %14, %12 ]
  %17 = shl i32 16777215, %16
  %18 = icmp ugt i32 %17, %3
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %21 = load ptr, ptr %20, align 4
  %22 = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.at_xdmac_memset_create_desc) #10
  br label %71

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.at_xdmac_chan, ptr %1, i32 0, i32 15
  %25 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %24) #9
  %26 = getelementptr inbounds %struct.at_xdmac_chan, ptr %1, i32 0, i32 17
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %29, label %43

29:                                               ; preds = %23
  %30 = load ptr, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #9
  store i32 0, ptr %6, align 4, !annotation !14
  %31 = getelementptr inbounds %struct.at_xdmac, ptr %30, i32 0, i32 5
  %32 = load ptr, ptr %31, align 4
  %33 = call ptr @dma_pool_alloc(ptr noundef %32, i32 noundef 2304, ptr noundef nonnull %6) #9
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 6
  store volatile ptr %36, ptr %36, align 4
  %37 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 6, i32 1
  store ptr %36, ptr %37, align 4
  %38 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %38, ptr noundef %1) #9
  %39 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 2, i32 4
  store ptr @at_xdmac_tx_submit, ptr %39, align 8
  %40 = load i32, ptr %6, align 4
  %41 = getelementptr inbounds %struct.at_xdmac_desc, ptr %33, i32 0, i32 2, i32 2
  store i32 %40, ptr %41, align 8
  br label %42

42:                                               ; preds = %35, %29
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #9
  br label %54

43:                                               ; preds = %23
  %44 = getelementptr i8, ptr %27, i32 -100
  %45 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = load ptr, ptr %27, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %47, ptr %46, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %45, align 4
  tail call void @llvm.memset.p0.i32(ptr noundef align 8 dereferenceable(36) %44, i8 0, i32 36, i1 false) #9
  %49 = getelementptr i8, ptr %27, i32 16
  store volatile ptr %49, ptr %49, align 4
  %50 = getelementptr i8, ptr %27, i32 20
  store ptr %49, ptr %50, align 4
  %51 = getelementptr i8, ptr %27, i32 -64
  store i32 4, ptr %51, align 4
  %52 = getelementptr i8, ptr %27, i32 12
  store i32 0, ptr %52, align 8
  %53 = getelementptr i8, ptr %27, i32 8
  store i8 0, ptr %53, align 4
  br label %54

54:                                               ; preds = %43, %42
  %55 = phi ptr [ %33, %42 ], [ %44, %43 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %24, i32 noundef %25) #9
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 5
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.dma_chan_dev, ptr %59, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %60, ptr noundef nonnull @.str.16) #10
  br label %71

61:                                               ; preds = %54
  %62 = shl nsw i32 %16, 11
  %63 = and i32 %62, 6144
  %64 = or i32 %63, 2131296390
  %65 = lshr i32 %3, %16
  %66 = getelementptr inbounds %struct.at_xdmac_lld, ptr %55, i32 0, i32 3
  store i32 %2, ptr %66, align 4
  %67 = getelementptr inbounds %struct.at_xdmac_lld, ptr %55, i32 0, i32 6
  store i32 %4, ptr %67, align 8
  %68 = or i32 %65, 503316480
  %69 = getelementptr inbounds %struct.at_xdmac_lld, ptr %55, i32 0, i32 1
  store i32 %68, ptr %69, align 4
  %70 = getelementptr inbounds %struct.at_xdmac_lld, ptr %55, i32 0, i32 4
  store i32 %64, ptr %70, align 8
  br label %71

71:                                               ; preds = %61, %57, %19
  %72 = phi ptr [ null, %19 ], [ %55, %61 ], [ null, %57 ]
  ret ptr %72
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_xdmac_prepare(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %25, label %7

7:                                                ; preds = %23, %1
  %8 = phi ptr [ %9, %23 ], [ %5, %1 ]
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %8, i32 32
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %11, i32 36
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #9, !srcloc !8
  %14 = getelementptr i8, ptr %8, i32 36
  %15 = load i32, ptr %14, align 4
  %16 = and i32 %15, %13
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %7
  %19 = getelementptr i8, ptr %8, i32 68
  %20 = load volatile i32, ptr %19, align 4
  %21 = and i32 %20, 1
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %18, %7
  %24 = icmp eq ptr %9, %4
  br i1 %24, label %25, label %7

25:                                               ; preds = %23, %18, %1
  %26 = phi i32 [ 0, %1 ], [ 0, %23 ], [ -11, %18 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_xdmac_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %68, label %7

7:                                                ; preds = %66, %1
  %8 = phi ptr [ %10, %66 ], [ %5, %1 ]
  %9 = getelementptr i8, ptr %8, i32 -32
  %10 = load ptr, ptr %8, align 4
  %11 = getelementptr i8, ptr %8, i32 32
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 40
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #9, !srcloc !8
  %15 = getelementptr i8, ptr %8, i32 48
  store i32 %14, ptr %15, align 4
  %16 = getelementptr i8, ptr %8, i32 68
  %17 = load volatile i32, ptr %16, align 4
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %66, label %20

20:                                               ; preds = %7
  %21 = load volatile i32, ptr %16, align 4
  %22 = and i32 %21, 2
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %20
  %25 = load ptr, ptr %9, align 4
  %26 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %16) #9
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %24
  %29 = getelementptr i8, ptr %8, i32 144
  %30 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %29) #9
  %31 = getelementptr i8, ptr %8, i32 36
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr inbounds %struct.at_xdmac, ptr %25, i32 0, i32 1
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.at_xdmac, ptr %25, i32 0, i32 6
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.at_xdmac_layout, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %37, align 1
  %39 = zext i8 %38 to i32
  %40 = getelementptr i8, ptr %34, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %40, i32 %32) #9, !srcloc !11
  %41 = load ptr, ptr %11, align 4
  %42 = getelementptr i8, ptr %41, i32 40
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %42) #9, !srcloc !8
  %44 = and i32 %43, 12582912
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %46, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !26
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !27
  %47 = load ptr, ptr %11, align 4
  %48 = getelementptr i8, ptr %47, i32 40
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %48) #9, !srcloc !8
  %50 = and i32 %49, 12582912
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %46

52:                                               ; preds = %46, %28
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %29, i32 noundef %30) #9
  br label %53

53:                                               ; preds = %52, %24, %20
  %54 = load ptr, ptr %11, align 4
  %55 = getelementptr i8, ptr %54, i32 8
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %55) #9, !srcloc !8
  %57 = getelementptr i8, ptr %8, i32 52
  store i32 %56, ptr %57, align 4
  %58 = load ptr, ptr %11, align 4
  %59 = getelementptr i8, ptr %58, i32 24
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %59) #9, !srcloc !8
  %61 = getelementptr i8, ptr %8, i32 56
  store i32 %60, ptr %61, align 4
  %62 = load ptr, ptr %11, align 4
  %63 = getelementptr i8, ptr %62, i32 28
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #9, !srcloc !8
  %65 = getelementptr i8, ptr %8, i32 60
  store i32 %64, ptr %65, align 4
  br label %66

66:                                               ; preds = %53, %7
  %67 = icmp eq ptr %10, %4
  br i1 %67, label %68, label %7

68:                                               ; preds = %66, %1
  %69 = getelementptr inbounds %struct.at_xdmac, ptr %3, i32 0, i32 1
  %70 = load ptr, ptr %69, align 4
  %71 = getelementptr i8, ptr %70, i32 20
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %71) #9, !srcloc !8
  %73 = getelementptr inbounds %struct.at_xdmac, ptr %3, i32 0, i32 4
  store i32 %72, ptr %73, align 4
  %74 = load ptr, ptr %69, align 4
  %75 = getelementptr i8, ptr %74, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 -1) #9, !srcloc !11
  %76 = load ptr, ptr %69, align 4
  %77 = getelementptr i8, ptr %76, i32 36
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %77) #9, !srcloc !8
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %80, %68
  tail call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !12
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !13
  %81 = load ptr, ptr %69, align 4
  %82 = getelementptr i8, ptr %81, i32 36
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #9, !srcloc !8
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %80

85:                                               ; preds = %80, %68
  %86 = load ptr, ptr %69, align 4
  %87 = getelementptr i8, ptr %86, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 -1) #9, !srcloc !11
  %88 = getelementptr inbounds %struct.at_xdmac, ptr %3, i32 0, i32 3
  %89 = load ptr, ptr %88, align 4
  tail call void @clk_disable(ptr noundef %89) #9
  tail call void @clk_unprepare(ptr noundef %89) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @atmel_xdmac_resume(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = getelementptr %struct.device, ptr %0, i32 0, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.at_xdmac, ptr %4, i32 0, i32 3
  %6 = load ptr, ptr %5, align 4
  %7 = tail call i32 @clk_prepare(ptr noundef %6) #9
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %120

9:                                                ; preds = %1
  %10 = tail call i32 @clk_enable(ptr noundef %6) #9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  tail call void @clk_unprepare(ptr noundef %6) #9
  br label %120

13:                                               ; preds = %9
  %14 = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #9
  store i32 0, ptr %2, align 4, !annotation !14
  %15 = getelementptr inbounds %struct.at_xdmac, ptr %14, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.at_xdmac_layout, ptr %16, i32 0, i32 9
  %18 = load i8, ptr %17, align 1, !range !16
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %13
  %21 = getelementptr i8, ptr %0, i32 416
  %22 = load ptr, ptr %21, align 8
  %23 = call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.29, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #9
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %0, ptr noundef nonnull @.str.30) #10
  %26 = getelementptr inbounds %struct.at_xdmac, ptr %14, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr i8, ptr %27, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 251719680) #9, !srcloc !11
  %29 = load ptr, ptr %26, align 4
  %30 = getelementptr i8, ptr %29, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 0) #9, !srcloc !11
  br label %37

31:                                               ; preds = %20
  %32 = getelementptr inbounds %struct.at_xdmac, ptr %14, i32 0, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr i8, ptr %33, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 268632144) #9, !srcloc !11
  %35 = load ptr, ptr %32, align 4
  %36 = getelementptr i8, ptr %35, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 3855) #9, !srcloc !11
  br label %37

37:                                               ; preds = %31, %25, %13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #9
  %38 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 1
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %57, label %41

41:                                               ; preds = %53, %37
  %42 = phi i32 [ %54, %53 ], [ 0, %37 ]
  %43 = getelementptr %struct.at_xdmac, ptr %4, i32 0, i32 7, i32 %42, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr i8, ptr %44, i32 12
  %46 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #9, !srcloc !8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %48, %41
  call void asm sideeffect "dmb ish", "~{memory}"() #9, !srcloc !40
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !41
  %49 = load ptr, ptr %43, align 4
  %50 = getelementptr i8, ptr %49, i32 12
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #9, !srcloc !8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %48

53:                                               ; preds = %48, %41
  %54 = add nuw i32 %42, 1
  %55 = load i32, ptr %38, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %41, label %57

57:                                               ; preds = %53, %37
  %58 = getelementptr inbounds %struct.at_xdmac, ptr %4, i32 0, i32 4
  %59 = load i32, ptr %58, align 4
  %60 = getelementptr inbounds %struct.at_xdmac, ptr %4, i32 0, i32 1
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %59) #9, !srcloc !11
  %63 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 3
  %64 = load ptr, ptr %63, align 4
  %65 = icmp eq ptr %64, %63
  br i1 %65, label %120, label %66

66:                                               ; preds = %118, %57
  %67 = phi ptr [ %69, %118 ], [ %64, %57 ]
  %68 = getelementptr i8, ptr %67, i32 -32
  %69 = load ptr, ptr %67, align 4
  %70 = getelementptr i8, ptr %67, i32 48
  %71 = load i32, ptr %70, align 4
  %72 = getelementptr i8, ptr %67, i32 32
  %73 = load ptr, ptr %72, align 4
  %74 = getelementptr i8, ptr %73, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %74, i32 %71) #9, !srcloc !11
  %75 = getelementptr i8, ptr %67, i32 68
  %76 = load volatile i32, ptr %75, align 4
  %77 = and i32 %76, 1
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %118, label %79

79:                                               ; preds = %66
  %80 = load volatile i32, ptr %75, align 4
  %81 = and i32 %80, 2
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %102, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %68, align 4
  %85 = getelementptr i8, ptr %67, i32 144
  %86 = call i32 @_raw_spin_lock_irqsave(ptr noundef %85) #9
  %87 = load volatile i32, ptr %75, align 4
  %88 = and i32 %87, 2
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %83
  %91 = getelementptr i8, ptr %67, i32 36
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr inbounds %struct.at_xdmac, ptr %84, i32 0, i32 1
  %94 = load ptr, ptr %93, align 4
  %95 = getelementptr inbounds %struct.at_xdmac, ptr %84, i32 0, i32 6
  %96 = load ptr, ptr %95, align 4
  %97 = getelementptr inbounds %struct.at_xdmac_layout, ptr %96, i32 0, i32 3
  %98 = load i8, ptr %97, align 1
  %99 = zext i8 %98 to i32
  %100 = getelementptr i8, ptr %94, i32 %99
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %92) #9, !srcloc !11
  call void @_clear_bit(i32 noundef 1, ptr noundef %75) #9
  br label %101

101:                                              ; preds = %90, %83
  call void @_raw_spin_unlock_irqrestore(ptr noundef %85, i32 noundef %86) #9
  br label %102

102:                                              ; preds = %101, %79
  %103 = getelementptr i8, ptr %67, i32 56
  %104 = load i32, ptr %103, align 4
  %105 = load ptr, ptr %72, align 4
  %106 = getelementptr i8, ptr %105, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %104) #9, !srcloc !11
  %107 = getelementptr i8, ptr %67, i32 60
  %108 = load i32, ptr %107, align 4
  %109 = load ptr, ptr %72, align 4
  %110 = getelementptr i8, ptr %109, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %110, i32 %108) #9, !srcloc !11
  %111 = getelementptr i8, ptr %67, i32 52
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %72, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %112) #9, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #9, !srcloc !42
  call void @arm_heavy_mb() #9
  %114 = getelementptr i8, ptr %67, i32 36
  %115 = load i32, ptr %114, align 4
  %116 = load ptr, ptr %60, align 4
  %117 = getelementptr i8, ptr %116, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %117, i32 %115) #9, !srcloc !11
  br label %118

118:                                              ; preds = %102, %66
  %119 = icmp eq ptr %69, %63
  br i1 %119, label %120, label %66

120:                                              ; preds = %118, %57, %12, %1
  %121 = phi i32 [ %10, %12 ], [ %7, %1 ], [ 0, %57 ], [ 0, %118 ]
  ret i32 %121
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
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
!8 = !{i64 5106068}
!9 = !{i64 2153314931}
!10 = !{i64 2153314773}
!11 = !{i64 5105650}
!12 = !{i64 2153170391}
!13 = !{i64 2153170233}
!14 = !{!"auto-init"}
!15 = !{i64 2153125232}
!16 = !{i8 0, i8 2}
!17 = !{i64 2153229681}
!18 = !{i64 2153229523}
!19 = !{i64 2153230030}
!20 = !{i64 2153230374}
!21 = !{i64 2153230730}
!22 = !{i64 2153231074}
!23 = !{i64 2153231997}
!24 = !{i64 2153231839}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{i64 2153266854}
!27 = !{i64 2153266696}
!28 = !{i64 2153269731}
!29 = !{i64 2153269573}
!30 = !{i64 2148950103}
!31 = !{i64 2148945927}
!32 = !{i64 2148946002, i64 2148946029, i64 2148946076, i64 2148946098, i64 2148946126, i64 2148946146}
!33 = !{i64 417474}
!34 = !{i64 2148974247}
!35 = !{i64 2153245354}
!36 = !{i64 2153245196}
!37 = !{i64 2153124296, i64 2153124783, i64 2153124333, i64 2153124389, i64 2153124423, i64 2153124447, i64 2153124488, i64 2153124509, i64 2153124537, i64 2153124571}
!38 = !{i64 2153178230}
!39 = !{i32 0, i32 33}
!40 = !{i64 2153300566}
!41 = !{i64 2153300408}
!42 = !{i64 2153307388}
