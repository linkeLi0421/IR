; ModuleID = '/llk/IR/drivers/dma/ti/edma.c_pt.bc'
source_filename = "../drivers/dma/ti/edma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.edmacc_param = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.edma_soc_info = type { i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.edma_rsv_info = type { ptr, ptr }
%struct.edma_cc = type { ptr, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, %struct.dma_device, ptr, ptr, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.edma_tc = type { ptr, i16 }
%struct.edma_chan = type { %struct.virt_dma_chan, %struct.list_head, ptr, ptr, ptr, i32, i8, i8, [20 x i32], i32, %struct.dma_slave_config }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.edma_desc = type { %struct.virt_dma_desc, %struct.list_head, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, [0 x %struct.edma_pset] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.edma_pset = type { i32, i32, %struct.edmacc_param }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_edma__234_2736_edma_init4 = internal global ptr @edma_init, section ".initcall4.init", align 4
@edma_driver = internal global %struct.platform_driver { ptr @edma_probe, ptr @edma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @edma_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @edma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@edma_tptc_driver = internal global %struct.platform_driver { ptr @edma_tptc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.39, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @edma_tptc_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_edma_exit = internal global ptr @edma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author235 = internal constant [49 x i8] c"edma.author=Matt Porter <matt.porter@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description236 = internal constant [43 x i8] c"edma.description=TI EDMA DMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file237 = internal constant [30 x i8] c"edma.file=drivers/dma/ti/edma\00", section ".modinfo", align 1
@__UNIQUE_ID_license238 = internal constant [20 x i8] c"edma.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [5 x i8] c"edma\00", align 1
@edma_of_ids = internal constant [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edma_binding_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3-tpcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @edma_binding_type, i64 4) }, %struct.of_device_id zeroinitializer], align 4
@edma_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @edma_pm_suspend, ptr @edma_pm_resume, ptr @edma_pm_suspend, ptr @edma_pm_resume, ptr @edma_pm_suspend, ptr @edma_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get DT data\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"edma3_cc\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"no mem resource?\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"pm_runtime_get_sync() failed\0A\00", align 1
@dummy_paramset = internal constant %struct.edmacc_param { i32 0, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 0, i32 1 }, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"edma3_ccint\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"%s_ccint\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"CCINT (%d) failed --> %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"edma3_ccerrint\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"%s_ccerrint\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"CCERRINT (%d) failed --> %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Can't allocate PaRAM dummy slot\0A\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"ti,tptcs\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"dma-channel-mask\00", align 1
@.str.14 = private unnamed_addr constant [35 x i8] c"dma-channel-mask is not complete.\0A\00", align 1
@.str.15 = private unnamed_addr constant [43 x i8] c"dma-channel-mask is out of range or empty\0A\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"slave ddev registration failed (%d)\0A\00", align 1
@.str.17 = private unnamed_addr constant [38 x i8] c"memcpy ddev registration failed (%d)\0A\00", align 1
@.str.18 = private unnamed_addr constant [27 x i8] c"TI EDMA DMA engine driver\0A\00", align 1
@__const.edma_setup_info_from_dt.pname = private unnamed_addr constant [24 x i8] c"ti,edma-memcpy-channels\00", align 1
@__const.edma_setup_info_from_dt.pname.22 = private unnamed_addr constant [29 x i8] c"ti,edma-reserved-slot-ranges\00", align 1
@__const.edma_xbar_event_map.pname = private unnamed_addr constant [23 x i8] c"ti,edma-xbar-event-map\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [3 x [14 x ptr]], align 4
@.str.23 = private unnamed_addr constant [36 x i8] c"Ignoring eDMA instance for linking\0A\00", align 1
@.str.24 = private unnamed_addr constant [42 x i8] c"%s: Error interrupt without error event!\0A\00", align 1
@__func__.dma_ccerr_handler = private unnamed_addr constant [18 x i8] c"dma_ccerr_handler\00", align 1
@.str.25 = private unnamed_addr constant [14 x i8] c"CCERR 0x%08x\0A\00", align 1
@.str.26 = private unnamed_addr constant [49 x i8] c"Legacy memcpy is enabled, things might not work\0A\00", align 1
@.str.27 = private unnamed_addr constant [31 x i8] c"memcpy is disabled due to OoM\0A\00", align 1
@.str.28 = private unnamed_addr constant [20 x i8] c"memcpy is disabled\0A\00", align 1
@.str.29 = private unnamed_addr constant [29 x i8] c"%s: Failed to allocate slot\0A\00", align 1
@__func__.edma_prep_dma_memcpy = private unnamed_addr constant [21 x i8] c"edma_prep_dma_memcpy\00", align 1
@.str.30 = private unnamed_addr constant [30 x i8] c"Exceeded max SG segment size\0A\00", align 1
@.str.31 = private unnamed_addr constant [35 x i8] c"%s: direction not implemented yet\0A\00", align 1
@__func__.edma_config_pset = private unnamed_addr constant [17 x i8] c"edma_config_pset\00", align 1
@.str.32 = private unnamed_addr constant [46 x i8] c"%s: SRC constant addressing is not supported\0A\00", align 1
@__func__.edma_prep_dma_interleaved = private unnamed_addr constant [26 x i8] c"edma_prep_dma_interleaved\00", align 1
@.str.33 = private unnamed_addr constant [46 x i8] c"%s: DST constant addressing is not supported\0A\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"%s: bad direction: %d\0A\00", align 1
@__func__.edma_prep_slave_sg = private unnamed_addr constant [19 x i8] c"edma_prep_slave_sg\00", align 1
@.str.35 = private unnamed_addr constant [30 x i8] c"%s: Undefined slave buswidth\0A\00", align 1
@__func__.edma_prep_dma_cyclic = private unnamed_addr constant [21 x i8] c"edma_prep_dma_cyclic\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"Period should be multiple of Buffer length\0A\00", align 1
@.str.37 = private unnamed_addr constant [45 x i8] c"Entry slot allocation failed for channel %u\0A\00", align 1
@.str.38 = private unnamed_addr constant [41 x i8] c"Channel%d is reserved, can not be used!\0A\00", align 1
@edma_binding_type = internal constant [2 x i32] [i32 0, i32 1], align 4
@.str.39 = private unnamed_addr constant [11 x i8] c"edma3-tptc\00", align 1
@edma_tptc_of_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3-tptc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author235, ptr @__UNIQUE_ID_description236, ptr @__UNIQUE_ID_file237, ptr @__UNIQUE_ID_license238, ptr @__exitcall_edma_exit, ptr @__initcall__kmod_edma__234_2736_edma_init4, ptr @edma_exit], section "llvm.metadata"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_init() #0 {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @edma_tptc_driver, ptr noundef null) #12
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = tail call i32 @__platform_driver_register(ptr noundef nonnull @edma_driver, ptr noundef null) #12
  br label %5

5:                                                ; preds = %3, %0
  %6 = phi i32 [ %4, %3 ], [ %1, %0 ]
  ret i32 %6
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @edma_exit() #1 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @edma_driver) #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @edma_tptc_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_probe(ptr noundef %0) #0 {
  %2 = alloca [23 x i8], align 1
  %3 = alloca %struct.resource, align 4
  %4 = alloca i32, align 4
  %5 = alloca [24 x i8], align 1
  %6 = alloca [29 x i8], align 1
  %7 = alloca %struct.of_phandle_args, align 4
  %8 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 7
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %12 = load ptr, ptr %11, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %170

14:                                               ; preds = %1
  %15 = tail call ptr @of_match_node(ptr noundef nonnull @edma_of_ids, ptr noundef nonnull %12) #12
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.of_device_id, ptr %15, i32 0, i32 3
  %19 = load ptr, ptr %18, align 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp ne i32 %20, 1
  br label %22

22:                                               ; preds = %17, %14
  %23 = phi i1 [ true, %14 ], [ %21, %17 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %24 = tail call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 28, i32 noundef 3520) #12
  %25 = icmp eq ptr %24, null
  br i1 %25, label %162, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %11, align 8
  br i1 %23, label %28, label %88

28:                                               ; preds = %26
  %29 = call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @__const.edma_xbar_event_map.pname, ptr noundef nonnull %4) #12
  %30 = icmp eq ptr %29, null
  br i1 %30, label %164, label %31

31:                                               ; preds = %28
  %32 = load i32, ptr %4, align 4
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %2) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(23) %2, ptr noundef nonnull align 1 dereferenceable(23) @__const.edma_xbar_event_map.pname, i32 23, i1 false) #12
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(32) %3, i8 0, i32 32, i1 false) #12, !annotation !8
  %33 = lshr i32 %32, 1
  %34 = add nuw i32 %33, 2
  %35 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %34, i32 2) #12
  %36 = extractvalue { i32, i1 } %35, 1
  br i1 %36, label %86, label %37, !prof !9

37:                                               ; preds = %31
  %38 = extractvalue { i32, i1 } %35, 0
  %39 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %38, i32 noundef 3520) #12
  %40 = icmp eq ptr %39, null
  br i1 %40, label %86, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %11, align 8
  %43 = call i32 @of_address_to_resource(ptr noundef %42, i32 noundef 1, ptr noundef nonnull %3) #12
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %86

45:                                               ; preds = %41
  %46 = load i32, ptr %3, align 4
  %47 = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %48 = load i32, ptr %47, align 4
  %49 = sub i32 1, %46
  %50 = add i32 %49, %48
  %51 = call ptr @devm_ioremap(ptr noundef %8, i32 noundef %46, i32 noundef %50) #12
  %52 = icmp eq ptr %51, null
  br i1 %52, label %86, label %53

53:                                               ; preds = %45
  %54 = load ptr, ptr %11, align 8
  %55 = call i32 @of_property_read_variable_u16_array(ptr noundef %54, ptr noundef nonnull %2, ptr noundef nonnull %39, i32 noundef %33, i32 noundef 0) #12
  %56 = icmp sgt i32 %55, -1
  br i1 %56, label %57, label %86

57:                                               ; preds = %53
  %58 = lshr i32 %32, 2
  %59 = getelementptr [2 x i16], ptr %39, i32 %58
  store i16 -1, ptr %59, align 2
  %60 = getelementptr [2 x i16], ptr %39, i32 %58, i32 1
  store i16 -1, ptr %60, align 2
  %61 = icmp ult i32 %32, 4
  br i1 %61, label %84, label %62

62:                                               ; preds = %57
  %63 = call i32 @llvm.umax.i32(i32 %58, i32 1) #12
  br label %64

64:                                               ; preds = %64, %62
  %65 = phi i32 [ %82, %64 ], [ 0, %62 ]
  %66 = getelementptr [2 x i16], ptr %39, i32 %65
  %67 = getelementptr [2 x i16], ptr %39, i32 %65, i32 1
  %68 = load i16, ptr %67, align 2
  %69 = sext i16 %68 to i32
  %70 = shl nsw i32 %69, 3
  %71 = and i32 %70, 24
  %72 = and i32 %69, -4
  %73 = getelementptr i8, ptr %51, i32 %72
  %74 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %73) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %75 = shl nuw i32 255, %71
  %76 = xor i32 %75, -1
  %77 = and i32 %74, %76
  %78 = load i16, ptr %66, align 2
  %79 = sext i16 %78 to i32
  %80 = shl i32 %79, %71
  %81 = or i32 %77, %80
  call void asm sideeffect "dsb st", "~{memory}"() #12, !srcloc !12
  call void @arm_heavy_mb() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %81) #12, !srcloc !13
  %82 = add nuw nsw i32 %65, 1
  %83 = icmp eq i32 %82, %63
  br i1 %83, label %84, label %64

84:                                               ; preds = %64, %57
  %85 = getelementptr inbounds %struct.edma_soc_info, ptr %24, i32 0, i32 4
  store ptr %39, ptr %85, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %2) #12
  br label %164

86:                                               ; preds = %53, %45, %41, %37, %31
  %87 = phi ptr [ inttoptr (i32 -12 to ptr), %31 ], [ inttoptr (i32 -5 to ptr), %53 ], [ inttoptr (i32 -12 to ptr), %45 ], [ inttoptr (i32 -12 to ptr), %41 ], [ inttoptr (i32 -12 to ptr), %37 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %2) #12
  br label %162

88:                                               ; preds = %26
  %89 = call ptr @of_find_property(ptr noundef %27, ptr noundef nonnull @__const.edma_setup_info_from_dt.pname, ptr noundef nonnull %4) #12
  %90 = icmp eq ptr %89, null
  br i1 %90, label %112, label %91

91:                                               ; preds = %88
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(24) %5, ptr noundef nonnull align 1 dereferenceable(24) @__const.edma_setup_info_from_dt.pname, i32 24, i1 false) #12
  %92 = load i32, ptr %4, align 4
  %93 = lshr i32 %92, 2
  %94 = add nuw nsw i32 %93, 1
  %95 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %94, i32 4) #12
  %96 = extractvalue { i32, i1 } %95, 1
  br i1 %96, label %107, label %97, !prof !9

97:                                               ; preds = %91
  %98 = extractvalue { i32, i1 } %95, 0
  %99 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %98, i32 noundef 3520) #12
  %100 = icmp eq ptr %99, null
  br i1 %100, label %107, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %11, align 8
  %103 = call i32 @of_property_read_variable_u32_array(ptr noundef %102, ptr noundef nonnull %5, ptr noundef nonnull %99, i32 noundef %93, i32 noundef 0) #12
  %104 = icmp sgt i32 %103, -1
  br i1 %104, label %109, label %105

105:                                              ; preds = %101
  %106 = inttoptr i32 %103 to ptr
  br label %107

107:                                              ; preds = %105, %97, %91
  %108 = phi ptr [ inttoptr (i32 -12 to ptr), %97 ], [ %106, %105 ], [ inttoptr (i32 -12 to ptr), %91 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %164

109:                                              ; preds = %101
  %110 = getelementptr i32, ptr %99, i32 %93
  store i32 -1, ptr %110, align 4
  %111 = getelementptr inbounds %struct.edma_soc_info, ptr %24, i32 0, i32 2
  store ptr %99, ptr %111, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #12
  br label %112

112:                                              ; preds = %109, %88
  %113 = load ptr, ptr %11, align 8
  %114 = call ptr @of_find_property(ptr noundef %113, ptr noundef nonnull @__const.edma_setup_info_from_dt.pname.22, ptr noundef nonnull %4) #12
  %115 = icmp eq ptr %114, null
  br i1 %115, label %164, label %116

116:                                              ; preds = %112
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %6) #12
  call void @llvm.memcpy.p0.p0.i32(ptr noundef nonnull align 1 dereferenceable(29) %6, ptr noundef nonnull align 1 dereferenceable(29) @__const.edma_setup_info_from_dt.pname.22, i32 29, i1 false) #12
  %117 = load i32, ptr %4, align 4
  %118 = lshr i32 %117, 3
  %119 = icmp ult i32 %117, 8
  br i1 %119, label %155, label %120

120:                                              ; preds = %116
  %121 = and i32 %117, -8
  %122 = call noalias align 64 ptr @__kmalloc(i32 noundef %121, i32 noundef 3520) #13
  %123 = icmp eq ptr %122, null
  br i1 %123, label %155, label %124

124:                                              ; preds = %120
  %125 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 8, i32 noundef 3520) #12
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %128

127:                                              ; preds = %124
  call void @kfree(ptr noundef nonnull %122) #12
  br label %155

128:                                              ; preds = %124
  %129 = shl nuw nsw i32 %118, 2
  %130 = add nuw i32 %129, 4
  %131 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %130, i32 noundef 3520) #12
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %134

133:                                              ; preds = %128
  call void @kfree(ptr noundef nonnull %122) #12
  br label %155

134:                                              ; preds = %128
  %135 = load ptr, ptr %11, align 8
  %136 = shl nuw nsw i32 %118, 1
  %137 = call i32 @of_property_read_variable_u32_array(ptr noundef %135, ptr noundef nonnull %6, ptr noundef nonnull %122, i32 noundef %136, i32 noundef 0) #12
  %138 = icmp sgt i32 %137, -1
  br i1 %138, label %139, label %141

139:                                              ; preds = %134
  %140 = call i32 @llvm.umax.i32(i32 %118, i32 1) #12
  br label %143

141:                                              ; preds = %134
  call void @kfree(ptr noundef nonnull %122) #12
  %142 = inttoptr i32 %137 to ptr
  br label %155

143:                                              ; preds = %143, %139
  %144 = phi i32 [ %153, %143 ], [ 0, %139 ]
  %145 = getelementptr [2 x i32], ptr %122, i32 %144
  %146 = load i32, ptr %145, align 8
  %147 = trunc i32 %146 to i16
  %148 = getelementptr [2 x i16], ptr %131, i32 %144
  store i16 %147, ptr %148, align 2
  %149 = getelementptr [2 x i32], ptr %122, i32 %144, i32 1
  %150 = load i32, ptr %149, align 4
  %151 = trunc i32 %150 to i16
  %152 = getelementptr [2 x i16], ptr %131, i32 %144, i32 1
  store i16 %151, ptr %152, align 2
  %153 = add nuw nsw i32 %144, 1
  %154 = icmp eq i32 %153, %140
  br i1 %154, label %157, label %143

155:                                              ; preds = %141, %133, %127, %120, %116
  %156 = phi ptr [ inttoptr (i32 -12 to ptr), %120 ], [ %24, %116 ], [ inttoptr (i32 -12 to ptr), %127 ], [ inttoptr (i32 -12 to ptr), %133 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %6) #12
  br label %164

157:                                              ; preds = %143
  %158 = getelementptr [2 x i16], ptr %131, i32 %118
  store i16 -1, ptr %158, align 2
  %159 = getelementptr [2 x i16], ptr %131, i32 %118, i32 1
  store i16 -1, ptr %159, align 2
  %160 = getelementptr inbounds %struct.edma_soc_info, ptr %24, i32 0, i32 1
  store ptr %125, ptr %160, align 4
  %161 = getelementptr inbounds %struct.edma_rsv_info, ptr %125, i32 0, i32 1
  store ptr %131, ptr %161, align 4
  call void @kfree(ptr noundef nonnull %122) #12
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %6) #12
  br label %164

162:                                              ; preds = %86, %22
  %163 = phi ptr [ inttoptr (i32 -12 to ptr), %22 ], [ %87, %86 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  br label %167

164:                                              ; preds = %157, %155, %112, %107, %84, %28
  %165 = phi ptr [ %24, %84 ], [ %24, %28 ], [ %108, %107 ], [ %156, %155 ], [ %24, %157 ], [ %24, %112 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %166 = icmp ugt ptr %165, inttoptr (i32 -4096 to ptr)
  br i1 %166, label %167, label %170

167:                                              ; preds = %164, %162
  %168 = phi ptr [ %163, %162 ], [ %165, %164 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.1) #14
  %169 = ptrtoint ptr %168 to i32
  br label %609

170:                                              ; preds = %164, %1
  %171 = phi ptr [ %10, %1 ], [ %165, %164 ]
  %172 = phi i1 [ true, %1 ], [ %23, %164 ]
  %173 = icmp eq ptr %171, null
  br i1 %173, label %609, label %174

174:                                              ; preds = %170
  %175 = call i32 @dma_set_mask(ptr noundef %8, i64 noundef 4294967295) #12
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %609

177:                                              ; preds = %174
  %178 = call i32 @dma_set_coherent_mask(ptr noundef %8, i64 noundef 4294967295) #12
  %179 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef 332, i32 noundef 3520) #12
  %180 = icmp eq ptr %179, null
  br i1 %180, label %609, label %181

181:                                              ; preds = %177
  store ptr %8, ptr %179, align 4
  %182 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 1
  %183 = load i32, ptr %182, align 4
  %184 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 3
  store i32 %183, ptr %184, align 4
  %185 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 4
  %186 = zext i1 %172 to i8
  store i8 %186, ptr %185, align 4
  %187 = icmp slt i32 %183, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %181
  store i32 0, ptr %184, align 4
  br label %189

189:                                              ; preds = %188, %181
  %190 = call ptr @platform_get_resource_byname(ptr noundef %0, i32 noundef 512, ptr noundef nonnull @.str.2) #12
  %191 = icmp eq ptr %190, null
  br i1 %191, label %192, label %196

192:                                              ; preds = %189
  %193 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #12
  %194 = icmp eq ptr %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %192
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.3) #14
  br label %609

196:                                              ; preds = %192, %189
  %197 = phi ptr [ %190, %189 ], [ %193, %192 ]
  %198 = call ptr @devm_ioremap_resource(ptr noundef %8, ptr noundef nonnull %197) #12
  %199 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 2
  store ptr %198, ptr %199, align 4
  %200 = icmp ugt ptr %198, inttoptr (i32 -4096 to ptr)
  br i1 %200, label %201, label %203

201:                                              ; preds = %196
  %202 = ptrtoint ptr %198 to i32
  br label %609

203:                                              ; preds = %196
  %204 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %179, ptr %204, align 8
  call void @pm_runtime_enable(ptr noundef %8) #12
  %205 = call i32 @__pm_runtime_resume(ptr noundef %8, i32 noundef 4) #12
  %206 = icmp slt i32 %205, 0
  br i1 %206, label %207, label %208

207:                                              ; preds = %203
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.4) #14
  call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #12
  br label %609

208:                                              ; preds = %203
  %209 = load ptr, ptr %199, align 4
  %210 = getelementptr i8, ptr %209, i32 4
  %211 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %210) #12, !srcloc !10
  %212 = lshr i32 %211, 20
  %213 = and i32 %212, 3
  %214 = shl nuw nsw i32 1, %213
  %215 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 7
  store i32 %214, ptr %215, align 4
  %216 = and i32 %211, 7
  %217 = shl nuw nsw i32 2, %216
  %218 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 5
  store i32 %217, ptr %218, align 4
  %219 = lshr i32 %211, 3
  %220 = and i32 %219, 14
  %221 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 6
  store i32 %220, ptr %221, align 4
  %222 = lshr i32 %211, 12
  %223 = and i32 %222, 7
  %224 = shl nuw nsw i32 16, %223
  %225 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 8
  store i32 %224, ptr %225, align 4
  %226 = lshr i32 %211, 16
  %227 = and i32 %226, 7
  %228 = add nuw nsw i32 %227, 1
  %229 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 9
  store i32 %228, ptr %229, align 4
  %230 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 10
  %231 = lshr i32 %211, 24
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  store i8 %233, ptr %230, align 4
  %234 = getelementptr inbounds %struct.edma_soc_info, ptr %171, i32 0, i32 3
  %235 = load ptr, ptr %234, align 4
  %236 = icmp eq ptr %235, null
  br i1 %236, label %237, label %256

237:                                              ; preds = %208
  %238 = add nuw nsw i32 %227, 2
  %239 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %238, i32 noundef 3520) #12
  %240 = icmp eq ptr %239, null
  br i1 %240, label %606, label %241

