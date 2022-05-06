; ModuleID = '/llk/IR/drivers/dma/ti/omap-dma.c_pt.bc'
source_filename = "../drivers/dma/ti/omap-dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.omap_dma_config = type { i32, i8 }
%struct.lock_class_key = type {}
%struct.of_dma_filter_info = type { %struct.dma_cap_mask_t, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.omap_dmadev = type { %struct.dma_device, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.omap_dma_context, i32, [1 x i32], %struct.mutex, i8, i8, ptr, i32, %struct.spinlock, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.omap_dma_context = type { i32, i32, i32, i32 }
%struct.omap_system_dma_plat_info = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.omap_dma_dev_attr = type { i32, i16, i16 }
%struct.omap_chan = type { %struct.virt_dma_chan, ptr, ptr, i32, %struct.dma_slave_config, i32, i8, i8, i8, i32, ptr, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.omap_dma_reg = type { i16, i8, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.omap_desc = type { %struct.virt_dma_desc, i8, i32, i32, i8, i32, i16, i8, i32, i16, i16, i32, i32, [0 x %struct.omap_sg] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.omap_sg = type { i32, i32, i32, i32, i16, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.omap_type2_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }

@__initcall__kmod_omap_dma__229_1942_omap_dma_init4 = internal global ptr @omap_dma_init, section ".initcall4.init", align 4
@omap_dma_driver = internal global %struct.platform_driver { ptr @omap_dma_probe, ptr @omap_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_dma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_omap_dma_exit = internal global ptr @omap_dma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [29 x i8] c"omap_dma.author=Russell King\00", section ".modinfo", align 1
@__UNIQUE_ID_file231 = internal constant [38 x i8] c"omap_dma.file=drivers/dma/ti/omap-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license232 = internal constant [21 x i8] c"omap_dma.license=GPL\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [16 x i8] c"omap-dma-engine\00", align 1
@omap_dma_match = internal constant [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2420_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2430-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2430_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3430_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3630-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3630_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_data }, %struct.of_device_id zeroinitializer], align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"omap_system_dma_plat_info is missing\00", align 1
@default_cfg = internal constant %struct.omap_dma_config zeroinitializer, align 4
@omap_dma_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"&od->lch_lock\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"dma-requests\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Missing dma-requests property, using %u.\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"Missing dma-channels property, using %u.\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"dma-channel-mask\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"failed to get L1 IRQ: %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"unable to allocate descriptor pool\0A\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"\014OMAP-DMA: failed to register slave DMA engine device: %d\0A\00", align 1
@omap_dma_info = internal global %struct.of_dma_filter_info { %struct.dma_cap_mask_t zeroinitializer, ptr @omap_dma_filter_fn }, align 4
@.str.11 = private unnamed_addr constant [47 x i8] c"\014OMAP-DMA: failed to register DMA controller\0A\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"OMAP DMA engine driver%s\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c" (LinkedList1/2/3 supported)\00", align 1
@.str.14 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"DMA engine\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"drivers/dma/ti/omap-dma.c\00", align 1
@es_bytes = internal unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 4], align 4
@.str.17 = private unnamed_addr constant [20 x i8] c"%s: bad direction?\0A\00", align 1
@__func__.omap_dma_prep_slave_sg = private unnamed_addr constant [23 x i8] c"omap_dma_prep_slave_sg\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"t2_desc[%d] allocation failed\0A\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@__func__.omap_dma_prep_dma_cyclic = private unnamed_addr constant [25 x i8] c"omap_dma_prep_dma_cyclic\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"%s: SRC constant addressing is not supported\0A\00", align 1
@__func__.omap_dma_prep_dma_interleaved = private unnamed_addr constant [30 x i8] c"omap_dma_prep_dma_interleaved\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"%s: DST constant addressing is not supported\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.21 = private unnamed_addr constant [38 x i8] c"DMA drain did not complete on lch %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"invalid channel %u\0A\00", align 1
@omap2420_data = internal constant %struct.omap_dma_config { i32 49, i8 11 }, align 4
@omap2430_data = internal constant %struct.omap_dma_config { i32 49, i8 9 }, align 4
@omap3430_data = internal constant %struct.omap_dma_config { i32 49, i8 13 }, align 4
@omap3630_data = internal constant %struct.omap_dma_config { i32 52, i8 13 }, align 4
@omap4_data = internal constant %struct.omap_dma_config { i32 52, i8 9 }, align 4
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_file231, ptr @__UNIQUE_ID_license232, ptr @__exitcall_omap_dma_exit, ptr @__initcall__kmod_omap_dma__229_1942_omap_dma_init4, ptr @omap_dma_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_init() #0 {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_dma_driver, ptr noundef null) #11
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @omap_dma_exit() #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_dma_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_probe(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #11
  store i32 0, ptr %2, align 4, !annotation !8
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 352, i32 noundef 3520) #11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %268, label %6

6:                                                ; preds = %1
  %7 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #11
  %8 = tail call ptr @devm_ioremap_resource(ptr noundef %3, ptr noundef %7) #11
  %9 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 2
  store ptr %8, ptr %9, align 4
  %10 = icmp ugt ptr %8, inttoptr (i32 -4096 to ptr)
  br i1 %10, label %11, label %13

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i32
  br label %268

13:                                               ; preds = %6
  %14 = tail call ptr @of_device_get_match_data(ptr noundef %3) #11
  %15 = icmp eq ptr %14, null
  %16 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 5
  br i1 %15, label %23, label %17

17:                                               ; preds = %13
  store ptr %14, ptr %16, align 4
  %18 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 4
  store ptr %19, ptr %20, align 4
  %21 = icmp eq ptr %19, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1) #12
  br label %268

23:                                               ; preds = %13
  store ptr @default_cfg, ptr %16, align 4
  %24 = tail call ptr @omap_get_plat_info() #11
  %25 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 4
  store ptr %24, ptr %25, align 4
  %26 = icmp eq ptr %24, null
  br i1 %26, label %268, label %27

27:                                               ; preds = %23, %17
  %28 = phi ptr [ %24, %23 ], [ %19, %17 ]
  %29 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 4
  %30 = load ptr, ptr %28, align 4
  %31 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 3
  store ptr %30, ptr %31, align 4
  %32 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %32) #11
  tail call void @_set_bit(i32 noundef 12, ptr noundef %32) #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %32) #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %32) #11
  %33 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 27
  store ptr @omap_dma_alloc_chan_resources, ptr %33, align 4
  %34 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 29
  store ptr @omap_dma_free_chan_resources, ptr %34, align 4
  %35 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 49
  store ptr @omap_dma_tx_status, ptr %35, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 50
  store ptr @omap_dma_issue_pending, ptr %36, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 39
  store ptr @omap_dma_prep_slave_sg, ptr %37, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 40
  store ptr @omap_dma_prep_dma_cyclic, ptr %38, align 4
  %39 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 30
  store ptr @omap_dma_prep_dma_memcpy, ptr %39, align 4
  %40 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 41
  store ptr @omap_dma_prep_dma_interleaved, ptr %40, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 44
  store ptr @omap_dma_slave_config, ptr %41, align 4
  %42 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 45
  store ptr @omap_dma_pause, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 46
  store ptr @omap_dma_resume, ptr %43, align 4
  %44 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 47
  store ptr @omap_dma_terminate_all, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 48
  store ptr @omap_dma_synchronize, ptr %45, align 4
  %46 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 19
  store i32 22, ptr %46, align 4
  %47 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 20
  store i32 22, ptr %47, align 4
  %48 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 21
  store i32 6, ptr %48, align 4
  %49 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 26
  store i32 2, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 23
  store i32 16777215, ptr %50, align 4
  %51 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  store ptr %3, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 3
  store volatile ptr %52, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 3, i32 1
  store ptr %52, ptr %53, align 4
  %54 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %54, ptr noundef nonnull @.str.2, ptr noundef nonnull @omap_dma_probe.__key) #11
  %55 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 1
  store i32 0, ptr %55, align 4
  %56 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 15
  store i32 0, ptr %56, align 4
  %57 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 14
  store i32 127, ptr %57, align 4
  %58 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %59 = load ptr, ptr %58, align 8
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %27
  %62 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %59, ptr noundef nonnull @.str.3, ptr noundef %57, i32 noundef 1, i32 noundef 0) #11
  %63 = icmp sgt i32 %62, -1
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.4, i32 noundef 127) #12
  br label %65

65:                                               ; preds = %64, %61
  %66 = load ptr, ptr %58, align 8
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %65, %27
  %69 = load ptr, ptr %29, align 4
  %70 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %69, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.omap_dma_dev_attr, ptr %71, i32 0, i32 1
  %73 = load i16, ptr %72, align 4
  %74 = zext i16 %73 to i32
  %75 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 8
  store i32 %74, ptr %75, align 4
  %76 = icmp eq i16 %73, 0
  br i1 %76, label %82, label %84, !prof !9

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 8
  %79 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %66, ptr noundef nonnull @.str.5, ptr noundef %78, i32 noundef 1, i32 noundef 0) #11
  %80 = icmp sgt i32 %79, -1
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.6, i32 noundef 32) #12
  br label %82

82:                                               ; preds = %81, %68
  %83 = phi ptr [ %78, %81 ], [ %75, %68 ]
  store i32 32, ptr %83, align 4
  br label %84

84:                                               ; preds = %82, %77, %68
  %85 = load ptr, ptr %58, align 8
  %86 = icmp eq ptr %85, null
  br i1 %86, label %109, label %87

87:                                               ; preds = %84
  %88 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %85, ptr noundef nonnull @.str.7, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #11
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %90, label %109

90:                                               ; preds = %87
  %91 = load i32, ptr %2, align 4
  %92 = xor i32 %91, -1
  store i32 %92, ptr %2, align 4
  %93 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 9
  %94 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 8
  %95 = load i32, ptr %94, align 4
  %96 = add i32 %95, 31
  %97 = lshr i32 %96, 3
  %98 = and i32 %97, 536870908
  call void @llvm.memcpy.p0.p0.i32(ptr align 4 %93, ptr nonnull align 4 %2, i32 %98, i1 false) #11
  %99 = and i32 %95, 31
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %90
  %102 = sub i32 0, %95
  %103 = and i32 %102, 31
  %104 = lshr i32 -1, %103
  %105 = lshr i32 %95, 5
  %106 = getelementptr i32, ptr %93, i32 %105
  %107 = load i32, ptr %106, align 4
  %108 = and i32 %107, %104
  store i32 %108, ptr %106, align 4
  br label %109

109:                                              ; preds = %101, %90, %87, %84
  %110 = load ptr, ptr %29, align 4
  %111 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %110, i32 0, i32 2
  %112 = load ptr, ptr %111, align 4
  %113 = load i32, ptr %112, align 4
  %114 = and i32 %113, 32768
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 9
  call void @__bitmap_set(ptr noundef %117, i32 noundef 0, i32 noundef 2) #11
  br label %118

118:                                              ; preds = %116, %109
  %119 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 8
  %120 = load i32, ptr %119, align 4
  %121 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %120, i32 4) #11
  %122 = extractvalue { i32, i1 } %121, 1
  br i1 %122, label %123, label %125, !prof !9

123:                                              ; preds = %118
  %124 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 17
  store ptr null, ptr %124, align 4
  br label %268

125:                                              ; preds = %118
  %126 = extractvalue { i32, i1 } %121, 0
  %127 = call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %126, i32 noundef 3520) #11
  %128 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 17
  store ptr %127, ptr %128, align 4
  %129 = icmp eq ptr %127, null
  br i1 %129, label %268, label %130

130:                                              ; preds = %125
  %131 = load i32, ptr %57, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %158, label %133

133:                                              ; preds = %151, %130
  %134 = phi i32 [ %155, %151 ], [ 0, %130 ]
  %135 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %136 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %135, i32 noundef 3520, i32 noundef 220) #13
  %137 = icmp eq ptr %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %133
  %139 = load volatile ptr, ptr %52, align 4
  %140 = icmp eq ptr %139, %52
  br i1 %140, label %268, label %141

141:                                              ; preds = %141, %138
  %142 = phi ptr [ %149, %141 ], [ %139, %138 ]
  %143 = getelementptr i8, ptr %142, i32 -32
  %144 = getelementptr inbounds %struct.list_head, ptr %142, i32 0, i32 1
  %145 = load ptr, ptr %144, align 4
  %146 = load ptr, ptr %142, align 4
  %147 = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  store ptr %145, ptr %147, align 4
  store volatile ptr %146, ptr %145, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %142, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %144, align 4
  %148 = getelementptr i8, ptr %142, i32 32
  call void @tasklet_kill(ptr noundef %148) #11
  call void @kfree(ptr noundef %143) #11
  %149 = load volatile ptr, ptr %52, align 4
  %150 = icmp eq ptr %149, %52
  br i1 %150, label %268, label %141

151:                                              ; preds = %133
  %152 = load ptr, ptr %31, align 4
  %153 = getelementptr inbounds %struct.omap_chan, ptr %136, i32 0, i32 2
  store ptr %152, ptr %153, align 8
  %154 = getelementptr inbounds %struct.virt_dma_chan, ptr %136, i32 0, i32 2
  store ptr @omap_dma_desc_free, ptr %154, align 8
  call void @vchan_init(ptr noundef nonnull %136, ptr noundef %4) #11
  %155 = add nuw i32 %134, 1
  %156 = load i32, ptr %57, align 4
  %157 = icmp ult i32 %155, %156
  br i1 %157, label %133, label %158

158:                                              ; preds = %151, %130
  %159 = call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #11
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %163

161:                                              ; preds = %158
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.8, i32 noundef %159) #12
  %162 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 11
  store i8 1, ptr %162, align 4
  br label %199

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 16
  store i32 0, ptr %164, align 4
  %165 = load ptr, ptr %31, align 4
  %166 = getelementptr %struct.omap_dma_reg, ptr %165, i32 24, i32 1
  %167 = load i8, ptr %166, align 2
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %170, label %169, !prof !10

169:                                              ; preds = %163
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %170

170:                                              ; preds = %169, %163
  %171 = getelementptr %struct.omap_dma_reg, ptr %165, i32 24
  %172 = getelementptr %struct.omap_dma_reg, ptr %165, i32 24, i32 2
  %173 = load i8, ptr %172, align 1
  %174 = load ptr, ptr %9, align 4
  %175 = load i16, ptr %171, align 2
  %176 = zext i16 %175 to i32
  %177 = getelementptr i8, ptr %174, i32 %176
  switch i8 %173, label %182 [
    i8 1, label %178
    i8 2, label %179
    i8 3, label %181
  ]

178:                                              ; preds = %170
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %177, i16 0) #11, !srcloc !11
  br label %183

179:                                              ; preds = %170
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %177, i16 0) #11, !srcloc !11
  %180 = getelementptr i8, ptr %177, i32 2
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %180, i16 0) #11, !srcloc !11
  br label %183

181:                                              ; preds = %170
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 0) #11, !srcloc !12
  br label %183

182:                                              ; preds = %170
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %183

183:                                              ; preds = %182, %181, %179, %178
  %184 = call i32 @devm_request_threaded_irq(ptr noundef %3, i32 noundef %159, ptr noundef nonnull @omap_dma_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %4) #11
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %199, label %186

186:                                              ; preds = %183
  %187 = load volatile ptr, ptr %52, align 4
  %188 = icmp eq ptr %187, %52
  br i1 %188, label %268, label %189

189:                                              ; preds = %189, %186
  %190 = phi ptr [ %197, %189 ], [ %187, %186 ]
  %191 = getelementptr i8, ptr %190, i32 -32
  %192 = getelementptr inbounds %struct.list_head, ptr %190, i32 0, i32 1
  %193 = load ptr, ptr %192, align 4
  %194 = load ptr, ptr %190, align 4
  %195 = getelementptr inbounds %struct.list_head, ptr %194, i32 0, i32 1
  store ptr %193, ptr %195, align 4
  store volatile ptr %194, ptr %193, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %190, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %192, align 4
  %196 = getelementptr i8, ptr %190, i32 32
  call void @tasklet_kill(ptr noundef %196) #11
  call void @kfree(ptr noundef %191) #11
  %197 = load volatile ptr, ptr %52, align 4
  %198 = icmp eq ptr %197, %52
  br i1 %198, label %268, label %189

199:                                              ; preds = %183, %161
  %200 = call fastcc i32 @omap_dma_glbl_read(ptr noundef nonnull %4, i32 noundef 9)
  %201 = and i32 %200, 1048576
  %202 = icmp eq i32 %201, 0
  %203 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 12
  br i1 %202, label %204, label %207

204:                                              ; preds = %199
  %205 = load i8, ptr %203, align 1, !range !13
  %206 = icmp eq i8 %205, 0
  br label %208

207:                                              ; preds = %199
  store i8 1, ptr %203, align 1
  br label %208

208:                                              ; preds = %207, %204
  %209 = phi i1 [ %206, %204 ], [ false, %207 ]
  %210 = load ptr, ptr %29, align 4
  %211 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %210, i32 0, i32 9
  %212 = load ptr, ptr %211, align 4
  %213 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 5
  %214 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 5, i32 2
  store ptr %212, ptr %214, align 4
  %215 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %210, i32 0, i32 10
  %216 = load i32, ptr %215, align 4
  %217 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 5, i32 1
  store i32 %216, ptr %217, align 4
  store ptr @omap_dma_filter_fn, ptr %213, align 4
  %218 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 12
  br i1 %209, label %231, label %219

219:                                              ; preds = %208
  %220 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %221 = load ptr, ptr %220, align 4
  %222 = icmp eq ptr %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load ptr, ptr %3, align 4
  br label %225

225:                                              ; preds = %223, %219
  %226 = phi ptr [ %224, %223 ], [ %221, %219 ]
  %227 = call ptr @dma_pool_create(ptr noundef %226, ptr noundef %3, i32 noundef 28, i32 noundef 4, i32 noundef 0) #11
  %228 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 13
  store ptr %227, ptr %228, align 4
  %229 = icmp eq ptr %227, null
  br i1 %229, label %230, label %231

230:                                              ; preds = %225
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.9) #12
  store i8 0, ptr %218, align 1
  br label %231

231:                                              ; preds = %230, %225, %208
  %232 = call i32 @dma_async_device_register(ptr noundef nonnull %4) #11
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %231
  %235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %232) #12
  call fastcc void @omap_dma_free(ptr noundef nonnull %4)
  br label %268

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %4, ptr %237, align 8
  %238 = load ptr, ptr %58, align 8
  %239 = icmp eq ptr %238, null
  br i1 %239, label %246, label %240

240:                                              ; preds = %236
  %241 = load i32, ptr %32, align 4
  store i32 %241, ptr @omap_dma_info, align 4
  %242 = call i32 @of_dma_controller_register(ptr noundef nonnull %238, ptr noundef nonnull @of_dma_simple_xlate, ptr noundef nonnull @omap_dma_info) #11
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %246, label %244

244:                                              ; preds = %240
  %245 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #12
  call void @dma_async_device_unregister(ptr noundef nonnull %4) #11
  call fastcc void @omap_dma_free(ptr noundef nonnull %4)
  br label %246

246:                                              ; preds = %244, %240, %236
  %247 = phi i32 [ %242, %244 ], [ 0, %240 ], [ 0, %236 ]
  call fastcc void @omap_dma_init_gcr(ptr noundef nonnull %4)
  %248 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 5
  %249 = load ptr, ptr %248, align 4
  %250 = getelementptr inbounds %struct.omap_dma_config, ptr %249, i32 0, i32 1
  %251 = load i8, ptr %250, align 4
  %252 = and i8 %251, 2
  %253 = icmp eq i8 %252, 0
  br i1 %253, label %256, label %254

254:                                              ; preds = %246
  %255 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 6
  store ptr @omap_dma_busy_notifier, ptr %255, align 4
  br label %261

256:                                              ; preds = %246
  %257 = and i8 %251, 4
  %258 = icmp eq i8 %257, 0
  br i1 %258, label %264, label %259

259:                                              ; preds = %256
  %260 = getelementptr inbounds %struct.omap_dmadev, ptr %4, i32 0, i32 6
  store ptr @omap_dma_context_notifier, ptr %260, align 4
  br label %261

261:                                              ; preds = %259, %254
  %262 = phi ptr [ %255, %254 ], [ %260, %259 ]
  %263 = call i32 @cpu_pm_register_notifier(ptr noundef %262) #11
  br label %264

264:                                              ; preds = %261, %256
  %265 = load i8, ptr %218, align 1, !range !13
  %266 = icmp eq i8 %265, 0
  %267 = select i1 %266, ptr @.str.14, ptr @.str.13
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %3, ptr noundef nonnull @.str.12, ptr noundef nonnull %267) #12
  br label %268

268:                                              ; preds = %264, %234, %189, %186, %141, %138, %125, %123, %23, %22, %11, %1
  %269 = phi i32 [ %12, %11 ], [ %232, %234 ], [ %247, %264 ], [ -19, %22 ], [ -12, %1 ], [ -517, %23 ], [ -12, %125 ], [ -12, %123 ], [ -12, %138 ], [ %184, %186 ], [ %184, %189 ], [ -12, %141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #11
  ret i32 %269
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 5
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.omap_dma_config, ptr %5, i32 0, i32 1
  %7 = load i8, ptr %6, align 4
  %8 = and i8 %7, 4
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 6
  %12 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %11) #11
  br label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %15 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void @of_dma_controller_free(ptr noundef nonnull %16) #11
  br label %19

19:                                               ; preds = %18, %13
  %20 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 1) #11
  tail call void @devm_free_irq(ptr noundef %14, i32 noundef %20, ptr noundef %3) #11
  tail call void @dma_async_device_unregister(ptr noundef %3) #11
  %21 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 11
  %22 = load i8, ptr %21, align 4, !range !13
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 3
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr %struct.omap_dma_reg, ptr %26, i32 23, i32 1
  %28 = load i8, ptr %27, align 2
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %31, label %30, !prof !10

30:                                               ; preds = %24
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %31

31:                                               ; preds = %30, %24
  %32 = getelementptr %struct.omap_dma_reg, ptr %26, i32 23
  %33 = getelementptr %struct.omap_dma_reg, ptr %26, i32 23, i32 2
  %34 = load i8, ptr %33, align 1
  %35 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 2
  %36 = load ptr, ptr %35, align 4
  %37 = load i16, ptr %32, align 2
  %38 = zext i16 %37 to i32
  %39 = getelementptr i8, ptr %36, i32 %38
  switch i8 %34, label %44 [
    i8 1, label %40
    i8 2, label %41
    i8 3, label %43
  ]