241:                                              ; preds = %237
  %242 = load i32, ptr %229, align 4
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %251, label %244

244:                                              ; preds = %244, %241
  %245 = phi i32 [ %249, %244 ], [ 0, %241 ]
  %246 = trunc i32 %245 to i8
  %247 = getelementptr [2 x i8], ptr %239, i32 %245
  store i8 %246, ptr %247, align 1
  %248 = getelementptr [2 x i8], ptr %239, i32 %245, i32 1
  store i8 %246, ptr %248, align 1
  %249 = add nuw i32 %245, 1
  %250 = icmp eq i32 %249, %242
  br i1 %250, label %251, label %244

251:                                              ; preds = %244, %241
  %252 = getelementptr [2 x i8], ptr %239, i32 %242
  store i8 -1, ptr %252, align 1
  %253 = getelementptr [2 x i8], ptr %239, i32 %242, i32 1
  store i8 -1, ptr %253, align 1
  store ptr %239, ptr %234, align 4
  %254 = add i32 %242, -1
  store i32 %254, ptr %171, align 4
  %255 = load i32, ptr %218, align 4
  br label %256

256:                                              ; preds = %251, %208
  %257 = phi i32 [ %255, %251 ], [ %217, %208 ]
  %258 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %257, i32 300) #12
  %259 = extractvalue { i32, i1 } %258, 1
  br i1 %259, label %263, label %260, !prof !9

260:                                              ; preds = %256
  %261 = extractvalue { i32, i1 } %258, 0
  %262 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %261, i32 noundef 3520) #12
  br label %263

263:                                              ; preds = %260, %256
  %264 = phi ptr [ %262, %260 ], [ null, %256 ]
  %265 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 18
  store ptr %264, ptr %265, align 4
  %266 = load i32, ptr %225, align 4
  %267 = add i32 %266, 31
  %268 = lshr i32 %267, 3
  %269 = and i32 %268, 536870908
  %270 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %269, i32 noundef 3520) #12
  %271 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 14
  store ptr %270, ptr %271, align 4
  %272 = load i32, ptr %218, align 4
  %273 = add i32 %272, 31
  %274 = lshr i32 %273, 3
  %275 = and i32 %274, 536870908
  %276 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %275, i32 noundef 3520) #12
  %277 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 15
  store ptr %276, ptr %277, align 4
  %278 = load ptr, ptr %265, align 4
  %279 = icmp eq ptr %278, null
  br i1 %279, label %606, label %280

280:                                              ; preds = %263
  %281 = load ptr, ptr %271, align 4
  %282 = icmp eq ptr %281, null
  %283 = icmp eq ptr %276, null
  %284 = select i1 %282, i1 true, i1 %283
  br i1 %284, label %606, label %285

285:                                              ; preds = %280
  %286 = load i32, ptr %218, align 4
  %287 = add i32 %286, 31
  %288 = lshr i32 %287, 3
  %289 = and i32 %288, 536870908
  call void @llvm.memset.p0.i32(ptr nonnull align 4 %276, i8 -1, i32 %289, i1 false) #12
  %290 = load i32, ptr %171, align 4
  %291 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 11
  store i32 %290, ptr %291, align 4
  %292 = getelementptr inbounds %struct.edma_soc_info, ptr %171, i32 0, i32 1
  %293 = load ptr, ptr %292, align 4
  %294 = icmp eq ptr %293, null
  br i1 %294, label %337, label %295

295:                                              ; preds = %285
  %296 = getelementptr inbounds %struct.edma_rsv_info, ptr %293, i32 0, i32 1
  %297 = load ptr, ptr %296, align 4
  %298 = icmp eq ptr %297, null
  br i1 %298, label %318, label %299

299:                                              ; preds = %295
  %300 = load i16, ptr %297, align 2
  %301 = icmp eq i16 %300, -1
  br i1 %301, label %318, label %302

302:                                              ; preds = %314, %299
  %303 = phi ptr [ %315, %314 ], [ %281, %299 ]
  %304 = phi i16 [ %312, %314 ], [ %300, %299 ]
  %305 = phi i32 [ %310, %314 ], [ 0, %299 ]
  %306 = sext i16 %304 to i32
  %307 = getelementptr [2 x i16], ptr %297, i32 %305, i32 1
  %308 = load i16, ptr %307, align 2
  %309 = sext i16 %308 to i32
  call void @__bitmap_set(ptr noundef %303, i32 noundef %306, i32 noundef %309) #12
  %310 = add i32 %305, 1
  %311 = getelementptr [2 x i16], ptr %297, i32 %310
  %312 = load i16, ptr %311, align 2
  %313 = icmp eq i16 %312, -1
  br i1 %313, label %316, label %314

314:                                              ; preds = %302
  %315 = load ptr, ptr %271, align 4
  br label %302

316:                                              ; preds = %302
  %317 = load ptr, ptr %292, align 4
  br label %318

318:                                              ; preds = %316, %299, %295
  %319 = phi ptr [ %317, %316 ], [ %293, %299 ], [ %293, %295 ]
  %320 = load ptr, ptr %319, align 4
  %321 = icmp eq ptr %320, null
  br i1 %321, label %337, label %322

322:                                              ; preds = %318
  %323 = load i16, ptr %320, align 2
  %324 = icmp eq i16 %323, -1
  br i1 %324, label %337, label %325

325:                                              ; preds = %325, %322
  %326 = phi i16 [ %335, %325 ], [ %323, %322 ]
  %327 = phi i32 [ %333, %325 ], [ 0, %322 ]
  %328 = sext i16 %326 to i32
  %329 = load ptr, ptr %277, align 4
  %330 = getelementptr [2 x i16], ptr %320, i32 %327, i32 1
  %331 = load i16, ptr %330, align 2
  %332 = sext i16 %331 to i32
  call void @__bitmap_clear(ptr noundef %329, i32 noundef %328, i32 noundef %332) #12
  %333 = add i32 %327, 1
  %334 = getelementptr [2 x i16], ptr %320, i32 %333
  %335 = load i16, ptr %334, align 2
  %336 = icmp eq i16 %335, -1
  br i1 %336, label %337, label %325

337:                                              ; preds = %325, %322, %318, %285
  %338 = load i32, ptr %225, align 4
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %364, label %340

340:                                              ; preds = %360, %337
  %341 = phi i32 [ %361, %360 ], [ %338, %337 ]
  %342 = phi i32 [ %362, %360 ], [ 0, %337 ]
  %343 = load ptr, ptr %271, align 4
  %344 = lshr i32 %342, 5
  %345 = getelementptr i32, ptr %343, i32 %344
  %346 = load volatile i32, ptr %345, align 4
  %347 = and i32 %342, 31
  %348 = shl nuw i32 1, %347
  %349 = and i32 %346, %348
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %360

351:                                              ; preds = %340
  %352 = and i32 %342, 65535
  %353 = icmp ult i32 %352, %341
  br i1 %353, label %354, label %360

354:                                              ; preds = %351
  %355 = load ptr, ptr %199, align 4
  %356 = shl nuw nsw i32 %352, 5
  %357 = add nuw nsw i32 %356, 16384
  %358 = getelementptr i8, ptr %355, i32 %357
  call void @mmiocpy(ptr noundef %358, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #12
  %359 = load i32, ptr %225, align 4
  br label %360

360:                                              ; preds = %354, %351, %340
  %361 = phi i32 [ %359, %354 ], [ %341, %351 ], [ %341, %340 ]
  %362 = add nuw i32 %342, 1
  %363 = icmp ult i32 %362, %361
  br i1 %363, label %340, label %364

364:                                              ; preds = %360, %337
  %365 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.5) #12
  %366 = icmp slt i32 %365, 0
  %367 = select i1 %366, i1 %13, i1 false
  br i1 %367, label %368, label %370

368:                                              ; preds = %364
  %369 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %12, i32 noundef 0) #12
  br label %370

370:                                              ; preds = %368, %364
  %371 = phi i32 [ %369, %368 ], [ %365, %364 ]
  %372 = icmp sgt i32 %371, -1
  br i1 %372, label %373, label %387

373:                                              ; preds = %370
  %374 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %375 = load ptr, ptr %374, align 4
  %376 = icmp eq ptr %375, null
  br i1 %376, label %377, label %379

377:                                              ; preds = %373
  %378 = load ptr, ptr %8, align 4
  br label %379

379:                                              ; preds = %377, %373
  %380 = phi ptr [ %378, %377 ], [ %375, %373 ]
  %381 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %8, i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %380) #12
  %382 = call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %371, ptr noundef nonnull @dma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %381, ptr noundef %179) #12
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %385, label %384

384:                                              ; preds = %379
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.7, i32 noundef %371, i32 noundef %382) #14
  br label %606

385:                                              ; preds = %379
  %386 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 12
  store i32 %371, ptr %386, align 4
  br label %387

387:                                              ; preds = %385, %370
  %388 = call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.8) #12
  %389 = icmp slt i32 %388, 0
  %390 = select i1 %389, i1 %13, i1 false
  br i1 %390, label %391, label %393

391:                                              ; preds = %387
  %392 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %12, i32 noundef 2) #12
  br label %393

393:                                              ; preds = %391, %387
  %394 = phi i32 [ %392, %391 ], [ %388, %387 ]
  %395 = icmp sgt i32 %394, -1
  br i1 %395, label %396, label %410

396:                                              ; preds = %393
  %397 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 3
  %398 = load ptr, ptr %397, align 4
  %399 = icmp eq ptr %398, null
  br i1 %399, label %400, label %402

400:                                              ; preds = %396
  %401 = load ptr, ptr %8, align 4
  br label %402

402:                                              ; preds = %400, %396
  %403 = phi ptr [ %401, %400 ], [ %398, %396 ]
  %404 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %8, i32 noundef 3264, ptr noundef nonnull @.str.9, ptr noundef %403) #12
  %405 = call i32 @devm_request_threaded_irq(ptr noundef %8, i32 noundef %394, ptr noundef nonnull @dma_ccerr_handler, ptr noundef null, i32 noundef 0, ptr noundef %404, ptr noundef %179) #12
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %408, label %407

407:                                              ; preds = %402
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10, i32 noundef %394, i32 noundef %405) #14
  br label %606

408:                                              ; preds = %402
  %409 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 13
  store i32 %394, ptr %409, align 4
  br label %410

410:                                              ; preds = %408, %393
  %411 = call fastcc i32 @edma_alloc_slot(ptr noundef nonnull %179, i32 noundef -1)
  %412 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 20
  store i32 %411, ptr %412, align 4
  %413 = icmp slt i32 %411, 0
  br i1 %413, label %414, label %416

414:                                              ; preds = %410
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.11) #14
  %415 = load i32, ptr %412, align 4
  br label %606

416:                                              ; preds = %410
  %417 = load ptr, ptr %234, align 4
  %418 = load i8, ptr %185, align 4, !range !14
  %419 = icmp eq i8 %418, 0
  br i1 %419, label %420, label %474

420:                                              ; preds = %416
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %7) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(72) %7, i8 0, i32 72, i1 false), !annotation !8
  %421 = load i32, ptr %229, align 4
  %422 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %421, i32 8) #12
  %423 = extractvalue { i32, i1 } %422, 1
  br i1 %423, label %424, label %426, !prof !9

424:                                              ; preds = %420
  %425 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 19
  store ptr null, ptr %425, align 4
  br label %473

426:                                              ; preds = %420
  %427 = extractvalue { i32, i1 } %422, 0
  %428 = call noalias ptr @devm_kmalloc(ptr noundef %8, i32 noundef %427, i32 noundef 3520) #12
  %429 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 19
  store ptr %428, ptr %429, align 4
  %430 = icmp eq ptr %428, null
  br i1 %430, label %473, label %431

431:                                              ; preds = %426
  %432 = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %7) #12
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %434, label %460

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.of_phandle_args, ptr %7, i32 0, i32 2
  br label %436

436:                                              ; preds = %455, %434
  %437 = phi i32 [ 0, %434 ], [ %456, %455 ]
  %438 = phi i32 [ 0, %434 ], [ %457, %455 ]
  %439 = load i32, ptr %229, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %460, label %441

441:                                              ; preds = %436
  %442 = load ptr, ptr %7, align 4
  %443 = load ptr, ptr %429, align 4
  %444 = getelementptr %struct.edma_tc, ptr %443, i32 %438
  store ptr %442, ptr %444, align 4
  %445 = trunc i32 %438 to i16
  %446 = load ptr, ptr %429, align 4
  %447 = getelementptr %struct.edma_tc, ptr %446, i32 %438, i32 1
  store i16 %445, ptr %447, align 4
  %448 = load i32, ptr %435, align 4
  %449 = trunc i32 %448 to i8
  %450 = getelementptr [2 x i8], ptr %417, i32 %438, i32 1
  store i8 %449, ptr %450, align 1
  %451 = shl i32 %448, 24
  %452 = ashr exact i32 %451, 24
  %453 = icmp sgt i32 %452, %437
  br i1 %453, label %454, label %455

454:                                              ; preds = %441
  store i32 %438, ptr %171, align 4
  br label %455

455:                                              ; preds = %454, %441
  %456 = phi i32 [ %452, %454 ], [ %437, %441 ]
  %457 = add i32 %438, 1
  %458 = call i32 @__of_parse_phandle_with_args(ptr noundef %12, ptr noundef nonnull @.str.12, ptr noundef null, i32 noundef 1, i32 noundef %457, ptr noundef nonnull %7) #12
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %436, label %460

460:                                              ; preds = %455, %436, %431
  %461 = load i32, ptr %218, align 4
  %462 = add i32 %461, 31
  %463 = lshr i32 %462, 5
  %464 = load ptr, ptr %277, align 4
  %465 = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.13, ptr noundef %464, i32 noundef 1, i32 noundef %463) #12
  %466 = icmp slt i32 %465, 1
  %467 = icmp eq i32 %465, %463
  %468 = or i1 %466, %467
  br i1 %468, label %469, label %470

469:                                              ; preds = %460
  switch i32 %465, label %472 [
    i32 -61, label %470
    i32 -75, label %470
  ]

470:                                              ; preds = %469, %469, %460
  %471 = phi ptr [ @.str.14, %460 ], [ @.str.15, %469 ], [ @.str.15, %469 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull %471) #14
  br label %472

472:                                              ; preds = %470, %469
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #12
  br label %474

473:                                              ; preds = %426, %424
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %7) #12
  br label %603

474:                                              ; preds = %472, %416
  %475 = load i8, ptr %417, align 1
  %476 = icmp eq i8 %475, -1
  br i1 %476, label %500, label %477

477:                                              ; preds = %477, %474
  %478 = phi i8 [ %498, %477 ], [ %475, %474 ]
  %479 = phi i32 [ %496, %477 ], [ 0, %474 ]
  %480 = sext i8 %478 to i32
  %481 = getelementptr [2 x i8], ptr %417, i32 %479, i32 1
  %482 = load i8, ptr %481, align 1
  %483 = shl nsw i32 %480, 2
  %484 = shl i32 7, %483
  %485 = xor i32 %484, -1
  %486 = and i8 %482, 7
  %487 = zext i8 %486 to i32
  %488 = shl i32 %487, %483
  %489 = load ptr, ptr %199, align 4
  %490 = getelementptr i8, ptr %489, i32 644
  %491 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %490) #12, !srcloc !10
  %492 = and i32 %491, %485
  %493 = or i32 %492, %488
  %494 = load ptr, ptr %199, align 4
  %495 = getelementptr i8, ptr %494, i32 644
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %495, i32 %493) #12, !srcloc !13
  %496 = add i32 %479, 1
  %497 = getelementptr [2 x i8], ptr %417, i32 %496
  %498 = load i8, ptr %497, align 1
  %499 = icmp eq i8 %498, -1
  br i1 %499, label %500, label %477

500:                                              ; preds = %477, %474
  %501 = load ptr, ptr %199, align 4
  %502 = getelementptr i8, ptr %501, i32 832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %502, i32 0) #12, !srcloc !13
  %503 = load ptr, ptr %199, align 4
  %504 = getelementptr i8, ptr %503, i32 836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %504, i32 0) #12, !srcloc !13
  %505 = load ptr, ptr %199, align 4
  %506 = getelementptr i8, ptr %505, i32 896
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %506, i32 0) #12, !srcloc !13
  %507 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 1
  store ptr %171, ptr %507, align 4
  call fastcc void @edma_dma_init(ptr noundef nonnull %179)
  %508 = load i32, ptr %218, align 4
  %509 = icmp eq i32 %508, 0
  br i1 %509, label %579, label %510

510:                                              ; preds = %575, %500
  %511 = phi i32 [ %576, %575 ], [ 0, %500 ]
  %512 = load ptr, ptr %277, align 4
  %513 = lshr i32 %511, 5
  %514 = getelementptr i32, ptr %512, i32 %513
  %515 = load volatile i32, ptr %514, align 4
  %516 = and i32 %511, 31
  %517 = shl nuw i32 1, %516
  %518 = and i32 %515, %517
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %575, label %520

520:                                              ; preds = %510
  %521 = load ptr, ptr %265, align 4
  %522 = load i32, ptr %171, align 4
  %523 = getelementptr %struct.edma_chan, ptr %521, i32 %511, i32 3
  %524 = load ptr, ptr %523, align 4
  %525 = getelementptr %struct.edma_chan, ptr %521, i32 %511, i32 5
  %526 = load i32, ptr %525, align 4
  %527 = shl i32 %526, 2
  %528 = and i32 %527, 28
  %529 = icmp eq i32 %522, -1
  br i1 %529, label %530, label %533

530:                                              ; preds = %520
  %531 = getelementptr inbounds %struct.edma_cc, ptr %524, i32 0, i32 11
  %532 = load i32, ptr %531, align 4
  br label %533

533:                                              ; preds = %530, %520
  %534 = phi i32 [ %532, %530 ], [ %522, %520 ]
  %535 = getelementptr inbounds %struct.edma_cc, ptr %524, i32 0, i32 9
  %536 = load i32, ptr %535, align 4
  %537 = icmp ult i32 %534, %536
  br i1 %537, label %538, label %557

538:                                              ; preds = %533
  %539 = and i32 %534, 7
  %540 = shl nuw nsw i32 7, %528
  %541 = xor i32 %540, -1
  %542 = shl nuw nsw i32 %539, %528
  %543 = lshr i32 %526, 1
  %544 = and i32 %543, 32764
  %545 = add nuw nsw i32 %544, 576
  %546 = getelementptr inbounds %struct.edma_cc, ptr %524, i32 0, i32 2
  %547 = load ptr, ptr %546, align 4
  %548 = getelementptr i8, ptr %547, i32 %545
  %549 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %548) #12, !srcloc !10
  %550 = and i32 %549, %541
  %551 = or i32 %550, %542
  %552 = load ptr, ptr %546, align 4
  %553 = getelementptr i8, ptr %552, i32 %545
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %553, i32 %551) #12, !srcloc !13
  %554 = load ptr, ptr %265, align 4
  %555 = getelementptr %struct.edma_chan, ptr %554, i32 %511, i32 3
  %556 = load ptr, ptr %555, align 4
  br label %557

557:                                              ; preds = %538, %533
  %558 = phi ptr [ %524, %533 ], [ %556, %538 ]
  %559 = phi ptr [ %521, %533 ], [ %554, %538 ]
  %560 = getelementptr inbounds %struct.edma_cc, ptr %558, i32 0, i32 10
  %561 = load i8, ptr %560, align 4, !range !14
  %562 = icmp eq i8 %561, 0
  br i1 %562, label %575, label %563

563:                                              ; preds = %557
  %564 = load i32, ptr %412, align 4
  %565 = getelementptr %struct.edma_chan, ptr %559, i32 %511, i32 5
  %566 = load i32, ptr %565, align 4
  %567 = shl i32 %564, 5
  %568 = and i32 %567, 2097120
  %569 = shl i32 %566, 2
  %570 = and i32 %569, 262140
  %571 = add nuw nsw i32 %570, 256
  %572 = getelementptr inbounds %struct.edma_cc, ptr %558, i32 0, i32 2
  %573 = load ptr, ptr %572, align 4
  %574 = getelementptr i8, ptr %573, i32 %571
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %574, i32 %568) #12, !srcloc !13
  br label %575

575:                                              ; preds = %563, %557, %510
  %576 = add nuw i32 %511, 1
  %577 = load i32, ptr %218, align 4
  %578 = icmp ult i32 %576, %577
  br i1 %578, label %510, label %579

579:                                              ; preds = %575, %500
  %580 = getelementptr inbounds %struct.edma_soc_info, ptr %171, i32 0, i32 5
  %581 = load ptr, ptr %580, align 4
  %582 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 16
  %583 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 16, i32 5
  %584 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 16, i32 5, i32 2
  store ptr %581, ptr %584, align 4
  %585 = getelementptr inbounds %struct.edma_soc_info, ptr %171, i32 0, i32 6
  %586 = load i32, ptr %585, align 4
  %587 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 16, i32 5, i32 1
  store i32 %586, ptr %587, align 4
  store ptr @edma_filter_fn, ptr %583, align 4
  %588 = call i32 @dma_async_device_register(ptr noundef %582) #12
  %589 = icmp eq i32 %588, 0
  br i1 %589, label %591, label %590

590:                                              ; preds = %579
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.16, i32 noundef %588) #14
  br label %603

591:                                              ; preds = %579
  %592 = getelementptr inbounds %struct.edma_cc, ptr %179, i32 0, i32 17
  %593 = load ptr, ptr %592, align 4
  %594 = icmp eq ptr %593, null
  br i1 %594, label %599, label %595

595:                                              ; preds = %591
  %596 = call i32 @dma_async_device_register(ptr noundef nonnull %593) #12
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %599, label %598

598:                                              ; preds = %595
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.17, i32 noundef %596) #14
  call void @dma_async_device_unregister(ptr noundef %582) #12
  br label %603

599:                                              ; preds = %595, %591
  br i1 %13, label %600, label %602

600:                                              ; preds = %599
  %601 = call i32 @of_dma_controller_register(ptr noundef nonnull %12, ptr noundef nonnull @of_edma_xlate, ptr noundef nonnull %179) #12
  br label %602

602:                                              ; preds = %600, %599
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %8, ptr noundef nonnull @.str.18) #14
  br label %609

603:                                              ; preds = %598, %590, %473
  %604 = phi i32 [ %588, %590 ], [ %596, %598 ], [ -12, %473 ]
  %605 = load i32, ptr %412, align 4
  call fastcc void @edma_free_slot(ptr noundef nonnull %179, i32 noundef %605)
  br label %606

606:                                              ; preds = %603, %414, %407, %384, %280, %263, %237
  %607 = phi i32 [ %382, %384 ], [ %405, %407 ], [ %415, %414 ], [ %604, %603 ], [ -12, %280 ], [ -12, %263 ], [ -12, %237 ]
  %608 = call i32 @__pm_runtime_idle(ptr noundef %8, i32 noundef 4) #12
  call void @__pm_runtime_disable(ptr noundef %8, i1 noundef zeroext true) #12
  br label %609

609:                                              ; preds = %606, %602, %207, %201, %195, %177, %174, %170, %167
  %610 = phi i32 [ %202, %201 ], [ %205, %207 ], [ %607, %606 ], [ 0, %602 ], [ -19, %195 ], [ -19, %170 ], [ -12, %177 ], [ %169, %167 ], [ %175, %174 ]
  ret i32 %610
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_remove(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 12
  %6 = load i32, ptr %5, align 4
  tail call void @devm_free_irq(ptr noundef %2, i32 noundef %6, ptr noundef %4) #12
  %7 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 13
  %8 = load i32, ptr %7, align 4
  tail call void @devm_free_irq(ptr noundef %2, i32 noundef %8, ptr noundef %4) #12
  %9 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 16
  %10 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 16, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, %10
  br i1 %12, label %21, label %13

13:                                               ; preds = %13, %1
  %14 = phi ptr [ %15, %13 ], [ %11, %1 ]
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %15, ptr %17, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %16, align 4
  %19 = getelementptr i8, ptr %14, i32 32
  tail call void @tasklet_kill(ptr noundef %19) #12
  %20 = icmp eq ptr %15, %10
  br i1 %20, label %21, label %13

21:                                               ; preds = %13, %1
  %22 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %23 = load ptr, ptr %22, align 8
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @of_dma_controller_free(ptr noundef nonnull %23) #12
  br label %26

26:                                               ; preds = %25, %21
  tail call void @dma_async_device_unregister(ptr noundef %9) #12
  %27 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 17
  %28 = load ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @dma_async_device_unregister(ptr noundef nonnull %28) #12
  br label %31

31:                                               ; preds = %30, %26
  %32 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 20
  %33 = load i32, ptr %32, align 4
  %34 = and i32 %33, 65535
  %35 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 8
  %36 = load i32, ptr %35, align 4
  %37 = icmp ult i32 %34, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 2
  %40 = load ptr, ptr %39, align 4
  %41 = shl nuw nsw i32 %34, 5
  %42 = add nuw nsw i32 %41, 16384
  %43 = getelementptr i8, ptr %40, i32 %42
  tail call void @mmiocpy(ptr noundef %43, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #12
  %44 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 14
  %45 = load ptr, ptr %44, align 4
  tail call void @_clear_bit(i32 noundef %34, ptr noundef %45) #12
  br label %46

46:                                               ; preds = %38, %31
  %47 = tail call i32 @__pm_runtime_idle(ptr noundef %2, i32 noundef 4) #12
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #12
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_irq_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 3
  %4 = load i32, ptr %3, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %146, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 8296
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !10
  %11 = icmp eq i32 %10, 0
  %12 = load ptr, ptr %7, align 4
  br i1 %11, label %13, label %21

13:                                               ; preds = %6
  %14 = getelementptr i8, ptr %12, i32 8300
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !10
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %146, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %7, align 4
  %19 = getelementptr i8, ptr %18, i32 8276
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #12, !srcloc !10
  br label %24

21:                                               ; preds = %6
  %22 = getelementptr i8, ptr %12, i32 8272
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %22) #12, !srcloc !10
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i32 [ %23, %21 ], [ %20, %17 ]
  %26 = phi i32 [ %10, %21 ], [ %15, %17 ]
  %27 = phi i32 [ 0, %21 ], [ 1, %17 ]
  %28 = shl nuw nsw i32 %27, 5
  %29 = shl nuw nsw i32 %27, 2
  %30 = or i32 %29, 8304
  %31 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 18
  br label %32

32:                                               ; preds = %141, %24
  %33 = phi i32 [ %26, %24 ], [ %37, %141 ]
  %34 = tail call i32 @llvm.cttz.i32(i32 %33, i1 false) #12, !range !15
  %35 = shl nuw i32 1, %34
  %36 = xor i32 %35, -1
  %37 = and i32 %33, %36
  %38 = and i32 %35, %25
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %141, label %40

40:                                               ; preds = %32
  %41 = or i32 %34, %28
  %42 = load ptr, ptr %7, align 4
  %43 = getelementptr i8, ptr %42, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %35) #12, !srcloc !13
  %44 = load ptr, ptr %31, align 4
  %45 = getelementptr %struct.edma_chan, ptr %44, i32 %41
  %46 = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %46) #12
  %47 = getelementptr %struct.edma_chan, ptr %44, i32 %41, i32 2
  %48 = load ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, null
  br i1 %49, label %138, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.edma_desc, ptr %48, i32 0, i32 3
  %52 = load i32, ptr %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %66, label %54

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %48, i32 0, i32 3
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.virt_dma_chan, ptr %56, i32 0, i32 9
  store ptr %48, ptr %57, align 4
  %58 = getelementptr inbounds %struct.virt_dma_chan, ptr %56, i32 0, i32 1, i32 1
  %59 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %58) #12
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = getelementptr inbounds %struct.virt_dma_chan, ptr %56, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %62) #12
  br label %63

63:                                               ; preds = %61, %54
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %64 = load i16, ptr %46, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  br label %141

66:                                               ; preds = %50
  %67 = getelementptr inbounds %struct.edma_desc, ptr %48, i32 0, i32 8
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.edma_desc, ptr %48, i32 0, i32 6
  %70 = load i32, ptr %69, align 4
  %71 = icmp eq i32 %68, %70
  br i1 %71, label %72, label %116

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct.edma_desc, ptr %48, i32 0, i32 11
  store i32 0, ptr %73, align 4
  %74 = getelementptr %struct.edma_chan, ptr %44, i32 %41, i32 3
  %75 = load ptr, ptr %74, align 4
  %76 = getelementptr %struct.edma_chan, ptr %44, i32 %41, i32 5
  %77 = load i32, ptr %76, align 4
  %78 = and i32 %77, 31
  %79 = shl nuw i32 1, %78
  %80 = lshr i32 %77, 3
  %81 = and i32 %80, 8188
  %82 = add nuw nsw i32 %81, 8232
  %83 = getelementptr inbounds %struct.edma_cc, ptr %75, i32 0, i32 2
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr i8, ptr %84, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %85, i32 %79) #12, !srcloc !13
  %86 = add nuw nsw i32 %81, 8200
  %87 = load ptr, ptr %83, align 4
  %88 = getelementptr i8, ptr %87, i32 %86
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 %79) #12, !srcloc !13
  %89 = add nuw nsw i32 %81, 8256
  %90 = load ptr, ptr %83, align 4
  %91 = getelementptr i8, ptr %90, i32 %89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %91, i32 %79) #12, !srcloc !13
  %92 = add nuw nsw i32 %81, 776
  %93 = load ptr, ptr %83, align 4
  %94 = getelementptr i8, ptr %93, i32 %92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %94, i32 %79) #12, !srcloc !13
  %95 = add nuw nsw i32 %81, 8304
  %96 = load ptr, ptr %83, align 4
  %97 = getelementptr i8, ptr %96, i32 %95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %97, i32 %79) #12, !srcloc !13
  %98 = load i32, ptr %48, align 4
  %99 = icmp slt i32 %98, 1
  br i1 %99, label %100, label %101, !prof !9

100:                                              ; preds = %72
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #12, !srcloc !20
  unreachable

101:                                              ; preds = %72
  %102 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %48, i32 0, i32 3
  %103 = load ptr, ptr %102, align 4
  %104 = getelementptr inbounds %struct.dma_chan, ptr %103, i32 0, i32 3
  store i32 %98, ptr %104, align 4
  store i32 0, ptr %48, align 4
  %105 = getelementptr inbounds %struct.virt_dma_desc, ptr %48, i32 0, i32 2
  %106 = getelementptr inbounds %struct.virt_dma_chan, ptr %103, i32 0, i32 7
  %107 = getelementptr inbounds %struct.virt_dma_chan, ptr %103, i32 0, i32 7, i32 1
  %108 = load ptr, ptr %107, align 4
  store ptr %105, ptr %107, align 4
  store ptr %106, ptr %105, align 4
  %109 = getelementptr inbounds %struct.virt_dma_desc, ptr %48, i32 0, i32 2, i32 1
  store ptr %108, ptr %109, align 4
  store volatile ptr %105, ptr %108, align 4
  %110 = getelementptr inbounds %struct.virt_dma_chan, ptr %103, i32 0, i32 1, i32 1
  %111 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %110) #12
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %115

113:                                              ; preds = %101
  %114 = getelementptr inbounds %struct.virt_dma_chan, ptr %103, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %114) #12
  br label %115

115:                                              ; preds = %113, %101
  store ptr null, ptr %47, align 4
  br label %137

116:                                              ; preds = %66
  %117 = getelementptr %struct.edma_chan, ptr %44, i32 %41, i32 5
  %118 = load i32, ptr %117, align 4
  %119 = getelementptr %struct.edma_chan, ptr %44, i32 %41, i32 3
  %120 = load ptr, ptr %119, align 4
  %121 = and i32 %118, 31
  %122 = shl nuw i32 1, %121
  %123 = lshr i32 %118, 3
  %124 = and i32 %123, 8188
  %125 = add nuw nsw i32 %124, 8232
  %126 = getelementptr inbounds %struct.edma_cc, ptr %120, i32 0, i32 2
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr i8, ptr %127, i32 %125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %128, i32 %122) #12, !srcloc !13
  %129 = getelementptr inbounds %struct.edma_desc, ptr %48, i32 0, i32 10
  %130 = load i32, ptr %129, align 4
  %131 = getelementptr inbounds %struct.edma_desc, ptr %48, i32 0, i32 11
  %132 = load i32, ptr %131, align 4
  %133 = sub i32 %132, %130
  store i32 %133, ptr %131, align 4
  %134 = getelementptr inbounds %struct.edma_desc, ptr %48, i32 0, i32 12
  store i32 %133, ptr %134, align 4
  %135 = load i32, ptr %67, align 4
  %136 = getelementptr inbounds %struct.edma_desc, ptr %48, i32 0, i32 9
  store i32 %135, ptr %136, align 4
  br label %137

137:                                              ; preds = %116, %115
  tail call fastcc void @edma_execute(ptr noundef %45) #12
  br label %138

138:                                              ; preds = %137, %40
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %139 = load i16, ptr %46, align 4
  %140 = add i16 %139, 1
  store i16 %140, ptr %46, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  br label %141

141:                                              ; preds = %138, %63, %32
  %142 = icmp eq i32 %37, 0
  br i1 %142, label %143, label %32

143:                                              ; preds = %141
  %144 = load ptr, ptr %7, align 4
  %145 = getelementptr i8, ptr %144, i32 8312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 1) #12, !srcloc !13
  br label %146

146:                                              ; preds = %143, %13, %2
  %147 = phi i32 [ 1, %143 ], [ 0, %2 ], [ 0, %13 ]
  ret i32 %147
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @dma_ccerr_handler(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.edmacc_param, align 1
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 3
  %6 = load i32, ptr %5, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %228, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr i8, ptr %10, i32 768
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #12, !srcloc !10
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %8
  %15 = load ptr, ptr %9, align 4
  %16 = getelementptr i8, ptr %15, i32 772
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #12, !srcloc !10
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = load ptr, ptr %9, align 4
  %21 = getelementptr i8, ptr %20, i32 784
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #12, !srcloc !10
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load ptr, ptr %9, align 4
  %26 = getelementptr i8, ptr %25, i32 792
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %26) #12, !srcloc !10
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %24, %19, %14, %8
  %30 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 18
  %31 = getelementptr inbounds %struct.edmacc_param, ptr %3, i32 0, i32 2
  %32 = getelementptr inbounds %struct.edmacc_param, ptr %3, i32 0, i32 7
  br label %37

33:                                               ; preds = %24
  %34 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %34, ptr noundef nonnull @.str.24, ptr noundef nonnull @__func__.dma_ccerr_handler) #14
  %35 = load ptr, ptr %9, align 4
  %36 = getelementptr i8, ptr %35, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 1) #12, !srcloc !13
  br label %228

37:                                               ; preds = %219, %29
  %38 = phi i32 [ %222, %219 ], [ 0, %29 ]
  br label %39

39:                                               ; preds = %177, %37
  %40 = phi i32 [ 0, %37 ], [ %178, %177 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #12
  store i32 0, ptr %4, align 4, !annotation !8
  %41 = shl i32 %40, 2
  %42 = add nuw nsw i32 %41, 768
  %43 = load ptr, ptr %9, align 4
  %44 = getelementptr i8, ptr %43, i32 %42
  %45 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %44) #12, !srcloc !10
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %177, label %47

47:                                               ; preds = %39
  store i32 %45, ptr %4, align 4
  %48 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef 0) #12
  %49 = icmp slt i32 %48, 32
  br i1 %49, label %50, label %177

50:                                               ; preds = %47
  %51 = shl i32 %40, 5
  %52 = add nuw nsw i32 %41, 776
  %53 = add nuw nsw i32 %41, 8256
  br label %54

54:                                               ; preds = %173, %50
  %55 = phi i32 [ %48, %50 ], [ %175, %173 ]
  %56 = add i32 %55, %51
  %57 = shl nuw i32 1, %55
  %58 = load ptr, ptr %9, align 4
  %59 = getelementptr i8, ptr %58, i32 %52
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 %57) #12, !srcloc !13
  %60 = load ptr, ptr %9, align 4
  %61 = getelementptr i8, ptr %60, i32 %53
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %61, i32 %57) #12, !srcloc !13
  %62 = load ptr, ptr %30, align 4
  %63 = getelementptr %struct.edma_chan, ptr %62, i32 %56, i32 3
  %64 = load ptr, ptr %63, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false) #12, !annotation !8
  %65 = getelementptr %struct.edma_chan, ptr %62, i32 %56, i32 2
  %66 = load ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, null
  br i1 %67, label %173, label %68

68:                                               ; preds = %54
  %69 = getelementptr %struct.edma_chan, ptr %62, i32 %56, i32 0, i32 3
  call void @_raw_spin_lock(ptr noundef %69) #12
  %70 = getelementptr %struct.edma_chan, ptr %62, i32 %56, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = and i32 %71, 65535
  %73 = getelementptr inbounds %struct.edma_cc, ptr %64, i32 0, i32 8
  %74 = load i32, ptr %73, align 4
  %75 = icmp ult i32 %72, %74
  br i1 %75, label %76, label %87

76:                                               ; preds = %68
  %77 = getelementptr inbounds %struct.edma_cc, ptr %64, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = shl nuw nsw i32 %72, 5
  %80 = add nuw nsw i32 %79, 16384
  %81 = getelementptr i8, ptr %78, i32 %80
  call void @mmiocpy(ptr noundef nonnull %3, ptr noundef %81, i32 noundef 32) #12
  %82 = load i32, ptr %31, align 1
  %83 = icmp eq i32 %82, 0
  %84 = load i32, ptr %32, align 1
  %85 = icmp eq i32 %84, 0
  %86 = select i1 %83, i1 %85, i1 false
  br i1 %86, label %87, label %89

87:                                               ; preds = %76, %68
  %88 = getelementptr %struct.edma_chan, ptr %62, i32 %56, i32 9
  store i32 1, ptr %88, align 4
  br label %170

89:                                               ; preds = %76
  %90 = load ptr, ptr %63, align 4
  %91 = getelementptr %struct.edma_chan, ptr %62, i32 %56, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = and i32 %92, 31
  %94 = shl nuw i32 1, %93
  %95 = lshr i32 %92, 3
  %96 = and i32 %95, 8188
  %97 = add nuw nsw i32 %96, 8200
  %98 = getelementptr inbounds %struct.edma_cc, ptr %90, i32 0, i32 2
  %99 = load ptr, ptr %98, align 4
  %100 = getelementptr i8, ptr %99, i32 %97
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %100, i32 %94) #12, !srcloc !13
  %101 = add nuw nsw i32 %96, 776
  %102 = load ptr, ptr %98, align 4
  %103 = getelementptr i8, ptr %102, i32 %101
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %94) #12, !srcloc !13
  %104 = add nuw nsw i32 %96, 8256
  %105 = load ptr, ptr %98, align 4
  %106 = getelementptr i8, ptr %105, i32 %104
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %106, i32 %94) #12, !srcloc !13
  %107 = load ptr, ptr %98, align 4
  %108 = getelementptr i8, ptr %107, i32 796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %108, i32 65539) #12, !srcloc !13
  %109 = load ptr, ptr %63, align 4
  %110 = load i32, ptr %91, align 4
  %111 = and i32 %110, 31
  %112 = shl nuw i32 1, %111
  %113 = lshr i32 %110, 3
  %114 = and i32 %113, 8188
  %115 = add nuw nsw i32 %114, 8232
  %116 = getelementptr inbounds %struct.edma_cc, ptr %109, i32 0, i32 2
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr i8, ptr %117, i32 %115
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %118, i32 %112) #12, !srcloc !13
  %119 = add nuw nsw i32 %114, 8200
  %120 = load ptr, ptr %116, align 4
  %121 = getelementptr i8, ptr %120, i32 %119
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %121, i32 %112) #12, !srcloc !13
  %122 = add nuw nsw i32 %114, 8256
  %123 = load ptr, ptr %116, align 4
  %124 = getelementptr i8, ptr %123, i32 %122
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %112) #12, !srcloc !13
  %125 = add nuw nsw i32 %114, 776
  %126 = load ptr, ptr %116, align 4
  %127 = getelementptr i8, ptr %126, i32 %125
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %127, i32 %112) #12, !srcloc !13
  %128 = add nuw nsw i32 %114, 8304
  %129 = load ptr, ptr %116, align 4
  %130 = getelementptr i8, ptr %129, i32 %128
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %112) #12, !srcloc !13
  %131 = load ptr, ptr %63, align 4
  %132 = load i32, ptr %91, align 4
  %133 = and i32 %132, 31
  %134 = shl nuw i32 1, %133
  %135 = getelementptr %struct.edma_chan, ptr %62, i32 %56, i32 7
  %136 = load i8, ptr %135, align 1, !range !14
  %137 = icmp eq i8 %136, 0
  %138 = lshr i32 %132, 3
  %139 = and i32 %138, 8188
  br i1 %137, label %140, label %145

140:                                              ; preds = %89
  %141 = add nuw nsw i32 %139, 8208
  %142 = getelementptr inbounds %struct.edma_cc, ptr %131, i32 0, i32 2
  %143 = load ptr, ptr %142, align 4
  %144 = getelementptr i8, ptr %143, i32 %141
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %144, i32 %134) #12, !srcloc !13
  br label %159

145:                                              ; preds = %89
  %146 = add nuw nsw i32 %139, 4104
  %147 = getelementptr inbounds %struct.edma_cc, ptr %131, i32 0, i32 2
  %148 = load ptr, ptr %147, align 4
  %149 = getelementptr i8, ptr %148, i32 %146
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %149, i32 %134) #12, !srcloc !13
  %150 = add nuw nsw i32 %139, 776
  %151 = load ptr, ptr %147, align 4
  %152 = getelementptr i8, ptr %151, i32 %150
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %134) #12, !srcloc !13
  %153 = add nuw nsw i32 %139, 8256
  %154 = load ptr, ptr %147, align 4
  %155 = getelementptr i8, ptr %154, i32 %153
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %134) #12, !srcloc !13
  %156 = add nuw nsw i32 %139, 8240
  %157 = load ptr, ptr %147, align 4
  %158 = getelementptr i8, ptr %157, i32 %156
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %158, i32 %134) #12, !srcloc !13
  br label %159

159:                                              ; preds = %145, %140
  %160 = load ptr, ptr %63, align 4
  %161 = load i32, ptr %91, align 4
  %162 = and i32 %161, 31
  %163 = shl nuw i32 1, %162
  %164 = lshr i32 %161, 3
  %165 = and i32 %164, 8188
  %166 = add nuw nsw i32 %165, 8208
  %167 = getelementptr inbounds %struct.edma_cc, ptr %160, i32 0, i32 2
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr i8, ptr %168, i32 %166
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %169, i32 %163) #12, !srcloc !13
  br label %170

170:                                              ; preds = %159, %87
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !16
  %171 = load i16, ptr %69, align 4
  %172 = add i16 %171, 1
  store i16 %172, ptr %69, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !17
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !18
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !19
  br label %173

173:                                              ; preds = %170, %54
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #12
  %174 = add nsw i32 %55, 1
  %175 = call i32 @_find_next_bit_le(ptr noundef nonnull %4, i32 noundef 32, i32 noundef %174) #12
  %176 = icmp slt i32 %175, 32
  br i1 %176, label %54, label %177

177:                                              ; preds = %173, %47, %39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #12
  %178 = add nuw nsw i32 %40, 1
  %179 = icmp eq i32 %178, 2
  br i1 %179, label %180, label %39

180:                                              ; preds = %177
  %181 = load ptr, ptr %9, align 4
  %182 = getelementptr i8, ptr %181, i32 784
  %183 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %182) #12, !srcloc !10
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %190, label %185

185:                                              ; preds = %180
  %186 = load ptr, ptr %9, align 4
  %187 = getelementptr i8, ptr %186, i32 788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %187, i32 %183) #12, !srcloc !13
  %188 = load ptr, ptr %9, align 4
  %189 = getelementptr i8, ptr %188, i32 8340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %183) #12, !srcloc !13
  br label %190

190:                                              ; preds = %185, %180
  %191 = load ptr, ptr %9, align 4
  %192 = getelementptr i8, ptr %191, i32 792
  %193 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %192) #12, !srcloc !10
  %194 = icmp eq i32 %193, 0
  br i1 %194, label %199, label %195

195:                                              ; preds = %190
  %196 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %196, ptr noundef nonnull @.str.25, i32 noundef %193) #14
  %197 = load ptr, ptr %9, align 4
  %198 = getelementptr i8, ptr %197, i32 796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %198, i32 %193) #12, !srcloc !13
  br label %199

199:                                              ; preds = %195, %190
  %200 = load ptr, ptr %9, align 4
  %201 = getelementptr i8, ptr %200, i32 768
  %202 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %201) #12, !srcloc !10
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %199
  %205 = load ptr, ptr %9, align 4
  %206 = getelementptr i8, ptr %205, i32 772
  %207 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %206) #12, !srcloc !10
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %204
  %210 = load ptr, ptr %9, align 4
  %211 = getelementptr i8, ptr %210, i32 784
  %212 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %211) #12, !srcloc !10
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  %215 = load ptr, ptr %9, align 4
  %216 = getelementptr i8, ptr %215, i32 792
  %217 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %216) #12, !srcloc !10
  %218 = icmp ne i32 %217, 0
  br label %219