40:                                               ; preds = %31
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 0) #11, !srcloc !11
  br label %45

41:                                               ; preds = %31
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %39, i16 0) #11, !srcloc !11
  %42 = getelementptr i8, ptr %39, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %42, i16 0) #11, !srcloc !11
  br label %45

43:                                               ; preds = %31
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %39, i32 0) #11, !srcloc !12
  br label %45

44:                                               ; preds = %31
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %45

45:                                               ; preds = %44, %43, %41, %40, %19
  %46 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 12
  %47 = load i8, ptr %46, align 1, !range !13
  %48 = icmp eq i8 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 13
  %51 = load ptr, ptr %50, align 4
  tail call void @dma_pool_destroy(ptr noundef %51) #11
  br label %52

52:                                               ; preds = %49, %45
  %53 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %66, label %56

56:                                               ; preds = %56, %52
  %57 = phi ptr [ %64, %56 ], [ %54, %52 ]
  %58 = getelementptr i8, ptr %57, i32 -32
  %59 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = load ptr, ptr %57, align 4
  %62 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %60, ptr %62, align 4
  store volatile ptr %61, ptr %60, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %57, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %59, align 4
  %63 = getelementptr i8, ptr %57, i32 32
  tail call void @tasklet_kill(ptr noundef %63) #11
  tail call void @kfree(ptr noundef %58) #11
  %64 = load volatile ptr, ptr %53, align 4
  %65 = icmp eq ptr %64, %53
  br i1 %65, label %66, label %56

66:                                               ; preds = %56, %52
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_get_plat_info() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_alloc_chan_resources(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 11
  %4 = load i8, ptr %3, align 4, !range !13
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 5
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 9
  %10 = tail call i32 @omap_request_dma(i32 noundef %8, ptr noundef nonnull @.str.15, ptr noundef nonnull @omap_dma_callback, ptr noundef %0, ptr noundef %9) #11
  br label %58

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 9
  %13 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 10
  tail call void @mutex_lock(ptr noundef %13) #11
  %14 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 9
  %15 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 8
  %16 = load i32, ptr %15, align 4
  %17 = tail call i32 @_find_first_zero_bit_le(ptr noundef %14, i32 noundef %16) #11
  %18 = load i32, ptr %15, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %54

20:                                               ; preds = %11
  tail call void @_set_bit(i32 noundef %17, ptr noundef %14) #11
  tail call void @mutex_unlock(ptr noundef %13) #11
  %21 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 17
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr ptr, ptr %22, i32 %17
  %24 = load ptr, ptr %23, align 4
  %25 = icmp eq ptr %24, null
  br i1 %25, label %55, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 5
  %28 = load ptr, ptr %27, align 4
  %29 = load i32, ptr %28, align 4
  %30 = icmp slt i32 %29, 32
  br i1 %30, label %55, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.omap_chan, ptr %24, i32 0, i32 2
  %33 = getelementptr inbounds %struct.omap_chan, ptr %24, i32 0, i32 1
  br label %34

34:                                               ; preds = %49, %31
  %35 = phi i32 [ 32, %31 ], [ %50, %49 ]
  %36 = load ptr, ptr %32, align 4
  %37 = getelementptr %struct.omap_dma_reg, ptr %36, i32 %35
  %38 = getelementptr %struct.omap_dma_reg, ptr %36, i32 %35, i32 2
  %39 = load i8, ptr %38, align 1
  %40 = load ptr, ptr %33, align 4
  %41 = load i16, ptr %37, align 2
  %42 = zext i16 %41 to i32
  %43 = getelementptr i8, ptr %40, i32 %42
  switch i8 %39, label %48 [
    i8 1, label %44
    i8 2, label %45
    i8 3, label %47
  ]

44:                                               ; preds = %34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 0) #11, !srcloc !11
  br label %49

45:                                               ; preds = %34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %43, i16 0) #11, !srcloc !11
  %46 = getelementptr i8, ptr %43, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %46, i16 0) #11, !srcloc !11
  br label %49

47:                                               ; preds = %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 0) #11, !srcloc !12
  br label %49

48:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %49

49:                                               ; preds = %48, %47, %45, %44
  %50 = add i32 %35, 1
  %51 = load ptr, ptr %27, align 4
  %52 = load i32, ptr %51, align 4
  %53 = icmp sgt i32 %50, %52
  br i1 %53, label %55, label %34

54:                                               ; preds = %11
  tail call void @mutex_unlock(ptr noundef %13) #11
  br label %55

55:                                               ; preds = %54, %49, %26, %20
  %56 = phi i32 [ -22, %54 ], [ %17, %20 ], [ %17, %26 ], [ %17, %49 ]
  %57 = phi i32 [ -16, %54 ], [ 0, %20 ], [ 0, %26 ], [ 0, %49 ]
  store i32 %56, ptr %12, align 4
  br label %58

58:                                               ; preds = %55, %6
  %59 = phi i32 [ %10, %6 ], [ %57, %55 ]
  %60 = icmp sgt i32 %59, -1
  br i1 %60, label %61, label %190

61:                                               ; preds = %58
  %62 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 9
  %63 = load i32, ptr %62, align 4
  %64 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 2
  %65 = load ptr, ptr %64, align 4
  %66 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 4
  %67 = load ptr, ptr %66, align 4
  %68 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %67, i32 0, i32 1
  %69 = load i32, ptr %68, align 4
  %70 = mul i32 %69, %63
  %71 = getelementptr i8, ptr %65, i32 %70
  %72 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  store ptr %71, ptr %72, align 4
  %73 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 17
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr ptr, ptr %74, i32 %63
  store ptr %0, ptr %75, align 4
  %76 = load i8, ptr %3, align 4, !range !13
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %190

78:                                               ; preds = %61
  %79 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %79) #11
  %80 = load i32, ptr %62, align 4
  %81 = shl nuw i32 1, %80
  %82 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 3
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr %struct.omap_dma_reg, ptr %83, i32 20, i32 1
  %85 = load i8, ptr %84, align 2
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %88, label %87, !prof !10

87:                                               ; preds = %78
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %88

88:                                               ; preds = %87, %78
  %89 = getelementptr %struct.omap_dma_reg, ptr %83, i32 20
  %90 = getelementptr %struct.omap_dma_reg, ptr %83, i32 20, i32 2
  %91 = load i8, ptr %90, align 1
  %92 = load ptr, ptr %64, align 4
  %93 = load i16, ptr %89, align 2
  %94 = zext i16 %93 to i32
  %95 = getelementptr i8, ptr %92, i32 %94
  switch i8 %91, label %104 [
    i8 1, label %96
    i8 2, label %98
    i8 3, label %103
  ]

96:                                               ; preds = %88
  %97 = trunc i32 %81 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %95, i16 %97) #11, !srcloc !11
  br label %105

98:                                               ; preds = %88
  %99 = trunc i32 %81 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %95, i16 %99) #11, !srcloc !11
  %100 = lshr i32 %81, 16
  %101 = trunc i32 %100 to i16
  %102 = getelementptr i8, ptr %95, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %102, i16 %101) #11, !srcloc !11
  br label %105

103:                                              ; preds = %88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %95, i32 %81) #11, !srcloc !12
  br label %105

104:                                              ; preds = %88
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %105

105:                                              ; preds = %104, %103, %98, %96
  %106 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 16
  %107 = load i32, ptr %106, align 4
  %108 = or i32 %107, %81
  store i32 %108, ptr %106, align 4
  %109 = load ptr, ptr %82, align 4
  %110 = getelementptr %struct.omap_dma_reg, ptr %109, i32 24, i32 1
  %111 = load i8, ptr %110, align 2
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %114, label %113, !prof !10

113:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %114

114:                                              ; preds = %113, %105
  %115 = getelementptr %struct.omap_dma_reg, ptr %109, i32 24
  %116 = getelementptr %struct.omap_dma_reg, ptr %109, i32 24, i32 2
  %117 = load i8, ptr %116, align 1
  %118 = load ptr, ptr %64, align 4
  %119 = load i16, ptr %115, align 2
  %120 = zext i16 %119 to i32
  %121 = getelementptr i8, ptr %118, i32 %120
  switch i8 %117, label %130 [
    i8 1, label %122
    i8 2, label %124
    i8 3, label %129
  ]

122:                                              ; preds = %114
  %123 = trunc i32 %108 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %121, i16 %123) #11, !srcloc !11
  br label %131

124:                                              ; preds = %114
  %125 = trunc i32 %108 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %121, i16 %125) #11, !srcloc !11
  %126 = lshr i32 %108, 16
  %127 = trunc i32 %126 to i16
  %128 = getelementptr i8, ptr %121, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %128, i16 %127) #11, !srcloc !11
  br label %131

129:                                              ; preds = %114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %108) #11, !srcloc !12
  br label %131

130:                                              ; preds = %114
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %131

131:                                              ; preds = %130, %129, %124, %122
  %132 = load ptr, ptr %82, align 4
  %133 = getelementptr %struct.omap_dma_reg, ptr %132, i32 23, i32 1
  %134 = load i8, ptr %133, align 2
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %137, label %136, !prof !10

136:                                              ; preds = %131
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 364, i32 noundef 9, ptr noundef null) #11
  br label %137

137:                                              ; preds = %136, %131
  %138 = getelementptr %struct.omap_dma_reg, ptr %132, i32 23
  %139 = getelementptr %struct.omap_dma_reg, ptr %132, i32 23, i32 2
  %140 = load i8, ptr %139, align 1
  %141 = load ptr, ptr %64, align 4
  %142 = load i16, ptr %138, align 2
  %143 = zext i16 %142 to i32
  %144 = getelementptr i8, ptr %141, i32 %143
  switch i8 %140, label %158 [
    i8 1, label %145
    i8 2, label %148
    i8 3, label %156
  ]

145:                                              ; preds = %137
  %146 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %144) #11, !srcloc !14
  %147 = zext i16 %146 to i32
  br label %159

148:                                              ; preds = %137
  %149 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %144) #11, !srcloc !14
  %150 = zext i16 %149 to i32
  %151 = getelementptr i8, ptr %144, i32 2
  %152 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %151) #11, !srcloc !14
  %153 = zext i16 %152 to i32
  %154 = shl nuw i32 %153, 16
  %155 = or i32 %154, %150
  br label %159

156:                                              ; preds = %137
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %144) #11, !srcloc !15
  br label %159

158:                                              ; preds = %137
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %159

159:                                              ; preds = %158, %156, %148, %145
  %160 = phi i32 [ 0, %158 ], [ %157, %156 ], [ %155, %148 ], [ %147, %145 ]
  %161 = load i32, ptr %62, align 4
  %162 = shl nuw i32 1, %161
  %163 = xor i32 %162, -1
  %164 = and i32 %160, %163
  %165 = load ptr, ptr %82, align 4
  %166 = getelementptr %struct.omap_dma_reg, ptr %165, i32 23, i32 1
  %167 = load i8, ptr %166, align 2
  %168 = icmp eq i8 %167, 0
  br i1 %168, label %170, label %169, !prof !10

169:                                              ; preds = %159
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %170

170:                                              ; preds = %169, %159
  %171 = getelementptr %struct.omap_dma_reg, ptr %165, i32 23
  %172 = getelementptr %struct.omap_dma_reg, ptr %165, i32 23, i32 2
  %173 = load i8, ptr %172, align 1
  %174 = load ptr, ptr %64, align 4
  %175 = load i16, ptr %171, align 2
  %176 = zext i16 %175 to i32
  %177 = getelementptr i8, ptr %174, i32 %176
  switch i8 %173, label %186 [
    i8 1, label %178
    i8 2, label %180
    i8 3, label %185
  ]

178:                                              ; preds = %170
  %179 = trunc i32 %164 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %177, i16 %179) #11, !srcloc !11
  br label %187

180:                                              ; preds = %170
  %181 = trunc i32 %164 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %177, i16 %181) #11, !srcloc !11
  %182 = lshr i32 %164, 16
  %183 = trunc i32 %182 to i16
  %184 = getelementptr i8, ptr %177, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %184, i16 %183) #11, !srcloc !11
  br label %187

185:                                              ; preds = %170
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %164) #11, !srcloc !12
  br label %187

186:                                              ; preds = %170
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %187

187:                                              ; preds = %186, %185, %180, %178
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %188 = load i16, ptr %79, align 4
  %189 = add i16 %188, 1
  store i16 %189, ptr %79, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %190

190:                                              ; preds = %187, %61, %58
  %191 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 5
  %192 = load i32, ptr %191, align 4
  %193 = and i32 %192, 31
  %194 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 3
  %195 = shl i32 %192, 14
  %196 = and i32 %195, -524288
  %197 = or i32 %196, %193
  store i32 %197, ptr %194, align 4
  %198 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 4
  %199 = load ptr, ptr %198, align 4
  %200 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %199, i32 0, i32 3
  %201 = load i32, ptr %200, align 4
  %202 = and i32 %201, 1
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %190
  %205 = or i32 %197, 33554432
  store i32 %205, ptr %194, align 4
  br label %206

206:                                              ; preds = %204, %190
  ret i32 %59
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_dma_free_chan_resources(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 11
  %5 = load i8, ptr %4, align 4, !range !13
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %43

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %8) #11
  %9 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 9
  %10 = load i32, ptr %9, align 4
  %11 = shl nuw i32 1, %10
  %12 = xor i32 %11, -1
  %13 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 16
  %14 = load i32, ptr %13, align 4
  %15 = and i32 %14, %12
  store i32 %15, ptr %13, align 4
  %16 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.omap_dma_reg, ptr %17, i32 24, i32 1
  %19 = load i8, ptr %18, align 2
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %22, label %21, !prof !10

21:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %22

22:                                               ; preds = %21, %7
  %23 = getelementptr %struct.omap_dma_reg, ptr %17, i32 24
  %24 = getelementptr %struct.omap_dma_reg, ptr %17, i32 24, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = load i16, ptr %23, align 2
  %29 = zext i16 %28 to i32
  %30 = getelementptr i8, ptr %27, i32 %29
  switch i8 %25, label %39 [
    i8 1, label %31
    i8 2, label %33
    i8 3, label %38
  ]

31:                                               ; preds = %22
  %32 = trunc i32 %15 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %32) #11, !srcloc !11
  br label %40

33:                                               ; preds = %22
  %34 = trunc i32 %15 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %30, i16 %34) #11, !srcloc !11
  %35 = lshr i32 %15, 16
  %36 = trunc i32 %35 to i16
  %37 = getelementptr i8, ptr %30, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %37, i16 %36) #11, !srcloc !11
  br label %40

38:                                               ; preds = %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %15) #11, !srcloc !12
  br label %40

39:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %40

40:                                               ; preds = %39, %38, %33, %31
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %41 = load i16, ptr %8, align 4
  %42 = add i16 %41, 1
  store i16 %42, ptr %8, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #11, !srcloc !19
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !20
  br label %43

43:                                               ; preds = %40, %1
  %44 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  store ptr null, ptr %44, align 4
  %45 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 17
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr ptr, ptr %46, i32 %48
  store ptr null, ptr %49, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %50 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %50, align 4
  %51 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %52 = call i32 @_raw_spin_lock_irqsave(ptr noundef %51) #11
  %53 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %54 = load volatile ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %61, label %56

56:                                               ; preds = %43
  %57 = load ptr, ptr %50, align 4
  %58 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %57, ptr %60, align 4
  store ptr %54, ptr %57, align 4
  store ptr %2, ptr %59, align 4
  store ptr %59, ptr %50, align 4
  store volatile ptr %53, ptr %53, align 4
  store ptr %53, ptr %58, align 4
  br label %61

61:                                               ; preds = %56, %43
  %62 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %63 = load volatile ptr, ptr %62, align 4
  %64 = icmp eq ptr %63, %62
  br i1 %64, label %70, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %50, align 4
  %67 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  store ptr %66, ptr %69, align 4
  store ptr %63, ptr %66, align 4
  store ptr %2, ptr %68, align 4
  store ptr %68, ptr %50, align 4
  store volatile ptr %62, ptr %62, align 4
  store ptr %62, ptr %67, align 4
  br label %70

70:                                               ; preds = %65, %61
  %71 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %72 = load volatile ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %71
  br i1 %73, label %79, label %74

74:                                               ; preds = %70
  %75 = load ptr, ptr %50, align 4
  %76 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %77 = load ptr, ptr %76, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %72, i32 0, i32 1
  store ptr %75, ptr %78, align 4
  store ptr %72, ptr %75, align 4
  store ptr %2, ptr %77, align 4
  store ptr %77, ptr %50, align 4
  store volatile ptr %71, ptr %71, align 4
  store ptr %71, ptr %76, align 4
  br label %79

79:                                               ; preds = %74, %70
  %80 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %88, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %50, align 4
  %85 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %84, ptr %87, align 4
  store ptr %81, ptr %84, align 4
  store ptr %2, ptr %86, align 4
  store ptr %86, ptr %50, align 4
  store volatile ptr %80, ptr %80, align 4
  store ptr %80, ptr %85, align 4
  br label %88

88:                                               ; preds = %83, %79
  %89 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %90 = load volatile ptr, ptr %89, align 4
  %91 = icmp eq ptr %90, %89
  br i1 %91, label %97, label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %50, align 4
  %94 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %95 = load ptr, ptr %94, align 4
  %96 = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  store ptr %93, ptr %96, align 4
  store ptr %90, ptr %93, align 4
  store ptr %2, ptr %95, align 4
  store ptr %95, ptr %50, align 4
  store volatile ptr %89, ptr %89, align 4
  store ptr %89, ptr %94, align 4
  br label %97

97:                                               ; preds = %92, %88
  %98 = load ptr, ptr %2, align 8
  %99 = icmp eq ptr %98, %2
  br i1 %99, label %107, label %100

100:                                              ; preds = %100, %97
  %101 = phi ptr [ %105, %100 ], [ %98, %97 ]
  %102 = getelementptr i8, ptr %101, i32 -64
  %103 = load i32, ptr %102, align 4
  %104 = and i32 %103, -65
  store i32 %104, ptr %102, align 4
  %105 = load ptr, ptr %101, align 4
  %106 = icmp eq ptr %105, %2
  br i1 %106, label %107, label %100

107:                                              ; preds = %100, %97
  call void @_raw_spin_unlock_irqrestore(ptr noundef %51, i32 noundef %52) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  %108 = load i8, ptr %4, align 4, !range !13
  %109 = icmp eq i8 %108, 0
  %110 = load i32, ptr %47, align 4
  br i1 %109, label %112, label %111

111:                                              ; preds = %107
  call void @omap_free_dma(i32 noundef %110) #11
  br label %148

112:                                              ; preds = %107
  %113 = load ptr, ptr %45, align 4
  %114 = getelementptr ptr, ptr %113, i32 %110
  %115 = load ptr, ptr %114, align 4
  %116 = icmp eq ptr %115, null
  br i1 %116, label %145, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 5
  %119 = load ptr, ptr %118, align 4
  %120 = load i32, ptr %119, align 4
  %121 = icmp slt i32 %120, 32
  br i1 %121, label %145, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.omap_chan, ptr %115, i32 0, i32 2
  %124 = getelementptr inbounds %struct.omap_chan, ptr %115, i32 0, i32 1
  br label %125

125:                                              ; preds = %140, %122
  %126 = phi i32 [ 32, %122 ], [ %141, %140 ]
  %127 = load ptr, ptr %123, align 4
  %128 = getelementptr %struct.omap_dma_reg, ptr %127, i32 %126
  %129 = getelementptr %struct.omap_dma_reg, ptr %127, i32 %126, i32 2
  %130 = load i8, ptr %129, align 1
  %131 = load ptr, ptr %124, align 4
  %132 = load i16, ptr %128, align 2
  %133 = zext i16 %132 to i32
  %134 = getelementptr i8, ptr %131, i32 %133
  switch i8 %130, label %139 [
    i8 1, label %135
    i8 2, label %136
    i8 3, label %138
  ]

135:                                              ; preds = %125
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %134, i16 0) #11, !srcloc !11
  br label %140

136:                                              ; preds = %125
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %134, i16 0) #11, !srcloc !11
  %137 = getelementptr i8, ptr %134, i32 2
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %137, i16 0) #11, !srcloc !11
  br label %140

138:                                              ; preds = %125
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %134, i32 0) #11, !srcloc !12
  br label %140

139:                                              ; preds = %125
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %140

140:                                              ; preds = %139, %138, %136, %135
  %141 = add i32 %126, 1
  %142 = load ptr, ptr %118, align 4
  %143 = load i32, ptr %142, align 4
  %144 = icmp sgt i32 %141, %143
  br i1 %144, label %145, label %125

145:                                              ; preds = %140, %117, %112
  %146 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 10
  call void @mutex_lock(ptr noundef %146) #11
  %147 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 9
  call void @_clear_bit(i32 noundef %110, ptr noundef %147) #11
  call void @mutex_unlock(ptr noundef %146) #11
  br label %148

148:                                              ; preds = %145, %111
  %149 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 5
  store i32 0, ptr %149, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #0 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !21
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
  br i1 %14, label %19, label %17

17:                                               ; preds = %13
  %18 = or i1 %16, %15
  br i1 %18, label %223, label %21

19:                                               ; preds = %13
  %20 = and i1 %16, %15
  br i1 %20, label %223, label %21

21:                                               ; preds = %19, %17
  %22 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %23 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #11
  %24 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 10
  %25 = load ptr, ptr %24, align 4
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %21
  %28 = load i32, ptr %25, align 4
  %29 = icmp eq i32 %28, %1
  %30 = select i1 %29, ptr %25, ptr null
  br i1 %8, label %157, label %32

31:                                               ; preds = %21
  br i1 %8, label %162, label %127

32:                                               ; preds = %27
  %33 = icmp eq ptr %30, null
  br i1 %33, label %127, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.omap_desc, ptr %30, i32 0, i32 2
  %36 = load i32, ptr %35, align 4
  switch i32 %36, label %94 [
    i32 1, label %37
    i32 2, label %66
    i32 0, label %66
  ]