219:                                              ; preds = %214, %209, %204, %199
  %220 = phi i1 [ true, %209 ], [ true, %204 ], [ true, %199 ], [ %218, %214 ]
  %221 = xor i1 %220, true
  %222 = add nuw nsw i32 %38, 1
  %223 = icmp ugt i32 %38, 9
  %224 = select i1 %221, i1 true, i1 %223
  br i1 %224, label %225, label %37

225:                                              ; preds = %219
  %226 = load ptr, ptr %9, align 4
  %227 = getelementptr i8, ptr %226, i32 800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 1) #12, !srcloc !13
  br label %228

228:                                              ; preds = %225, %33, %2
  %229 = phi i32 [ 1, %225 ], [ 0, %33 ], [ 0, %2 ]
  ret i32 %229
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @edma_alloc_slot(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, -1
  br i1 %3, label %4, label %13

4:                                                ; preds = %2
  %5 = and i32 %1, 65535
  %6 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 10
  %7 = load i8, ptr %6, align 4, !range !14
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 5
  %11 = load i32, ptr %10, align 4
  %12 = icmp ult i32 %5, %11
  br i1 %12, label %20, label %35

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 10
  %15 = load i8, ptr %14, align 4, !range !14
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 5
  %19 = load i32, ptr %18, align 4
  br label %20

20:                                               ; preds = %17, %13, %9
  %21 = phi i32 [ %19, %17 ], [ 0, %13 ], [ 0, %9 ]
  %22 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 14
  %23 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 8
  br label %24

24:                                               ; preds = %31, %20
  %25 = phi i32 [ %21, %20 ], [ %28, %31 ]
  %26 = load ptr, ptr %22, align 4
  %27 = load i32, ptr %23, align 4
  %28 = tail call i32 @_find_next_zero_bit_le(ptr noundef %26, i32 noundef %27, i32 noundef %25) #12
  %29 = load i32, ptr %23, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %61, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %22, align 4
  %33 = tail call i32 @_test_and_set_bit(i32 noundef %28, ptr noundef %32) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %24

35:                                               ; preds = %9, %4
  %36 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 8
  %37 = load i32, ptr %36, align 4
  %38 = icmp ult i32 %5, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 14
  %41 = load ptr, ptr %40, align 4
  %42 = tail call i32 @_test_and_set_bit(i32 noundef %5, ptr noundef %41) #12
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %61

44:                                               ; preds = %39, %31
  %45 = phi i32 [ %5, %39 ], [ %28, %31 ]
  %46 = and i32 %45, 65535
  %47 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 8
  %48 = load i32, ptr %47, align 4
  %49 = icmp ult i32 %46, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = shl nuw nsw i32 %46, 5
  %54 = add nuw nsw i32 %53, 16384
  %55 = getelementptr i8, ptr %52, i32 %54
  tail call void @mmiocpy(ptr noundef %55, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #12
  br label %56

56:                                               ; preds = %50, %44
  %57 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = shl i32 %58, 16
  %60 = or i32 %59, %45
  br label %61

61:                                               ; preds = %56, %39, %35, %24
  %62 = phi i32 [ %60, %56 ], [ -22, %35 ], [ -16, %39 ], [ -12, %24 ]
  ret i32 %62
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @edma_dma_init(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16
  %3 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.edma_soc_info, ptr %4, i32 0, i32 2
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 6
  store i32 0, ptr %7, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %7) #12
  tail call void @_set_bit(i32 noundef 12, ptr noundef %7) #12
  %8 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 4
  %9 = load i8, ptr %8, align 4, !range !14
  %10 = icmp eq i8 %9, 0
  %11 = icmp ne ptr %6, null
  %12 = select i1 %10, i1 true, i1 %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 21
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 6
  br label %21

17:                                               ; preds = %1
  %18 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.26) #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %7) #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %7) #12
  %19 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 30
  store ptr @edma_prep_dma_memcpy, ptr %19, align 4
  %20 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 41
  store ptr @edma_prep_dma_interleaved, ptr %20, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = phi i32 [ %16, %13 ], [ 7, %17 ]
  %23 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 39
  store ptr @edma_prep_slave_sg, ptr %23, align 4
  %24 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 40
  store ptr @edma_prep_dma_cyclic, ptr %24, align 4
  %25 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 27
  store ptr @edma_alloc_chan_resources, ptr %25, align 4
  %26 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 29
  store ptr @edma_free_chan_resources, ptr %26, align 4
  %27 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 50
  store ptr @edma_issue_pending, ptr %27, align 4
  %28 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 49
  store ptr @edma_tx_status, ptr %28, align 4
  %29 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 44
  store ptr @edma_slave_config, ptr %29, align 4
  %30 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 45
  store ptr @edma_dma_pause, ptr %30, align 4
  %31 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 46
  store ptr @edma_dma_resume, ptr %31, align 4
  %32 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 47
  store ptr @edma_terminate_all, ptr %32, align 4
  %33 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 48
  store ptr @edma_synchronize, ptr %33, align 4
  %34 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 19
  store i32 30, ptr %34, align 4
  %35 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 20
  store i32 30, ptr %35, align 4
  %36 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 21
  store i32 %22, ptr %36, align 4
  %37 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 26
  store i32 2, ptr %37, align 4
  %38 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 23
  store i32 32767, ptr %38, align 4
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 15
  store ptr %39, ptr %40, align 4
  %41 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 3
  store volatile ptr %41, ptr %41, align 4
  %42 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 16, i32 3, i32 1
  store ptr %41, ptr %42, align 4
  br i1 %11, label %43, label %70

43:                                               ; preds = %21
  %44 = tail call noalias ptr @devm_kmalloc(ptr noundef %39, i32 noundef 252, i32 noundef 3520) #12
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load ptr, ptr %0, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %47, ptr noundef nonnull @.str.27) #14
  br label %74

48:                                               ; preds = %43
  %49 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 17
  store ptr %44, ptr %49, align 4
  %50 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 6
  store i32 0, ptr %50, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %50) #12
  tail call void @_set_bit(i32 noundef 13, ptr noundef %50) #12
  %51 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 30
  store ptr @edma_prep_dma_memcpy, ptr %51, align 4
  %52 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 41
  store ptr @edma_prep_dma_interleaved, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 27
  store ptr @edma_alloc_chan_resources, ptr %53, align 4
  %54 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 29
  store ptr @edma_free_chan_resources, ptr %54, align 4
  %55 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 50
  store ptr @edma_issue_pending, ptr %55, align 4
  %56 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 49
  store ptr @edma_tx_status, ptr %56, align 4
  %57 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 44
  store ptr @edma_slave_config, ptr %57, align 4
  %58 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 45
  store ptr @edma_dma_pause, ptr %58, align 4
  %59 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 46
  store ptr @edma_dma_resume, ptr %59, align 4
  %60 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 47
  store ptr @edma_terminate_all, ptr %60, align 4
  %61 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 48
  store ptr @edma_synchronize, ptr %61, align 4
  %62 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 19
  store i32 30, ptr %62, align 4
  %63 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 20
  store i32 30, ptr %63, align 4
  %64 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 21
  store i32 1, ptr %64, align 4
  %65 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 26
  store i32 2, ptr %65, align 4
  %66 = load ptr, ptr %0, align 4
  %67 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 15
  store ptr %66, ptr %67, align 4
  %68 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 3
  store volatile ptr %68, ptr %68, align 4
  %69 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 3, i32 1
  store ptr %68, ptr %69, align 4
  br label %74

70:                                               ; preds = %21
  %71 = load i8, ptr %8, align 4, !range !14
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %39, ptr noundef nonnull @.str.28) #14
  br label %74

74:                                               ; preds = %73, %70, %48, %46
  %75 = phi ptr [ %44, %48 ], [ null, %46 ], [ null, %70 ], [ null, %73 ]
  %76 = phi ptr [ %6, %48 ], [ null, %46 ], [ null, %70 ], [ null, %73 ]
  %77 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 5
  %78 = load i32, ptr %77, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %118, label %80

80:                                               ; preds = %74
  %81 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 18
  %82 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 3
  %83 = icmp eq ptr %75, null
  %84 = icmp eq ptr %76, null
  %85 = select i1 %83, i1 true, i1 %84
  br label %86

86:                                               ; preds = %111, %80
  %87 = phi i32 [ 0, %80 ], [ %115, %111 ]
  %88 = mul i32 %87, 300
  %89 = add i32 %88, 168
  %90 = load ptr, ptr %81, align 4
  %91 = getelementptr %struct.edma_chan, ptr %90, i32 %87
  %92 = load i32, ptr %82, align 4
  %93 = shl i32 %92, 16
  %94 = or i32 %93, %87
  %95 = getelementptr %struct.edma_chan, ptr %90, i32 %87, i32 5
  store i32 %94, ptr %95, align 4
  %96 = getelementptr %struct.edma_chan, ptr %90, i32 %87, i32 3
  store ptr %0, ptr %96, align 4
  %97 = getelementptr inbounds %struct.virt_dma_chan, ptr %91, i32 0, i32 2
  store ptr @edma_desc_free, ptr %97, align 4
  br i1 %85, label %110, label %98

98:                                               ; preds = %86
  %99 = load i32, ptr %76, align 4
  %100 = icmp eq i32 %99, -1
  br i1 %100, label %110, label %105

101:                                              ; preds = %105
  %102 = getelementptr i32, ptr %107, i32 1
  %103 = load i32, ptr %102, align 4
  %104 = icmp eq i32 %103, -1
  br i1 %104, label %110, label %105

105:                                              ; preds = %101, %98
  %106 = phi i32 [ %103, %101 ], [ %99, %98 ]
  %107 = phi ptr [ %102, %101 ], [ %76, %98 ]
  %108 = icmp eq i32 %106, %87
  br i1 %108, label %109, label %101

109:                                              ; preds = %105
  tail call void @vchan_init(ptr noundef %91, ptr noundef nonnull %75) #12
  br label %111

110:                                              ; preds = %101, %98, %86
  tail call void @vchan_init(ptr noundef %91, ptr noundef %2) #12
  br label %111

111:                                              ; preds = %110, %109
  %112 = getelementptr %struct.edma_chan, ptr %90, i32 %87, i32 1
  store volatile ptr %112, ptr %112, align 4
  %113 = getelementptr %struct.edma_chan, ptr %90, i32 %87, i32 1, i32 1
  store ptr %112, ptr %113, align 4
  %114 = getelementptr i8, ptr %90, i32 %89
  call void @llvm.memset.p0.i32(ptr noundef align 4 dereferenceable(80) %114, i8 -1, i32 80, i1 false)
  %115 = add nuw i32 %87, 1
  %116 = load i32, ptr %77, align 4
  %117 = icmp ult i32 %115, %116
  br i1 %117, label %86, label %118

118:                                              ; preds = %111, %74
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal zeroext i1 @edma_filter_fn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #6 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp eq ptr %7, getelementptr inbounds (%struct.platform_driver, ptr @edma_driver, i32 0, i32 5)
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load i32, ptr %1, align 4
  %11 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 7
  store i8 1, ptr %15, align 1
  br label %16

16:                                               ; preds = %14, %9, %2
  %17 = phi i1 [ false, %2 ], [ true, %14 ], [ false, %9 ]
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @of_edma_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = icmp eq ptr %4, null
  br i1 %5, label %54, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %54, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %54, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 18
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %18 = load i32, ptr %17, align 4
  br label %19

19:                                               ; preds = %24, %14
  %20 = phi i32 [ 0, %14 ], [ %25, %24 ]
  %21 = getelementptr %struct.edma_chan, ptr %16, i32 %20, i32 5
  %22 = load i32, ptr %21, align 4
  %23 = icmp eq i32 %22, %18
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = add nuw i32 %20, 1
  %26 = icmp eq i32 %25, %12
  br i1 %26, label %54, label %19

27:                                               ; preds = %19
  %28 = getelementptr %struct.edma_chan, ptr %16, i32 %20
  %29 = icmp eq ptr %28, null
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = getelementptr %struct.edma_chan, ptr %16, i32 %20, i32 3
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.edma_cc, ptr %32, i32 0, i32 4
  %34 = load i8, ptr %33, align 4, !range !14
  %35 = icmp eq i8 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %30
  %37 = icmp eq i32 %8, 1
  br i1 %37, label %51, label %54

38:                                               ; preds = %30
  %39 = icmp eq i32 %8, 2
  br i1 %39, label %40, label %54

40:                                               ; preds = %38
  %41 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %42 = load i32, ptr %41, align 4
  %43 = getelementptr inbounds %struct.edma_cc, ptr %32, i32 0, i32 9
  %44 = load i32, ptr %43, align 4
  %45 = icmp ult i32 %42, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct.edma_cc, ptr %32, i32 0, i32 19
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr %struct.edma_tc, ptr %48, i32 %42
  %50 = getelementptr %struct.edma_chan, ptr %16, i32 %20, i32 4
  store ptr %49, ptr %50, align 4
  br label %51

51:                                               ; preds = %46, %36
  %52 = getelementptr %struct.edma_chan, ptr %16, i32 %20, i32 7
  store i8 1, ptr %52, align 1
  %53 = tail call ptr @dma_get_slave_channel(ptr noundef nonnull %28) #12
  br label %54

54:                                               ; preds = %51, %40, %38, %36, %27, %24, %10, %6, %2
  %55 = phi ptr [ %53, %51 ], [ null, %6 ], [ null, %2 ], [ null, %27 ], [ null, %40 ], [ null, %38 ], [ null, %36 ], [ null, %10 ], [ null, %24 ]
  ret ptr %55
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @edma_free_slot(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = and i32 %1, 65535
  %4 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 8
  %5 = load i32, ptr %4, align 4
  %6 = icmp ult i32 %3, %5
  br i1 %6, label %7, label %15

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = shl nuw nsw i32 %3, 5
  %11 = add nuw nsw i32 %10, 16384
  %12 = getelementptr i8, ptr %9, i32 %11
  tail call void @mmiocpy(ptr noundef %12, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #12
  %13 = getelementptr inbounds %struct.edma_cc, ptr %0, i32 0, i32 14
  %14 = load ptr, ptr %13, align 4
  tail call void @_clear_bit(i32 noundef %3, ptr noundef %14) #12
  br label %15

15:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @edma_execute(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 2
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %9 = load volatile ptr, ptr %8, align 4
  %10 = icmp eq ptr %9, %8
  %11 = getelementptr i8, ptr %9, i32 -68
  %12 = icmp eq ptr %11, null
  %13 = or i1 %10, %12
  br i1 %13, label %290, label %14

14:                                               ; preds = %7
  %15 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load ptr, ptr %9, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %16, ptr %18, align 4
  store volatile ptr %17, ptr %16, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %15, align 4
  store ptr %11, ptr %4, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = phi ptr [ %11, %14 ], [ %5, %1 ]
  %21 = getelementptr inbounds %struct.edma_desc, ptr %20, i32 0, i32 6
  %22 = load i32, ptr %21, align 4
  %23 = getelementptr inbounds %struct.edma_desc, ptr %20, i32 0, i32 8
  %24 = load i32, ptr %23, align 4
  %25 = sub i32 %22, %24
  %26 = tail call i32 @llvm.smin.i32(i32 %25, i32 20)
  %27 = getelementptr inbounds %struct.edma_desc, ptr %20, i32 0, i32 10
  store i32 0, ptr %27, align 4
  %28 = icmp sgt i32 %25, 0
  br i1 %28, label %29, label %91

29:                                               ; preds = %19
  %30 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 8
  %31 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 2
  %32 = add nsw i32 %26, -1
  %33 = call i32 @llvm.smax.i32(i32 %26, i32 1)
  br label %34

34:                                               ; preds = %85, %29
  %35 = phi i32 [ %24, %29 ], [ %88, %85 ]
  %36 = phi i32 [ 0, %29 ], [ %86, %85 ]
  %37 = add i32 %35, %36
  %38 = getelementptr %struct.edma_chan, ptr %0, i32 0, i32 8, i32 %36
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %37
  %41 = and i32 %39, 65535
  %42 = load i32, ptr %30, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %34
  %45 = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %37, i32 2
  %46 = load ptr, ptr %31, align 4
  %47 = shl nuw nsw i32 %41, 5
  %48 = add nuw nsw i32 %47, 16384
  %49 = getelementptr i8, ptr %46, i32 %48
  tail call void @mmiocpy(ptr noundef %49, ptr noundef %45, i32 noundef 32) #12
  br label %50

50:                                               ; preds = %44, %34
  %51 = load i32, ptr %40, align 4
  %52 = load i32, ptr %27, align 4
  %53 = add i32 %52, %51
  store i32 %53, ptr %27, align 4
  %54 = icmp eq i32 %36, %32
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = add nuw nsw i32 %36, 1
  br label %85

57:                                               ; preds = %50
  %58 = load i32, ptr %38, align 4
  %59 = add nuw nsw i32 %36, 1
  %60 = getelementptr %struct.edma_chan, ptr %0, i32 0, i32 8, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = xor i32 %61, %58
  %63 = icmp ult i32 %62, 65536
  br i1 %63, label %66, label %64, !prof !21

64:                                               ; preds = %57
  %65 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %65, ptr noundef nonnull @.str.23) #14
  br label %66

66:                                               ; preds = %64, %57
  %67 = and i32 %58, 65535
  %68 = and i32 %61, 65535
  %69 = load i32, ptr %30, align 4
  %70 = icmp ult i32 %67, %69
  %71 = icmp ult i32 %68, %69
  %72 = and i1 %70, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %66
  %74 = shl nuw nsw i32 %68, 5
  %75 = add nuw nsw i32 %74, 16384
  %76 = shl nuw nsw i32 %67, 5
  %77 = add nuw nsw i32 %76, 16404
  %78 = load ptr, ptr %31, align 4
  %79 = getelementptr i8, ptr %78, i32 %77
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #12, !srcloc !10
  %81 = and i32 %80, -65536
  %82 = or i32 %81, %75
  %83 = load ptr, ptr %31, align 4
  %84 = getelementptr i8, ptr %83, i32 %77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #12, !srcloc !13
  br label %85

85:                                               ; preds = %73, %66, %55
  %86 = phi i32 [ %56, %55 ], [ %59, %73 ], [ %59, %66 ]
  %87 = icmp eq i32 %86, %33
  %88 = load i32, ptr %23, align 4
  br i1 %87, label %89, label %34

89:                                               ; preds = %85
  %90 = load i32, ptr %21, align 4
  br label %91

91:                                               ; preds = %89, %19
  %92 = phi i32 [ %90, %89 ], [ %22, %19 ]
  %93 = phi i32 [ %88, %89 ], [ %24, %19 ]
  %94 = add i32 %93, %26
  store i32 %94, ptr %23, align 4
  %95 = icmp eq i32 %94, %92
  br i1 %95, label %96, label %160

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.edma_desc, ptr %20, i32 0, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = icmp eq i32 %98, 0
  %100 = add i32 %26, -1
  %101 = getelementptr %struct.edma_chan, ptr %0, i32 0, i32 8, i32 %100
  %102 = load i32, ptr %101, align 4
  br i1 %99, label %131, label %103

103:                                              ; preds = %96
  %104 = getelementptr %struct.edma_chan, ptr %0, i32 0, i32 8, i32 1
  %105 = load i32, ptr %104, align 4
  %106 = xor i32 %105, %102
  %107 = icmp ult i32 %106, 65536
  br i1 %107, label %110, label %108, !prof !21

108:                                              ; preds = %103
  %109 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %109, ptr noundef nonnull @.str.23) #14
  br label %110

110:                                              ; preds = %108, %103
  %111 = and i32 %102, 65535
  %112 = and i32 %105, 65535
  %113 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 8
  %114 = load i32, ptr %113, align 4
  %115 = icmp ult i32 %111, %114
  %116 = icmp ult i32 %112, %114
  %117 = and i1 %115, %116
  br i1 %117, label %118, label %160

118:                                              ; preds = %110
  %119 = shl nuw nsw i32 %112, 5
  %120 = add nuw nsw i32 %119, 16384
  %121 = shl nuw nsw i32 %111, 5
  %122 = add nuw nsw i32 %121, 16404
  %123 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 2
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr i8, ptr %124, i32 %122
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %125) #12, !srcloc !10
  %127 = and i32 %126, -65536
  %128 = or i32 %127, %120
  %129 = load ptr, ptr %123, align 4
  %130 = getelementptr i8, ptr %129, i32 %122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %130, i32 %128) #12, !srcloc !13
  br label %160

131:                                              ; preds = %96
  %132 = load ptr, ptr %2, align 4
  %133 = getelementptr inbounds %struct.edma_cc, ptr %132, i32 0, i32 20
  %134 = load i32, ptr %133, align 4
  %135 = xor i32 %134, %102
  %136 = icmp ult i32 %135, 65536
  br i1 %136, label %139, label %137, !prof !21

137:                                              ; preds = %131
  %138 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %138, ptr noundef nonnull @.str.23) #14
  br label %139

139:                                              ; preds = %137, %131
  %140 = and i32 %102, 65535
  %141 = and i32 %134, 65535
  %142 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 8
  %143 = load i32, ptr %142, align 4
  %144 = icmp ult i32 %140, %143
  %145 = icmp ult i32 %141, %143
  %146 = and i1 %144, %145
  br i1 %146, label %147, label %160

147:                                              ; preds = %139
  %148 = shl nuw nsw i32 %141, 5
  %149 = add nuw nsw i32 %148, 16384
  %150 = shl nuw nsw i32 %140, 5
  %151 = add nuw nsw i32 %150, 16404
  %152 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 2
  %153 = load ptr, ptr %152, align 4
  %154 = getelementptr i8, ptr %153, i32 %151
  %155 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %154) #12, !srcloc !10
  %156 = and i32 %155, -65536
  %157 = or i32 %156, %149
  %158 = load ptr, ptr %152, align 4
  %159 = getelementptr i8, ptr %158, i32 %151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %159, i32 %157) #12, !srcloc !13
  br label %160

160:                                              ; preds = %147, %139, %118, %110, %91
  %161 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 9
  %162 = load i32, ptr %161, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %245, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %2, align 4
  %166 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %167 = load i32, ptr %166, align 4
  %168 = and i32 %167, 31
  %169 = shl nuw i32 1, %168
  %170 = lshr i32 %167, 3
  %171 = and i32 %170, 8188
  %172 = add nuw nsw i32 %171, 8200
  %173 = getelementptr inbounds %struct.edma_cc, ptr %165, i32 0, i32 2
  %174 = load ptr, ptr %173, align 4
  %175 = getelementptr i8, ptr %174, i32 %172
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 %169) #12, !srcloc !13
  %176 = add nuw nsw i32 %171, 776
  %177 = load ptr, ptr %173, align 4
  %178 = getelementptr i8, ptr %177, i32 %176
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %178, i32 %169) #12, !srcloc !13
  %179 = add nuw nsw i32 %171, 8256
  %180 = load ptr, ptr %173, align 4
  %181 = getelementptr i8, ptr %180, i32 %179
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %181, i32 %169) #12, !srcloc !13
  %182 = load ptr, ptr %173, align 4
  %183 = getelementptr i8, ptr %182, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 65539) #12, !srcloc !13
  %184 = load ptr, ptr %2, align 4
  %185 = load i32, ptr %166, align 4
  %186 = and i32 %185, 31
  %187 = shl nuw i32 1, %186
  %188 = lshr i32 %185, 3
  %189 = and i32 %188, 8188
  %190 = add nuw nsw i32 %189, 8232
  %191 = getelementptr inbounds %struct.edma_cc, ptr %184, i32 0, i32 2
  %192 = load ptr, ptr %191, align 4
  %193 = getelementptr i8, ptr %192, i32 %190
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 %187) #12, !srcloc !13
  %194 = add nuw nsw i32 %189, 8200
  %195 = load ptr, ptr %191, align 4
  %196 = getelementptr i8, ptr %195, i32 %194
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %196, i32 %187) #12, !srcloc !13
  %197 = add nuw nsw i32 %189, 8256
  %198 = load ptr, ptr %191, align 4
  %199 = getelementptr i8, ptr %198, i32 %197
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %199, i32 %187) #12, !srcloc !13
  %200 = add nuw nsw i32 %189, 776
  %201 = load ptr, ptr %191, align 4
  %202 = getelementptr i8, ptr %201, i32 %200
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %187) #12, !srcloc !13
  %203 = add nuw nsw i32 %189, 8304
  %204 = load ptr, ptr %191, align 4
  %205 = getelementptr i8, ptr %204, i32 %203
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %205, i32 %187) #12, !srcloc !13
  %206 = load ptr, ptr %2, align 4
  %207 = load i32, ptr %166, align 4
  %208 = and i32 %207, 31
  %209 = shl nuw i32 1, %208
  %210 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 7
  %211 = load i8, ptr %210, align 1, !range !14
  %212 = icmp eq i8 %211, 0
  %213 = lshr i32 %207, 3
  %214 = and i32 %213, 8188
  br i1 %212, label %215, label %220

215:                                              ; preds = %164
  %216 = add nuw nsw i32 %214, 8208
  %217 = getelementptr inbounds %struct.edma_cc, ptr %206, i32 0, i32 2
  %218 = load ptr, ptr %217, align 4
  %219 = getelementptr i8, ptr %218, i32 %216
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %219, i32 %209) #12, !srcloc !13
  br label %234

220:                                              ; preds = %164
  %221 = add nuw nsw i32 %214, 4104
  %222 = getelementptr inbounds %struct.edma_cc, ptr %206, i32 0, i32 2
  %223 = load ptr, ptr %222, align 4
  %224 = getelementptr i8, ptr %223, i32 %221
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %224, i32 %209) #12, !srcloc !13
  %225 = add nuw nsw i32 %214, 776
  %226 = load ptr, ptr %222, align 4
  %227 = getelementptr i8, ptr %226, i32 %225
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %227, i32 %209) #12, !srcloc !13
  %228 = add nuw nsw i32 %214, 8256
  %229 = load ptr, ptr %222, align 4
  %230 = getelementptr i8, ptr %229, i32 %228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %230, i32 %209) #12, !srcloc !13
  %231 = add nuw nsw i32 %214, 8240
  %232 = load ptr, ptr %222, align 4
  %233 = getelementptr i8, ptr %232, i32 %231
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %233, i32 %209) #12, !srcloc !13
  br label %234

234:                                              ; preds = %220, %215
  %235 = load ptr, ptr %2, align 4
  %236 = load i32, ptr %166, align 4
  %237 = and i32 %236, 31
  %238 = shl nuw i32 1, %237
  %239 = lshr i32 %236, 3
  %240 = and i32 %239, 8188
  %241 = add nuw nsw i32 %240, 8208
  %242 = getelementptr inbounds %struct.edma_cc, ptr %235, i32 0, i32 2
  %243 = load ptr, ptr %242, align 4
  %244 = getelementptr i8, ptr %243, i32 %241
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %244, i32 %238) #12, !srcloc !13
  store i32 0, ptr %161, align 4
  br label %290

245:                                              ; preds = %160
  %246 = load i32, ptr %23, align 4
  %247 = icmp slt i32 %246, 21
  br i1 %247, label %248, label %278

248:                                              ; preds = %245
  %249 = load ptr, ptr %2, align 4
  %250 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %251 = load i32, ptr %250, align 4
  %252 = and i32 %251, 31
  %253 = shl nuw i32 1, %252
  %254 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 7
  %255 = load i8, ptr %254, align 1, !range !14
  %256 = icmp eq i8 %255, 0
  %257 = lshr i32 %251, 3
  %258 = and i32 %257, 8188
  br i1 %256, label %259, label %264

259:                                              ; preds = %248
  %260 = add nuw nsw i32 %258, 8208
  %261 = getelementptr inbounds %struct.edma_cc, ptr %249, i32 0, i32 2
  %262 = load ptr, ptr %261, align 4
  %263 = getelementptr i8, ptr %262, i32 %260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %263, i32 %253) #12, !srcloc !13
  br label %290

264:                                              ; preds = %248
  %265 = add nuw nsw i32 %258, 4104
  %266 = getelementptr inbounds %struct.edma_cc, ptr %249, i32 0, i32 2
  %267 = load ptr, ptr %266, align 4
  %268 = getelementptr i8, ptr %267, i32 %265
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %268, i32 %253) #12, !srcloc !13
  %269 = add nuw nsw i32 %258, 776
  %270 = load ptr, ptr %266, align 4
  %271 = getelementptr i8, ptr %270, i32 %269
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %271, i32 %253) #12, !srcloc !13
  %272 = add nuw nsw i32 %258, 8256
  %273 = load ptr, ptr %266, align 4
  %274 = getelementptr i8, ptr %273, i32 %272
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %274, i32 %253) #12, !srcloc !13
  %275 = add nuw nsw i32 %258, 8240
  %276 = load ptr, ptr %266, align 4
  %277 = getelementptr i8, ptr %276, i32 %275
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %277, i32 %253) #12, !srcloc !13
  br label %290

278:                                              ; preds = %245
  %279 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %280 = load i32, ptr %279, align 4
  %281 = load ptr, ptr %2, align 4
  %282 = and i32 %280, 31
  %283 = shl nuw i32 1, %282
  %284 = lshr i32 %280, 3
  %285 = and i32 %284, 8188
  %286 = add nuw nsw i32 %285, 8240
  %287 = getelementptr inbounds %struct.edma_cc, ptr %281, i32 0, i32 2
  %288 = load ptr, ptr %287, align 4
  %289 = getelementptr i8, ptr %288, i32 %286
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %289, i32 %283) #12, !srcloc !13
  br label %290

290:                                              ; preds = %278, %264, %259, %234, %7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_le(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @edma_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = load ptr, ptr %0, align 4
  %7 = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 15
  %8 = load ptr, ptr %7, align 4
  %9 = icmp eq ptr %0, null
  %10 = icmp eq i32 %3, 0
  %11 = or i1 %9, %10
  br i1 %11, label %164, label %12, !prof !9

12:                                               ; preds = %5
  %13 = or i32 %2, %1
  %14 = or i32 %13, %3
  %15 = tail call i32 @llvm.cttz.i32(i32 %14, i1 false) #12, !range !15
  %16 = icmp eq i32 %15, 1
  %17 = select i1 %16, i32 32766, i32 32764
  %18 = icmp eq i32 %15, 0
  %19 = select i1 %18, i32 32767, i32 %17
  %20 = icmp ult i32 %3, 65536
  br i1 %20, label %26, label %21

21:                                               ; preds = %12
  %22 = urem i32 %3, %19
  %23 = sub nuw i32 %3, %22
  %24 = icmp eq i32 %22, 0
  %25 = select i1 %24, i32 1, i32 2, !prof !9
  br label %26

26:                                               ; preds = %21, %12
  %27 = phi i1 [ true, %12 ], [ %24, %21 ]
  %28 = phi i32 [ 1, %12 ], [ %25, %21 ]
  %29 = phi i32 [ %3, %12 ], [ %19, %21 ]
  %30 = phi i32 [ %3, %12 ], [ %23, %21 ]
  %31 = mul nuw nsw i32 %28, 40
  %32 = or i32 %31, 128
  %33 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %32, i32 noundef 2848) #13
  %34 = icmp eq ptr %33, null
  br i1 %34, label %164, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 0, i32 6
  store i32 %28, ptr %36, align 4
  %37 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 0, i32 12
  store i32 %3, ptr %37, align 4
  %38 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 0, i32 11
  store i32 %3, ptr %38, align 8
  %39 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 0, i32 2
  store i32 0, ptr %39, align 4
  %40 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 0, i32 7
  store ptr %0, ptr %40, align 8
  %41 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 0, i32 13
  %42 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 2
  %43 = udiv i32 %30, %29
  %44 = udiv i32 %43, 65535
  %45 = mul i32 %44, -65535
  %46 = add i32 %45, %43
  %47 = icmp eq i32 %46, 0
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = add nuw nsw i32 %44, %49
  store i32 %30, ptr %41, align 64
  %51 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 1
  store i32 %2, ptr %51, align 4
  %52 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %53 = load i32, ptr %52, align 4
  %54 = shl i32 %53, 12
  %55 = and i32 %54, 268431360
  %56 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 3
  store i32 %2, ptr %56, align 4
  %57 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 5
  store i32 %1, ptr %57, align 4
  %58 = shl nuw i32 %29, 16
  %59 = or i32 %58, %29
  %60 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 6
  store i32 %59, ptr %60, align 8
  %61 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 8
  store i32 %59, ptr %61, align 32
  %62 = shl i32 %46, 16
  %63 = select i1 %47, i32 -65536, i32 %62
  %64 = or i32 %63, %29
  %65 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 4
  store i32 %64, ptr %65, align 16
  %66 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 9
  store i32 %50, ptr %66, align 4
  %67 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 7
  store i32 -1, ptr %67, align 4
  %68 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 0, i32 5
  store i32 0, ptr %68, align 32
  %69 = or i32 %55, 8388608
  store i32 %69, ptr %42, align 8
  br i1 %27, label %70, label %75

70:                                               ; preds = %35
  %71 = and i32 %4, 1
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %149, label %73

73:                                               ; preds = %70
  %74 = or i32 %55, 9437184
  store i32 %74, ptr %42, align 8
  br label %151

75:                                               ; preds = %35
  %76 = or i32 %55, 12582912
  store i32 %76, ptr %42, align 8
  %77 = getelementptr %struct.edma_chan, ptr %0, i32 0, i32 8, i32 1
  %78 = load i32, ptr %77, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %127

80:                                               ; preds = %75
  %81 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  %82 = load ptr, ptr %81, align 4
  %83 = getelementptr inbounds %struct.edma_cc, ptr %82, i32 0, i32 10
  %84 = load i8, ptr %83, align 4, !range !14
  %85 = icmp eq i8 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = getelementptr inbounds %struct.edma_cc, ptr %82, i32 0, i32 5
  %88 = load i32, ptr %87, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = phi i32 [ %88, %86 ], [ 0, %80 ]
  %91 = getelementptr inbounds %struct.edma_cc, ptr %82, i32 0, i32 14
  %92 = getelementptr inbounds %struct.edma_cc, ptr %82, i32 0, i32 8
  br label %93

93:                                               ; preds = %101, %89
  %94 = phi i32 [ %90, %89 ], [ %97, %101 ]
  %95 = load ptr, ptr %91, align 4
  %96 = load i32, ptr %92, align 4
  %97 = tail call i32 @_find_next_zero_bit_le(ptr noundef %95, i32 noundef %96, i32 noundef %94) #12
  %98 = load i32, ptr %92, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %93
  store i32 -12, ptr %77, align 4
  br label %126

101:                                              ; preds = %93
  %102 = load ptr, ptr %91, align 4
  %103 = tail call i32 @_test_and_set_bit(i32 noundef %97, ptr noundef %102) #12
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %93

105:                                              ; preds = %101
  %106 = and i32 %97, 65535
  %107 = load i32, ptr %92, align 4
  %108 = icmp ult i32 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %105
  %110 = getelementptr inbounds %struct.edma_cc, ptr %82, i32 0, i32 2
  %111 = load ptr, ptr %110, align 4
  %112 = shl nuw nsw i32 %106, 5
  %113 = add nuw nsw i32 %112, 16384
  %114 = getelementptr i8, ptr %111, i32 %113
  tail call void @mmiocpy(ptr noundef %114, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #12
  br label %115

115:                                              ; preds = %109, %105
  %116 = getelementptr inbounds %struct.edma_cc, ptr %82, i32 0, i32 3
  %117 = load i32, ptr %116, align 4
  %118 = shl i32 %117, 16
  %119 = or i32 %118, %97
  store i32 %119, ptr %77, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %115
  %122 = load i32, ptr %52, align 4
  %123 = shl i32 %122, 12
  %124 = and i32 %123, 268431360
  %125 = or i32 %124, 8388608
  br label %127

126:                                              ; preds = %115, %100
  tail call void @kfree(ptr noundef nonnull %33) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.edma_prep_dma_memcpy) #14
  br label %164

127:                                              ; preds = %121, %75
  %128 = phi i32 [ %125, %121 ], [ %69, %75 ]
  %129 = phi i32 [ %124, %121 ], [ %55, %75 ]
  %130 = add i32 %30, %1
  %131 = add i32 %30, %2
  %132 = urem i32 %3, %19
  %133 = getelementptr %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 10
  %134 = getelementptr %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 12
  store i32 %132, ptr %133, align 8
  %135 = getelementptr %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 11
  store i32 %131, ptr %135, align 4
  %136 = getelementptr %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 13
  store i32 %131, ptr %136, align 4
  %137 = getelementptr %struct.edma_desc, ptr %33, i32 1, i32 0, i32 1
  store i32 %130, ptr %137, align 4
  %138 = mul nuw nsw i32 %132, 65537
  %139 = getelementptr %struct.edma_desc, ptr %33, i32 1, i32 0, i32 1, i32 1
  store i32 %138, ptr %139, align 64
  %140 = getelementptr %struct.edma_desc, ptr %33, i32 1, i32 0, i32 2, i32 1
  store i32 %138, ptr %140, align 8
  %141 = or i32 %132, 65536
  %142 = getelementptr %struct.edma_desc, ptr %33, i32 1, i32 0, i32 0, i32 14
  store i32 %141, ptr %142, align 8
  %143 = getelementptr %struct.edma_desc, ptr %33, i32 1, i32 1
  store i32 1, ptr %143, align 4
  %144 = getelementptr %struct.edma_desc, ptr %33, i32 1, i32 0, i32 2
  store i32 -1, ptr %144, align 4
  store i32 %128, ptr %134, align 16
  %145 = and i32 %4, 1
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %127
  %148 = or i32 %129, 9437184
  store i32 %148, ptr %134, align 16
  br label %151

149:                                              ; preds = %127, %70
  %150 = getelementptr inbounds %struct.edma_desc, ptr %33, i32 0, i32 4
  store i8 1, ptr %150, align 4
  br label %151

151:                                              ; preds = %149, %147, %73
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %33, ptr noundef %0) #12
  %152 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %33, i32 0, i32 1
  store i32 %4, ptr %152, align 4
  %153 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %33, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %153, align 16
  %154 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %33, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %154, align 4
  %155 = getelementptr inbounds %struct.virt_dma_desc, ptr %33, i32 0, i32 1
  store i32 0, ptr %155, align 4
  %156 = getelementptr inbounds %struct.virt_dma_desc, ptr %33, i32 0, i32 1, i32 1
  store i32 0, ptr %156, align 64
  %157 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %158 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %157) #12
  %159 = getelementptr inbounds %struct.virt_dma_desc, ptr %33, i32 0, i32 2
  %160 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %161 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %162 = load ptr, ptr %161, align 4
  store ptr %159, ptr %161, align 4
  store ptr %160, ptr %159, align 4
  %163 = getelementptr inbounds %struct.virt_dma_desc, ptr %33, i32 0, i32 2, i32 1
  store ptr %162, ptr %163, align 8
  store volatile ptr %159, ptr %162, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %157, i32 noundef %158) #12
  br label %164

164:                                              ; preds = %151, %126, %26, %5
  %165 = phi ptr [ %33, %151 ], [ null, %126 ], [ null, %5 ], [ null, %26 ]
  ret ptr %165
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @edma_prep_dma_interleaved(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = load ptr, ptr %0, align 4
  %5 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, -1
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %115, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 8
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %115

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %115, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 9
  %21 = load i32, ptr %20, align 4
  %22 = icmp ugt i32 %21, 65536
  %23 = icmp ugt i32 %17, 65536
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %115, label %25

25:                                               ; preds = %19
  %26 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 3
  %27 = load i8, ptr %26, align 4, !range !14
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 3
  %31 = load i32, ptr %30, align 4
  %32 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 1
  %33 = load i32, ptr %32, align 4
  %34 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 5
  %35 = load i8, ptr %34, align 2, !range !14
  %36 = icmp ne i8 %35, 0
  %37 = icmp ne i32 %31, 0
  %38 = or i1 %37, %36
  %39 = select i1 %37, i32 %31, i32 %33
  %40 = xor i1 %38, true
  %41 = icmp eq i32 %39, 0
  %42 = select i1 %40, i1 true, i1 %41
  %43 = select i1 %42, i32 0, i32 %39
  %44 = add i32 %43, %21
  %45 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 4
  %46 = load i8, ptr %45, align 1, !range !14
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %66, label %49

48:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.edma_prep_dma_interleaved) #14
  br label %115

49:                                               ; preds = %29
  %50 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 1, i32 2
  %51 = load i32, ptr %50, align 4
  %52 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 6
  %53 = load i8, ptr %52, align 1, !range !14
  %54 = icmp ne i8 %53, 0
  %55 = icmp ne i32 %51, 0
  %56 = or i1 %55, %54
  %57 = select i1 %55, i32 %51, i32 %33
  %58 = xor i1 %56, true
  %59 = icmp eq i32 %57, 0
  %60 = select i1 %58, i1 true, i1 %59
  %61 = select i1 %60, i32 0, i32 %57
  %62 = add i32 %61, %21
  %63 = icmp sgt i32 %44, 65536
  %64 = icmp sgt i32 %62, 65536
  %65 = select i1 %63, i1 true, i1 %64
  br i1 %65, label %115, label %67

66:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.edma_prep_dma_interleaved) #14
  br label %115

67:                                               ; preds = %49
  %68 = load ptr, ptr getelementptr inbounds ([3 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 2), align 4
  %69 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %68, i32 noundef 2848, i32 noundef 168) #15
  %70 = icmp eq ptr %69, null
  br i1 %70, label %115, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 0, i32 2
  store i32 0, ptr %72, align 4
  %73 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 0, i32 7
  store ptr %0, ptr %73, align 8
  %74 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 0, i32 6
  store i32 1, ptr %74, align 4
  %75 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 1, i32 0, i32 0, i32 2
  %76 = load i32, ptr %1, align 4
  %77 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 1, i32 0, i32 0, i32 3
  store i32 %76, ptr %77, align 4
  %78 = getelementptr inbounds %struct.dma_interleaved_template, ptr %1, i32 0, i32 1
  %79 = load i32, ptr %78, align 4
  %80 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 1, i32 0, i32 0, i32 5
  store i32 %79, ptr %80, align 4
  %81 = load i32, ptr %16, align 4
  %82 = shl i32 %81, 16
  %83 = load i32, ptr %20, align 4
  %84 = or i32 %82, %83
  %85 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 1, i32 0, i32 0, i32 4
  store i32 %84, ptr %85, align 8
  %86 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 1, i32 0, i32 0, i32 9
  store i32 1, ptr %86, align 4
  %87 = shl i32 %62, 16
  %88 = or i32 %87, %44
  %89 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 1, i32 0, i32 0, i32 6
  store i32 %88, ptr %89, align 8
  %90 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 1, i32 0, i32 0, i32 8
  store i32 0, ptr %90, align 8
  %91 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %92 = load i32, ptr %91, align 4
  %93 = shl i32 %92, 12
  %94 = and i32 %93, 260042752
  %95 = or i32 %94, 8388608
  store i32 %95, ptr %75, align 8
  %96 = and i32 %2, 1
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %71
  %99 = or i32 %94, 9437184
  store i32 %99, ptr %75, align 8
  br label %102

100:                                              ; preds = %71
  %101 = getelementptr inbounds %struct.edma_desc, ptr %69, i32 0, i32 4
  store i8 1, ptr %101, align 4
  br label %102

102:                                              ; preds = %100, %98
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %69, ptr noundef %0) #12
  %103 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %69, i32 0, i32 1
  store i32 %2, ptr %103, align 4
  %104 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %69, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %104, align 8
  %105 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %69, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %105, align 4
  %106 = getelementptr inbounds %struct.virt_dma_desc, ptr %69, i32 0, i32 1
  store i32 0, ptr %106, align 4
  %107 = getelementptr inbounds %struct.virt_dma_desc, ptr %69, i32 0, i32 1, i32 1
  store i32 0, ptr %107, align 8
  %108 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %109 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %108) #12
  %110 = getelementptr inbounds %struct.virt_dma_desc, ptr %69, i32 0, i32 2
  %111 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %112 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %113 = load ptr, ptr %112, align 4
  store ptr %110, ptr %112, align 4
  store ptr %111, ptr %110, align 4
  %114 = getelementptr inbounds %struct.virt_dma_desc, ptr %69, i32 0, i32 2, i32 1
  store ptr %113, ptr %114, align 8
  store volatile ptr %110, ptr %113, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %108, i32 noundef %109) #12
  br label %115

115:                                              ; preds = %102, %67, %66, %49, %48, %19, %15, %11, %3
  %116 = phi ptr [ %69, %102 ], [ null, %66 ], [ null, %48 ], [ null, %3 ], [ null, %15 ], [ null, %11 ], [ null, %19 ], [ null, %49 ], [ null, %67 ]
  ret ptr %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @edma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #0 {
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %0, null
  %11 = icmp eq ptr %1, null
  %12 = icmp eq i32 %2, 0
  %13 = or i1 %10, %11
  %14 = or i1 %13, %12
  br i1 %14, label %158, label %15, !prof !9

15:                                               ; preds = %6
  %16 = icmp eq i32 %3, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 3
  %21 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 5
  br label %30

22:                                               ; preds = %15
  %23 = icmp eq i32 %3, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 4
  %28 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 6
  br label %30

29:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.edma_prep_slave_sg, i32 noundef %3) #14
  br label %158