37:                                               ; preds = %34
  %38 = tail call fastcc i32 @omap_dma_chan_read_3_3(ptr noundef %0, i32 noundef 40) #11
  %39 = tail call fastcc i32 @omap_dma_chan_read_3_3(ptr noundef %0, i32 noundef 41) #11
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %94

41:                                               ; preds = %37
  %42 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 2
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr %struct.omap_dma_reg, ptr %43, i32 45
  %45 = getelementptr %struct.omap_dma_reg, ptr %43, i32 45, i32 2
  %46 = load i8, ptr %45, align 1
  %47 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load i16, ptr %44, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %48, i32 %50
  switch i8 %46, label %65 [
    i8 1, label %52
    i8 2, label %55
    i8 3, label %63
  ]

52:                                               ; preds = %41
  %53 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %51) #11, !srcloc !14
  %54 = zext i16 %53 to i32
  br label %94

55:                                               ; preds = %41
  %56 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %51) #11, !srcloc !14
  %57 = zext i16 %56 to i32
  %58 = getelementptr i8, ptr %51, i32 2
  %59 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %58) #11, !srcloc !14
  %60 = zext i16 %59 to i32
  %61 = shl nuw i32 %60, 16
  %62 = or i32 %61, %57
  br label %94

63:                                               ; preds = %41
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #11, !srcloc !15
  br label %94

65:                                               ; preds = %41
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %94

66:                                               ; preds = %34, %34
  %67 = tail call fastcc i32 @omap_dma_chan_read_3_3(ptr noundef %0, i32 noundef 41) #11
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %94

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 2
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr %struct.omap_dma_reg, ptr %71, i32 46
  %73 = getelementptr %struct.omap_dma_reg, ptr %71, i32 46, i32 2
  %74 = load i8, ptr %73, align 1
  %75 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = load i16, ptr %72, align 2
  %78 = zext i16 %77 to i32
  %79 = getelementptr i8, ptr %76, i32 %78
  switch i8 %74, label %93 [
    i8 1, label %80
    i8 2, label %83
    i8 3, label %91
  ]

80:                                               ; preds = %69
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %79) #11, !srcloc !14
  %82 = zext i16 %81 to i32
  br label %94

83:                                               ; preds = %69
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %79) #11, !srcloc !14
  %85 = zext i16 %84 to i32
  %86 = getelementptr i8, ptr %79, i32 2
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %86) #11, !srcloc !14
  %88 = zext i16 %87 to i32
  %89 = shl nuw i32 %88, 16
  %90 = or i32 %89, %85
  br label %94

91:                                               ; preds = %69
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #11, !srcloc !15
  br label %94

93:                                               ; preds = %69
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %94

94:                                               ; preds = %93, %91, %83, %80, %66, %65, %63, %55, %52, %37, %34
  %95 = phi i32 [ 0, %34 ], [ %38, %37 ], [ 0, %65 ], [ %64, %63 ], [ %62, %55 ], [ %54, %52 ], [ %67, %66 ], [ 0, %93 ], [ %92, %91 ], [ %90, %83 ], [ %82, %80 ]
  %96 = getelementptr inbounds %struct.omap_desc, ptr %30, i32 0, i32 7
  %97 = load i8, ptr %96, align 2
  %98 = zext i8 %97 to i32
  %99 = getelementptr [3 x i32], ptr @es_bytes, i32 0, i32 %98
  %100 = load i32, ptr %99, align 4
  %101 = getelementptr inbounds %struct.omap_desc, ptr %30, i32 0, i32 12
  %102 = load i32, ptr %101, align 4
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %153, label %104

104:                                              ; preds = %123, %94
  %105 = phi i32 [ %124, %123 ], [ 0, %94 ]
  %106 = phi i32 [ %125, %123 ], [ 0, %94 ]
  %107 = getelementptr %struct.omap_desc, ptr %30, i32 0, i32 13, i32 %106, i32 1
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr %struct.omap_desc, ptr %30, i32 0, i32 13, i32 %106, i32 2
  %110 = load i32, ptr %109, align 4
  %111 = mul i32 %108, %100
  %112 = mul i32 %111, %110
  %113 = icmp eq i32 %105, 0
  br i1 %113, label %116, label %114

114:                                              ; preds = %104
  %115 = add i32 %112, %105
  br label %123

116:                                              ; preds = %104
  %117 = getelementptr %struct.omap_desc, ptr %30, i32 0, i32 13, i32 %106
  %118 = load i32, ptr %117, align 4
  %119 = icmp ugt i32 %118, %95
  br i1 %119, label %123, label %120

120:                                              ; preds = %116
  %121 = add i32 %118, %112
  %122 = tail call i32 @llvm.usub.sat.i32(i32 %121, i32 %95) #11
  br label %123

123:                                              ; preds = %120, %116, %114
  %124 = phi i32 [ %115, %114 ], [ 0, %116 ], [ %122, %120 ]
  %125 = add nuw i32 %106, 1
  %126 = icmp eq i32 %125, %102
  br i1 %126, label %153, label %104

127:                                              ; preds = %32, %31
  %128 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #11
  %129 = icmp eq ptr %128, null
  br i1 %129, label %153, label %130

130:                                              ; preds = %127
  %131 = getelementptr inbounds %struct.omap_desc, ptr %128, i32 0, i32 12
  %132 = load i32, ptr %131, align 4
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %145, label %134

134:                                              ; preds = %134, %130
  %135 = phi i32 [ %142, %134 ], [ 0, %130 ]
  %136 = phi i32 [ %143, %134 ], [ 0, %130 ]
  %137 = getelementptr %struct.omap_desc, ptr %128, i32 0, i32 13, i32 %136, i32 1
  %138 = load i32, ptr %137, align 4
  %139 = getelementptr %struct.omap_desc, ptr %128, i32 0, i32 13, i32 %136, i32 2
  %140 = load i32, ptr %139, align 4
  %141 = mul i32 %140, %138
  %142 = add i32 %141, %135
  %143 = add nuw i32 %136, 1
  %144 = icmp eq i32 %143, %132
  br i1 %144, label %145, label %134

145:                                              ; preds = %134, %130
  %146 = phi i32 [ 0, %130 ], [ %142, %134 ]
  %147 = getelementptr inbounds %struct.omap_desc, ptr %128, i32 0, i32 7
  %148 = load i8, ptr %147, align 2
  %149 = zext i8 %148 to i32
  %150 = getelementptr [3 x i32], ptr @es_bytes, i32 0, i32 %149
  %151 = load i32, ptr %150, align 4
  %152 = mul i32 %151, %146
  br label %153

153:                                              ; preds = %145, %127, %123, %94
  %154 = phi i32 [ %152, %145 ], [ 0, %94 ], [ 0, %127 ], [ %124, %123 ]
  %155 = phi ptr [ null, %145 ], [ %30, %94 ], [ null, %127 ], [ %30, %123 ]
  %156 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %154, ptr %156, align 4
  br label %157

157:                                              ; preds = %153, %27
  %158 = phi ptr [ %30, %27 ], [ %155, %153 ]
  %159 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 7
  %160 = load i8, ptr %159, align 1, !range !13
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %167, label %221

162:                                              ; preds = %31
  %163 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 7
  %164 = load i8, ptr %163, align 1, !range !13
  %165 = icmp eq i8 %164, 0
  %166 = select i1 %165, i32 1, i32 2
  br label %221

167:                                              ; preds = %157
  %168 = icmp eq ptr %158, null
  br i1 %168, label %221, label %169

169:                                              ; preds = %167
  %170 = getelementptr inbounds %struct.omap_desc, ptr %158, i32 0, i32 4
  %171 = load i8, ptr %170, align 4, !range !13
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %221, label %173

173:                                              ; preds = %169
  %174 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 8
  %175 = load i8, ptr %174, align 2, !range !13
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %221, label %177

177:                                              ; preds = %173
  %178 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 2
  %179 = load ptr, ptr %178, align 4
  %180 = getelementptr %struct.omap_dma_reg, ptr %179, i32 33
  %181 = getelementptr %struct.omap_dma_reg, ptr %179, i32 33, i32 2
  %182 = load i8, ptr %181, align 1
  %183 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  %184 = load ptr, ptr %183, align 4
  %185 = load i16, ptr %180, align 2
  %186 = zext i16 %185 to i32
  %187 = getelementptr i8, ptr %184, i32 %186
  switch i8 %182, label %198 [
    i8 1, label %188
    i8 2, label %191
    i8 3, label %196
  ]

188:                                              ; preds = %177
  %189 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %187) #11, !srcloc !14
  %190 = zext i16 %189 to i32
  br label %199

191:                                              ; preds = %177
  %192 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %187) #11, !srcloc !14
  %193 = zext i16 %192 to i32
  %194 = getelementptr i8, ptr %187, i32 2
  %195 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %194) #11, !srcloc !14
  br label %199

196:                                              ; preds = %177
  %197 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %187) #11, !srcloc !15
  br label %199

198:                                              ; preds = %177
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %203

199:                                              ; preds = %196, %191, %188
  %200 = phi i32 [ %197, %196 ], [ %193, %191 ], [ %190, %188 ]
  %201 = and i32 %200, 128
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %221

203:                                              ; preds = %199, %198
  tail call fastcc void @omap_dma_start_desc(ptr noundef %0)
  %204 = load i32, ptr %158, align 4
  %205 = icmp slt i32 %204, 1
  br i1 %205, label %206, label %207, !prof !9

206:                                              ; preds = %203
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !22
  unreachable

207:                                              ; preds = %203
  %208 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %158, i32 0, i32 3
  %209 = load ptr, ptr %208, align 4
  %210 = getelementptr inbounds %struct.dma_chan, ptr %209, i32 0, i32 3
  store i32 %204, ptr %210, align 4
  store i32 0, ptr %158, align 4
  %211 = getelementptr inbounds %struct.virt_dma_desc, ptr %158, i32 0, i32 2
  %212 = getelementptr inbounds %struct.virt_dma_chan, ptr %209, i32 0, i32 7
  %213 = getelementptr inbounds %struct.virt_dma_chan, ptr %209, i32 0, i32 7, i32 1
  %214 = load ptr, ptr %213, align 4
  store ptr %211, ptr %213, align 4
  store ptr %212, ptr %211, align 4
  %215 = getelementptr inbounds %struct.virt_dma_desc, ptr %158, i32 0, i32 2, i32 1
  store ptr %214, ptr %215, align 4
  store volatile ptr %211, ptr %214, align 4
  %216 = getelementptr inbounds %struct.virt_dma_chan, ptr %209, i32 0, i32 1, i32 1
  %217 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %216) #11
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %207
  %220 = getelementptr inbounds %struct.virt_dma_chan, ptr %209, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %220) #11
  br label %221

221:                                              ; preds = %219, %207, %199, %173, %169, %167, %162, %157
  %222 = phi i32 [ 1, %173 ], [ 1, %169 ], [ 1, %167 ], [ 2, %157 ], [ 1, %199 ], [ 0, %207 ], [ 0, %219 ], [ %166, %162 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #11
  br label %223

223:                                              ; preds = %221, %19, %17
  %224 = phi i32 [ %222, %221 ], [ 0, %17 ], [ 0, %19 ]
  ret i32 %224
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_dma_issue_pending(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #11
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %6 = load volatile ptr, ptr %4, align 4
  %7 = icmp eq ptr %6, %4
  br i1 %7, label %14, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %10, ptr %13, align 4
  store ptr %6, ptr %10, align 4
  store ptr %5, ptr %12, align 4
  store ptr %12, ptr %9, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %11, align 4
  br label %14

14:                                               ; preds = %8, %1
  %15 = load volatile ptr, ptr %5, align 4
  %16 = icmp eq ptr %15, %5
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call fastcc void @omap_dma_start_desc(ptr noundef %0)
  br label %22

22:                                               ; preds = %21, %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @omap_dma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = load ptr, ptr %0, align 4
  %8 = icmp eq i32 %3, 2
  br i1 %8, label %9, label %14

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 1
  %11 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 3
  %12 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 5
  %13 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 7
  br label %24

14:                                               ; preds = %6
  %15 = icmp eq i32 %3, 1
  br i1 %15, label %16, label %21

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 2
  %18 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 4
  %19 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 6
  %20 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 8
  br label %24

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap_dma_prep_slave_sg) #12
  br label %253

24:                                               ; preds = %16, %9
  %25 = phi ptr [ %11, %9 ], [ %18, %16 ]
  %26 = phi ptr [ %10, %9 ], [ %17, %16 ]
  %27 = phi ptr [ %12, %9 ], [ %19, %16 ]
  %28 = phi ptr [ %13, %9 ], [ %20, %16 ]
  %29 = load i32, ptr %28, align 4
  %30 = load i32, ptr %27, align 4
  %31 = load i32, ptr %26, align 4
  %32 = load i32, ptr %25, align 4
  switch i32 %32, label %253 [
    i32 1, label %35
    i32 2, label %33
    i32 4, label %34
  ]

33:                                               ; preds = %24
  br label %35

34:                                               ; preds = %24
  br label %35

35:                                               ; preds = %34, %33, %24
  %36 = phi i32 [ 2, %34 ], [ 1, %33 ], [ 0, %24 ]
  %37 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 28) #11
  %38 = extractvalue { i32, i1 } %37, 1
  %39 = extractvalue { i32, i1 } %37, 0
  %40 = tail call i32 @llvm.uadd.sat.i32(i32 %39, i32 116) #11
  %41 = select i1 %38, i32 -1, i32 %40
  %42 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %41, i32 noundef 2848) #14
  %43 = icmp eq ptr %42, null
  br i1 %43, label %253, label %44

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 2
  store i32 %3, ptr %45, align 16
  %46 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 3
  store i32 %31, ptr %46, align 4
  %47 = trunc i32 %36 to i8
  %48 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 7
  store i8 %47, ptr %48, align 2
  %49 = icmp eq i32 %29, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = or i32 %52, 32
  %54 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 8
  store i32 %53, ptr %54, align 4
  %55 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 11
  br i1 %8, label %78, label %90

56:                                               ; preds = %44
  %57 = getelementptr [3 x i32], ptr @es_bytes, i32 0, i32 %36
  %58 = load i32, ptr %57, align 4
  %59 = mul i32 %58, %29
  %60 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 6
  store i16 1, ptr %60, align 32
  %61 = sub i32 1, %59
  %62 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 5
  store i32 %61, ptr %62, align 4
  %63 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 3
  %64 = load i32, ptr %63, align 4
  %65 = or i32 %64, 32
  %66 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 8
  store i32 %65, ptr %66, align 4
  %67 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 11
  br i1 %8, label %68, label %80

68:                                               ; preds = %56
  store i32 57344, ptr %67, align 4
  %69 = or i32 %64, 28704
  store i32 %69, ptr %66, align 4
  %70 = icmp ugt i32 %59, 63
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 57728, ptr %67, align 4
  br label %98

72:                                               ; preds = %68
  %73 = icmp ugt i32 %59, 31
  br i1 %73, label %74, label %75

74:                                               ; preds = %72
  store i32 57600, ptr %67, align 4
  br label %98

75:                                               ; preds = %72
  %76 = icmp ugt i32 %59, 15
  br i1 %76, label %77, label %98

77:                                               ; preds = %75
  store i32 57472, ptr %67, align 4
  br label %98

78:                                               ; preds = %50
  store i32 57344, ptr %55, align 4
  %79 = or i32 %52, 16416
  store i32 %79, ptr %54, align 4
  br label %98

80:                                               ; preds = %56
  store i32 448, ptr %67, align 4
  %81 = or i32 %64, 53280
  store i32 %81, ptr %66, align 4
  %82 = icmp ugt i32 %59, 63
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 49600, ptr %67, align 4
  br label %92

84:                                               ; preds = %80
  %85 = icmp ugt i32 %59, 31
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  store i32 33216, ptr %67, align 4
  br label %92

87:                                               ; preds = %84
  %88 = icmp ugt i32 %59, 15
  br i1 %88, label %89, label %92

89:                                               ; preds = %87
  store i32 16832, ptr %67, align 4
  br label %92

90:                                               ; preds = %50
  store i32 448, ptr %55, align 4
  %91 = or i32 %52, 4128
  store i32 %91, ptr %54, align 4
  br label %92

92:                                               ; preds = %90, %89, %87, %86, %83
  %93 = phi i32 [ 448, %90 ], [ 33216, %86 ], [ 16832, %89 ], [ 448, %87 ], [ 49600, %83 ]
  %94 = phi i32 [ %30, %90 ], [ %29, %86 ], [ %29, %89 ], [ %29, %87 ], [ %29, %83 ]
  %95 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 10
  store i16 34, ptr %95, align 2
  %96 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 11
  %97 = or i32 %93, %36
  store i32 %97, ptr %96, align 4
  br label %107

98:                                               ; preds = %78, %77, %75, %74, %71
  %99 = phi i32 [ %69, %71 ], [ %69, %75 ], [ %69, %77 ], [ %69, %74 ], [ %79, %78 ]
  %100 = phi i32 [ 57728, %71 ], [ 57344, %75 ], [ 57472, %77 ], [ 57600, %74 ], [ 57344, %78 ]
  %101 = phi ptr [ %66, %71 ], [ %66, %75 ], [ %66, %77 ], [ %66, %74 ], [ %54, %78 ]
  %102 = phi i32 [ %29, %71 ], [ %29, %75 ], [ %29, %77 ], [ %29, %74 ], [ %30, %78 ]
  %103 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 10
  store i16 34, ptr %103, align 2
  %104 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 11
  %105 = or i32 %100, %36
  store i32 %105, ptr %104, align 4
  %106 = or i32 %99, 16777216
  store i32 %106, ptr %101, align 4
  br label %107

107:                                              ; preds = %98, %92
  %108 = phi i32 [ %105, %98 ], [ %97, %92 ]
  %109 = phi ptr [ %104, %98 ], [ %96, %92 ]
  %110 = phi ptr [ %103, %98 ], [ %95, %92 ]
  %111 = phi i32 [ %102, %98 ], [ %94, %92 ]
  store i16 2338, ptr %110, align 2
  br i1 %49, label %114, label %112

112:                                              ; preds = %107
  %113 = or i32 %108, 131072
  store i32 %113, ptr %109, align 4
  br label %114

114:                                              ; preds = %112, %107
  %115 = getelementptr inbounds %struct.omap_dmadev, ptr %7, i32 0, i32 4
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %116, i32 0, i32 3
  %118 = load i32, ptr %117, align 4
  %119 = and i32 %118, 2
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %114
  %122 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 9
  %123 = load i32, ptr %122, align 4
  %124 = trunc i32 %123 to i16
  %125 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 9
  store i16 %124, ptr %125, align 8
  br label %126

126:                                              ; preds = %121, %114
  %127 = getelementptr [3 x i32], ptr @es_bytes, i32 0, i32 %36
  %128 = load i32, ptr %127, align 4
  %129 = mul i32 %128, %111
  %130 = icmp ugt i32 %2, 1
  br i1 %130, label %131, label %135

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.omap_dmadev, ptr %7, i32 0, i32 12
  %133 = load i8, ptr %132, align 1, !range !13
  %134 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 1
  store i8 %133, ptr %134, align 4
  br label %139

135:                                              ; preds = %126
  %136 = icmp eq i32 %2, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %135
  %138 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 12
  store i32 %2, ptr %138, align 16
  br label %240

139:                                              ; preds = %135, %131
  %140 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 1
  %141 = getelementptr inbounds %struct.omap_dmadev, ptr %7, i32 0, i32 13
  %142 = add i32 %2, -1
  %143 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 6
  %144 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 5
  br label %145

145:                                              ; preds = %216, %139
  %146 = phi i1 [ false, %139 ], [ %217, %216 ]
  %147 = phi i32 [ 0, %139 ], [ %218, %216 ]
  %148 = phi ptr [ %1, %139 ], [ %219, %216 ]
  %149 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %147
  %150 = getelementptr inbounds %struct.scatterlist, ptr %148, i32 0, i32 3
  %151 = load i32, ptr %150, align 4
  store i32 %151, ptr %149, align 4
  %152 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %147, i32 1
  store i32 %111, ptr %152, align 4
  %153 = getelementptr inbounds %struct.scatterlist, ptr %148, i32 0, i32 4
  %154 = load i32, ptr %153, align 4
  %155 = udiv i32 %154, %129
  %156 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %147, i32 2
  store i32 %155, ptr %156, align 4
  %157 = load i8, ptr %140, align 4, !range !13
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %216, label %159

159:                                              ; preds = %145
  %160 = load ptr, ptr %141, align 4
  %161 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %147, i32 6
  %162 = tail call ptr @dma_pool_alloc(ptr noundef %160, i32 noundef 2592, ptr noundef %161) #11
  %163 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %147, i32 5
  store ptr %162, ptr %163, align 4
  %164 = icmp eq ptr %162, null
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load ptr, ptr %0, align 4
  %167 = getelementptr inbounds %struct.dma_device, ptr %166, i32 0, i32 15
  %168 = load ptr, ptr %167, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.18, i32 noundef %147) #12
  store i8 0, ptr %140, align 4
  br label %216

169:                                              ; preds = %159
  %170 = icmp eq i32 %147, %142
  %171 = icmp eq i32 %147, 0
  br i1 %171, label %177, label %172

172:                                              ; preds = %169
  %173 = load i32, ptr %161, align 4
  %174 = add i32 %147, -1
  %175 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %174, i32 5
  %176 = load ptr, ptr %175, align 4
  store i32 %173, ptr %176, align 1
  br label %177

177:                                              ; preds = %172, %169
  br i1 %170, label %178, label %179

178:                                              ; preds = %177
  store i32 -4, ptr %162, align 1
  br label %179

179:                                              ; preds = %178, %177
  %180 = load i32, ptr %152, align 4
  %181 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 1
  store i32 %180, ptr %181, align 1
  %182 = load i32, ptr %149, align 4
  %183 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 2
  store i32 %182, ptr %183, align 1
  %184 = load i32, ptr %156, align 4
  %185 = trunc i32 %184 to i16
  %186 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 3
  store i16 %185, ptr %186, align 1
  %187 = load i16, ptr %110, align 2
  %188 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 4
  %189 = and i16 %187, -33
  %190 = select i1 %170, i16 %187, i16 %189
  store i16 %190, ptr %188, align 1
  switch i32 %3, label %216 [
    i32 2, label %191
    i32 1, label %200
  ]

191:                                              ; preds = %179
  %192 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %147, i32 4
  %193 = load i16, ptr %192, align 4
  %194 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 5
  store i16 %193, ptr %194, align 1
  %195 = load i16, ptr %143, align 32
  %196 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 6
  store i16 %195, ptr %196, align 1
  %197 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %147, i32 3
  %198 = load i32, ptr %197, align 4
  %199 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 7
  store i32 %198, ptr %199, align 1
  br label %209

200:                                              ; preds = %179
  %201 = load i16, ptr %143, align 32
  %202 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 5
  store i16 %201, ptr %202, align 1
  %203 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %147, i32 4
  %204 = load i16, ptr %203, align 4
  %205 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 6
  store i16 %204, ptr %205, align 1
  %206 = load i32, ptr %144, align 4
  %207 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 7
  store i32 %206, ptr %207, align 1
  %208 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %147, i32 3
  br label %209

209:                                              ; preds = %200, %191
  %210 = phi ptr [ %208, %200 ], [ %144, %191 ]
  %211 = phi i32 [ 150994944, %200 ], [ 100663296, %191 ]
  %212 = load i32, ptr %210, align 4
  %213 = getelementptr inbounds %struct.omap_type2_desc, ptr %162, i32 0, i32 8
  store i32 %212, ptr %213, align 1
  %214 = or i32 %180, %211
  %215 = or i32 %214, 1073741824
  store i32 %215, ptr %181, align 1
  br label %216

216:                                              ; preds = %209, %179, %165, %145
  %217 = phi i1 [ true, %165 ], [ %146, %145 ], [ %146, %179 ], [ %146, %209 ]
  %218 = add nuw i32 %147, 1
  %219 = tail call ptr @sg_next(ptr noundef %148) #11
  %220 = icmp eq i32 %218, %2
  br i1 %220, label %221, label %145

221:                                              ; preds = %216
  %222 = getelementptr inbounds %struct.omap_desc, ptr %42, i32 0, i32 12
  store i32 %2, ptr %222, align 16
  br i1 %217, label %223, label %240

223:                                              ; preds = %221
  %224 = getelementptr inbounds %struct.omap_dmadev, ptr %7, i32 0, i32 13
  br label %225

225:                                              ; preds = %236, %223
  %226 = phi i32 [ %2, %223 ], [ %237, %236 ]
  %227 = phi i32 [ 0, %223 ], [ %238, %236 ]
  %228 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %227, i32 5
  %229 = load ptr, ptr %228, align 4
  %230 = icmp eq ptr %229, null
  br i1 %230, label %236, label %231

231:                                              ; preds = %225
  %232 = load ptr, ptr %224, align 4
  %233 = getelementptr %struct.omap_desc, ptr %42, i32 0, i32 13, i32 %227, i32 6
  %234 = load i32, ptr %233, align 4
  tail call void @dma_pool_free(ptr noundef %232, ptr noundef nonnull %229, i32 noundef %234) #11
  store ptr null, ptr %228, align 4
  %235 = load i32, ptr %222, align 16
  br label %236

236:                                              ; preds = %231, %225
  %237 = phi i32 [ %235, %231 ], [ %226, %225 ]
  %238 = add nuw i32 %227, 1
  %239 = icmp ult i32 %238, %237
  br i1 %239, label %225, label %240

240:                                              ; preds = %236, %221, %137
  tail call void @dma_async_tx_descriptor_init(ptr noundef %42, ptr noundef %0) #11
  %241 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %42, i32 0, i32 1
  store i32 %4, ptr %241, align 4
  %242 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %42, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %242, align 16
  %243 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %42, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %243, align 4
  %244 = getelementptr inbounds %struct.virt_dma_desc, ptr %42, i32 0, i32 1
  store i32 0, ptr %244, align 4
  %245 = getelementptr inbounds %struct.virt_dma_desc, ptr %42, i32 0, i32 1, i32 1
  store i32 0, ptr %245, align 64
  %246 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %247 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %246) #11
  %248 = getelementptr inbounds %struct.virt_dma_desc, ptr %42, i32 0, i32 2
  %249 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %250 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %251 = load ptr, ptr %250, align 4
  store ptr %248, ptr %250, align 4
  store ptr %249, ptr %248, align 4
  %252 = getelementptr inbounds %struct.virt_dma_desc, ptr %42, i32 0, i32 2, i32 1
  store ptr %251, ptr %252, align 8
  store volatile ptr %248, ptr %251, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %246, i32 noundef %247) #11
  br label %253

253:                                              ; preds = %240, %35, %24, %21
  %254 = phi ptr [ %42, %240 ], [ null, %21 ], [ null, %24 ], [ null, %35 ]
  ret ptr %254
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @omap_dma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq i32 %4, 2
  br i1 %7, label %8, label %12

8:                                                ; preds = %6
  %9 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 1
  %10 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 3
  %11 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 5
  br label %22

12:                                               ; preds = %6
  %13 = icmp eq i32 %4, 1
  br i1 %13, label %14, label %18

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 2
  %16 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 4
  %17 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4, i32 6
  br label %22

18:                                               ; preds = %12
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %21 = load ptr, ptr %20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.17, ptr noundef nonnull @__func__.omap_dma_prep_dma_cyclic) #12
  br label %91

22:                                               ; preds = %14, %8
  %23 = phi ptr [ %10, %8 ], [ %16, %14 ]
  %24 = phi ptr [ %9, %8 ], [ %15, %14 ]
  %25 = phi ptr [ %11, %8 ], [ %17, %14 ]
  %26 = load i32, ptr %25, align 4
  %27 = load i32, ptr %24, align 4
  %28 = load i32, ptr %23, align 4
  switch i32 %28, label %91 [
    i32 1, label %31
    i32 2, label %29
    i32 4, label %30
  ]

29:                                               ; preds = %22
  br label %31

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %30, %29, %22
  %32 = phi i32 [ 2, %30 ], [ 1, %29 ], [ 0, %22 ]
  %33 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %34 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 2848, i32 noundef 144) #13
  %35 = icmp eq ptr %34, null
  br i1 %35, label %91, label %36

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 0, i32 2
  store i32 %4, ptr %37, align 8
  %38 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 0, i32 3
  store i32 %27, ptr %38, align 4
  %39 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 0, i32 5
  store i32 %26, ptr %39, align 4
  %40 = trunc i32 %32 to i8
  %41 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 0, i32 7
  store i8 %40, ptr %41, align 2
  %42 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 0, i32 13
  store i32 %1, ptr %42, align 4
  %43 = getelementptr [3 x i32], ptr @es_bytes, i32 0, i32 %32
  %44 = load i32, ptr %43, align 4
  %45 = udiv i32 %3, %44
  %46 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 1, i32 0, i32 0, i32 1
  store i32 %45, ptr %46, align 8
  %47 = udiv i32 %2, %3
  %48 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 1, i32 0, i32 0, i32 2
  store i32 %47, ptr %48, align 4
  %49 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 0, i32 12
  store i32 1, ptr %49, align 8
  %50 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 0, i32 8
  %53 = select i1 %7, i32 16384, i32 4096
  %54 = or i32 %51, %53
  store i32 %54, ptr %52, align 4
  %55 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 0, i32 10
  %56 = and i32 %5, 1
  %57 = icmp eq i32 %56, 0
  %58 = select i1 %57, i16 2, i16 10
  store i16 %58, ptr %55, align 2
  %59 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 0, i32 11
  store i32 %32, ptr %59, align 4
  %60 = icmp eq i32 %26, 0
  %61 = select i1 %7, i32 8192, i32 64
  %62 = or i32 %32, %61
  %63 = xor i1 %60, true
  %64 = or i1 %7, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %36
  %66 = or i32 %54, 262176
  %67 = select i1 %60, i32 %54, i32 %66
  %68 = or i32 %67, 16777216
  %69 = select i1 %7, i32 %68, i32 %67
  store i32 %69, ptr %52, align 4
  br label %70

70:                                               ; preds = %65, %36
  %71 = or i16 %58, 2304
  store i16 %71, ptr %55, align 2
  %72 = or i32 %62, 49536
  store i32 %72, ptr %59, align 4
  %73 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 9
  %74 = load i32, ptr %73, align 4
  %75 = trunc i32 %74 to i16
  %76 = or i16 %75, -32768
  %77 = getelementptr inbounds %struct.omap_desc, ptr %34, i32 0, i32 9
  store i16 %76, ptr %77, align 8
  %78 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 6
  store i8 1, ptr %78, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %34, ptr noundef %0) #11
  %79 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %34, i32 0, i32 1
  store i32 %5, ptr %79, align 4
  %80 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %34, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %80, align 8
  %81 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %34, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %81, align 4
  %82 = getelementptr inbounds %struct.virt_dma_desc, ptr %34, i32 0, i32 1
  store i32 0, ptr %82, align 4
  %83 = getelementptr inbounds %struct.virt_dma_desc, ptr %34, i32 0, i32 1, i32 1
  store i32 0, ptr %83, align 8
  %84 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %85 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %84) #11
  %86 = getelementptr inbounds %struct.virt_dma_desc, ptr %34, i32 0, i32 2
  %87 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %88 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %89 = load ptr, ptr %88, align 4
  store ptr %86, ptr %88, align 4
  store ptr %87, ptr %86, align 4
  %90 = getelementptr inbounds %struct.virt_dma_desc, ptr %34, i32 0, i32 2, i32 1
  store ptr %89, ptr %90, align 8
  store volatile ptr %86, ptr %89, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %84, i32 noundef %85) #11
  br label %91

91:                                               ; preds = %70, %31, %22, %18
  %92 = phi ptr [ %34, %70 ], [ null, %18 ], [ null, %22 ], [ null, %31 ]
  ret ptr %92
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @omap_dma_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %7 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2848, i32 noundef 144) #13
  %8 = icmp eq ptr %7, null
  br i1 %8, label %56, label %9

9:                                                ; preds = %5
  %10 = or i32 %2, %1
  %11 = or i32 %10, %3
  %12 = tail call i32 @llvm.cttz.i32(i32 %11, i1 false) #11, !range !23
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 2)
  %14 = trunc i32 %13 to i8
  %15 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 2
  store i32 0, ptr %15, align 8
  %16 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 3
  store i32 %2, ptr %16, align 4
  %17 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 5
  store i32 0, ptr %17, align 4
  %18 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 7
  store i8 %14, ptr %18, align 2
  %19 = lshr i32 %3, %13
  %20 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 13
  %21 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 1, i32 0, i32 0, i32 1
  store i32 %19, ptr %21, align 8
  %22 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 1, i32 0, i32 0, i32 2
  store i32 1, ptr %22, align 4
  store i32 %1, ptr %20, align 4
  %23 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 12
  store i32 1, ptr %23, align 8
  %24 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 3
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 8
  %27 = or i32 %25, 20480
  store i32 %27, ptr %26, align 4
  %28 = and i32 %4, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %9
  %31 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 10
  %32 = load i16, ptr %31, align 2
  %33 = or i16 %32, 8
  br label %38

34:                                               ; preds = %9
  %35 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 4
  store i8 1, ptr %35, align 8
  %36 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 10
  %37 = load i16, ptr %36, align 2
  br label %38

38:                                               ; preds = %34, %30
  %39 = phi i16 [ %37, %34 ], [ %33, %30 ]
  %40 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 11
  %41 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 10
  %42 = or i16 %39, 2304
  store i16 %42, ptr %41, align 2
  %43 = or i32 %13, 57792
  store i32 %43, ptr %40, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %7, ptr noundef %0) #11
  %44 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 1
  store i32 %4, ptr %44, align 4
  %45 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %45, align 8
  %46 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %46, align 4
  %47 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 1
  store i32 0, ptr %47, align 4
  %48 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 1, i32 1
  store i32 0, ptr %48, align 8
  %49 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %49) #11
  %51 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2
  %52 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %53 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %54 = load ptr, ptr %53, align 4
  store ptr %51, ptr %53, align 4
  store ptr %52, ptr %51, align 4
  %55 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2, i32 1
  store ptr %54, ptr %55, align 8
  store volatile ptr %51, ptr %54, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %49, i32 noundef %50) #11
  br label %56

56:                                               ; preds = %38, %5
  ret ptr %7
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @omap_dma_prep_dma_interleaved(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, -1
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %123, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %123

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 7
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %123, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %18 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2848, i32 noundef 144) #13
  %19 = icmp eq ptr %18, null
  br i1 %19, label %123, label %20

20:                                               ; preds = %16
  %21 = load i32, ptr %1, align 4
  %22 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = or i32 %23, %21
  %25 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 9
  %26 = load i32, ptr %25, align 4
  %27 = or i32 %24, %26
  %28 = tail call i32 @llvm.cttz.i32(i32 %27, i1 false) #11, !range !23
  %29 = tail call i32 @llvm.umin.i32(i32 %28, i32 2)
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 0, i32 13
  %32 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 0, i32 2
  store i32 0, ptr %32, align 8
  %33 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 0, i32 3
  store i32 %21, ptr %33, align 4
  %34 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 0, i32 7
  store i8 %30, ptr %34, align 2
  %35 = lshr i32 %26, %29
  %36 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 1, i32 0, i32 0, i32 1
  store i32 %35, ptr %36, align 8
  %37 = load i32, ptr %13, align 4
  %38 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 1, i32 0, i32 0, i32 2
  store i32 %37, ptr %38, align 4
  store i32 %23, ptr %31, align 4
  %39 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 0, i32 12
  store i32 1, ptr %39, align 8
  %40 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 0, i32 8
  store i32 %41, ptr %42, align 4
  %43 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 3
  %44 = load i8, ptr %43, align 4, !range !13
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %57, label %46

46:                                               ; preds = %20
  %47 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 1
  %50 = load i32, ptr %49, align 4
  %51 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 5
  %52 = load i8, ptr %51, align 2, !range !13
  %53 = icmp ne i8 %52, 0
  %54 = icmp ne i32 %48, 0
  %55 = or i1 %54, %53
  %56 = select i1 %54, i32 %48, i32 %50
  br i1 %55, label %58, label %57

57:                                               ; preds = %46, %20
  br label %58

58:                                               ; preds = %57, %46
  %59 = phi i32 [ 0, %57 ], [ %56, %46 ]
  %60 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 4
  %61 = load i8, ptr %60, align 1, !range !13
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 2
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 1
  %67 = load i32, ptr %66, align 4
  %68 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 6
  %69 = load i8, ptr %68, align 1, !range !13
  %70 = icmp ne i8 %69, 0
  %71 = icmp ne i32 %65, 0
  %72 = or i1 %71, %70
  %73 = select i1 %71, i32 %65, i32 %67
  br i1 %72, label %75, label %74

74:                                               ; preds = %63, %58
  br label %75

75:                                               ; preds = %74, %63
  %76 = phi i32 [ 0, %74 ], [ %73, %63 ]
  %77 = icmp eq i32 %59, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %75
  %79 = or i32 %41, 12288
  store i32 %79, ptr %42, align 4
  %80 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 0, i32 6
  store i16 1, ptr %80, align 8
  %81 = add i32 %59, 1
  br label %89

82:                                               ; preds = %75
  br i1 %45, label %85, label %83

83:                                               ; preds = %82
  %84 = or i32 %41, 4096
  store i32 %84, ptr %42, align 4
  br label %89

85:                                               ; preds = %82
  %86 = load ptr, ptr %0, align 4
  %87 = getelementptr inbounds %struct.dma_device, ptr %86, i32 0, i32 15
  %88 = load ptr, ptr %87, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.19, ptr noundef nonnull @__func__.omap_dma_prep_dma_interleaved) #12
  tail call void @kfree(ptr noundef nonnull %18) #11
  br label %123

89:                                               ; preds = %83, %78
  %90 = phi i32 [ 0, %83 ], [ %81, %78 ]
  %91 = phi i32 [ %84, %83 ], [ %79, %78 ]
  %92 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 0, i32 5
  store i32 %90, ptr %92, align 4
  %93 = icmp eq i32 %76, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %89
  %95 = or i32 %91, 49152
  store i32 %95, ptr %42, align 4
  %96 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 1, i32 0, i32 0, i32 4
  store i16 1, ptr %96, align 4
  %97 = add i32 %76, 1
  br label %105

98:                                               ; preds = %89
  br i1 %62, label %101, label %99

99:                                               ; preds = %98
  %100 = or i32 %91, 16384
  store i32 %100, ptr %42, align 4
  br label %105

101:                                              ; preds = %98
  %102 = load ptr, ptr %0, align 4
  %103 = getelementptr inbounds %struct.dma_device, ptr %102, i32 0, i32 15
  %104 = load ptr, ptr %103, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.20, ptr noundef nonnull @__func__.omap_dma_prep_dma_interleaved) #12
  tail call void @kfree(ptr noundef nonnull %18) #11
  br label %123

105:                                              ; preds = %99, %94
  %106 = phi i32 [ 0, %99 ], [ %97, %94 ]
  %107 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 1, i32 0, i32 0, i32 3
  store i32 %106, ptr %107, align 8
  %108 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 0, i32 10
  %109 = getelementptr inbounds %struct.omap_desc, ptr %18, i32 0, i32 11
  store i16 2314, ptr %108, align 2
  %110 = or i32 %29, 57792
  store i32 %110, ptr %109, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %18, ptr noundef %0) #11
  %111 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 1
  store i32 %2, ptr %111, align 4
  %112 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %112, align 8
  %113 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %18, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %113, align 4
  %114 = getelementptr inbounds %struct.virt_dma_desc, ptr %18, i32 0, i32 1
  store i32 0, ptr %114, align 4
  %115 = getelementptr inbounds %struct.virt_dma_desc, ptr %18, i32 0, i32 1, i32 1
  store i32 0, ptr %115, align 8
  %116 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %117 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %116) #11
  %118 = getelementptr inbounds %struct.virt_dma_desc, ptr %18, i32 0, i32 2
  %119 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %120 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %121 = load ptr, ptr %120, align 4
  store ptr %118, ptr %120, align 4
  store ptr %119, ptr %118, align 4
  %122 = getelementptr inbounds %struct.virt_dma_desc, ptr %18, i32 0, i32 2, i32 1
  store ptr %121, ptr %122, align 8
  store volatile ptr %118, ptr %121, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %116, i32 noundef %117) #11
  br label %123

123:                                              ; preds = %105, %101, %85, %16, %12, %8, %3
  %124 = phi ptr [ %18, %105 ], [ null, %101 ], [ null, %85 ], [ null, %3 ], [ null, %12 ], [ null, %8 ], [ null, %16 ]
  ret ptr %124
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @omap_dma_slave_config(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #5 {
  %3 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 8
  br i1 %5, label %23, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 23
  %15 = load i32, ptr %14, align 4
  %16 = icmp ugt i32 %12, %15
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 6
  %19 = load i32, ptr %18, align 4
  %20 = icmp ugt i32 %19, %15
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %22, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  br label %23

23:                                               ; preds = %21, %17, %10, %6, %2
  %24 = phi i32 [ 0, %21 ], [ -22, %6 ], [ -22, %2 ], [ -22, %17 ], [ -22, %10 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_pause(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 15
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 10
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 6
  %10 = load i8, ptr %9, align 4, !range !13
  %11 = icmp eq i8 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.omap_desc, ptr %6, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 2
  br i1 %15, label %16, label %24

16:                                               ; preds = %12, %8
  %17 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 7
  %18 = load i8, ptr %17, align 1, !range !13
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = tail call fastcc i32 @omap_dma_stop(ptr noundef %0)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  store i8 1, ptr %17, align 1
  br label %24

24:                                               ; preds = %23, %20, %16, %12, %1
  %25 = phi i32 [ -22, %16 ], [ %21, %20 ], [ 0, %23 ], [ -22, %12 ], [ -22, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret i32 %25
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_resume(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 15
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #11
  %5 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 7
  %6 = load i8, ptr %5, align 1, !range !13
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %34, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = icmp eq ptr %10, null
  br i1 %11, label %34, label %12

12:                                               ; preds = %8
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !24
  tail call void @arm_heavy_mb() #11
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr inbounds %struct.omap_desc, ptr %13, i32 0, i32 9
  %15 = load i16, ptr %14, align 4
  %16 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 2
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.omap_dma_reg, ptr %17, i32 44
  %19 = getelementptr %struct.omap_dma_reg, ptr %17, i32 44, i32 2
  %20 = load i8, ptr %19, align 1
  %21 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = load i16, ptr %18, align 2
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %22, i32 %24
  switch i8 %20, label %31 [
    i8 1, label %26
    i8 2, label %27
    i8 3, label %29
  ]

26:                                               ; preds = %12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %15) #11, !srcloc !11
  br label %32

27:                                               ; preds = %12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 %15) #11, !srcloc !11
  %28 = getelementptr i8, ptr %25, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 0) #11, !srcloc !11
  br label %32

29:                                               ; preds = %12
  %30 = zext i16 %15 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %30) #11, !srcloc !12
  br label %32

31:                                               ; preds = %12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %32

32:                                               ; preds = %31, %29, %27, %26
  %33 = load ptr, ptr %9, align 4
  tail call fastcc void @omap_dma_start(ptr noundef %0, ptr noundef %33)
  store i8 0, ptr %5, align 1
  br label %34

34:                                               ; preds = %32, %8, %1
  %35 = phi i32 [ 0, %32 ], [ -22, %8 ], [ -22, %1 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #11
  ret i32 %35
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_terminate_all(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %27, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 8
  %14 = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 8, i32 1
  %15 = load ptr, ptr %14, align 4
  store ptr %12, ptr %14, align 4
  store ptr %13, ptr %12, align 4
  %16 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2, i32 1
  store ptr %15, ptr %16, align 4
  store volatile ptr %12, ptr %15, align 4
  %17 = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 9
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %7
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  store ptr null, ptr %17, align 4
  br label %21

21:                                               ; preds = %20, %9
  store ptr null, ptr %6, align 4
  %22 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 7
  %23 = load i8, ptr %22, align 1, !range !13
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %21
  %26 = call fastcc i32 @omap_dma_stop(ptr noundef %0)
  br label %27

27:                                               ; preds = %25, %21, %1
  %28 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 6
  store i8 0, ptr %28, align 4
  %29 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 7
  store i8 0, ptr %29, align 1
  %30 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %3, align 4
  %35 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %34, ptr %37, align 4
  store ptr %31, ptr %34, align 4
  store ptr %2, ptr %36, align 4
  store ptr %36, ptr %3, align 4
  store volatile ptr %30, ptr %30, align 4
  store ptr %30, ptr %35, align 4
  br label %38

38:                                               ; preds = %33, %27
  %39 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %3, align 4
  %44 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %43, ptr %46, align 4
  store ptr %40, ptr %43, align 4
  store ptr %2, ptr %45, align 4
  store ptr %45, ptr %3, align 4
  store volatile ptr %39, ptr %39, align 4
  store ptr %39, ptr %44, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %52, ptr %55, align 4
  store ptr %49, ptr %52, align 4
  store ptr %2, ptr %54, align 4
  store ptr %54, ptr %3, align 4
  store volatile ptr %48, ptr %48, align 4
  store ptr %48, ptr %53, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %3, align 4
  %62 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %61, ptr %64, align 4
  store ptr %58, ptr %61, align 4
  store ptr %2, ptr %63, align 4
  store ptr %63, ptr %3, align 4
  store volatile ptr %57, ptr %57, align 4
  store ptr %57, ptr %62, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %3, align 4
  %71 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %70, ptr %73, align 4
  store ptr %67, ptr %70, align 4
  store ptr %2, ptr %72, align 4
  store ptr %72, ptr %3, align 4
  store volatile ptr %66, ptr %66, align 4
  store ptr %66, ptr %71, align 4
  br label %74

74:                                               ; preds = %69, %65
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_dma_synchronize(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #11
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %4) #11
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #11
  %7 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %8 = load volatile ptr, ptr %7, align 4
  %9 = icmp eq ptr %8, %7
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 4
  %12 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  store ptr %11, ptr %14, align 4
  store ptr %8, ptr %11, align 4
  store ptr %2, ptr %13, align 4
  store ptr %13, ptr %3, align 4
  store volatile ptr %7, ptr %7, align 4
  store ptr %7, ptr %12, align 4
  br label %15

15:                                               ; preds = %10, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #11
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_dma_free(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.dma_device, ptr %0, i32 0, i32 3
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  br i1 %4, label %15, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %13, %5 ], [ %3, %1 ]
  %7 = getelementptr i8, ptr %6, i32 -32
  %8 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load ptr, ptr %6, align 4
  %11 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %9, ptr %11, align 4
  store volatile ptr %10, ptr %9, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %6, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %8, align 4
  %12 = getelementptr i8, ptr %6, i32 32
  tail call void @tasklet_kill(ptr noundef %12) #11
  tail call void @kfree(ptr noundef %7) #11
  %13 = load volatile ptr, ptr %2, align 4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %15, label %5

15:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_irq(i32 noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %3) #11
  %4 = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.omap_dma_reg, ptr %5, i32 20, i32 1
  %7 = load i8, ptr %6, align 2
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %10, label %9, !prof !10

9:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 364, i32 noundef 9, ptr noundef null) #11
  br label %10

10:                                               ; preds = %9, %2
  %11 = getelementptr %struct.omap_dma_reg, ptr %5, i32 20
  %12 = getelementptr %struct.omap_dma_reg, ptr %5, i32 20, i32 2
  %13 = load i8, ptr %12, align 1
  %14 = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = load i16, ptr %11, align 2
  %17 = zext i16 %16 to i32
  %18 = getelementptr i8, ptr %15, i32 %17
  switch i8 %13, label %32 [
    i8 1, label %19
    i8 2, label %22
    i8 3, label %30
  ]

19:                                               ; preds = %10
  %20 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #11, !srcloc !14
  %21 = zext i16 %20 to i32
  br label %33

22:                                               ; preds = %10
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %18) #11, !srcloc !14
  %24 = zext i16 %23 to i32
  %25 = getelementptr i8, ptr %18, i32 2
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %25) #11, !srcloc !14
  %27 = zext i16 %26 to i32
  %28 = shl nuw i32 %27, 16
  %29 = or i32 %28, %24
  br label %33