30:                                               ; preds = %24, %17
  %31 = phi i32 [ %19, %17 ], [ 0, %24 ]
  %32 = phi i32 [ 0, %17 ], [ %26, %24 ]
  %33 = phi ptr [ %20, %17 ], [ %27, %24 ]
  %34 = phi ptr [ %21, %17 ], [ %28, %24 ]
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %33, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.edma_prep_slave_sg) #14
  br label %158

39:                                               ; preds = %30
  %40 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %2, i32 40) #12
  %41 = extractvalue { i32, i1 } %40, 1
  %42 = extractvalue { i32, i1 } %40, 0
  %43 = tail call i32 @llvm.uadd.sat.i32(i32 %42, i32 128) #12
  %44 = select i1 %41, i32 -1, i32 %43
  %45 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %44, i32 noundef 2848) #13
  %46 = icmp eq ptr %45, null
  br i1 %46, label %158, label %47

47:                                               ; preds = %39
  %48 = getelementptr inbounds %struct.edma_desc, ptr %45, i32 0, i32 6
  store i32 %2, ptr %48, align 4
  %49 = getelementptr inbounds %struct.edma_desc, ptr %45, i32 0, i32 11
  store i32 0, ptr %49, align 8
  %50 = getelementptr inbounds %struct.edma_desc, ptr %45, i32 0, i32 2
  store i32 %3, ptr %50, align 4
  %51 = getelementptr inbounds %struct.edma_desc, ptr %45, i32 0, i32 7
  store ptr %0, ptr %51, align 8
  %52 = tail call i32 @llvm.umin.i32(i32 %2, i32 20)
  %53 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  br label %58

54:                                               ; preds = %104
  %55 = getelementptr inbounds %struct.edma_desc, ptr %45, i32 0, i32 5
  %56 = add i32 %2, -1
  %57 = getelementptr %struct.edma_desc, ptr %45, i32 0, i32 13, i32 %56, i32 2
  br label %107

58:                                               ; preds = %104, %47
  %59 = phi i32 [ 0, %47 ], [ %105, %104 ]
  %60 = getelementptr %struct.edma_chan, ptr %0, i32 0, i32 8, i32 %59
  %61 = load i32, ptr %60, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %104

63:                                               ; preds = %58
  %64 = load ptr, ptr %53, align 4
  %65 = getelementptr inbounds %struct.edma_cc, ptr %64, i32 0, i32 10
  %66 = load i8, ptr %65, align 4, !range !14
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.edma_cc, ptr %64, i32 0, i32 5
  %70 = load i32, ptr %69, align 4
  br label %71

71:                                               ; preds = %68, %63
  %72 = phi i32 [ %70, %68 ], [ 0, %63 ]
  %73 = getelementptr inbounds %struct.edma_cc, ptr %64, i32 0, i32 14
  %74 = getelementptr inbounds %struct.edma_cc, ptr %64, i32 0, i32 8
  br label %75

75:                                               ; preds = %83, %71
  %76 = phi i32 [ %72, %71 ], [ %79, %83 ]
  %77 = load ptr, ptr %73, align 4
  %78 = load i32, ptr %74, align 4
  %79 = tail call i32 @_find_next_zero_bit_le(ptr noundef %77, i32 noundef %78, i32 noundef %76) #12
  %80 = load i32, ptr %74, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 -12, ptr %60, align 4
  br label %103

83:                                               ; preds = %75
  %84 = load ptr, ptr %73, align 4
  %85 = tail call i32 @_test_and_set_bit(i32 noundef %79, ptr noundef %84) #12
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %75

87:                                               ; preds = %83
  %88 = and i32 %79, 65535
  %89 = load i32, ptr %74, align 4
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.edma_cc, ptr %64, i32 0, i32 2
  %93 = load ptr, ptr %92, align 4
  %94 = shl nuw nsw i32 %88, 5
  %95 = add nuw nsw i32 %94, 16384
  %96 = getelementptr i8, ptr %93, i32 %95
  tail call void @mmiocpy(ptr noundef %96, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #12
  br label %97

97:                                               ; preds = %91, %87
  %98 = getelementptr inbounds %struct.edma_cc, ptr %64, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = shl i32 %99, 16
  %101 = or i32 %100, %79
  store i32 %101, ptr %60, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97, %82
  tail call void @kfree(ptr noundef nonnull %45) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.edma_prep_slave_sg) #14
  br label %158

104:                                              ; preds = %97, %58
  %105 = add nuw nsw i32 %59, 1
  %106 = icmp eq i32 %105, %52
  br i1 %106, label %54, label %58

107:                                              ; preds = %139, %54
  %108 = phi i32 [ 0, %54 ], [ %140, %139 ]
  %109 = phi ptr [ %1, %54 ], [ %141, %139 ]
  %110 = phi i32 [ %32, %54 ], [ %115, %139 ]
  %111 = phi i32 [ %31, %54 ], [ %114, %139 ]
  %112 = getelementptr inbounds %struct.scatterlist, ptr %109, i32 0, i32 3
  %113 = load i32, ptr %112, align 4
  %114 = select i1 %16, i32 %111, i32 %113
  %115 = select i1 %16, i32 %113, i32 %110
  %116 = getelementptr %struct.edma_desc, ptr %45, i32 0, i32 13, i32 %108
  %117 = getelementptr inbounds %struct.scatterlist, ptr %109, i32 0, i32 4
  %118 = load i32, ptr %117, align 4
  %119 = tail call fastcc i32 @edma_config_pset(ptr noundef %0, ptr noundef %116, i32 noundef %114, i32 noundef %115, i32 noundef %35, i32 noundef %36, i32 noundef %118, i32 noundef %3)
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %107
  tail call void @kfree(ptr noundef nonnull %45) #12
  br label %158

122:                                              ; preds = %107
  store i32 %119, ptr %55, align 32
  %123 = load i32, ptr %117, align 4
  %124 = load i32, ptr %49, align 8
  %125 = add i32 %124, %123
  store i32 %125, ptr %49, align 8
  %126 = icmp eq i32 %108, %56
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32, ptr %57, align 8
  %129 = or i32 %128, 1048576
  store i32 %129, ptr %57, align 8
  %130 = add nuw i32 %108, 1
  br label %139

131:                                              ; preds = %122
  %132 = add nuw i32 %108, 1
  %133 = srem i32 %132, 20
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = getelementptr %struct.edma_desc, ptr %45, i32 0, i32 13, i32 %108, i32 2
  %137 = load i32, ptr %136, align 8
  %138 = or i32 %137, 1050624
  store i32 %138, ptr %136, align 8
  br label %139

139:                                              ; preds = %135, %131, %127
  %140 = phi i32 [ %130, %127 ], [ %132, %135 ], [ %132, %131 ]
  %141 = tail call ptr @sg_next(ptr noundef %109) #12
  %142 = icmp eq i32 %140, %2
  br i1 %142, label %143, label %107

143:                                              ; preds = %139
  %144 = load i32, ptr %49, align 8
  %145 = getelementptr inbounds %struct.edma_desc, ptr %45, i32 0, i32 12
  store i32 %144, ptr %145, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %45, ptr noundef %0) #12
  %146 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %45, i32 0, i32 1
  store i32 %4, ptr %146, align 4
  %147 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %45, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %147, align 16
  %148 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %45, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %148, align 4
  %149 = getelementptr inbounds %struct.virt_dma_desc, ptr %45, i32 0, i32 1
  store i32 0, ptr %149, align 4
  %150 = getelementptr inbounds %struct.virt_dma_desc, ptr %45, i32 0, i32 1, i32 1
  store i32 0, ptr %150, align 64
  %151 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %152 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %151) #12
  %153 = getelementptr inbounds %struct.virt_dma_desc, ptr %45, i32 0, i32 2
  %154 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %155 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %156 = load ptr, ptr %155, align 4
  store ptr %153, ptr %155, align 4
  store ptr %154, ptr %153, align 4
  %157 = getelementptr inbounds %struct.virt_dma_desc, ptr %45, i32 0, i32 2, i32 1
  store ptr %156, ptr %157, align 8
  store volatile ptr %153, ptr %156, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %151, i32 noundef %152) #12
  br label %158

158:                                              ; preds = %143, %121, %103, %39, %38, %29, %6
  %159 = phi ptr [ null, %38 ], [ null, %103 ], [ null, %121 ], [ %45, %143 ], [ null, %29 ], [ null, %6 ], [ null, %39 ]
  ret ptr %159
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @edma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = icmp eq ptr %0, null
  %11 = icmp eq i32 %2, 0
  %12 = icmp eq i32 %3, 0
  %13 = or i1 %10, %11
  %14 = or i1 %13, %12
  br i1 %14, label %185, label %15, !prof !9

15:                                               ; preds = %6
  %16 = icmp eq i32 %4, 2
  br i1 %16, label %17, label %22

17:                                               ; preds = %15
  %18 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 1
  %19 = load i32, ptr %18, align 4
  %20 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 3
  %21 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 5
  br label %30

22:                                               ; preds = %15
  %23 = icmp eq i32 %4, 1
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 2
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 4
  %28 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10, i32 6
  br label %30

29:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.edma_prep_dma_cyclic, i32 noundef %4) #14
  br label %185

30:                                               ; preds = %24, %17
  %31 = phi i32 [ %19, %17 ], [ %1, %24 ]
  %32 = phi i32 [ %1, %17 ], [ %26, %24 ]
  %33 = phi ptr [ %20, %17 ], [ %27, %24 ]
  %34 = phi ptr [ %21, %17 ], [ %28, %24 ]
  %35 = load i32, ptr %34, align 4
  %36 = load i32, ptr %33, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.edma_prep_dma_cyclic) #14
  br label %185

39:                                               ; preds = %30
  %40 = udiv i32 %2, %3
  %41 = mul i32 %40, %3
  %42 = sub i32 %2, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %45, label %44, !prof !21

44:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.36) #14
  br label %185

45:                                               ; preds = %39
  %46 = add i32 %40, 1
  %47 = icmp sgt i32 %46, 20
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = icmp eq i32 %35, %3
  br i1 %49, label %50, label %185

50:                                               ; preds = %48, %45
  %51 = phi i32 [ %3, %45 ], [ %2, %48 ]
  %52 = phi i32 [ %46, %45 ], [ 2, %48 ]
  %53 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 40) #12
  %54 = extractvalue { i32, i1 } %53, 1
  %55 = extractvalue { i32, i1 } %53, 0
  %56 = tail call i32 @llvm.uadd.sat.i32(i32 %55, i32 128) #12
  %57 = select i1 %54, i32 -1, i32 %56
  %58 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %57, i32 noundef 2848) #13
  %59 = icmp eq ptr %58, null
  br i1 %59, label %185, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.edma_desc, ptr %58, i32 0, i32 3
  store i32 1, ptr %61, align 8
  %62 = getelementptr inbounds %struct.edma_desc, ptr %58, i32 0, i32 6
  store i32 %52, ptr %62, align 4
  %63 = getelementptr inbounds %struct.edma_desc, ptr %58, i32 0, i32 12
  store i32 %2, ptr %63, align 4
  %64 = getelementptr inbounds %struct.edma_desc, ptr %58, i32 0, i32 11
  store i32 %2, ptr %64, align 8
  %65 = getelementptr inbounds %struct.edma_desc, ptr %58, i32 0, i32 2
  store i32 %4, ptr %65, align 4
  %66 = getelementptr inbounds %struct.edma_desc, ptr %58, i32 0, i32 7
  store ptr %0, ptr %66, align 8
  %67 = icmp sgt i32 %52, 0
  br i1 %67, label %68, label %145

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  %70 = add nsw i32 %52, -1
  %71 = select i1 %16, i32 0, i32 %51
  %72 = select i1 %16, i32 %51, i32 0
  %73 = getelementptr inbounds %struct.edma_desc, ptr %58, i32 0, i32 5
  %74 = and i32 %5, 1
  %75 = icmp eq i32 %74, 0
  br label %76

76:                                               ; preds = %143, %68
  %77 = phi i32 [ 0, %68 ], [ %144, %143 ]
  %78 = phi i32 [ %32, %68 ], [ %136, %143 ]
  %79 = phi i32 [ %31, %68 ], [ %135, %143 ]
  %80 = getelementptr %struct.edma_chan, ptr %0, i32 0, i32 8, i32 %77
  %81 = load i32, ptr %80, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %124

83:                                               ; preds = %76
  %84 = load ptr, ptr %69, align 4
  %85 = getelementptr inbounds %struct.edma_cc, ptr %84, i32 0, i32 10
  %86 = load i8, ptr %85, align 4, !range !14
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = getelementptr inbounds %struct.edma_cc, ptr %84, i32 0, i32 5
  %90 = load i32, ptr %89, align 4
  br label %91

91:                                               ; preds = %88, %83
  %92 = phi i32 [ %90, %88 ], [ 0, %83 ]
  %93 = getelementptr inbounds %struct.edma_cc, ptr %84, i32 0, i32 14
  %94 = getelementptr inbounds %struct.edma_cc, ptr %84, i32 0, i32 8
  br label %95

95:                                               ; preds = %103, %91
  %96 = phi i32 [ %92, %91 ], [ %99, %103 ]
  %97 = load ptr, ptr %93, align 4
  %98 = load i32, ptr %94, align 4
  %99 = tail call i32 @_find_next_zero_bit_le(ptr noundef %97, i32 noundef %98, i32 noundef %96) #12
  %100 = load i32, ptr %94, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  store i32 -12, ptr %80, align 4
  br label %123

103:                                              ; preds = %95
  %104 = load ptr, ptr %93, align 4
  %105 = tail call i32 @_test_and_set_bit(i32 noundef %99, ptr noundef %104) #12
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %95

107:                                              ; preds = %103
  %108 = and i32 %99, 65535
  %109 = load i32, ptr %94, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct.edma_cc, ptr %84, i32 0, i32 2
  %113 = load ptr, ptr %112, align 4
  %114 = shl nuw nsw i32 %108, 5
  %115 = add nuw nsw i32 %114, 16384
  %116 = getelementptr i8, ptr %113, i32 %115
  tail call void @mmiocpy(ptr noundef %116, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #12
  br label %117

117:                                              ; preds = %111, %107
  %118 = getelementptr inbounds %struct.edma_cc, ptr %84, i32 0, i32 3
  %119 = load i32, ptr %118, align 4
  %120 = shl i32 %119, 16
  %121 = or i32 %120, %99
  store i32 %121, ptr %80, align 4
  %122 = icmp slt i32 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %117, %102
  tail call void @kfree(ptr noundef nonnull %58) #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.edma_prep_dma_cyclic) #14
  br label %185

124:                                              ; preds = %117, %76
  %125 = icmp eq i32 %77, %70
  br i1 %125, label %126, label %129

126:                                              ; preds = %124
  %127 = getelementptr inbounds %struct.edma_desc, ptr %58, i32 0, i32 13
  %128 = getelementptr %struct.edma_desc, ptr %58, i32 0, i32 13, i32 %70
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 8 dereferenceable(40) %128, ptr noundef align 64 dereferenceable(40) %127, i32 40, i1 false)
  br label %145

129:                                              ; preds = %124
  %130 = getelementptr %struct.edma_desc, ptr %58, i32 0, i32 13, i32 %77
  %131 = tail call fastcc i32 @edma_config_pset(ptr noundef %0, ptr noundef %130, i32 noundef %79, i32 noundef %78, i32 noundef %35, i32 noundef %36, i32 noundef %51, i32 noundef %4)
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  tail call void @kfree(ptr noundef nonnull %58) #12
  br label %185

134:                                              ; preds = %129
  %135 = add i32 %79, %71
  %136 = add i32 %78, %72
  store i32 %131, ptr %73, align 32
  br i1 %75, label %143, label %137

137:                                              ; preds = %134
  %138 = getelementptr %struct.edma_desc, ptr %58, i32 0, i32 13, i32 %77, i32 2
  %139 = load i32, ptr %138, align 8
  %140 = or i32 %139, 1048576
  store i32 %140, ptr %138, align 8
  br i1 %47, label %141, label %143

141:                                              ; preds = %137
  %142 = or i32 %139, 3145728
  store i32 %142, ptr %138, align 8
  br label %143

143:                                              ; preds = %141, %137, %134
  %144 = add nuw nsw i32 %77, 1
  br label %76

145:                                              ; preds = %126, %60
  %146 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 4
  %147 = load ptr, ptr %146, align 4
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %172

149:                                              ; preds = %145
  %150 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  %151 = load ptr, ptr %150, align 4
  %152 = getelementptr inbounds %struct.edma_cc, ptr %151, i32 0, i32 9
  %153 = load i32, ptr %152, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %172, label %155

155:                                              ; preds = %149
  %156 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %157 = load i32, ptr %156, align 4
  %158 = shl i32 %157, 2
  %159 = and i32 %158, 28
  %160 = shl nuw nsw i32 7, %159
  %161 = xor i32 %160, -1
  %162 = lshr i32 %157, 1
  %163 = and i32 %162, 32764
  %164 = add nuw nsw i32 %163, 576
  %165 = getelementptr inbounds %struct.edma_cc, ptr %151, i32 0, i32 2
  %166 = load ptr, ptr %165, align 4
  %167 = getelementptr i8, ptr %166, i32 %164
  %168 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %167) #12, !srcloc !10
  %169 = and i32 %168, %161
  %170 = load ptr, ptr %165, align 4
  %171 = getelementptr i8, ptr %170, i32 %164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %171, i32 %169) #12, !srcloc !13
  br label %172

172:                                              ; preds = %155, %149, %145
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %58, ptr noundef %0) #12
  %173 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %58, i32 0, i32 1
  store i32 %5, ptr %173, align 4
  %174 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %58, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %174, align 16
  %175 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %58, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %175, align 4
  %176 = getelementptr inbounds %struct.virt_dma_desc, ptr %58, i32 0, i32 1
  store i32 0, ptr %176, align 4
  %177 = getelementptr inbounds %struct.virt_dma_desc, ptr %58, i32 0, i32 1, i32 1
  store i32 0, ptr %177, align 64
  %178 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %179 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %178) #12
  %180 = getelementptr inbounds %struct.virt_dma_desc, ptr %58, i32 0, i32 2
  %181 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %182 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %183 = load ptr, ptr %182, align 4
  store ptr %180, ptr %182, align 4
  store ptr %181, ptr %180, align 4
  %184 = getelementptr inbounds %struct.virt_dma_desc, ptr %58, i32 0, i32 2, i32 1
  store ptr %183, ptr %184, align 8
  store volatile ptr %180, ptr %183, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %178, i32 noundef %179) #12
  br label %185

185:                                              ; preds = %172, %133, %123, %50, %48, %44, %38, %29, %6
  %186 = phi ptr [ null, %38 ], [ null, %44 ], [ null, %123 ], [ %58, %172 ], [ null, %133 ], [ null, %29 ], [ null, %6 ], [ null, %48 ], [ null, %50 ]
  ret ptr %186
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_alloc_chan_resources(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 4
  %6 = load ptr, ptr %5, align 4
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.edma_tc, ptr %6, i32 0, i32 1
  br label %20

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 19
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 1
  %16 = load ptr, ptr %15, align 4
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr %struct.edma_tc, ptr %12, i32 %17
  store ptr %18, ptr %5, align 4
  %19 = getelementptr %struct.edma_tc, ptr %12, i32 %17, i32 1
  br label %20

20:                                               ; preds = %14, %8
  %21 = phi ptr [ %19, %14 ], [ %9, %8 ]
  %22 = load i16, ptr %21, align 4
  %23 = zext i16 %22 to i32
  br label %24

24:                                               ; preds = %20, %10
  %25 = phi i32 [ -1, %10 ], [ %23, %20 ]
  %26 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %27 = load i32, ptr %26, align 4
  %28 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 15
  %29 = load ptr, ptr %28, align 4
  %30 = lshr i32 %27, 5
  %31 = getelementptr i32, ptr %29, i32 %30
  %32 = load volatile i32, ptr %31, align 4
  %33 = and i32 %27, 31
  %34 = shl nuw i32 1, %33
  %35 = and i32 %32, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %113, label %37

37:                                               ; preds = %24
  %38 = shl nuw nsw i32 %30, 2
  %39 = and i32 %38, 8188
  %40 = add nuw nsw i32 %39, 832
  %41 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 2
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr i8, ptr %42, i32 %40
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #12, !srcloc !10
  %45 = or i32 %44, %34
  %46 = load ptr, ptr %41, align 4
  %47 = getelementptr i8, ptr %46, i32 %40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #12, !srcloc !13
  %48 = load ptr, ptr %2, align 4
  %49 = load i32, ptr %26, align 4
  %50 = and i32 %49, 31
  %51 = shl nuw i32 1, %50
  %52 = lshr i32 %49, 3
  %53 = and i32 %52, 8188
  %54 = add nuw nsw i32 %53, 8232
  %55 = getelementptr inbounds %struct.edma_cc, ptr %48, i32 0, i32 2
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %56, i32 %54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 %51) #12, !srcloc !13
  %58 = add nuw nsw i32 %53, 8200
  %59 = load ptr, ptr %55, align 4
  %60 = getelementptr i8, ptr %59, i32 %58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %51) #12, !srcloc !13
  %61 = add nuw nsw i32 %53, 8256
  %62 = load ptr, ptr %55, align 4
  %63 = getelementptr i8, ptr %62, i32 %61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 %51) #12, !srcloc !13
  %64 = add nuw nsw i32 %53, 776
  %65 = load ptr, ptr %55, align 4
  %66 = getelementptr i8, ptr %65, i32 %64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %51) #12, !srcloc !13
  %67 = add nuw nsw i32 %53, 8304
  %68 = load ptr, ptr %55, align 4
  %69 = getelementptr i8, ptr %68, i32 %67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %51) #12, !srcloc !13
  %70 = load ptr, ptr %2, align 4
  %71 = load i32, ptr %26, align 4
  %72 = and i32 %71, 31
  %73 = shl nuw i32 1, %72
  %74 = lshr i32 %71, 3
  %75 = and i32 %74, 8188
  %76 = add nuw nsw i32 %75, 8304
  %77 = getelementptr inbounds %struct.edma_cc, ptr %70, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 %76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %73) #12, !srcloc !13
  %80 = add nuw nsw i32 %75, 8288
  %81 = load ptr, ptr %77, align 4
  %82 = getelementptr i8, ptr %81, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %73) #12, !srcloc !13
  %83 = load ptr, ptr %2, align 4
  %84 = load i32, ptr %26, align 4
  %85 = shl i32 %84, 2
  %86 = and i32 %85, 28
  %87 = icmp eq i32 %25, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %37
  %89 = getelementptr inbounds %struct.edma_cc, ptr %83, i32 0, i32 11
  %90 = load i32, ptr %89, align 4
  br label %91

91:                                               ; preds = %88, %37
  %92 = phi i32 [ %90, %88 ], [ %25, %37 ]
  %93 = getelementptr inbounds %struct.edma_cc, ptr %83, i32 0, i32 9
  %94 = load i32, ptr %93, align 4
  %95 = icmp ult i32 %92, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %91
  %97 = and i32 %92, 7
  %98 = shl nuw nsw i32 7, %86
  %99 = xor i32 %98, -1
  %100 = shl nuw nsw i32 %97, %86
  %101 = lshr i32 %84, 1
  %102 = and i32 %101, 32764
  %103 = add nuw nsw i32 %102, 576
  %104 = getelementptr inbounds %struct.edma_cc, ptr %83, i32 0, i32 2
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %105, i32 %103
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %106) #12, !srcloc !10
  %108 = and i32 %107, %99
  %109 = or i32 %108, %100
  %110 = load ptr, ptr %104, align 4
  %111 = getelementptr i8, ptr %110, i32 %103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %111, i32 %109) #12, !srcloc !13
  %112 = load i32, ptr %26, align 4
  br label %115

113:                                              ; preds = %24
  %114 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %114, ptr noundef nonnull @.str.38, i32 noundef %27) #14
  br label %173

115:                                              ; preds = %96, %91
  %116 = phi i32 [ %84, %91 ], [ %112, %96 ]
  %117 = tail call fastcc i32 @edma_alloc_slot(ptr noundef %3, i32 noundef %116)
  %118 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 8
  store i32 %117, ptr %118, align 4
  %119 = icmp slt i32 %117, 0
  br i1 %119, label %120, label %156

120:                                              ; preds = %115
  %121 = load i32, ptr %26, align 4
  %122 = and i32 %121, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.37, i32 noundef %122) #14
  %123 = load i32, ptr %118, align 4
  %124 = load ptr, ptr %2, align 4
  %125 = load i32, ptr %26, align 4
  %126 = and i32 %125, 31
  %127 = shl nuw i32 1, %126
  %128 = lshr i32 %125, 3
  %129 = and i32 %128, 8188
  %130 = add nuw nsw i32 %129, 8232
  %131 = getelementptr inbounds %struct.edma_cc, ptr %124, i32 0, i32 2
  %132 = load ptr, ptr %131, align 4
  %133 = getelementptr i8, ptr %132, i32 %130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %133, i32 %127) #12, !srcloc !13
  %134 = add nuw nsw i32 %129, 8200
  %135 = load ptr, ptr %131, align 4
  %136 = getelementptr i8, ptr %135, i32 %134
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %136, i32 %127) #12, !srcloc !13
  %137 = add nuw nsw i32 %129, 8256
  %138 = load ptr, ptr %131, align 4
  %139 = getelementptr i8, ptr %138, i32 %137
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %127) #12, !srcloc !13
  %140 = add nuw nsw i32 %129, 776
  %141 = load ptr, ptr %131, align 4
  %142 = getelementptr i8, ptr %141, i32 %140
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %127) #12, !srcloc !13
  %143 = add nuw nsw i32 %129, 8304
  %144 = load ptr, ptr %131, align 4
  %145 = getelementptr i8, ptr %144, i32 %143
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %127) #12, !srcloc !13
  %146 = load ptr, ptr %2, align 4
  %147 = load i32, ptr %26, align 4
  %148 = and i32 %147, 31
  %149 = shl nuw i32 1, %148
  %150 = lshr i32 %147, 3
  %151 = and i32 %150, 8188
  %152 = add nuw nsw i32 %151, 8280
  %153 = getelementptr inbounds %struct.edma_cc, ptr %146, i32 0, i32 2
  %154 = load ptr, ptr %153, align 4
  %155 = getelementptr i8, ptr %154, i32 %152
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %155, i32 %149) #12, !srcloc !13
  br label %173

156:                                              ; preds = %115
  %157 = load ptr, ptr %2, align 4
  %158 = getelementptr inbounds %struct.edma_cc, ptr %157, i32 0, i32 10
  %159 = load i8, ptr %158, align 4, !range !14
  %160 = icmp eq i8 %159, 0
  br i1 %160, label %171, label %161

161:                                              ; preds = %156
  %162 = load i32, ptr %26, align 4
  %163 = shl i32 %117, 5
  %164 = and i32 %163, 2097120
  %165 = shl i32 %162, 2
  %166 = and i32 %165, 262140
  %167 = add nuw nsw i32 %166, 256
  %168 = getelementptr inbounds %struct.edma_cc, ptr %157, i32 0, i32 2
  %169 = load ptr, ptr %168, align 4
  %170 = getelementptr i8, ptr %169, i32 %167
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %170, i32 %164) #12, !srcloc !13
  br label %171

171:                                              ; preds = %161, %156
  %172 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 6
  store i8 1, ptr %172, align 4
  br label %173

173:                                              ; preds = %171, %120, %113
  %174 = phi i32 [ %123, %120 ], [ 0, %171 ], [ -22, %113 ]
  ret i32 %174
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edma_free_chan_resources(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %6 = load i32, ptr %5, align 4
  %7 = and i32 %6, 31
  %8 = shl nuw i32 1, %7
  %9 = lshr i32 %6, 3
  %10 = and i32 %9, 8188
  %11 = add nuw nsw i32 %10, 8232
  %12 = getelementptr inbounds %struct.edma_cc, ptr %4, i32 0, i32 2
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr i8, ptr %13, i32 %11
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 %8) #12, !srcloc !13
  %15 = add nuw nsw i32 %10, 8200
  %16 = load ptr, ptr %12, align 4
  %17 = getelementptr i8, ptr %16, i32 %15
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %8) #12, !srcloc !13
  %18 = add nuw nsw i32 %10, 8256
  %19 = load ptr, ptr %12, align 4
  %20 = getelementptr i8, ptr %19, i32 %18
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 %8) #12, !srcloc !13
  %21 = add nuw nsw i32 %10, 776
  %22 = load ptr, ptr %12, align 4
  %23 = getelementptr i8, ptr %22, i32 %21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %8) #12, !srcloc !13
  %24 = add nuw nsw i32 %10, 8304
  %25 = load ptr, ptr %12, align 4
  %26 = getelementptr i8, ptr %25, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 %8) #12, !srcloc !13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %27 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %27, align 4
  %28 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %29 = call i32 @_raw_spin_lock_irqsave(ptr noundef %28) #12
  %30 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %31 = load volatile ptr, ptr %30, align 4
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %38, label %33

33:                                               ; preds = %1
  %34 = load ptr, ptr %27, align 4
  %35 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  store ptr %34, ptr %37, align 4
  store ptr %31, ptr %34, align 4
  store ptr %2, ptr %36, align 4
  store ptr %36, ptr %27, align 4
  store volatile ptr %30, ptr %30, align 4
  store ptr %30, ptr %35, align 4
  br label %38

38:                                               ; preds = %33, %1
  %39 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %40 = load volatile ptr, ptr %39, align 4
  %41 = icmp eq ptr %40, %39
  br i1 %41, label %47, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %27, align 4
  %44 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %45 = load ptr, ptr %44, align 4
  %46 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %43, ptr %46, align 4
  store ptr %40, ptr %43, align 4
  store ptr %2, ptr %45, align 4
  store ptr %45, ptr %27, align 4
  store volatile ptr %39, ptr %39, align 4
  store ptr %39, ptr %44, align 4
  br label %47

47:                                               ; preds = %42, %38
  %48 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %49 = load volatile ptr, ptr %48, align 4
  %50 = icmp eq ptr %49, %48
  br i1 %50, label %56, label %51

51:                                               ; preds = %47
  %52 = load ptr, ptr %27, align 4
  %53 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %52, ptr %55, align 4
  store ptr %49, ptr %52, align 4
  store ptr %2, ptr %54, align 4
  store ptr %54, ptr %27, align 4
  store volatile ptr %48, ptr %48, align 4
  store ptr %48, ptr %53, align 4
  br label %56

56:                                               ; preds = %51, %47
  %57 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %58 = load volatile ptr, ptr %57, align 4
  %59 = icmp eq ptr %58, %57
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load ptr, ptr %27, align 4
  %62 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %63 = load ptr, ptr %62, align 4
  %64 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  store ptr %61, ptr %64, align 4
  store ptr %58, ptr %61, align 4
  store ptr %2, ptr %63, align 4
  store ptr %63, ptr %27, align 4
  store volatile ptr %57, ptr %57, align 4
  store ptr %57, ptr %62, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %67 = load volatile ptr, ptr %66, align 4
  %68 = icmp eq ptr %67, %66
  br i1 %68, label %74, label %69

69:                                               ; preds = %65
  %70 = load ptr, ptr %27, align 4
  %71 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %72 = load ptr, ptr %71, align 4
  %73 = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  store ptr %70, ptr %73, align 4
  store ptr %67, ptr %70, align 4
  store ptr %2, ptr %72, align 4
  store ptr %72, ptr %27, align 4
  store volatile ptr %66, ptr %66, align 4
  store ptr %66, ptr %71, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load ptr, ptr %2, align 8
  %76 = icmp eq ptr %75, %2
  br i1 %76, label %84, label %77

77:                                               ; preds = %77, %74
  %78 = phi ptr [ %82, %77 ], [ %75, %74 ]
  %79 = getelementptr i8, ptr %78, i32 -64
  %80 = load i32, ptr %79, align 4
  %81 = and i32 %80, -65
  store i32 %81, ptr %79, align 4
  %82 = load ptr, ptr %78, align 4
  %83 = icmp eq ptr %82, %2
  br i1 %83, label %84, label %77

84:                                               ; preds = %77, %74
  call void @_raw_spin_unlock_irqrestore(ptr noundef %28, i32 noundef %29) #12
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %85

85:                                               ; preds = %105, %84
  %86 = phi i32 [ 0, %84 ], [ %106, %105 ]
  %87 = getelementptr %struct.edma_chan, ptr %0, i32 0, i32 8, i32 %86
  %88 = load i32, ptr %87, align 4
  %89 = icmp sgt i32 %88, -1
  br i1 %89, label %90, label %105

90:                                               ; preds = %85
  %91 = load ptr, ptr %3, align 4
  %92 = and i32 %88, 65535
  %93 = getelementptr inbounds %struct.edma_cc, ptr %91, i32 0, i32 8
  %94 = load i32, ptr %93, align 4
  %95 = icmp ult i32 %92, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = getelementptr inbounds %struct.edma_cc, ptr %91, i32 0, i32 2
  %98 = load ptr, ptr %97, align 4
  %99 = shl nuw nsw i32 %92, 5
  %100 = add nuw nsw i32 %99, 16384
  %101 = getelementptr i8, ptr %98, i32 %100
  call void @mmiocpy(ptr noundef %101, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #12
  %102 = getelementptr inbounds %struct.edma_cc, ptr %91, i32 0, i32 14
  %103 = load ptr, ptr %102, align 4
  call void @_clear_bit(i32 noundef %92, ptr noundef %103) #12
  br label %104

104:                                              ; preds = %96, %90
  store i32 -1, ptr %87, align 4
  br label %105

105:                                              ; preds = %104, %85
  %106 = add nuw nsw i32 %86, 1
  %107 = icmp eq i32 %106, 20
  br i1 %107, label %108, label %85

108:                                              ; preds = %105
  %109 = load ptr, ptr %3, align 4
  %110 = getelementptr inbounds %struct.edma_cc, ptr %109, i32 0, i32 10
  %111 = load i8, ptr %110, align 4, !range !14
  %112 = icmp eq i8 %111, 0
  br i1 %112, label %125, label %113

113:                                              ; preds = %108
  %114 = getelementptr inbounds %struct.edma_cc, ptr %109, i32 0, i32 20
  %115 = load i32, ptr %114, align 4
  %116 = load i32, ptr %5, align 4
  %117 = shl i32 %115, 5
  %118 = and i32 %117, 2097120
  %119 = shl i32 %116, 2
  %120 = and i32 %119, 262140
  %121 = add nuw nsw i32 %120, 256
  %122 = getelementptr inbounds %struct.edma_cc, ptr %109, i32 0, i32 2
  %123 = load ptr, ptr %122, align 4
  %124 = getelementptr i8, ptr %123, i32 %121
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %124, i32 %118) #12, !srcloc !13
  br label %125

125:                                              ; preds = %113, %108
  %126 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 6
  %127 = load i8, ptr %126, align 4, !range !14
  %128 = icmp eq i8 %127, 0
  br i1 %128, label %162, label %129

129:                                              ; preds = %125
  %130 = load ptr, ptr %3, align 4
  %131 = load i32, ptr %5, align 4
  %132 = and i32 %131, 31
  %133 = shl nuw i32 1, %132
  %134 = lshr i32 %131, 3
  %135 = and i32 %134, 8188
  %136 = add nuw nsw i32 %135, 8232
  %137 = getelementptr inbounds %struct.edma_cc, ptr %130, i32 0, i32 2
  %138 = load ptr, ptr %137, align 4
  %139 = getelementptr i8, ptr %138, i32 %136
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %139, i32 %133) #12, !srcloc !13
  %140 = add nuw nsw i32 %135, 8200
  %141 = load ptr, ptr %137, align 4
  %142 = getelementptr i8, ptr %141, i32 %140
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %142, i32 %133) #12, !srcloc !13
  %143 = add nuw nsw i32 %135, 8256
  %144 = load ptr, ptr %137, align 4
  %145 = getelementptr i8, ptr %144, i32 %143
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %145, i32 %133) #12, !srcloc !13
  %146 = add nuw nsw i32 %135, 776
  %147 = load ptr, ptr %137, align 4
  %148 = getelementptr i8, ptr %147, i32 %146
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 %133) #12, !srcloc !13
  %149 = add nuw nsw i32 %135, 8304
  %150 = load ptr, ptr %137, align 4
  %151 = getelementptr i8, ptr %150, i32 %149
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %151, i32 %133) #12, !srcloc !13
  %152 = load ptr, ptr %3, align 4
  %153 = load i32, ptr %5, align 4
  %154 = and i32 %153, 31
  %155 = shl nuw i32 1, %154
  %156 = lshr i32 %153, 3
  %157 = and i32 %156, 8188
  %158 = add nuw nsw i32 %157, 8280
  %159 = getelementptr inbounds %struct.edma_cc, ptr %152, i32 0, i32 2
  %160 = load ptr, ptr %159, align 4
  %161 = getelementptr i8, ptr %160, i32 %158
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %161, i32 %155) #12, !srcloc !13
  store i8 0, ptr %126, align 4
  br label %162

162:                                              ; preds = %129, %125
  %163 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 4
  store ptr null, ptr %163, align 4
  %164 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 7
  store i8 0, ptr %164, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edma_issue_pending(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
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
  %18 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 2
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  tail call fastcc void @edma_execute(ptr noundef %0)
  br label %22

22:                                               ; preds = %21, %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4)
  %5 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !22
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
  br i1 %15, label %20, label %18

18:                                               ; preds = %14
  %19 = or i1 %17, %16
  br i1 %19, label %211, label %22

20:                                               ; preds = %14
  %21 = and i1 %17, %16
  br i1 %21, label %211, label %22

22:                                               ; preds = %20, %18
  %23 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #12
  %25 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = icmp eq ptr %26, null
  br i1 %27, label %141, label %28

28:                                               ; preds = %22
  %29 = load i32, ptr %26, align 4
  %30 = icmp eq i32 %29, %1
  br i1 %30, label %31, label %141

31:                                               ; preds = %28
  %32 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 0, i32 2
  %33 = load i32, ptr %32, align 4
  %34 = icmp eq i32 %33, 2
  %35 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 0, i32 7
  %36 = load ptr, ptr %35, align 4
  %37 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 0, i32 13
  %38 = getelementptr inbounds %struct.edma_chan, ptr %36, i32 0, i32 5
  %39 = load i32, ptr %38, align 4
  %40 = and i32 %39, 31
  %41 = shl nuw i32 1, %40
  %42 = getelementptr inbounds %struct.edma_chan, ptr %36, i32 0, i32 3
  %43 = load ptr, ptr %42, align 4
  %44 = getelementptr inbounds %struct.edma_chan, ptr %36, i32 0, i32 8
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 5
  %47 = and i32 %46, 2097120
  %48 = add nuw nsw i32 %47, 16384
  %49 = select i1 %34, i32 12, i32 4
  %50 = or i32 %48, %49
  %51 = getelementptr inbounds %struct.edma_cc, ptr %43, i32 0, i32 2
  %52 = load ptr, ptr %51, align 4
  %53 = getelementptr i8, ptr %52, i32 %50
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #12, !srcloc !10
  %55 = load i32, ptr %32, align 4
  %56 = add i32 %55, -1
  %57 = icmp ult i32 %56, 2
  %58 = select i1 %57, i32 8192, i32 8208
  %59 = lshr i32 %39, 3
  %60 = and i32 %59, 8188
  %61 = add nuw nsw i32 %58, %60
  %62 = load ptr, ptr %42, align 4
  %63 = getelementptr inbounds %struct.edma_cc, ptr %62, i32 0, i32 2
  %64 = load ptr, ptr %63, align 4
  %65 = getelementptr i8, ptr %64, i32 %61
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %65) #12, !srcloc !10
  %67 = and i32 %66, %41
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %93, label %69

69:                                               ; preds = %85, %31
  %70 = phi i32 [ %83, %85 ], [ 1000, %31 ]
  %71 = load ptr, ptr %42, align 4
  %72 = load i32, ptr %44, align 4
  %73 = shl i32 %72, 5
  %74 = and i32 %73, 2097120
  %75 = add nuw nsw i32 %74, 16384
  %76 = or i32 %75, %49
  %77 = getelementptr inbounds %struct.edma_cc, ptr %71, i32 0, i32 2
  %78 = load ptr, ptr %77, align 4
  %79 = getelementptr i8, ptr %78, i32 %76
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #12, !srcloc !10
  %81 = icmp eq i32 %80, %54
  br i1 %81, label %82, label %93

82:                                               ; preds = %69
  %83 = add nsw i32 %70, -1
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %93, label %85

85:                                               ; preds = %82
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !23
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #12, !srcloc !24
  %86 = load ptr, ptr %42, align 4
  %87 = getelementptr inbounds %struct.edma_cc, ptr %86, i32 0, i32 2
  %88 = load ptr, ptr %87, align 4
  %89 = getelementptr i8, ptr %88, i32 %61
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #12, !srcloc !10
  %91 = and i32 %90, %41
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %69

93:                                               ; preds = %85, %82, %69, %31
  %94 = phi i32 [ %54, %31 ], [ %54, %82 ], [ %80, %69 ], [ %54, %85 ]
  %95 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 0, i32 3
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 1, i32 0, i32 0, i32 1
  %100 = load i32, ptr %99, align 4
  %101 = sub i32 %100, %94
  %102 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 0, i32 11
  %103 = load i32, ptr %102, align 4
  %104 = add i32 %101, %103
  %105 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 0, i32 12
  store i32 %104, ptr %105, align 4
  br label %150

106:                                              ; preds = %93
  %107 = icmp eq i32 %94, 0
  br i1 %107, label %150, label %108

108:                                              ; preds = %106
  %109 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 0, i32 9
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 0, i32 8
  %112 = load i32, ptr %111, align 4
  %113 = icmp slt i32 %110, %112
  br i1 %113, label %117, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 0, i32 12
  %116 = load i32, ptr %115, align 4
  br label %150

117:                                              ; preds = %108
  %118 = getelementptr %struct.edma_pset, ptr %37, i32 %110
  %119 = getelementptr inbounds %struct.edma_desc, ptr %26, i32 0, i32 12
  br label %120

120:                                              ; preds = %134, %117
  %121 = phi i32 [ %110, %117 ], [ %135, %134 ]
  %122 = phi ptr [ %118, %117 ], [ %139, %134 ]
  %123 = getelementptr inbounds %struct.edma_pset, ptr %122, i32 0, i32 1
  %124 = load i32, ptr %123, align 4
  %125 = icmp ugt i32 %124, %94
  br i1 %125, label %134, label %126

126:                                              ; preds = %120
  %127 = load i32, ptr %122, align 4
  %128 = add i32 %127, %124
  %129 = icmp ult i32 %94, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, ptr %119, align 4
  %132 = sub i32 %124, %94
  %133 = add i32 %132, %131
  br label %150

134:                                              ; preds = %126, %120
  %135 = add i32 %121, 1
  store i32 %135, ptr %109, align 4
  %136 = load i32, ptr %122, align 4
  %137 = load i32, ptr %119, align 4
  %138 = sub i32 %137, %136
  store i32 %138, ptr %119, align 4
  %139 = getelementptr %struct.edma_pset, ptr %122, i32 1
  %140 = icmp eq i32 %135, %112
  br i1 %140, label %150, label %120

141:                                              ; preds = %28, %22
  %142 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #12
  %143 = icmp eq ptr %142, null
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = getelementptr inbounds %struct.edma_desc, ptr %142, i32 0, i32 11
  %146 = load i32, ptr %145, align 4
  br label %150

147:                                              ; preds = %141
  %148 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %149 = select i1 %9, ptr %4, ptr %148
  store i32 0, ptr %149, align 4
  br label %155

150:                                              ; preds = %144, %134, %130, %114, %106, %98
  %151 = phi i32 [ %146, %144 ], [ %104, %98 ], [ %133, %130 ], [ 0, %106 ], [ %116, %114 ], [ %138, %134 ]
  %152 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  %153 = select i1 %9, ptr %4, ptr %152
  store i32 %151, ptr %153, align 4
  %154 = icmp eq i32 %151, 0
  br i1 %154, label %155, label %209

155:                                              ; preds = %150, %147
  %156 = load ptr, ptr %25, align 4
  %157 = icmp eq ptr %156, null
  br i1 %157, label %209, label %158

158:                                              ; preds = %155
  %159 = getelementptr inbounds %struct.edma_desc, ptr %156, i32 0, i32 4
  %160 = load i8, ptr %159, align 4, !range !14
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %209, label %162

162:                                              ; preds = %158
  %163 = load i32, ptr %156, align 4
  %164 = icmp eq i32 %163, %1
  br i1 %164, label %165, label %209