30:                                               ; preds = %10
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %18) #11, !srcloc !15
  br label %33

32:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %33

33:                                               ; preds = %32, %30, %22, %19
  %34 = phi i32 [ 0, %32 ], [ %31, %30 ], [ %29, %22 ], [ %21, %19 ]
  %35 = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 16
  %36 = load i32, ptr %35, align 4
  %37 = and i32 %36, %34
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 17
  %41 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  br label %45

42:                                               ; preds = %33
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %43 = load i16, ptr %3, align 4
  %44 = add i16 %43, 1
  store i16 %44, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  br label %131

45:                                               ; preds = %126, %39
  %46 = phi i32 [ %37, %39 ], [ %50, %126 ]
  %47 = tail call i32 @llvm.cttz.i32(i32 %46, i1 true), !range !23
  %48 = shl nuw i32 1, %47
  %49 = xor i32 %48, -1
  %50 = and i32 %46, %49
  %51 = load ptr, ptr %40, align 4
  %52 = getelementptr ptr, ptr %51, i32 %47
  %53 = load ptr, ptr %52, align 4
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %56, ptr noundef nonnull @.str.22, i32 noundef %47) #12
  br label %126

57:                                               ; preds = %45
  %58 = getelementptr inbounds %struct.omap_chan, ptr %53, i32 0, i32 2
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr %struct.omap_dma_reg, ptr %59, i32 35
  %61 = getelementptr %struct.omap_dma_reg, ptr %59, i32 35, i32 2
  %62 = load i8, ptr %61, align 1
  %63 = getelementptr inbounds %struct.omap_chan, ptr %53, i32 0, i32 1
  %64 = load ptr, ptr %63, align 4
  %65 = load i16, ptr %60, align 2
  %66 = zext i16 %65 to i32
  %67 = getelementptr i8, ptr %64, i32 %66
  switch i8 %62, label %81 [
    i8 1, label %68
    i8 2, label %71
    i8 3, label %79
  ]

68:                                               ; preds = %57
  %69 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %67) #11, !srcloc !14
  %70 = zext i16 %69 to i32
  br label %82

71:                                               ; preds = %57
  %72 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %67) #11, !srcloc !14
  %73 = zext i16 %72 to i32
  %74 = getelementptr i8, ptr %67, i32 2
  %75 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %74) #11, !srcloc !14
  %76 = zext i16 %75 to i32
  %77 = shl nuw i32 %76, 16
  %78 = or i32 %77, %73
  br label %82

79:                                               ; preds = %57
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %67) #11, !srcloc !15
  br label %82

81:                                               ; preds = %57
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %82

82:                                               ; preds = %81, %79, %71, %68
  %83 = phi i32 [ 0, %81 ], [ %80, %79 ], [ %78, %71 ], [ %70, %68 ]
  %84 = load ptr, ptr %58, align 4
  %85 = getelementptr %struct.omap_dma_reg, ptr %84, i32 35
  %86 = getelementptr %struct.omap_dma_reg, ptr %84, i32 35, i32 2
  %87 = load i8, ptr %86, align 1
  %88 = load ptr, ptr %63, align 4
  %89 = load i16, ptr %85, align 2
  %90 = zext i16 %89 to i32
  %91 = getelementptr i8, ptr %88, i32 %90
  switch i8 %87, label %100 [
    i8 1, label %92
    i8 2, label %94
    i8 3, label %99
  ]

92:                                               ; preds = %82
  %93 = trunc i32 %83 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 %93) #11, !srcloc !11
  br label %101

94:                                               ; preds = %82
  %95 = trunc i32 %83 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %91, i16 %95) #11, !srcloc !11
  %96 = lshr i32 %83, 16
  %97 = trunc i32 %96 to i16
  %98 = getelementptr i8, ptr %91, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %98, i16 %97) #11, !srcloc !11
  br label %101

99:                                               ; preds = %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %83) #11, !srcloc !12
  br label %101

100:                                              ; preds = %82
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %101

101:                                              ; preds = %100, %99, %94, %92
  %102 = load ptr, ptr %4, align 4
  %103 = getelementptr %struct.omap_dma_reg, ptr %102, i32 20, i32 1
  %104 = load i8, ptr %103, align 2
  %105 = icmp eq i8 %104, 0
  br i1 %105, label %107, label %106, !prof !10

106:                                              ; preds = %101
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %107

107:                                              ; preds = %106, %101
  %108 = getelementptr %struct.omap_dma_reg, ptr %102, i32 20
  %109 = getelementptr %struct.omap_dma_reg, ptr %102, i32 20, i32 2
  %110 = load i8, ptr %109, align 1
  %111 = load ptr, ptr %14, align 4
  %112 = load i16, ptr %108, align 2
  %113 = zext i16 %112 to i32
  %114 = getelementptr i8, ptr %111, i32 %113
  switch i8 %110, label %123 [
    i8 1, label %115
    i8 2, label %117
    i8 3, label %122
  ]

115:                                              ; preds = %107
  %116 = trunc i32 %48 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %114, i16 %116) #11, !srcloc !11
  br label %124

117:                                              ; preds = %107
  %118 = trunc i32 %48 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %114, i16 %118) #11, !srcloc !11
  %119 = lshr i32 %48, 16
  %120 = trunc i32 %119 to i16
  %121 = getelementptr i8, ptr %114, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %121, i16 %120) #11, !srcloc !11
  br label %124

122:                                              ; preds = %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %114, i32 %48) #11, !srcloc !12
  br label %124

123:                                              ; preds = %107
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %124

124:                                              ; preds = %123, %122, %117, %115
  %125 = trunc i32 %83 to i16
  tail call void @omap_dma_callback(i32 noundef %47, i16 noundef zeroext %125, ptr noundef nonnull %53)
  br label %126

126:                                              ; preds = %124, %55
  %127 = icmp eq i32 %50, 0
  br i1 %127, label %128, label %45

128:                                              ; preds = %126
  tail call void asm sideeffect "dmb ish", "~{memory}"() #11, !srcloc !16
  %129 = load i16, ptr %3, align 4
  %130 = add i16 %129, 1
  store i16 %130, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #11, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #11, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !25
  br label %131

131:                                              ; preds = %128, %42
  %132 = phi i32 [ 0, %42 ], [ 1, %128 ]
  ret i32 %132
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_dma_glbl_read(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.omap_dmadev, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.omap_dma_reg, ptr %4, i32 %1, i32 1
  %6 = load i8, ptr %5, align 2
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %9, label %8, !prof !10

8:                                                ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 364, i32 noundef 9, ptr noundef null) #11
  br label %9

9:                                                ; preds = %8, %2
  %10 = getelementptr %struct.omap_dma_reg, ptr %4, i32 %1
  %11 = getelementptr %struct.omap_dma_reg, ptr %4, i32 %1, i32 2
  %12 = load i8, ptr %11, align 1
  %13 = getelementptr inbounds %struct.omap_dmadev, ptr %0, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = load i16, ptr %10, align 2
  %16 = zext i16 %15 to i32
  %17 = getelementptr i8, ptr %14, i32 %16
  switch i8 %12, label %31 [
    i8 1, label %18
    i8 2, label %21
    i8 3, label %29
  ]

18:                                               ; preds = %9
  %19 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #11, !srcloc !14
  %20 = zext i16 %19 to i32
  br label %32

21:                                               ; preds = %9
  %22 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %17) #11, !srcloc !14
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %17, i32 2
  %25 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %24) #11, !srcloc !14
  %26 = zext i16 %25 to i32
  %27 = shl nuw i32 %26, 16
  %28 = or i32 %27, %23
  br label %32

29:                                               ; preds = %9
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #11, !srcloc !15
  br label %32

31:                                               ; preds = %9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %32

32:                                               ; preds = %31, %29, %21, %18
  %33 = phi i32 [ 0, %31 ], [ %30, %29 ], [ %28, %21 ], [ %20, %18 ]
  ret i32 %33
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @omap_dma_filter_fn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, getelementptr inbounds (%struct.platform_driver, ptr @omap_dma_driver, i32 0, i32 5)
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  %11 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 14
  %12 = load i32, ptr %11, align 4
  %13 = icmp ugt i32 %10, %12
  br i1 %13, label %16, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 5
  store i32 %10, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %9, %2
  %17 = phi i1 [ true, %14 ], [ false, %2 ], [ false, %9 ]
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_dma_simple_xlate(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_dma_init_gcr(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.omap_dmadev, ptr %0, i32 0, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.omap_dma_config, ptr %3, i32 0, i32 1
  %5 = load i8, ptr %4, align 4
  %6 = and i8 %5, 1
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omap_dmadev, ptr %0, i32 0, i32 3
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.omap_dma_reg, ptr %10, i32 0, i32 1
  %12 = load i8, ptr %11, align 2
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %15, label %14, !prof !10

14:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %15

15:                                               ; preds = %14, %8
  %16 = getelementptr %struct.omap_dma_reg, ptr %10, i32 0, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr inbounds %struct.omap_dmadev, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = load i16, ptr %10, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %19, i32 %21
  switch i8 %17, label %27 [
    i8 1, label %23
    i8 2, label %24
    i8 3, label %26
  ]

23:                                               ; preds = %15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 16) #11, !srcloc !11
  br label %28

24:                                               ; preds = %15
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %22, i16 16) #11, !srcloc !11
  %25 = getelementptr i8, ptr %22, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %25, i16 1) #11, !srcloc !11
  br label %28

26:                                               ; preds = %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 65552) #11, !srcloc !12
  br label %28

27:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %28

28:                                               ; preds = %27, %26, %24, %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_busy_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  %4 = icmp eq i32 %1, 3
  br i1 %4, label %5, label %8

5:                                                ; preds = %3
  %6 = getelementptr i8, ptr %0, i32 -272
  %7 = tail call fastcc zeroext i1 @omap_dma_busy(ptr noundef %6)
  br i1 %7, label %9, label %8

8:                                                ; preds = %5, %3
  br label %9

9:                                                ; preds = %8, %5
  %10 = phi i32 [ 1, %8 ], [ 32770, %5 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @omap_dma_context_notifier(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readnone %2) #0 {
  switch i32 %1, label %303 [
    i32 3, label %4
    i32 5, label %129
  ]

4:                                                ; preds = %3
  %5 = getelementptr i8, ptr %0, i32 -272
  %6 = tail call fastcc zeroext i1 @omap_dma_busy(ptr noundef %5)
  br i1 %6, label %303, label %7

7:                                                ; preds = %4
  %8 = getelementptr i8, ptr %0, i32 -12
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr %struct.omap_dma_reg, ptr %9, i32 23, i32 1
  %11 = load i8, ptr %10, align 2
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13, !prof !10

13:                                               ; preds = %7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 364, i32 noundef 9, ptr noundef null) #11
  br label %14

14:                                               ; preds = %13, %7
  %15 = getelementptr %struct.omap_dma_reg, ptr %9, i32 23
  %16 = getelementptr %struct.omap_dma_reg, ptr %9, i32 23, i32 2
  %17 = load i8, ptr %16, align 1
  %18 = getelementptr i8, ptr %0, i32 -16
  %19 = load ptr, ptr %18, align 4
  %20 = load i16, ptr %15, align 2
  %21 = zext i16 %20 to i32
  %22 = getelementptr i8, ptr %19, i32 %21
  switch i8 %17, label %36 [
    i8 1, label %23
    i8 2, label %26
    i8 3, label %34
  ]

23:                                               ; preds = %14
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #11, !srcloc !14
  %25 = zext i16 %24 to i32
  br label %37

26:                                               ; preds = %14
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %22) #11, !srcloc !14
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %22, i32 2
  %30 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %29) #11, !srcloc !14
  %31 = zext i16 %30 to i32
  %32 = shl nuw i32 %31, 16
  %33 = or i32 %32, %28
  br label %37

34:                                               ; preds = %14
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #11, !srcloc !15
  br label %37

36:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %37

37:                                               ; preds = %36, %34, %26, %23
  %38 = phi i32 [ 0, %36 ], [ %35, %34 ], [ %33, %26 ], [ %25, %23 ]
  %39 = getelementptr i8, ptr %0, i32 12
  store i32 %38, ptr %39, align 4
  %40 = load ptr, ptr %8, align 4
  %41 = getelementptr %struct.omap_dma_reg, ptr %40, i32 24, i32 1
  %42 = load i8, ptr %41, align 2
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %45, label %44, !prof !10

44:                                               ; preds = %37
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 364, i32 noundef 9, ptr noundef null) #11
  br label %45

45:                                               ; preds = %44, %37
  %46 = getelementptr %struct.omap_dma_reg, ptr %40, i32 24
  %47 = getelementptr %struct.omap_dma_reg, ptr %40, i32 24, i32 2
  %48 = load i8, ptr %47, align 1
  %49 = load ptr, ptr %18, align 4
  %50 = load i16, ptr %46, align 2
  %51 = zext i16 %50 to i32
  %52 = getelementptr i8, ptr %49, i32 %51
  switch i8 %48, label %66 [
    i8 1, label %53
    i8 2, label %56
    i8 3, label %64
  ]

53:                                               ; preds = %45
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %52) #11, !srcloc !14
  %55 = zext i16 %54 to i32
  br label %67

56:                                               ; preds = %45
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %52) #11, !srcloc !14
  %58 = zext i16 %57 to i32
  %59 = getelementptr i8, ptr %52, i32 2
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %59) #11, !srcloc !14
  %61 = zext i16 %60 to i32
  %62 = shl nuw i32 %61, 16
  %63 = or i32 %62, %58
  br label %67

64:                                               ; preds = %45
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %52) #11, !srcloc !15
  br label %67

66:                                               ; preds = %45
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %67

67:                                               ; preds = %66, %64, %56, %53
  %68 = phi i32 [ 0, %66 ], [ %65, %64 ], [ %63, %56 ], [ %55, %53 ]
  %69 = getelementptr i8, ptr %0, i32 16
  store i32 %68, ptr %69, align 4
  %70 = load ptr, ptr %8, align 4
  %71 = getelementptr %struct.omap_dma_reg, ptr %70, i32 28, i32 1
  %72 = load i8, ptr %71, align 2
  %73 = icmp eq i8 %72, 0
  br i1 %73, label %75, label %74, !prof !10

74:                                               ; preds = %67
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 364, i32 noundef 9, ptr noundef null) #11
  br label %75

75:                                               ; preds = %74, %67
  %76 = getelementptr %struct.omap_dma_reg, ptr %70, i32 28
  %77 = getelementptr %struct.omap_dma_reg, ptr %70, i32 28, i32 2
  %78 = load i8, ptr %77, align 1
  %79 = load ptr, ptr %18, align 4
  %80 = load i16, ptr %76, align 2
  %81 = zext i16 %80 to i32
  %82 = getelementptr i8, ptr %79, i32 %81
  switch i8 %78, label %96 [
    i8 1, label %83
    i8 2, label %86
    i8 3, label %94
  ]

83:                                               ; preds = %75
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %82) #11, !srcloc !14
  %85 = zext i16 %84 to i32
  br label %97

86:                                               ; preds = %75
  %87 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %82) #11, !srcloc !14
  %88 = zext i16 %87 to i32
  %89 = getelementptr i8, ptr %82, i32 2
  %90 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %89) #11, !srcloc !14
  %91 = zext i16 %90 to i32
  %92 = shl nuw i32 %91, 16
  %93 = or i32 %92, %88
  br label %97

94:                                               ; preds = %75
  %95 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %82) #11, !srcloc !15
  br label %97

96:                                               ; preds = %75
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %97

97:                                               ; preds = %96, %94, %86, %83
  %98 = phi i32 [ 0, %96 ], [ %95, %94 ], [ %93, %86 ], [ %85, %83 ]
  %99 = getelementptr i8, ptr %0, i32 20
  store i32 %98, ptr %99, align 4
  %100 = load ptr, ptr %8, align 4
  %101 = getelementptr %struct.omap_dma_reg, ptr %100, i32 0, i32 1
  %102 = load i8, ptr %101, align 2
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104, !prof !10

104:                                              ; preds = %97
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 364, i32 noundef 9, ptr noundef null) #11
  br label %105

105:                                              ; preds = %104, %97
  %106 = getelementptr %struct.omap_dma_reg, ptr %100, i32 0, i32 2
  %107 = load i8, ptr %106, align 1
  %108 = load ptr, ptr %18, align 4
  %109 = load i16, ptr %100, align 2
  %110 = zext i16 %109 to i32
  %111 = getelementptr i8, ptr %108, i32 %110
  switch i8 %107, label %125 [
    i8 1, label %112
    i8 2, label %115
    i8 3, label %123
  ]

112:                                              ; preds = %105
  %113 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %111) #11, !srcloc !14
  %114 = zext i16 %113 to i32
  br label %126

115:                                              ; preds = %105
  %116 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %111) #11, !srcloc !14
  %117 = zext i16 %116 to i32
  %118 = getelementptr i8, ptr %111, i32 2
  %119 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %118) #11, !srcloc !14
  %120 = zext i16 %119 to i32
  %121 = shl nuw i32 %120, 16
  %122 = or i32 %121, %117
  br label %126

123:                                              ; preds = %105
  %124 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %111) #11, !srcloc !15
  br label %126

125:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %126

126:                                              ; preds = %125, %123, %115, %112
  %127 = phi i32 [ 0, %125 ], [ %124, %123 ], [ %122, %115 ], [ %114, %112 ]
  %128 = getelementptr i8, ptr %0, i32 24
  store i32 %127, ptr %128, align 4
  br label %303

129:                                              ; preds = %3
  %130 = getelementptr i8, ptr %0, i32 12
  %131 = getelementptr i8, ptr %0, i32 24
  %132 = load i32, ptr %131, align 4
  %133 = getelementptr i8, ptr %0, i32 -12
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr %struct.omap_dma_reg, ptr %134, i32 0, i32 1
  %136 = load i8, ptr %135, align 2
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %139, label %138, !prof !10

138:                                              ; preds = %129
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %139

139:                                              ; preds = %138, %129
  %140 = getelementptr %struct.omap_dma_reg, ptr %134, i32 0, i32 2
  %141 = load i8, ptr %140, align 1
  %142 = getelementptr i8, ptr %0, i32 -16
  %143 = load ptr, ptr %142, align 4
  %144 = load i16, ptr %134, align 2
  %145 = zext i16 %144 to i32
  %146 = getelementptr i8, ptr %143, i32 %145
  switch i8 %141, label %155 [
    i8 1, label %147
    i8 2, label %149
    i8 3, label %154
  ]

147:                                              ; preds = %139
  %148 = trunc i32 %132 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %146, i16 %148) #11, !srcloc !11
  br label %156

149:                                              ; preds = %139
  %150 = trunc i32 %132 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %146, i16 %150) #11, !srcloc !11
  %151 = lshr i32 %132, 16
  %152 = trunc i32 %151 to i16
  %153 = getelementptr i8, ptr %146, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %153, i16 %152) #11, !srcloc !11
  br label %156

154:                                              ; preds = %139
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %146, i32 %132) #11, !srcloc !12
  br label %156

155:                                              ; preds = %139
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %156

156:                                              ; preds = %155, %154, %149, %147
  %157 = getelementptr i8, ptr %0, i32 20
  %158 = load i32, ptr %157, align 4
  %159 = load ptr, ptr %133, align 4
  %160 = getelementptr %struct.omap_dma_reg, ptr %159, i32 28, i32 1
  %161 = load i8, ptr %160, align 2
  %162 = icmp eq i8 %161, 0
  br i1 %162, label %164, label %163, !prof !10

163:                                              ; preds = %156
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %164

164:                                              ; preds = %163, %156
  %165 = getelementptr %struct.omap_dma_reg, ptr %159, i32 28
  %166 = getelementptr %struct.omap_dma_reg, ptr %159, i32 28, i32 2
  %167 = load i8, ptr %166, align 1
  %168 = load ptr, ptr %142, align 4
  %169 = load i16, ptr %165, align 2
  %170 = zext i16 %169 to i32
  %171 = getelementptr i8, ptr %168, i32 %170
  switch i8 %167, label %180 [
    i8 1, label %172
    i8 2, label %174
    i8 3, label %179
  ]

172:                                              ; preds = %164
  %173 = trunc i32 %158 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %171, i16 %173) #11, !srcloc !11
  br label %181

174:                                              ; preds = %164
  %175 = trunc i32 %158 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %171, i16 %175) #11, !srcloc !11
  %176 = lshr i32 %158, 16
  %177 = trunc i32 %176 to i16
  %178 = getelementptr i8, ptr %171, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %178, i16 %177) #11, !srcloc !11
  br label %181

179:                                              ; preds = %164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %158) #11, !srcloc !12
  br label %181

180:                                              ; preds = %164
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %181

181:                                              ; preds = %180, %179, %174, %172
  %182 = load i32, ptr %130, align 4
  %183 = load ptr, ptr %133, align 4
  %184 = getelementptr %struct.omap_dma_reg, ptr %183, i32 23, i32 1
  %185 = load i8, ptr %184, align 2
  %186 = icmp eq i8 %185, 0
  br i1 %186, label %188, label %187, !prof !10

187:                                              ; preds = %181
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %188

188:                                              ; preds = %187, %181
  %189 = getelementptr %struct.omap_dma_reg, ptr %183, i32 23
  %190 = getelementptr %struct.omap_dma_reg, ptr %183, i32 23, i32 2
  %191 = load i8, ptr %190, align 1
  %192 = load ptr, ptr %142, align 4
  %193 = load i16, ptr %189, align 2
  %194 = zext i16 %193 to i32
  %195 = getelementptr i8, ptr %192, i32 %194
  switch i8 %191, label %204 [
    i8 1, label %196
    i8 2, label %198
    i8 3, label %203
  ]

196:                                              ; preds = %188
  %197 = trunc i32 %182 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %195, i16 %197) #11, !srcloc !11
  br label %205

198:                                              ; preds = %188
  %199 = trunc i32 %182 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %195, i16 %199) #11, !srcloc !11
  %200 = lshr i32 %182, 16
  %201 = trunc i32 %200 to i16
  %202 = getelementptr i8, ptr %195, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %202, i16 %201) #11, !srcloc !11
  br label %205

203:                                              ; preds = %188
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %195, i32 %182) #11, !srcloc !12
  br label %205

204:                                              ; preds = %188
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %205

205:                                              ; preds = %204, %203, %198, %196
  %206 = getelementptr i8, ptr %0, i32 16
  %207 = load i32, ptr %206, align 4
  %208 = load ptr, ptr %133, align 4
  %209 = getelementptr %struct.omap_dma_reg, ptr %208, i32 24, i32 1
  %210 = load i8, ptr %209, align 2
  %211 = icmp eq i8 %210, 0
  br i1 %211, label %213, label %212, !prof !10

212:                                              ; preds = %205
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %213

213:                                              ; preds = %212, %205
  %214 = getelementptr %struct.omap_dma_reg, ptr %208, i32 24
  %215 = getelementptr %struct.omap_dma_reg, ptr %208, i32 24, i32 2
  %216 = load i8, ptr %215, align 1
  %217 = load ptr, ptr %142, align 4
  %218 = load i16, ptr %214, align 2
  %219 = zext i16 %218 to i32
  %220 = getelementptr i8, ptr %217, i32 %219
  switch i8 %216, label %229 [
    i8 1, label %221
    i8 2, label %223
    i8 3, label %228
  ]

221:                                              ; preds = %213
  %222 = trunc i32 %207 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %220, i16 %222) #11, !srcloc !11
  br label %230

223:                                              ; preds = %213
  %224 = trunc i32 %207 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %220, i16 %224) #11, !srcloc !11
  %225 = lshr i32 %207, 16
  %226 = trunc i32 %225 to i16
  %227 = getelementptr i8, ptr %220, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %227, i16 %226) #11, !srcloc !11
  br label %230

228:                                              ; preds = %213
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %220, i32 %207) #11, !srcloc !12
  br label %230

229:                                              ; preds = %213
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %230

230:                                              ; preds = %229, %228, %223, %221
  %231 = getelementptr i8, ptr %0, i32 -8
  %232 = load ptr, ptr %231, align 4
  %233 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %232, i32 0, i32 3
  %234 = load i32, ptr %233, align 4
  %235 = and i32 %234, 64
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %256, label %237

237:                                              ; preds = %230
  %238 = load ptr, ptr %133, align 4
  %239 = getelementptr %struct.omap_dma_reg, ptr %238, i32 19, i32 1
  %240 = load i8, ptr %239, align 2
  %241 = icmp eq i8 %240, 0
  br i1 %241, label %243, label %242, !prof !10

242:                                              ; preds = %237
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %243

243:                                              ; preds = %242, %237
  %244 = getelementptr %struct.omap_dma_reg, ptr %238, i32 19
  %245 = getelementptr %struct.omap_dma_reg, ptr %238, i32 19, i32 2
  %246 = load i8, ptr %245, align 1
  %247 = load ptr, ptr %142, align 4
  %248 = load i16, ptr %244, align 2
  %249 = zext i16 %248 to i32
  %250 = getelementptr i8, ptr %247, i32 %249
  switch i8 %246, label %255 [
    i8 1, label %251
    i8 2, label %252
    i8 3, label %254
  ]

251:                                              ; preds = %243
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %250, i16 0) #11, !srcloc !11
  br label %256

252:                                              ; preds = %243
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %250, i16 0) #11, !srcloc !11
  %253 = getelementptr i8, ptr %250, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %253, i16 0) #11, !srcloc !11
  br label %256

254:                                              ; preds = %243
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %250, i32 0) #11, !srcloc !12
  br label %256

255:                                              ; preds = %243
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %256

256:                                              ; preds = %255, %254, %252, %251, %230
  %257 = getelementptr i8, ptr %0, i32 28
  %258 = load i32, ptr %257, align 4
  %259 = icmp sgt i32 %258, 0
  br i1 %259, label %260, label %303

260:                                              ; preds = %256
  %261 = getelementptr i8, ptr %0, i32 76
  %262 = getelementptr i8, ptr %0, i32 -4
  br label %263

263:                                              ; preds = %299, %260
  %264 = phi i32 [ %258, %260 ], [ %300, %299 ]
  %265 = phi i32 [ 0, %260 ], [ %301, %299 ]
  %266 = load ptr, ptr %261, align 4
  %267 = getelementptr ptr, ptr %266, i32 %265
  %268 = load ptr, ptr %267, align 4
  %269 = icmp eq ptr %268, null
  br i1 %269, label %299, label %270

270:                                              ; preds = %263
  %271 = load ptr, ptr %262, align 4
  %272 = load i32, ptr %271, align 4
  %273 = icmp slt i32 %272, 32
  br i1 %273, label %299, label %274

274:                                              ; preds = %270
  %275 = getelementptr inbounds %struct.omap_chan, ptr %268, i32 0, i32 2
  %276 = getelementptr inbounds %struct.omap_chan, ptr %268, i32 0, i32 1
  br label %277

277:                                              ; preds = %292, %274
  %278 = phi i32 [ 32, %274 ], [ %293, %292 ]
  %279 = load ptr, ptr %275, align 4
  %280 = getelementptr %struct.omap_dma_reg, ptr %279, i32 %278
  %281 = getelementptr %struct.omap_dma_reg, ptr %279, i32 %278, i32 2
  %282 = load i8, ptr %281, align 1
  %283 = load ptr, ptr %276, align 4
  %284 = load i16, ptr %280, align 2
  %285 = zext i16 %284 to i32
  %286 = getelementptr i8, ptr %283, i32 %285
  switch i8 %282, label %291 [
    i8 1, label %287
    i8 2, label %288
    i8 3, label %290
  ]

287:                                              ; preds = %277
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %286, i16 0) #11, !srcloc !11
  br label %292

288:                                              ; preds = %277
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %286, i16 0) #11, !srcloc !11
  %289 = getelementptr i8, ptr %286, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %289, i16 0) #11, !srcloc !11
  br label %292

290:                                              ; preds = %277
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %286, i32 0) #11, !srcloc !12
  br label %292

291:                                              ; preds = %277
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %292

292:                                              ; preds = %291, %290, %288, %287
  %293 = add i32 %278, 1
  %294 = load ptr, ptr %262, align 4
  %295 = load i32, ptr %294, align 4
  %296 = icmp sgt i32 %293, %295
  br i1 %296, label %297, label %277

297:                                              ; preds = %292
  %298 = load i32, ptr %257, align 4
  br label %299

299:                                              ; preds = %297, %270, %263
  %300 = phi i32 [ %298, %297 ], [ %264, %263 ], [ %264, %270 ]
  %301 = add nuw nsw i32 %265, 1
  %302 = icmp slt i32 %301, %300
  br i1 %302, label %263, label %303

303:                                              ; preds = %299, %256, %126, %4, %3
  %304 = phi i32 [ 32770, %4 ], [ 1, %3 ], [ 1, %126 ], [ 1, %256 ], [ 1, %299 ]
  ret i32 %304
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_request_dma(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_dma_callback(i32 noundef %0, i16 noundef zeroext %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %2, i32 0, i32 3
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #11
  %6 = getelementptr inbounds %struct.omap_chan, ptr %2, i32 0, i32 10
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %51, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.omap_chan, ptr %2, i32 0, i32 6
  %11 = load i8, ptr %10, align 4, !range !13
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.virt_dma_chan, ptr %15, i32 0, i32 9
  store ptr %7, ptr %16, align 4
  %17 = getelementptr inbounds %struct.virt_dma_chan, ptr %15, i32 0, i32 1, i32 1
  %18 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %17) #11
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %51

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct.virt_dma_chan, ptr %15, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %21) #11
  br label %51

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 1
  %24 = load i8, ptr %23, align 4, !range !13
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %22
  %27 = getelementptr inbounds %struct.omap_chan, ptr %2, i32 0, i32 11
  %28 = load i32, ptr %27, align 4
  %29 = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 12
  %30 = load i32, ptr %29, align 4
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %50

32:                                               ; preds = %26, %22
  tail call fastcc void @omap_dma_start_desc(ptr noundef %2)
  %33 = load i32, ptr %7, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %36, !prof !9

35:                                               ; preds = %32
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !22
  unreachable

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 3
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.dma_chan, ptr %38, i32 0, i32 3
  store i32 %33, ptr %39, align 4
  store i32 0, ptr %7, align 4
  %40 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2
  %41 = getelementptr inbounds %struct.virt_dma_chan, ptr %38, i32 0, i32 7
  %42 = getelementptr inbounds %struct.virt_dma_chan, ptr %38, i32 0, i32 7, i32 1
  %43 = load ptr, ptr %42, align 4
  store ptr %40, ptr %42, align 4
  store ptr %41, ptr %40, align 4
  %44 = getelementptr inbounds %struct.virt_dma_desc, ptr %7, i32 0, i32 2, i32 1
  store ptr %43, ptr %44, align 4
  store volatile ptr %40, ptr %43, align 4
  %45 = getelementptr inbounds %struct.virt_dma_chan, ptr %38, i32 0, i32 1, i32 1
  %46 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %45) #11
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.virt_dma_chan, ptr %38, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %49) #11
  br label %51

50:                                               ; preds = %26
  tail call fastcc void @omap_dma_start_sg(ptr noundef %2, ptr noundef nonnull %7)
  br label %51

51:                                               ; preds = %50, %48, %36, %20, %13, %3
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_dma_start_desc(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = getelementptr i8, ptr %3, i32 -68
  %6 = icmp eq ptr %5, null
  %7 = or i1 %4, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 10
  store ptr null, ptr %9, align 4
  br label %141

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load ptr, ptr %3, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %13, ptr %12, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %11, align 4
  %15 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 10
  store ptr %5, ptr %15, align 4
  %16 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 11
  store i32 0, ptr %16, align 4
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !26
  tail call void @arm_heavy_mb() #11
  %17 = getelementptr i8, ptr %3, i32 32
  %18 = load i32, ptr %17, align 4
  %19 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr %struct.omap_dma_reg, ptr %20, i32 33
  %22 = getelementptr %struct.omap_dma_reg, ptr %20, i32 33, i32 2
  %23 = load i8, ptr %22, align 1
  %24 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  %25 = load ptr, ptr %24, align 4
  %26 = load i16, ptr %21, align 2
  %27 = zext i16 %26 to i32
  %28 = getelementptr i8, ptr %25, i32 %27
  switch i8 %23, label %37 [
    i8 1, label %29
    i8 2, label %31
    i8 3, label %36
  ]

29:                                               ; preds = %10
  %30 = trunc i32 %18 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %30) #11, !srcloc !11
  br label %38

31:                                               ; preds = %10
  %32 = trunc i32 %18 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %28, i16 %32) #11, !srcloc !11
  %33 = lshr i32 %18, 16
  %34 = trunc i32 %33 to i16
  %35 = getelementptr i8, ptr %28, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %35, i16 %34) #11, !srcloc !11
  br label %38

36:                                               ; preds = %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %18) #11, !srcloc !12
  br label %38

37:                                               ; preds = %10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %38

38:                                               ; preds = %37, %36, %31, %29
  %39 = getelementptr i8, ptr %3, i32 12
  %40 = load i32, ptr %39, align 4
  switch i32 %40, label %41 [
    i32 2, label %42
    i32 0, label %42
  ]

41:                                               ; preds = %38
  br label %42

42:                                               ; preds = %41, %38, %38
  %43 = phi i32 [ 46, %41 ], [ 45, %38 ], [ 45, %38 ]
  %44 = phi i32 [ 42, %41 ], [ 39, %38 ], [ 39, %38 ]
  %45 = phi i32 [ 43, %41 ], [ 38, %38 ], [ 38, %38 ]
  %46 = getelementptr i8, ptr %3, i32 16
  %47 = load i32, ptr %46, align 4
  %48 = load ptr, ptr %19, align 4
  %49 = getelementptr %struct.omap_dma_reg, ptr %48, i32 %43
  %50 = getelementptr %struct.omap_dma_reg, ptr %48, i32 %43, i32 2
  %51 = load i8, ptr %50, align 1
  %52 = load ptr, ptr %24, align 4
  %53 = load i16, ptr %49, align 2
  %54 = zext i16 %53 to i32
  %55 = getelementptr i8, ptr %52, i32 %54
  switch i8 %51, label %64 [
    i8 1, label %56
    i8 2, label %58
    i8 3, label %63
  ]

56:                                               ; preds = %42
  %57 = trunc i32 %47 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %55, i16 %57) #11, !srcloc !11
  br label %65

58:                                               ; preds = %42
  %59 = trunc i32 %47 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %55, i16 %59) #11, !srcloc !11
  %60 = lshr i32 %47, 16
  %61 = trunc i32 %60 to i16
  %62 = getelementptr i8, ptr %55, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %62, i16 %61) #11, !srcloc !11
  br label %65

63:                                               ; preds = %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %55, i32 %47) #11, !srcloc !12
  br label %65

64:                                               ; preds = %42
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %65

65:                                               ; preds = %64, %63, %58, %56
  %66 = getelementptr i8, ptr %3, i32 28
  %67 = load i16, ptr %66, align 4
  %68 = load ptr, ptr %19, align 4
  %69 = getelementptr %struct.omap_dma_reg, ptr %68, i32 %44
  %70 = getelementptr %struct.omap_dma_reg, ptr %68, i32 %44, i32 2
  %71 = load i8, ptr %70, align 1
  %72 = load ptr, ptr %24, align 4
  %73 = load i16, ptr %69, align 2
  %74 = zext i16 %73 to i32
  %75 = getelementptr i8, ptr %72, i32 %74
  switch i8 %71, label %82 [
    i8 1, label %76
    i8 2, label %77
    i8 3, label %80
  ]

76:                                               ; preds = %65
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 %67) #11, !srcloc !11
  br label %83

77:                                               ; preds = %65
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %75, i16 %67) #11, !srcloc !11
  %78 = ashr i16 %67, 15
  %79 = getelementptr i8, ptr %75, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %79, i16 %78) #11, !srcloc !11
  br label %83

80:                                               ; preds = %65
  %81 = sext i16 %67 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %75, i32 %81) #11, !srcloc !12
  br label %83

82:                                               ; preds = %65
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %83

83:                                               ; preds = %82, %80, %77, %76
  %84 = getelementptr i8, ptr %3, i32 24
  %85 = load i32, ptr %84, align 4
  %86 = load ptr, ptr %19, align 4
  %87 = getelementptr %struct.omap_dma_reg, ptr %86, i32 %45
  %88 = getelementptr %struct.omap_dma_reg, ptr %86, i32 %45, i32 2
  %89 = load i8, ptr %88, align 1
  %90 = load ptr, ptr %24, align 4
  %91 = load i16, ptr %87, align 2
  %92 = zext i16 %91 to i32
  %93 = getelementptr i8, ptr %90, i32 %92
  switch i8 %89, label %102 [
    i8 1, label %94
    i8 2, label %96
    i8 3, label %101
  ]

94:                                               ; preds = %83
  %95 = trunc i32 %85 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %93, i16 %95) #11, !srcloc !11
  br label %103

96:                                               ; preds = %83
  %97 = trunc i32 %85 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %93, i16 %97) #11, !srcloc !11
  %98 = lshr i32 %85, 16
  %99 = trunc i32 %98 to i16
  %100 = getelementptr i8, ptr %93, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %100, i16 %99) #11, !srcloc !11
  br label %103

101:                                              ; preds = %83
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %93, i32 %85) #11, !srcloc !12
  br label %103

102:                                              ; preds = %83
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %103

103:                                              ; preds = %102, %101, %96, %94
  %104 = getelementptr i8, ptr %3, i32 40
  %105 = load i32, ptr %104, align 4
  %106 = load ptr, ptr %19, align 4
  %107 = getelementptr %struct.omap_dma_reg, ptr %106, i32 32
  %108 = getelementptr %struct.omap_dma_reg, ptr %106, i32 32, i32 2
  %109 = load i8, ptr %108, align 1
  %110 = load ptr, ptr %24, align 4
  %111 = load i16, ptr %107, align 2
  %112 = zext i16 %111 to i32
  %113 = getelementptr i8, ptr %110, i32 %112
  switch i8 %109, label %122 [
    i8 1, label %114
    i8 2, label %116
    i8 3, label %121
  ]

114:                                              ; preds = %103
  %115 = trunc i32 %105 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %113, i16 %115) #11, !srcloc !11
  br label %123

116:                                              ; preds = %103
  %117 = trunc i32 %105 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %113, i16 %117) #11, !srcloc !11
  %118 = lshr i32 %105, 16
  %119 = trunc i32 %118 to i16
  %120 = getelementptr i8, ptr %113, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %120, i16 %119) #11, !srcloc !11
  br label %123

121:                                              ; preds = %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %113, i32 %105) #11, !srcloc !12
  br label %123

122:                                              ; preds = %103
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %123

123:                                              ; preds = %122, %121, %116, %114
  %124 = getelementptr i8, ptr %3, i32 36
  %125 = load i16, ptr %124, align 4
  %126 = load ptr, ptr %19, align 4
  %127 = getelementptr %struct.omap_dma_reg, ptr %126, i32 44
  %128 = getelementptr %struct.omap_dma_reg, ptr %126, i32 44, i32 2
  %129 = load i8, ptr %128, align 1
  %130 = load ptr, ptr %24, align 4
  %131 = load i16, ptr %127, align 2
  %132 = zext i16 %131 to i32
  %133 = getelementptr i8, ptr %130, i32 %132
  switch i8 %129, label %139 [
    i8 1, label %134
    i8 2, label %135
    i8 3, label %137
  ]

134:                                              ; preds = %123
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %133, i16 %125) #11, !srcloc !11
  br label %140

135:                                              ; preds = %123
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %133, i16 %125) #11, !srcloc !11
  %136 = getelementptr i8, ptr %133, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %136, i16 0) #11, !srcloc !11
  br label %140

137:                                              ; preds = %123
  %138 = zext i16 %125 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %138) #11, !srcloc !12
  br label %140

139:                                              ; preds = %123
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %140

140:                                              ; preds = %139, %137, %135, %134
  tail call fastcc void @omap_dma_start_sg(ptr noundef %0, ptr noundef nonnull %5)
  br label %141

141:                                              ; preds = %140, %8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_dma_start_sg(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 11
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.omap_desc, ptr %1, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  switch i32 %6, label %7 [
    i32 2, label %8
    i32 0, label %8
  ]

7:                                                ; preds = %2
  br label %8

8:                                                ; preds = %7, %2, %2
  %9 = phi i32 [ 45, %7 ], [ 46, %2 ], [ 46, %2 ]
  %10 = phi i32 [ 39, %7 ], [ 42, %2 ], [ 42, %2 ]
  %11 = phi i32 [ 38, %7 ], [ 43, %2 ], [ 43, %2 ]
  %12 = getelementptr inbounds %struct.omap_desc, ptr %1, i32 0, i32 13
  %13 = getelementptr %struct.omap_sg, ptr %12, i32 %4
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.omap_dma_reg, ptr %16, i32 %9
  %18 = getelementptr %struct.omap_dma_reg, ptr %16, i32 %9, i32 2
  %19 = load i8, ptr %18, align 1
  %20 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  %21 = load ptr, ptr %20, align 4
  %22 = load i16, ptr %17, align 2
  %23 = zext i16 %22 to i32
  %24 = getelementptr i8, ptr %21, i32 %23
  switch i8 %19, label %33 [
    i8 1, label %25
    i8 2, label %27
    i8 3, label %32
  ]

25:                                               ; preds = %8
  %26 = trunc i32 %14 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %26) #11, !srcloc !11
  br label %34