165:                                              ; preds = %162
  %166 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  %167 = load ptr, ptr %166, align 4
  %168 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %169 = load i32, ptr %168, align 4
  %170 = and i32 %169, 31
  %171 = shl nuw i32 1, %170
  %172 = lshr i32 %169, 3
  %173 = and i32 %172, 8188
  %174 = add nuw nsw i32 %173, 8232
  %175 = getelementptr inbounds %struct.edma_cc, ptr %167, i32 0, i32 2
  %176 = load ptr, ptr %175, align 4
  %177 = getelementptr i8, ptr %176, i32 %174
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %177, i32 %171) #12, !srcloc !13
  %178 = add nuw nsw i32 %173, 8200
  %179 = load ptr, ptr %175, align 4
  %180 = getelementptr i8, ptr %179, i32 %178
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %180, i32 %171) #12, !srcloc !13
  %181 = add nuw nsw i32 %173, 8256
  %182 = load ptr, ptr %175, align 4
  %183 = getelementptr i8, ptr %182, i32 %181
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %183, i32 %171) #12, !srcloc !13
  %184 = add nuw nsw i32 %173, 776
  %185 = load ptr, ptr %175, align 4
  %186 = getelementptr i8, ptr %185, i32 %184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %171) #12, !srcloc !13
  %187 = add nuw nsw i32 %173, 8304
  %188 = load ptr, ptr %175, align 4
  %189 = getelementptr i8, ptr %188, i32 %187
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %189, i32 %171) #12, !srcloc !13
  %190 = load ptr, ptr %25, align 4
  %191 = load i32, ptr %190, align 4
  %192 = icmp slt i32 %191, 1
  br i1 %192, label %193, label %194, !prof !9

193:                                              ; preds = %165
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #12, !srcloc !20
  unreachable

194:                                              ; preds = %165
  %195 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %190, i32 0, i32 3
  %196 = load ptr, ptr %195, align 4
  %197 = getelementptr inbounds %struct.dma_chan, ptr %196, i32 0, i32 3
  store i32 %191, ptr %197, align 4
  store i32 0, ptr %190, align 4
  %198 = getelementptr inbounds %struct.virt_dma_desc, ptr %190, i32 0, i32 2
  %199 = getelementptr inbounds %struct.virt_dma_chan, ptr %196, i32 0, i32 7
  %200 = getelementptr inbounds %struct.virt_dma_chan, ptr %196, i32 0, i32 7, i32 1
  %201 = load ptr, ptr %200, align 4
  store ptr %198, ptr %200, align 4
  store ptr %199, ptr %198, align 4
  %202 = getelementptr inbounds %struct.virt_dma_desc, ptr %190, i32 0, i32 2, i32 1
  store ptr %201, ptr %202, align 4
  store volatile ptr %198, ptr %201, align 4
  %203 = getelementptr inbounds %struct.virt_dma_chan, ptr %196, i32 0, i32 1, i32 1
  %204 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %203) #12
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %194
  %207 = getelementptr inbounds %struct.virt_dma_chan, ptr %196, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %207) #12
  br label %208

208:                                              ; preds = %206, %194
  store ptr null, ptr %25, align 4
  tail call fastcc void @edma_execute(ptr noundef %0)
  br label %209

209:                                              ; preds = %208, %162, %158, %155, %150
  %210 = phi i32 [ 1, %150 ], [ 0, %208 ], [ 1, %162 ], [ 1, %158 ], [ 1, %155 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #12
  br label %211

211:                                              ; preds = %209, %20, %18
  %212 = phi i32 [ %210, %209 ], [ 0, %18 ], [ 0, %20 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4)
  ret i32 %212
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @edma_slave_config(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #11 {
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
  %22 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 10
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %22, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  br label %23

23:                                               ; preds = %21, %17, %10, %6, %2
  %24 = phi i32 [ 0, %21 ], [ -22, %6 ], [ -22, %2 ], [ -22, %17 ], [ -22, %10 ]
  ret i32 %24
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_dma_pause(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 2
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  %9 = load ptr, ptr %8, align 4
  %10 = and i32 %7, 31
  %11 = shl nuw i32 1, %10
  %12 = lshr i32 %7, 3
  %13 = and i32 %12, 8188
  %14 = add nuw nsw i32 %13, 8232
  %15 = getelementptr inbounds %struct.edma_cc, ptr %9, i32 0, i32 2
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %16, i32 %14
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %17, i32 %11) #12, !srcloc !13
  br label %18

18:                                               ; preds = %5, %1
  %19 = phi i32 [ 0, %5 ], [ -22, %1 ]
  ret i32 %19
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_dma_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %3 = load i32, ptr %2, align 4
  %4 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  %5 = load ptr, ptr %4, align 4
  %6 = and i32 %3, 31
  %7 = shl nuw i32 1, %6
  %8 = lshr i32 %3, 3
  %9 = and i32 %8, 8188
  %10 = add nuw nsw i32 %9, 8240
  %11 = getelementptr inbounds %struct.edma_cc, ptr %5, i32 0, i32 2
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr i8, ptr %12, i32 %10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %7) #12, !srcloc !13
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_terminate_all(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 2
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %82, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 31
  %15 = shl nuw i32 1, %14
  %16 = lshr i32 %13, 3
  %17 = and i32 %16, 8188
  %18 = add nuw nsw i32 %17, 8232
  %19 = getelementptr inbounds %struct.edma_cc, ptr %11, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 %18
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %15) #12, !srcloc !13
  %22 = add nuw nsw i32 %17, 8200
  %23 = load ptr, ptr %19, align 4
  %24 = getelementptr i8, ptr %23, i32 %22
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %15) #12, !srcloc !13
  %25 = add nuw nsw i32 %17, 8256
  %26 = load ptr, ptr %19, align 4
  %27 = getelementptr i8, ptr %26, i32 %25
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %15) #12, !srcloc !13
  %28 = add nuw nsw i32 %17, 776
  %29 = load ptr, ptr %19, align 4
  %30 = getelementptr i8, ptr %29, i32 %28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %30, i32 %15) #12, !srcloc !13
  %31 = add nuw nsw i32 %17, 8304
  %32 = load ptr, ptr %19, align 4
  %33 = getelementptr i8, ptr %32, i32 %31
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %15) #12, !srcloc !13
  %34 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 4
  %35 = load ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %68

37:                                               ; preds = %9
  %38 = load ptr, ptr %6, align 4
  %39 = getelementptr inbounds %struct.edma_desc, ptr %38, i32 0, i32 3
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %68, label %42

42:                                               ; preds = %37
  %43 = load ptr, ptr %10, align 4
  %44 = getelementptr inbounds %struct.edma_cc, ptr %43, i32 0, i32 11
  %45 = load i32, ptr %44, align 4
  %46 = getelementptr inbounds %struct.edma_cc, ptr %43, i32 0, i32 9
  %47 = load i32, ptr %46, align 4
  %48 = icmp ult i32 %45, %47
  br i1 %48, label %49, label %68

49:                                               ; preds = %42
  %50 = load i32, ptr %12, align 4
  %51 = shl i32 %50, 2
  %52 = and i32 %51, 28
  %53 = and i32 %45, 7
  %54 = shl nuw nsw i32 7, %52
  %55 = xor i32 %54, -1
  %56 = shl nuw nsw i32 %53, %52
  %57 = lshr i32 %50, 1
  %58 = and i32 %57, 32764
  %59 = add nuw nsw i32 %58, 576
  %60 = getelementptr inbounds %struct.edma_cc, ptr %43, i32 0, i32 2
  %61 = load ptr, ptr %60, align 4
  %62 = getelementptr i8, ptr %61, i32 %59
  %63 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %62) #12, !srcloc !10
  %64 = and i32 %63, %55
  %65 = or i32 %64, %56
  %66 = load ptr, ptr %60, align 4
  %67 = getelementptr i8, ptr %66, i32 %59
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 %65) #12, !srcloc !13
  br label %68

68:                                               ; preds = %49, %42, %37, %9
  %69 = load ptr, ptr %6, align 4
  %70 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %69, i32 0, i32 3
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.virt_dma_desc, ptr %69, i32 0, i32 2
  %73 = getelementptr inbounds %struct.virt_dma_chan, ptr %71, i32 0, i32 8
  %74 = getelementptr inbounds %struct.virt_dma_chan, ptr %71, i32 0, i32 8, i32 1
  %75 = load ptr, ptr %74, align 4
  store ptr %72, ptr %74, align 4
  store ptr %73, ptr %72, align 4
  %76 = getelementptr inbounds %struct.virt_dma_desc, ptr %69, i32 0, i32 2, i32 1
  store ptr %75, ptr %76, align 4
  store volatile ptr %72, ptr %75, align 4
  %77 = getelementptr inbounds %struct.virt_dma_chan, ptr %71, i32 0, i32 9
  %78 = load ptr, ptr %77, align 4
  %79 = icmp eq ptr %78, %69
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  store ptr null, ptr %77, align 4
  br label %81

81:                                               ; preds = %80, %68
  store ptr null, ptr %6, align 4
  br label %82

82:                                               ; preds = %81, %1
  %83 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %84 = load volatile ptr, ptr %83, align 4
  %85 = icmp eq ptr %84, %83
  br i1 %85, label %91, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %3, align 4
  %88 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %89 = load ptr, ptr %88, align 4
  %90 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %87, ptr %90, align 4
  store ptr %84, ptr %87, align 4
  store ptr %2, ptr %89, align 4
  store ptr %89, ptr %3, align 4
  store volatile ptr %83, ptr %83, align 4
  store ptr %83, ptr %88, align 4
  br label %91

91:                                               ; preds = %86, %82
  %92 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %93 = load volatile ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %92
  br i1 %94, label %100, label %95

95:                                               ; preds = %91
  %96 = load ptr, ptr %3, align 4
  %97 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %98 = load ptr, ptr %97, align 4
  %99 = getelementptr inbounds %struct.list_head, ptr %93, i32 0, i32 1
  store ptr %96, ptr %99, align 4
  store ptr %93, ptr %96, align 4
  store ptr %2, ptr %98, align 4
  store ptr %98, ptr %3, align 4
  store volatile ptr %92, ptr %92, align 4
  store ptr %92, ptr %97, align 4
  br label %100

100:                                              ; preds = %95, %91
  %101 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %102 = load volatile ptr, ptr %101, align 4
  %103 = icmp eq ptr %102, %101
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %3, align 4
  %106 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %107 = load ptr, ptr %106, align 4
  %108 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  store ptr %105, ptr %108, align 4
  store ptr %102, ptr %105, align 4
  store ptr %2, ptr %107, align 4
  store ptr %107, ptr %3, align 4
  store volatile ptr %101, ptr %101, align 4
  store ptr %101, ptr %106, align 4
  br label %109

109:                                              ; preds = %104, %100
  %110 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %111 = load volatile ptr, ptr %110, align 4
  %112 = icmp eq ptr %111, %110
  br i1 %112, label %118, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %3, align 4
  %115 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %116 = load ptr, ptr %115, align 4
  %117 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  store ptr %114, ptr %117, align 4
  store ptr %111, ptr %114, align 4
  store ptr %2, ptr %116, align 4
  store ptr %116, ptr %3, align 4
  store volatile ptr %110, ptr %110, align 4
  store ptr %110, ptr %115, align 4
  br label %118

118:                                              ; preds = %113, %109
  %119 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %120 = load volatile ptr, ptr %119, align 4
  %121 = icmp eq ptr %120, %119
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %3, align 4
  %124 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %125 = load ptr, ptr %124, align 4
  %126 = getelementptr inbounds %struct.list_head, ptr %120, i32 0, i32 1
  store ptr %123, ptr %126, align 4
  store ptr %120, ptr %123, align 4
  store ptr %2, ptr %125, align 4
  store ptr %125, ptr %3, align 4
  store volatile ptr %119, ptr %119, align 4
  store ptr %119, ptr %124, align 4
  br label %127

127:                                              ; preds = %122, %118
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #12
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edma_synchronize(ptr noundef %0) #0 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %4) #12
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #12
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #12
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @edma_desc_free(ptr noundef %0) #0 {
  tail call void @kfree(ptr noundef %0) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @edma_config_pset(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 {
  %9 = load ptr, ptr %0, align 4
  %10 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.edma_pset, ptr %1, i32 0, i32 2
  %13 = icmp ult i32 %4, 2
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = udiv i32 %6, %5
  %16 = udiv i32 %15, 65535
  %17 = mul i32 %16, -65535
  %18 = add i32 %17, %15
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 65535, i32 %18
  %21 = xor i1 %19, true
  %22 = zext i1 %21 to i32
  %23 = add nuw nsw i32 %16, %22
  br label %29

24:                                               ; preds = %8
  %25 = mul i32 %5, %4
  %26 = udiv i32 %6, %25
  %27 = icmp sgt i32 %26, 65535
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.30) #14
  br label %63

29:                                               ; preds = %24, %14
  %30 = phi i32 [ %20, %14 ], [ %4, %24 ]
  %31 = phi i32 [ %23, %14 ], [ %26, %24 ]
  %32 = phi i32 [ %5, %14 ], [ %25, %24 ]
  %33 = phi i32 [ 0, %14 ], [ 1, %24 ]
  store i32 %6, ptr %1, align 4
  switch i32 %7, label %36 [
    i32 1, label %37
    i32 2, label %34
    i32 0, label %35
  ]

34:                                               ; preds = %29
  br label %37

35:                                               ; preds = %29
  br label %37

36:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.31, ptr noundef nonnull @__func__.edma_config_pset) #14
  br label %63

37:                                               ; preds = %35, %34, %29
  %38 = phi i32 [ %3, %34 ], [ %2, %35 ], [ %2, %29 ]
  %39 = phi i32 [ 0, %34 ], [ %5, %35 ], [ %5, %29 ]
  %40 = phi i32 [ %5, %34 ], [ %5, %35 ], [ 0, %29 ]
  %41 = phi i32 [ 0, %34 ], [ %32, %35 ], [ %32, %29 ]
  %42 = phi i32 [ %32, %34 ], [ %32, %35 ], [ 0, %29 ]
  %43 = getelementptr inbounds %struct.edma_pset, ptr %1, i32 0, i32 1
  store i32 %38, ptr %43, align 4
  %44 = getelementptr inbounds %struct.edma_chan, ptr %0, i32 0, i32 5
  %45 = load i32, ptr %44, align 4
  %46 = shl i32 %45, 12
  %47 = and i32 %46, 268431360
  %48 = or i32 %47, 4
  %49 = select i1 %13, i32 %47, i32 %48
  store i32 %49, ptr %12, align 1
  %50 = getelementptr inbounds %struct.edma_pset, ptr %1, i32 0, i32 2, i32 1
  store i32 %2, ptr %50, align 1
  %51 = getelementptr inbounds %struct.edma_pset, ptr %1, i32 0, i32 2, i32 3
  store i32 %3, ptr %51, align 1
  %52 = shl i32 %40, 16
  %53 = or i32 %52, %39
  %54 = getelementptr inbounds %struct.edma_pset, ptr %1, i32 0, i32 2, i32 4
  store i32 %53, ptr %54, align 1
  %55 = shl i32 %42, 16
  %56 = or i32 %55, %41
  %57 = getelementptr inbounds %struct.edma_pset, ptr %1, i32 0, i32 2, i32 6
  store i32 %56, ptr %57, align 1
  %58 = shl i32 %30, 16
  %59 = or i32 %58, %5
  %60 = getelementptr inbounds %struct.edma_pset, ptr %1, i32 0, i32 2, i32 2
  store i32 %59, ptr %60, align 1
  %61 = getelementptr inbounds %struct.edma_pset, ptr %1, i32 0, i32 2, i32 7
  store i32 %31, ptr %61, align 1
  %62 = getelementptr inbounds %struct.edma_pset, ptr %1, i32 0, i32 2, i32 5
  store i32 -1, ptr %62, align 1
  br label %63

63:                                               ; preds = %37, %36, %28
  %64 = phi i32 [ %33, %37 ], [ -22, %36 ], [ -22, %28 ]
  ret i32 %64
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_pm_suspend(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 5
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %33, label %9

9:                                                ; preds = %29, %1
  %10 = phi i32 [ %30, %29 ], [ %7, %1 ]
  %11 = phi i32 [ %31, %29 ], [ 0, %1 ]
  %12 = getelementptr %struct.edma_chan, ptr %5, i32 %11, i32 6
  %13 = load i8, ptr %12, align 4, !range !14
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %9
  %16 = getelementptr %struct.edma_chan, ptr %5, i32 %11, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr %struct.edma_chan, ptr %5, i32 %11, i32 5
  %19 = load i32, ptr %18, align 4
  %20 = and i32 %19, 31
  %21 = shl nuw i32 1, %20
  %22 = lshr i32 %19, 3
  %23 = and i32 %22, 8188
  %24 = add nuw nsw i32 %23, 8280
  %25 = getelementptr inbounds %struct.edma_cc, ptr %17, i32 0, i32 2
  %26 = load ptr, ptr %25, align 4
  %27 = getelementptr i8, ptr %26, i32 %24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %21) #12, !srcloc !13
  %28 = load i32, ptr %6, align 4
  br label %29

29:                                               ; preds = %15, %9
  %30 = phi i32 [ %10, %9 ], [ %28, %15 ]
  %31 = add nuw i32 %11, 1
  %32 = icmp ult i32 %31, %30
  br i1 %32, label %9, label %33

33:                                               ; preds = %29, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_pm_resume(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 18
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 20
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 65535
  %9 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 8
  %10 = load i32, ptr %9, align 4
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 2
  %14 = load ptr, ptr %13, align 4
  %15 = shl nuw nsw i32 %8, 5
  %16 = add nuw nsw i32 %15, 16384
  %17 = getelementptr i8, ptr %14, i32 %16
  tail call void @mmiocpy(ptr noundef %17, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #12
  br label %18

18:                                               ; preds = %12, %1
  %19 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr inbounds %struct.edma_soc_info, ptr %20, i32 0, i32 3
  %22 = load ptr, ptr %21, align 4
  %23 = load i8, ptr %22, align 1
  %24 = icmp eq i8 %23, -1
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 2
  br label %33

27:                                               ; preds = %33, %18
  %28 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 5
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %108, label %31

31:                                               ; preds = %27
  %32 = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 2
  br label %56

33:                                               ; preds = %33, %25
  %34 = phi i8 [ %23, %25 ], [ %54, %33 ]
  %35 = phi i32 [ 0, %25 ], [ %52, %33 ]
  %36 = sext i8 %34 to i32
  %37 = getelementptr [2 x i8], ptr %22, i32 %35, i32 1
  %38 = load i8, ptr %37, align 1
  %39 = shl nsw i32 %36, 2
  %40 = shl i32 7, %39
  %41 = xor i32 %40, -1
  %42 = and i8 %38, 7
  %43 = zext i8 %42 to i32
  %44 = shl i32 %43, %39
  %45 = load ptr, ptr %26, align 4
  %46 = getelementptr i8, ptr %45, i32 644
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #12, !srcloc !10
  %48 = and i32 %47, %41
  %49 = or i32 %48, %44
  %50 = load ptr, ptr %26, align 4
  %51 = getelementptr i8, ptr %50, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %51, i32 %49) #12, !srcloc !13
  %52 = add i32 %35, 1
  %53 = getelementptr [2 x i8], ptr %22, i32 %52
  %54 = load i8, ptr %53, align 1
  %55 = icmp eq i8 %54, -1
  br i1 %55, label %27, label %33

56:                                               ; preds = %104, %31
  %57 = phi i32 [ 0, %31 ], [ %105, %104 ]
  %58 = getelementptr %struct.edma_chan, ptr %5, i32 %57, i32 6
  %59 = load i8, ptr %58, align 4, !range !14
  %60 = icmp eq i8 %59, 0
  br i1 %60, label %104, label %61

61:                                               ; preds = %56
  %62 = and i32 %57, 31
  %63 = shl nuw i32 1, %62
  %64 = ashr i32 %57, 3
  %65 = add nsw i32 %64, 832
  %66 = and i32 %65, -4
  %67 = load ptr, ptr %32, align 4
  %68 = getelementptr i8, ptr %67, i32 %66
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %68) #12, !srcloc !10
  %70 = or i32 %69, %63
  %71 = load ptr, ptr %32, align 4
  %72 = getelementptr i8, ptr %71, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %72, i32 %70) #12, !srcloc !13
  %73 = getelementptr %struct.edma_chan, ptr %5, i32 %57, i32 3
  %74 = load ptr, ptr %73, align 4
  %75 = getelementptr %struct.edma_chan, ptr %5, i32 %57, i32 5
  %76 = load i32, ptr %75, align 4
  %77 = and i32 %76, 31
  %78 = shl nuw i32 1, %77
  %79 = lshr i32 %76, 3
  %80 = and i32 %79, 8188
  %81 = add nuw nsw i32 %80, 8304
  %82 = getelementptr inbounds %struct.edma_cc, ptr %74, i32 0, i32 2
  %83 = load ptr, ptr %82, align 4
  %84 = getelementptr i8, ptr %83, i32 %81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %78) #12, !srcloc !13
  %85 = add nuw nsw i32 %80, 8288
  %86 = load ptr, ptr %82, align 4
  %87 = getelementptr i8, ptr %86, i32 %85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %87, i32 %78) #12, !srcloc !13
  %88 = load ptr, ptr %73, align 4
  %89 = getelementptr inbounds %struct.edma_cc, ptr %88, i32 0, i32 10
  %90 = load i8, ptr %89, align 4, !range !14
  %91 = icmp eq i8 %90, 0
  br i1 %91, label %104, label %92

92:                                               ; preds = %61
  %93 = getelementptr %struct.edma_chan, ptr %5, i32 %57, i32 8
  %94 = load i32, ptr %93, align 4
  %95 = load i32, ptr %75, align 4
  %96 = shl i32 %94, 5
  %97 = and i32 %96, 2097120
  %98 = shl i32 %95, 2
  %99 = and i32 %98, 262140
  %100 = add nuw nsw i32 %99, 256
  %101 = getelementptr inbounds %struct.edma_cc, ptr %88, i32 0, i32 2
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr i8, ptr %102, i32 %100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %103, i32 %97) #12, !srcloc !13
  br label %104

104:                                              ; preds = %92, %61, %56
  %105 = add nuw i32 %57, 1
  %106 = load i32, ptr %28, align 4
  %107 = icmp ult i32 %105, %106
  br i1 %107, label %56, label %108

108:                                              ; preds = %104, %27
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @edma_tptc_probe(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %2) #12
  %3 = tail call i32 @__pm_runtime_resume(ptr noundef %2, i32 noundef 4) #12
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #8

attributes #0 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

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
!10 = !{i64 5074520}
!11 = !{i64 2153304027}
!12 = !{i64 2153304210}
!13 = !{i64 5074102}
!14 = !{i8 0, i8 2}
!15 = !{i32 0, i32 33}
!16 = !{i64 2149335934}
!17 = !{i64 2149331758}
!18 = !{i64 2149331833, i64 2149331860, i64 2149331907, i64 2149331929, i64 2149331957, i64 2149331977}
!19 = !{i64 2149358937}
!20 = !{i64 2153187804, i64 2153188297, i64 2153187841, i64 2153187897, i64 2153187931, i64 2153187955, i64 2153187996, i64 2153188017, i64 2153188045, i64 2153188079}
!21 = !{!"branch_weights", i32 2000, i32 1}
!22 = !{i64 2153188746}
!23 = !{i64 2153292820}
!24 = !{i64 2153292662}