27:                                               ; preds = %8
  %28 = trunc i32 %14 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %24, i16 %28) #11, !srcloc !11
  %29 = lshr i32 %14, 16
  %30 = trunc i32 %29 to i16
  %31 = getelementptr i8, ptr %24, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %31, i16 %30) #11, !srcloc !11
  br label %34

32:                                               ; preds = %8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %14) #11, !srcloc !12
  br label %34

33:                                               ; preds = %8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %34

34:                                               ; preds = %33, %32, %27, %25
  %35 = getelementptr %struct.omap_sg, ptr %12, i32 %4, i32 4
  %36 = load i16, ptr %35, align 4
  %37 = load ptr, ptr %15, align 4
  %38 = getelementptr %struct.omap_dma_reg, ptr %37, i32 %10
  %39 = getelementptr %struct.omap_dma_reg, ptr %37, i32 %10, i32 2
  %40 = load i8, ptr %39, align 1
  %41 = load ptr, ptr %20, align 4
  %42 = load i16, ptr %38, align 2
  %43 = zext i16 %42 to i32
  %44 = getelementptr i8, ptr %41, i32 %43
  switch i8 %40, label %51 [
    i8 1, label %45
    i8 2, label %46
    i8 3, label %49
  ]

45:                                               ; preds = %34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %44, i16 %36) #11, !srcloc !11
  br label %52

46:                                               ; preds = %34
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %44, i16 %36) #11, !srcloc !11
  %47 = ashr i16 %36, 15
  %48 = getelementptr i8, ptr %44, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %48, i16 %47) #11, !srcloc !11
  br label %52

49:                                               ; preds = %34
  %50 = sext i16 %36 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %50) #11, !srcloc !12
  br label %52

51:                                               ; preds = %34
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %52

52:                                               ; preds = %51, %49, %46, %45
  %53 = getelementptr %struct.omap_sg, ptr %12, i32 %4, i32 3
  %54 = load i32, ptr %53, align 4
  %55 = load ptr, ptr %15, align 4
  %56 = getelementptr %struct.omap_dma_reg, ptr %55, i32 %11
  %57 = getelementptr %struct.omap_dma_reg, ptr %55, i32 %11, i32 2
  %58 = load i8, ptr %57, align 1
  %59 = load ptr, ptr %20, align 4
  %60 = load i16, ptr %56, align 2
  %61 = zext i16 %60 to i32
  %62 = getelementptr i8, ptr %59, i32 %61
  switch i8 %58, label %71 [
    i8 1, label %63
    i8 2, label %65
    i8 3, label %70
  ]

63:                                               ; preds = %52
  %64 = trunc i32 %54 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %62, i16 %64) #11, !srcloc !11
  br label %72

65:                                               ; preds = %52
  %66 = trunc i32 %54 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %62, i16 %66) #11, !srcloc !11
  %67 = lshr i32 %54, 16
  %68 = trunc i32 %67 to i16
  %69 = getelementptr i8, ptr %62, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 %68) #11, !srcloc !11
  br label %72

70:                                               ; preds = %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %54) #11, !srcloc !12
  br label %72

71:                                               ; preds = %52
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %72

72:                                               ; preds = %71, %70, %65, %63
  %73 = getelementptr %struct.omap_sg, ptr %12, i32 %4, i32 1
  %74 = load i32, ptr %73, align 4
  %75 = load ptr, ptr %15, align 4
  %76 = getelementptr %struct.omap_dma_reg, ptr %75, i32 36
  %77 = getelementptr %struct.omap_dma_reg, ptr %75, i32 36, i32 2
  %78 = load i8, ptr %77, align 1
  %79 = load ptr, ptr %20, align 4
  %80 = load i16, ptr %76, align 2
  %81 = zext i16 %80 to i32
  %82 = getelementptr i8, ptr %79, i32 %81
  switch i8 %78, label %91 [
    i8 1, label %83
    i8 2, label %85
    i8 3, label %90
  ]

83:                                               ; preds = %72
  %84 = trunc i32 %74 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %82, i16 %84) #11, !srcloc !11
  br label %92

85:                                               ; preds = %72
  %86 = trunc i32 %74 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %82, i16 %86) #11, !srcloc !11
  %87 = lshr i32 %74, 16
  %88 = trunc i32 %87 to i16
  %89 = getelementptr i8, ptr %82, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %89, i16 %88) #11, !srcloc !11
  br label %92

90:                                               ; preds = %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %74) #11, !srcloc !12
  br label %92

91:                                               ; preds = %72
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %92

92:                                               ; preds = %91, %90, %85, %83
  %93 = getelementptr %struct.omap_sg, ptr %12, i32 %4, i32 2
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %15, align 4
  %96 = getelementptr %struct.omap_dma_reg, ptr %95, i32 37
  %97 = getelementptr %struct.omap_dma_reg, ptr %95, i32 37, i32 2
  %98 = load i8, ptr %97, align 1
  %99 = load ptr, ptr %20, align 4
  %100 = load i16, ptr %96, align 2
  %101 = zext i16 %100 to i32
  %102 = getelementptr i8, ptr %99, i32 %101
  switch i8 %98, label %111 [
    i8 1, label %103
    i8 2, label %105
    i8 3, label %110
  ]

103:                                              ; preds = %92
  %104 = trunc i32 %94 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %102, i16 %104) #11, !srcloc !11
  br label %112

105:                                              ; preds = %92
  %106 = trunc i32 %94 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %102, i16 %106) #11, !srcloc !11
  %107 = lshr i32 %94, 16
  %108 = trunc i32 %107 to i16
  %109 = getelementptr i8, ptr %102, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %109, i16 %108) #11, !srcloc !11
  br label %112

110:                                              ; preds = %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %102, i32 %94) #11, !srcloc !12
  br label %112

111:                                              ; preds = %92
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %112

112:                                              ; preds = %111, %110, %105, %103
  tail call fastcc void @omap_dma_start(ptr noundef %0, ptr noundef %1)
  %113 = load i32, ptr %3, align 4
  %114 = add i32 %113, 1
  store i32 %114, ptr %3, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_dma_start(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.omap_desc, ptr %1, i32 0, i32 10
  %5 = load i16, ptr %4, align 2
  %6 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr %struct.omap_dma_reg, ptr %7, i32 41
  %9 = getelementptr %struct.omap_dma_reg, ptr %7, i32 41, i32 2
  %10 = load i8, ptr %9, align 1
  %11 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = load i16, ptr %8, align 2
  %14 = zext i16 %13 to i32
  %15 = getelementptr i8, ptr %12, i32 %14
  switch i8 %10, label %20 [
    i8 1, label %16
    i8 2, label %17
    i8 3, label %19
  ]

16:                                               ; preds = %2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 0) #11, !srcloc !11
  br label %21

17:                                               ; preds = %2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 0) #11, !srcloc !11
  %18 = getelementptr i8, ptr %15, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %18, i16 0) #11, !srcloc !11
  br label %21

19:                                               ; preds = %2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #11, !srcloc !12
  br label %21

20:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %21

21:                                               ; preds = %20, %19, %17, %16
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr %struct.omap_dma_reg, ptr %22, i32 35
  %24 = getelementptr %struct.omap_dma_reg, ptr %22, i32 35, i32 2
  %25 = load i8, ptr %24, align 1
  %26 = load ptr, ptr %11, align 4
  %27 = load i16, ptr %23, align 2
  %28 = zext i16 %27 to i32
  %29 = getelementptr i8, ptr %26, i32 %28
  switch i8 %25, label %34 [
    i8 1, label %30
    i8 2, label %31
    i8 3, label %33
  ]

30:                                               ; preds = %21
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 -1) #11, !srcloc !11
  br label %35

31:                                               ; preds = %21
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 -1) #11, !srcloc !11
  %32 = getelementptr i8, ptr %29, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %32, i16 -1) #11, !srcloc !11
  br label %35

33:                                               ; preds = %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 -1) #11, !srcloc !12
  br label %35

34:                                               ; preds = %21
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %35

35:                                               ; preds = %34, %33, %31, %30
  %36 = getelementptr inbounds %struct.omap_desc, ptr %1, i32 0, i32 1
  %37 = load i8, ptr %36, align 4, !range !13
  %38 = icmp eq i8 %37, 0
  br i1 %38, label %123, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.omap_desc, ptr %1, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 2
  %43 = select i1 %42, i32 1321, i32 1318
  %44 = load ptr, ptr %6, align 4
  %45 = getelementptr %struct.omap_dma_reg, ptr %44, i32 50
  %46 = getelementptr %struct.omap_dma_reg, ptr %44, i32 50, i32 2
  %47 = load i8, ptr %46, align 1
  %48 = load ptr, ptr %11, align 4
  %49 = load i16, ptr %45, align 2
  %50 = zext i16 %49 to i32
  %51 = getelementptr i8, ptr %48, i32 %50
  switch i8 %47, label %58 [
    i8 1, label %52
    i8 2, label %54
    i8 3, label %57
  ]

52:                                               ; preds = %39
  %53 = trunc i32 %43 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %51, i16 %53) #11, !srcloc !11
  br label %59

54:                                               ; preds = %39
  %55 = trunc i32 %43 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %51, i16 %55) #11, !srcloc !11
  %56 = getelementptr i8, ptr %51, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %56, i16 0) #11, !srcloc !11
  br label %59

57:                                               ; preds = %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %43) #11, !srcloc !12
  br label %59

58:                                               ; preds = %39
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %59

59:                                               ; preds = %58, %57, %54, %52
  %60 = getelementptr inbounds %struct.omap_desc, ptr %1, i32 1, i32 0, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = load ptr, ptr %6, align 4
  %63 = getelementptr %struct.omap_dma_reg, ptr %62, i32 51
  %64 = getelementptr %struct.omap_dma_reg, ptr %62, i32 51, i32 2
  %65 = load i8, ptr %64, align 1
  %66 = load ptr, ptr %11, align 4
  %67 = load i16, ptr %63, align 2
  %68 = zext i16 %67 to i32
  %69 = getelementptr i8, ptr %66, i32 %68
  switch i8 %65, label %78 [
    i8 1, label %70
    i8 2, label %72
    i8 3, label %77
  ]

70:                                               ; preds = %59
  %71 = trunc i32 %61 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 %71) #11, !srcloc !11
  br label %79

72:                                               ; preds = %59
  %73 = trunc i32 %61 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %69, i16 %73) #11, !srcloc !11
  %74 = lshr i32 %61, 16
  %75 = trunc i32 %74 to i16
  %76 = getelementptr i8, ptr %69, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %76, i16 %75) #11, !srcloc !11
  br label %79

77:                                               ; preds = %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %61) #11, !srcloc !12
  br label %79

78:                                               ; preds = %59
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %79

79:                                               ; preds = %78, %77, %72, %70
  %80 = load ptr, ptr %6, align 4
  %81 = getelementptr %struct.omap_dma_reg, ptr %80, i32 52
  %82 = getelementptr %struct.omap_dma_reg, ptr %80, i32 52, i32 2
  %83 = load i8, ptr %82, align 1
  %84 = load ptr, ptr %11, align 4
  %85 = load i16, ptr %81, align 2
  %86 = zext i16 %85 to i32
  %87 = getelementptr i8, ptr %84, i32 %86
  switch i8 %83, label %92 [
    i8 1, label %88
    i8 2, label %89
    i8 3, label %91
  ]

88:                                               ; preds = %79
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %87, i16 0) #11, !srcloc !11
  br label %93

89:                                               ; preds = %79
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %87, i16 0) #11, !srcloc !11
  %90 = getelementptr i8, ptr %87, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %90, i16 0) #11, !srcloc !11
  br label %93

91:                                               ; preds = %79
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 0) #11, !srcloc !12
  br label %93

92:                                               ; preds = %79
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %93

93:                                               ; preds = %92, %91, %89, %88
  %94 = load ptr, ptr %6, align 4
  %95 = getelementptr %struct.omap_dma_reg, ptr %94, i32 49
  %96 = getelementptr %struct.omap_dma_reg, ptr %94, i32 49, i32 2
  %97 = load i8, ptr %96, align 1
  %98 = load ptr, ptr %11, align 4
  %99 = load i16, ptr %95, align 2
  %100 = zext i16 %99 to i32
  %101 = getelementptr i8, ptr %98, i32 %100
  switch i8 %97, label %106 [
    i8 1, label %102
    i8 2, label %103
    i8 3, label %105
  ]

102:                                              ; preds = %93
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %101, i16 -1) #11, !srcloc !11
  br label %107

103:                                              ; preds = %93
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %101, i16 -1) #11, !srcloc !11
  %104 = getelementptr i8, ptr %101, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %104, i16 0) #11, !srcloc !11
  br label %107

105:                                              ; preds = %93
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %101, i32 65535) #11, !srcloc !12
  br label %107

106:                                              ; preds = %93
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %107

107:                                              ; preds = %106, %105, %103, %102
  %108 = load ptr, ptr %6, align 4
  %109 = getelementptr %struct.omap_dma_reg, ptr %108, i32 48
  %110 = getelementptr %struct.omap_dma_reg, ptr %108, i32 48, i32 2
  %111 = load i8, ptr %110, align 1
  %112 = load ptr, ptr %11, align 4
  %113 = load i16, ptr %109, align 2
  %114 = zext i16 %113 to i32
  %115 = getelementptr i8, ptr %112, i32 %114
  switch i8 %111, label %120 [
    i8 1, label %116
    i8 2, label %117
    i8 3, label %119
  ]

116:                                              ; preds = %107
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %115, i16 -1) #11, !srcloc !11
  br label %121

117:                                              ; preds = %107
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %115, i16 -1) #11, !srcloc !11
  %118 = getelementptr i8, ptr %115, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %118, i16 255) #11, !srcloc !11
  br label %121

119:                                              ; preds = %107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %115, i32 16777215) #11, !srcloc !12
  br label %121

120:                                              ; preds = %107
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %121

121:                                              ; preds = %120, %119, %117, %116
  %122 = and i16 %5, -33
  br label %141

123:                                              ; preds = %35
  %124 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 12
  %125 = load i8, ptr %124, align 1, !range !13
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %141, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %6, align 4
  %129 = getelementptr %struct.omap_dma_reg, ptr %128, i32 50
  %130 = getelementptr %struct.omap_dma_reg, ptr %128, i32 50, i32 2
  %131 = load i8, ptr %130, align 1
  %132 = load ptr, ptr %11, align 4
  %133 = load i16, ptr %129, align 2
  %134 = zext i16 %133 to i32
  %135 = getelementptr i8, ptr %132, i32 %134
  switch i8 %131, label %140 [
    i8 1, label %136
    i8 2, label %137
    i8 3, label %139
  ]

136:                                              ; preds = %127
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %135, i16 0) #11, !srcloc !11
  br label %141

137:                                              ; preds = %127
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %135, i16 0) #11, !srcloc !11
  %138 = getelementptr i8, ptr %135, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %138, i16 0) #11, !srcloc !11
  br label %141

139:                                              ; preds = %127
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %135, i32 0) #11, !srcloc !12
  br label %141

140:                                              ; preds = %127
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %141

141:                                              ; preds = %140, %139, %137, %136, %123, %121
  %142 = phi i16 [ %122, %121 ], [ %5, %123 ], [ %5, %136 ], [ %5, %137 ], [ %5, %139 ], [ %5, %140 ]
  %143 = load ptr, ptr %6, align 4
  %144 = getelementptr %struct.omap_dma_reg, ptr %143, i32 34
  %145 = getelementptr %struct.omap_dma_reg, ptr %143, i32 34, i32 2
  %146 = load i8, ptr %145, align 1
  %147 = load ptr, ptr %11, align 4
  %148 = load i16, ptr %144, align 2
  %149 = zext i16 %148 to i32
  %150 = getelementptr i8, ptr %147, i32 %149
  switch i8 %146, label %156 [
    i8 1, label %151
    i8 2, label %152
    i8 3, label %154
  ]

151:                                              ; preds = %141
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %150, i16 %142) #11, !srcloc !11
  br label %157

152:                                              ; preds = %141
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %150, i16 %142) #11, !srcloc !11
  %153 = getelementptr i8, ptr %150, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %153, i16 0) #11, !srcloc !11
  br label %157

154:                                              ; preds = %141
  %155 = zext i16 %142 to i32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %150, i32 %155) #11, !srcloc !12
  br label %157

156:                                              ; preds = %141
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %157

157:                                              ; preds = %156, %154, %152, %151
  %158 = getelementptr inbounds %struct.omap_desc, ptr %1, i32 0, i32 8
  %159 = load i32, ptr %158, align 4
  %160 = or i32 %159, 128
  %161 = load ptr, ptr %6, align 4
  %162 = getelementptr %struct.omap_dma_reg, ptr %161, i32 33
  %163 = getelementptr %struct.omap_dma_reg, ptr %161, i32 33, i32 2
  %164 = load i8, ptr %163, align 1
  %165 = load ptr, ptr %11, align 4
  %166 = load i16, ptr %162, align 2
  %167 = zext i16 %166 to i32
  %168 = getelementptr i8, ptr %165, i32 %167
  switch i8 %164, label %177 [
    i8 1, label %169
    i8 2, label %171
    i8 3, label %176
  ]

169:                                              ; preds = %157
  %170 = trunc i32 %160 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %168, i16 %170) #11, !srcloc !11
  br label %178

171:                                              ; preds = %157
  %172 = trunc i32 %160 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %168, i16 %172) #11, !srcloc !11
  %173 = lshr i32 %159, 16
  %174 = trunc i32 %173 to i16
  %175 = getelementptr i8, ptr %168, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %175, i16 %174) #11, !srcloc !11
  br label %178

176:                                              ; preds = %157
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %168, i32 %160) #11, !srcloc !12
  br label %178

177:                                              ; preds = %157
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %178

178:                                              ; preds = %177, %176, %171, %169
  %179 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 8
  store i8 1, ptr %179, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_le(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_free_dma(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_dma_chan_read_3_3(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr %struct.omap_dma_reg, ptr %5, i32 %1
  %7 = getelementptr %struct.omap_dma_reg, ptr %5, i32 %1, i32 2
  %8 = load i8, ptr %7, align 1
  %9 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  %10 = load ptr, ptr %9, align 4
  %11 = load i16, ptr %6, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %10, i32 %12
  switch i8 %8, label %27 [
    i8 1, label %14
    i8 2, label %17
    i8 3, label %25
  ]

14:                                               ; preds = %2
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #11, !srcloc !14
  %16 = zext i16 %15 to i32
  br label %28

17:                                               ; preds = %2
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #11, !srcloc !14
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %13, i32 2
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #11, !srcloc !14
  %22 = zext i16 %21 to i32
  %23 = shl nuw i32 %22, 16
  %24 = or i32 %23, %19
  br label %28

25:                                               ; preds = %2
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !15
  br label %28

27:                                               ; preds = %2
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %31

28:                                               ; preds = %25, %17, %14
  %29 = phi i32 [ %26, %25 ], [ %24, %17 ], [ %16, %14 ]
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %28, %27
  %32 = getelementptr inbounds %struct.omap_dmadev, ptr %3, i32 0, i32 4
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %33, i32 0, i32 3
  %35 = load i32, ptr %34, align 4
  %36 = and i32 %35, 32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %61, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr %4, align 4
  %40 = getelementptr %struct.omap_dma_reg, ptr %39, i32 %1
  %41 = getelementptr %struct.omap_dma_reg, ptr %39, i32 %1, i32 2
  %42 = load i8, ptr %41, align 1
  %43 = load ptr, ptr %9, align 4
  %44 = load i16, ptr %40, align 2
  %45 = zext i16 %44 to i32
  %46 = getelementptr i8, ptr %43, i32 %45
  switch i8 %42, label %60 [
    i8 1, label %47
    i8 2, label %50
    i8 3, label %58
  ]

47:                                               ; preds = %38
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %46) #11, !srcloc !14
  %49 = zext i16 %48 to i32
  br label %61

50:                                               ; preds = %38
  %51 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %46) #11, !srcloc !14
  %52 = zext i16 %51 to i32
  %53 = getelementptr i8, ptr %46, i32 2
  %54 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %53) #11, !srcloc !14
  %55 = zext i16 %54 to i32
  %56 = shl nuw i32 %55, 16
  %57 = or i32 %56, %52
  br label %61

58:                                               ; preds = %38
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #11, !srcloc !15
  br label %61

60:                                               ; preds = %38
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %61

61:                                               ; preds = %60, %58, %50, %47, %31, %28
  %62 = phi i32 [ 0, %31 ], [ %29, %28 ], [ 0, %60 ], [ %59, %58 ], [ %57, %50 ], [ %49, %47 ]
  ret i32 %62
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @omap_dma_stop(ptr noundef %0) unnamed_addr #0 {
  %2 = load ptr, ptr %0, align 4
  %3 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 2
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.omap_dma_reg, ptr %4, i32 34
  %6 = getelementptr %struct.omap_dma_reg, ptr %4, i32 34, i32 2
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = load i16, ptr %5, align 2
  %11 = zext i16 %10 to i32
  %12 = getelementptr i8, ptr %9, i32 %11
  switch i8 %7, label %17 [
    i8 1, label %13
    i8 2, label %14
    i8 3, label %16
  ]

13:                                               ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 0) #11, !srcloc !11
  br label %18

14:                                               ; preds = %1
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %12, i16 0) #11, !srcloc !11
  %15 = getelementptr i8, ptr %12, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %15, i16 0) #11, !srcloc !11
  br label %18

16:                                               ; preds = %1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 0) #11, !srcloc !12
  br label %18

17:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %18

18:                                               ; preds = %17, %16, %14, %13
  %19 = load ptr, ptr %3, align 4
  %20 = getelementptr %struct.omap_dma_reg, ptr %19, i32 35
  %21 = getelementptr %struct.omap_dma_reg, ptr %19, i32 35, i32 2
  %22 = load i8, ptr %21, align 1
  %23 = load ptr, ptr %8, align 4
  %24 = load i16, ptr %20, align 2
  %25 = zext i16 %24 to i32
  %26 = getelementptr i8, ptr %23, i32 %25
  switch i8 %22, label %31 [
    i8 1, label %27
    i8 2, label %28
    i8 3, label %30
  ]

27:                                               ; preds = %18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 -1) #11, !srcloc !11
  br label %32

28:                                               ; preds = %18
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %26, i16 -1) #11, !srcloc !11
  %29 = getelementptr i8, ptr %26, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %29, i16 -1) #11, !srcloc !11
  br label %32

30:                                               ; preds = %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #11, !srcloc !12
  br label %32

31:                                               ; preds = %18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %32

32:                                               ; preds = %31, %30, %28, %27
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr %struct.omap_dma_reg, ptr %33, i32 33
  %35 = getelementptr %struct.omap_dma_reg, ptr %33, i32 33, i32 2
  %36 = load i8, ptr %35, align 1
  %37 = load ptr, ptr %8, align 4
  %38 = load i16, ptr %34, align 2
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %37, i32 %39
  switch i8 %36, label %54 [
    i8 1, label %41
    i8 2, label %44
    i8 3, label %52
  ]

41:                                               ; preds = %32
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #11, !srcloc !14
  %43 = zext i16 %42 to i32
  br label %55

44:                                               ; preds = %32
  %45 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #11, !srcloc !14
  %46 = zext i16 %45 to i32
  %47 = getelementptr i8, ptr %40, i32 2
  %48 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %47) #11, !srcloc !14
  %49 = zext i16 %48 to i32
  %50 = shl nuw i32 %49, 16
  %51 = or i32 %50, %46
  br label %55

52:                                               ; preds = %32
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %40) #11, !srcloc !15
  br label %55

54:                                               ; preds = %32
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %55

55:                                               ; preds = %54, %52, %44, %41
  %56 = phi i32 [ 0, %54 ], [ %53, %52 ], [ %51, %44 ], [ %43, %41 ]
  %57 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 4
  %58 = load ptr, ptr %57, align 4
  %59 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %58, i32 0, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = and i32 %60, 8
  %62 = icmp eq i32 %61, 0
  %63 = and i32 %56, 16777216
  %64 = icmp eq i32 %63, 0
  %65 = select i1 %62, i1 true, i1 %64
  br i1 %65, label %194, label %66

66:                                               ; preds = %55
  %67 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 3
  %68 = load ptr, ptr %67, align 4
  %69 = getelementptr %struct.omap_dma_reg, ptr %68, i32 28, i32 1
  %70 = load i8, ptr %69, align 2
  %71 = icmp eq i8 %70, 0
  br i1 %71, label %73, label %72, !prof !10

72:                                               ; preds = %66
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 364, i32 noundef 9, ptr noundef null) #11
  br label %73

73:                                               ; preds = %72, %66
  %74 = getelementptr %struct.omap_dma_reg, ptr %68, i32 28
  %75 = getelementptr %struct.omap_dma_reg, ptr %68, i32 28, i32 2
  %76 = load i8, ptr %75, align 1
  %77 = getelementptr inbounds %struct.omap_dmadev, ptr %2, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = load i16, ptr %74, align 2
  %80 = zext i16 %79 to i32
  %81 = getelementptr i8, ptr %78, i32 %80
  switch i8 %76, label %95 [
    i8 1, label %82
    i8 2, label %85
    i8 3, label %93
  ]

82:                                               ; preds = %73
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %81) #11, !srcloc !14
  %84 = zext i16 %83 to i32
  br label %96

85:                                               ; preds = %73
  %86 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %81) #11, !srcloc !14
  %87 = zext i16 %86 to i32
  %88 = getelementptr i8, ptr %81, i32 2
  %89 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %88) #11, !srcloc !14
  %90 = zext i16 %89 to i32
  %91 = shl nuw i32 %90, 16
  %92 = or i32 %91, %87
  br label %96

93:                                               ; preds = %73
  %94 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %81) #11, !srcloc !15
  br label %96

95:                                               ; preds = %73
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %96

96:                                               ; preds = %95, %93, %85, %82
  %97 = phi i32 [ 0, %95 ], [ %94, %93 ], [ %92, %85 ], [ %84, %82 ]
  %98 = and i32 %97, -12289
  %99 = or i32 %98, 4096
  %100 = load ptr, ptr %67, align 4
  %101 = getelementptr %struct.omap_dma_reg, ptr %100, i32 28, i32 1
  %102 = load i8, ptr %101, align 2
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %105, label %104, !prof !10

104:                                              ; preds = %96
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %105

105:                                              ; preds = %104, %96
  %106 = getelementptr %struct.omap_dma_reg, ptr %100, i32 28
  %107 = getelementptr %struct.omap_dma_reg, ptr %100, i32 28, i32 2
  %108 = load i8, ptr %107, align 1
  %109 = load ptr, ptr %77, align 4
  %110 = load i16, ptr %106, align 2
  %111 = zext i16 %110 to i32
  %112 = getelementptr i8, ptr %109, i32 %111
  switch i8 %108, label %121 [
    i8 1, label %113
    i8 2, label %115
    i8 3, label %120
  ]

113:                                              ; preds = %105
  %114 = trunc i32 %99 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %112, i16 %114) #11, !srcloc !11
  br label %122

115:                                              ; preds = %105
  %116 = trunc i32 %99 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %112, i16 %116) #11, !srcloc !11
  %117 = lshr i32 %97, 16
  %118 = trunc i32 %117 to i16
  %119 = getelementptr i8, ptr %112, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %119, i16 %118) #11, !srcloc !11
  br label %122

120:                                              ; preds = %105
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %112, i32 %99) #11, !srcloc !12
  br label %122

121:                                              ; preds = %105
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %122

122:                                              ; preds = %121, %120, %115, %113
  %123 = load ptr, ptr %3, align 4
  %124 = getelementptr %struct.omap_dma_reg, ptr %123, i32 33
  %125 = getelementptr %struct.omap_dma_reg, ptr %123, i32 33, i32 2
  %126 = load i8, ptr %125, align 1
  %127 = load ptr, ptr %8, align 4
  %128 = load i16, ptr %124, align 2
  %129 = zext i16 %128 to i32
  %130 = getelementptr i8, ptr %127, i32 %129
  switch i8 %126, label %144 [
    i8 1, label %131
    i8 2, label %134
    i8 3, label %142
  ]

131:                                              ; preds = %122
  %132 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %130) #11, !srcloc !14
  %133 = zext i16 %132 to i32
  br label %145

134:                                              ; preds = %122
  %135 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %130) #11, !srcloc !14
  %136 = zext i16 %135 to i32
  %137 = getelementptr i8, ptr %130, i32 2
  %138 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %137) #11, !srcloc !14
  %139 = zext i16 %138 to i32
  %140 = shl nuw i32 %139, 16
  %141 = or i32 %140, %136
  br label %145

142:                                              ; preds = %122
  %143 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %130) #11, !srcloc !15
  br label %145

144:                                              ; preds = %122
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %145

145:                                              ; preds = %144, %142, %134, %131
  %146 = phi i32 [ 0, %144 ], [ %143, %142 ], [ %141, %134 ], [ %133, %131 ]
  %147 = and i32 %146, -129
  %148 = load ptr, ptr %3, align 4
  %149 = getelementptr %struct.omap_dma_reg, ptr %148, i32 33
  %150 = getelementptr %struct.omap_dma_reg, ptr %148, i32 33, i32 2
  %151 = load i8, ptr %150, align 1
  %152 = load ptr, ptr %8, align 4
  %153 = load i16, ptr %149, align 2
  %154 = zext i16 %153 to i32
  %155 = getelementptr i8, ptr %152, i32 %154
  switch i8 %151, label %164 [
    i8 1, label %156
    i8 2, label %158
    i8 3, label %163
  ]

156:                                              ; preds = %145
  %157 = trunc i32 %147 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %155, i16 %157) #11, !srcloc !11
  br label %165

158:                                              ; preds = %145
  %159 = trunc i32 %147 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %155, i16 %159) #11, !srcloc !11
  %160 = lshr i32 %146, 16
  %161 = trunc i32 %160 to i16
  %162 = getelementptr i8, ptr %155, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %162, i16 %161) #11, !srcloc !11
  br label %165

163:                                              ; preds = %145
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %147) #11, !srcloc !12
  br label %165

164:                                              ; preds = %145
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %165

165:                                              ; preds = %164, %163, %158, %156
  %166 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 3
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, 33554432
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %171

170:                                              ; preds = %165
  tail call fastcc void @omap_dma_drain_chan(ptr noundef %0)
  br label %171

171:                                              ; preds = %170, %165
  %172 = load ptr, ptr %67, align 4
  %173 = getelementptr %struct.omap_dma_reg, ptr %172, i32 28, i32 1
  %174 = load i8, ptr %173, align 2
  %175 = icmp eq i8 %174, 0
  br i1 %175, label %177, label %176, !prof !10

176:                                              ; preds = %171
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 355, i32 noundef 9, ptr noundef null) #11
  br label %177

177:                                              ; preds = %176, %171
  %178 = getelementptr %struct.omap_dma_reg, ptr %172, i32 28
  %179 = getelementptr %struct.omap_dma_reg, ptr %172, i32 28, i32 2
  %180 = load i8, ptr %179, align 1
  %181 = load ptr, ptr %77, align 4
  %182 = load i16, ptr %178, align 2
  %183 = zext i16 %182 to i32
  %184 = getelementptr i8, ptr %181, i32 %183
  switch i8 %180, label %193 [
    i8 1, label %185
    i8 2, label %187
    i8 3, label %192
  ]

185:                                              ; preds = %177
  %186 = trunc i32 %97 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %184, i16 %186) #11, !srcloc !11
  br label %222

187:                                              ; preds = %177
  %188 = trunc i32 %97 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %184, i16 %188) #11, !srcloc !11
  %189 = lshr i32 %97, 16
  %190 = trunc i32 %189 to i16
  %191 = getelementptr i8, ptr %184, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %191, i16 %190) #11, !srcloc !11
  br label %222

192:                                              ; preds = %177
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %184, i32 %97) #11, !srcloc !12
  br label %222

193:                                              ; preds = %177
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %222

194:                                              ; preds = %55
  %195 = and i32 %56, 128
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %271, label %197

197:                                              ; preds = %194
  %198 = and i32 %56, -129
  %199 = load ptr, ptr %3, align 4
  %200 = getelementptr %struct.omap_dma_reg, ptr %199, i32 33
  %201 = getelementptr %struct.omap_dma_reg, ptr %199, i32 33, i32 2
  %202 = load i8, ptr %201, align 1
  %203 = load ptr, ptr %8, align 4
  %204 = load i16, ptr %200, align 2
  %205 = zext i16 %204 to i32
  %206 = getelementptr i8, ptr %203, i32 %205
  switch i8 %202, label %215 [
    i8 1, label %207
    i8 2, label %209
    i8 3, label %214
  ]

207:                                              ; preds = %197
  %208 = trunc i32 %198 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %206, i16 %208) #11, !srcloc !11
  br label %216

209:                                              ; preds = %197
  %210 = trunc i32 %198 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %206, i16 %210) #11, !srcloc !11
  %211 = lshr i32 %56, 16
  %212 = trunc i32 %211 to i16
  %213 = getelementptr i8, ptr %206, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %213, i16 %212) #11, !srcloc !11
  br label %216

214:                                              ; preds = %197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %206, i32 %198) #11, !srcloc !12
  br label %216

215:                                              ; preds = %197
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %216

216:                                              ; preds = %215, %214, %209, %207
  %217 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 3
  %218 = load i32, ptr %217, align 4
  %219 = and i32 %218, 33554432
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %216
  tail call fastcc void @omap_dma_drain_chan(ptr noundef %0)
  br label %222

222:                                              ; preds = %221, %216, %193, %192, %187, %185
  tail call void asm sideeffect "dsb ", "~{memory}"() #11, !srcloc !27
  tail call void @arm_heavy_mb() #11
  %223 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 6
  %224 = load i8, ptr %223, align 4, !range !13
  %225 = icmp eq i8 %224, 0
  br i1 %225, label %269, label %226

226:                                              ; preds = %222
  %227 = load ptr, ptr %3, align 4
  %228 = getelementptr %struct.omap_dma_reg, ptr %227, i32 44
  %229 = getelementptr %struct.omap_dma_reg, ptr %227, i32 44, i32 2
  %230 = load i8, ptr %229, align 1
  %231 = load ptr, ptr %8, align 4
  %232 = load i16, ptr %228, align 2
  %233 = zext i16 %232 to i32
  %234 = getelementptr i8, ptr %231, i32 %233
  switch i8 %230, label %248 [
    i8 1, label %235
    i8 2, label %238
    i8 3, label %246
  ]

235:                                              ; preds = %226
  %236 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %234) #11, !srcloc !14
  %237 = zext i16 %236 to i32
  br label %249

238:                                              ; preds = %226
  %239 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %234) #11, !srcloc !14
  %240 = zext i16 %239 to i32
  %241 = getelementptr i8, ptr %234, i32 2
  %242 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %241) #11, !srcloc !14
  %243 = zext i16 %242 to i32
  %244 = shl nuw i32 %243, 16
  %245 = or i32 %244, %240
  br label %249

246:                                              ; preds = %226
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %234) #11, !srcloc !15
  br label %249

248:                                              ; preds = %226
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %249

249:                                              ; preds = %248, %246, %238, %235
  %250 = phi i32 [ 0, %248 ], [ %247, %246 ], [ %245, %238 ], [ %237, %235 ]
  %251 = and i32 %250, -32769
  %252 = load ptr, ptr %3, align 4
  %253 = getelementptr %struct.omap_dma_reg, ptr %252, i32 44
  %254 = getelementptr %struct.omap_dma_reg, ptr %252, i32 44, i32 2
  %255 = load i8, ptr %254, align 1
  %256 = load ptr, ptr %8, align 4
  %257 = load i16, ptr %253, align 2
  %258 = zext i16 %257 to i32
  %259 = getelementptr i8, ptr %256, i32 %258
  switch i8 %255, label %268 [
    i8 1, label %260
    i8 2, label %262
    i8 3, label %267
  ]

260:                                              ; preds = %249
  %261 = trunc i32 %251 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %259, i16 %261) #11, !srcloc !11
  br label %269

262:                                              ; preds = %249
  %263 = trunc i32 %251 to i16
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %259, i16 %263) #11, !srcloc !11
  %264 = lshr i32 %250, 16
  %265 = trunc i32 %264 to i16
  %266 = getelementptr i8, ptr %259, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %266, i16 %265) #11, !srcloc !11
  br label %269

267:                                              ; preds = %249
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %259, i32 %251) #11, !srcloc !12
  br label %269

268:                                              ; preds = %249
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 324, i32 noundef 9, ptr noundef null) #11
  br label %269

269:                                              ; preds = %268, %267, %262, %260, %222
  %270 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 8
  store i8 0, ptr %270, align 2
  br label %271

271:                                              ; preds = %269, %194
  %272 = phi i32 [ 0, %269 ], [ -22, %194 ]
  ret i32 %272
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @omap_dma_drain_chan(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 2
  %3 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 1
  br label %4

4:                                                ; preds = %31, %1
  %5 = phi i32 [ 0, %1 ], [ %33, %31 ]
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr %struct.omap_dma_reg, ptr %6, i32 33
  %8 = getelementptr %struct.omap_dma_reg, ptr %6, i32 33, i32 2
  %9 = load i8, ptr %8, align 1
  %10 = load ptr, ptr %3, align 4
  %11 = load i16, ptr %7, align 2
  %12 = zext i16 %11 to i32
  %13 = getelementptr i8, ptr %10, i32 %12
  switch i8 %9, label %24 [
    i8 1, label %14
    i8 2, label %17
    i8 3, label %22
  ]

14:                                               ; preds = %4
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #11, !srcloc !14
  %16 = zext i16 %15 to i32
  br label %25

17:                                               ; preds = %4
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %13) #11, !srcloc !14
  %19 = zext i16 %18 to i32
  %20 = getelementptr i8, ptr %13, i32 2
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %20) #11, !srcloc !14
  br label %25

22:                                               ; preds = %4
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !15
  br label %25

24:                                               ; preds = %4
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %41

25:                                               ; preds = %22, %17, %14
  %26 = phi i32 [ %23, %22 ], [ %19, %17 ], [ %16, %14 ]
  %27 = and i32 %26, 1536
  %28 = icmp eq i32 %27, 0
  %29 = icmp ugt i32 %5, 100
  %30 = select i1 %28, i1 true, i1 %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 1073740) #11
  %33 = add nuw nsw i32 %5, 1
  br label %4

34:                                               ; preds = %25
  br i1 %28, label %41, label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = getelementptr inbounds %struct.omap_chan, ptr %0, i32 0, i32 9
  %40 = load i32, ptr %39, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.21, i32 noundef %40) #12
  br label %41

41:                                               ; preds = %35, %34, %24
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @omap_dma_desc_free(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.omap_desc, ptr %0, i32 0, i32 1
  %3 = load i8, ptr %2, align 4, !range !13
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.omap_desc, ptr %0, i32 0, i32 12
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %29, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.omap_dmadev, ptr %12, i32 0, i32 13
  br label %14

14:                                               ; preds = %25, %9
  %15 = phi i32 [ %7, %9 ], [ %26, %25 ]
  %16 = phi i32 [ 0, %9 ], [ %27, %25 ]
  %17 = getelementptr %struct.omap_desc, ptr %0, i32 0, i32 13, i32 %16, i32 5
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %13, align 4
  %22 = getelementptr %struct.omap_desc, ptr %0, i32 0, i32 13, i32 %16, i32 6
  %23 = load i32, ptr %22, align 4
  tail call void @dma_pool_free(ptr noundef %21, ptr noundef nonnull %18, i32 noundef %23) #11
  %24 = load i32, ptr %6, align 4
  br label %25

25:                                               ; preds = %20, %14
  %26 = phi i32 [ %15, %14 ], [ %24, %20 ]
  %27 = add nuw i32 %16, 1
  %28 = icmp ult i32 %27, %26
  br i1 %28, label %14, label %29

29:                                               ; preds = %25, %5, %1
  tail call void @kfree(ptr noundef %0) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc zeroext i1 @omap_dma_busy(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.omap_dmadev, ptr %0, i32 0, i32 9
  %3 = getelementptr inbounds %struct.omap_dmadev, ptr %0, i32 0, i32 8
  %4 = load i32, ptr %3, align 4
  %5 = tail call i32 @_find_next_bit_le(ptr noundef %2, i32 noundef %4, i32 noundef 0) #11
  %6 = load i32, ptr %3, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.omap_dmadev, ptr %0, i32 0, i32 17
  br label %10

10:                                               ; preds = %17, %8
  %11 = phi i32 [ %6, %8 ], [ %21, %17 ]
  %12 = phi i32 [ %5, %8 ], [ %20, %17 ]
  %13 = load ptr, ptr %9, align 4
  %14 = getelementptr ptr, ptr %13, i32 %12
  %15 = load ptr, ptr %14, align 4
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %49, %10
  %18 = phi i32 [ %50, %49 ], [ %11, %10 ]
  %19 = add nsw i32 %12, 1
  %20 = tail call i32 @_find_next_bit_le(ptr noundef %2, i32 noundef %18, i32 noundef %19) #11
  %21 = load i32, ptr %3, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %10, label %51

23:                                               ; preds = %10
  %24 = getelementptr inbounds %struct.omap_chan, ptr %15, i32 0, i32 2
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr %struct.omap_dma_reg, ptr %25, i32 33
  %27 = getelementptr %struct.omap_dma_reg, ptr %25, i32 33, i32 2
  %28 = load i8, ptr %27, align 1
  %29 = getelementptr inbounds %struct.omap_chan, ptr %15, i32 0, i32 1
  %30 = load ptr, ptr %29, align 4
  %31 = load i16, ptr %26, align 2
  %32 = zext i16 %31 to i32
  %33 = getelementptr i8, ptr %30, i32 %32
  switch i8 %28, label %44 [
    i8 1, label %34
    i8 2, label %37
    i8 3, label %42
  ]

34:                                               ; preds = %23
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %33) #11, !srcloc !14
  %36 = zext i16 %35 to i32
  br label %45

37:                                               ; preds = %23
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %33) #11, !srcloc !14
  %39 = zext i16 %38 to i32
  %40 = getelementptr i8, ptr %33, i32 2
  %41 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %40) #11, !srcloc !14
  br label %45

42:                                               ; preds = %23
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #11, !srcloc !15
  br label %45

44:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.16, i32 noundef 344, i32 noundef 9, ptr noundef null) #11
  br label %49

45:                                               ; preds = %42, %37, %34
  %46 = phi i32 [ %43, %42 ], [ %39, %37 ], [ %36, %34 ]
  %47 = and i32 %46, 128
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45, %44
  %50 = load i32, ptr %3, align 4
  br label %17

51:                                               ; preds = %45, %17, %1
  %52 = phi i1 [ false, %1 ], [ false, %17 ], [ true, %45 ]
  ret i1 %52
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #10

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nounwind allocsize(0) }

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
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = !{!"branch_weights", i32 2000, i32 1}
!11 = !{i64 5058841}
!12 = !{i64 5059461}
!13 = !{i8 0, i8 2}
!14 = !{i64 5059041}
!15 = !{i64 5059879}
!16 = !{i64 2148897385}
!17 = !{i64 2148893209}
!18 = !{i64 2148893284, i64 2148893311, i64 2148893358, i64 2148893380, i64 2148893408, i64 2148893428}
!19 = !{i64 354317}
!20 = !{i64 2148921529}
!21 = !{i64 2153127202}
!22 = !{i64 2153126260, i64 2153126753, i64 2153126297, i64 2153126353, i64 2153126387, i64 2153126411, i64 2153126452, i64 2153126473, i64 2153126501, i64 2153126535}
!23 = !{i32 0, i32 33}
!24 = !{i64 2153197138}
!25 = !{i64 2148920388}
!26 = !{i64 2153186257}
!27 = !{i64 2153185934}
