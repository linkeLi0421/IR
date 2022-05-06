; ModuleID = '/llk/IR/drivers/dma/mxs-dma.c_pt.bc'
source_filename = "../drivers/dma/mxs-dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mxs_dma_type = type { i32, i32 }
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
%struct.mxs_dma_engine = type { i32, i32, ptr, ptr, %struct.dma_device, [16 x %struct.mxs_dma_chan], ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mxs_dma_chan = type { ptr, %struct.dma_chan, %struct.dma_async_tx_descriptor, %struct.tasklet_struct, i32, ptr, i32, i32, i32, i32, i8 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dmaengine_result = type { i32, i32 }
%struct.mxs_dma_ccw = type { i32, i16, i16, i32, [16 x i32] }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.mxs_dma_filter_param = type { i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_mxs_dma__228_848_mxs_dma_module_init4 = internal global ptr @mxs_dma_module_init, section ".initcall4.init", align 4
@mxs_dma_driver = internal global %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mxs_dma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, align 4
@.str = private unnamed_addr constant [8 x i8] c"mxs-dma\00", align 1
@mxs_dma_dt_ids = internal constant [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-dma-apbh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mxs_dma_types }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx23-dma-apbx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mxs_dma_types, i64 8) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-dma-apbh\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mxs_dma_types, i64 16) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx28-dma-apbx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @mxs_dma_types, i64 24) }, %struct.of_device_id zeroinitializer], align 4
@mxs_dma_types = internal global [4 x %struct.mxs_dma_type] [%struct.mxs_dma_type zeroinitializer, %struct.mxs_dma_type { i32 0, i32 1 }, %struct.mxs_dma_type { i32 1, i32 0 }, %struct.mxs_dma_type { i32 1, i32 1 }], align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to read dma-channels\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"unable to register\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to register controller\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"initialized\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.6 = private unnamed_addr constant [114 x i8] c"Failed waiting for the DMA channel %d to leave state READ_FLUSH, trying to reset channel in READ_FLUSH state now\0A\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"maximum number of sg exceeded: %d > %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [46 x i8] c"maximum bytes for sg entry exceeded: %d > %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"maximum period size exceeded: %zu > %d\0A\00", align 1
@llvm.compiler.used = appending global [1 x ptr] [ptr @__initcall__kmod_mxs_dma__228_848_mxs_dma_module_init4], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mxs_dma_module_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_probe(ptr noundef nonnull @mxs_dma_driver, ptr noundef nonnull @mxs_dma_probe, ptr noundef null) #7
  ret i32 %1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @mxs_dma_probe(ptr noundef %0) #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 3156, i32 noundef 3520) #7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %82, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 7
  %9 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %4, ptr noundef nonnull @.str.1, ptr noundef %8, i32 noundef 1, i32 noundef 0) #7
  %10 = icmp sgt i32 %9, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.2) #8
  br label %82

12:                                               ; preds = %7
  %13 = tail call ptr @of_device_get_match_data(ptr noundef %2) #7
  %14 = getelementptr inbounds %struct.mxs_dma_type, ptr %13, i32 0, i32 1
  %15 = load i32, ptr %14, align 4
  %16 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 1
  store i32 %15, ptr %16, align 4
  %17 = load i32, ptr %13, align 4
  store i32 %17, ptr %5, align 4
  %18 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #7
  %19 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %18) #7
  %20 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 2
  store ptr %19, ptr %20, align 4
  %21 = icmp ugt ptr %19, inttoptr (i32 -4096 to ptr)
  br i1 %21, label %22, label %24

22:                                               ; preds = %12
  %23 = ptrtoint ptr %19 to i32
  br label %82

24:                                               ; preds = %12
  %25 = tail call ptr @devm_clk_get(ptr noundef %2, ptr noundef null) #7
  %26 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 3
  store ptr %25, ptr %26, align 4
  %27 = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = ptrtoint ptr %25 to i32
  br label %82

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4
  %32 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %32) #7
  tail call void @_set_bit(i32 noundef 12, ptr noundef %32) #7
  %33 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 3
  store volatile ptr %33, ptr %33, align 4
  %34 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 3, i32 1
  store ptr %33, ptr %34, align 4
  br label %35

35:                                               ; preds = %35, %30
  %36 = phi i32 [ 0, %30 ], [ %45, %35 ]
  %37 = getelementptr %struct.mxs_dma_engine, ptr %5, i32 0, i32 5, i32 %36
  store ptr %5, ptr %37, align 4
  %38 = getelementptr %struct.mxs_dma_engine, ptr %5, i32 0, i32 5, i32 %36, i32 1
  store ptr %31, ptr %38, align 4
  %39 = getelementptr %struct.mxs_dma_engine, ptr %5, i32 0, i32 5, i32 %36, i32 1, i32 2
  store i32 1, ptr %39, align 4
  %40 = getelementptr %struct.mxs_dma_engine, ptr %5, i32 0, i32 5, i32 %36, i32 1, i32 3
  store i32 1, ptr %40, align 4
  %41 = getelementptr %struct.mxs_dma_engine, ptr %5, i32 0, i32 5, i32 %36, i32 3
  tail call void @tasklet_setup(ptr noundef %41, ptr noundef nonnull @mxs_dma_tasklet) #7
  %42 = getelementptr %struct.mxs_dma_engine, ptr %5, i32 0, i32 5, i32 %36, i32 1, i32 8
  %43 = load ptr, ptr %34, align 4
  store ptr %42, ptr %34, align 4
  store ptr %33, ptr %42, align 4
  %44 = getelementptr %struct.mxs_dma_engine, ptr %5, i32 0, i32 5, i32 %36, i32 1, i32 8, i32 1
  store ptr %43, ptr %44, align 4
  store volatile ptr %42, ptr %43, align 4
  %45 = add nuw nsw i32 %36, 1
  %46 = icmp eq i32 %45, 16
  br i1 %46, label %47, label %35

47:                                               ; preds = %35
  %48 = tail call fastcc i32 @mxs_dma_init(ptr noundef nonnull %5) #9
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %82

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 6
  store ptr %0, ptr %51, align 4
  %52 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 15
  store ptr %2, ptr %52, align 4
  %53 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 20
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %50
  store i32 65280, ptr %54, align 4
  br label %57

57:                                               ; preds = %56, %50
  %58 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 27
  store ptr @mxs_dma_alloc_chan_resources, ptr %58, align 4
  %59 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 29
  store ptr @mxs_dma_free_chan_resources, ptr %59, align 4
  %60 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 49
  store ptr @mxs_dma_tx_status, ptr %60, align 4
  %61 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 39
  store ptr @mxs_dma_prep_slave_sg, ptr %61, align 4
  %62 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 40
  store ptr @mxs_dma_prep_dma_cyclic, ptr %62, align 4
  %63 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 45
  store ptr @mxs_dma_pause_chan, ptr %63, align 4
  %64 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 46
  store ptr @mxs_dma_resume_chan, ptr %64, align 4
  %65 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 47
  store ptr @mxs_dma_terminate_all, ptr %65, align 4
  %66 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 19
  store i32 16, ptr %66, align 4
  %67 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 20
  store i32 16, ptr %67, align 4
  %68 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 21
  store i32 6, ptr %68, align 4
  %69 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 26
  store i32 2, ptr %69, align 4
  %70 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 4, i32 50
  store ptr @mxs_dma_enable_chan, ptr %70, align 4
  %71 = tail call i32 @dmaenginem_async_device_register(ptr noundef %31) #7
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %75, label %73

73:                                               ; preds = %57
  %74 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %74, ptr noundef nonnull @.str.3) #8
  br label %82

75:                                               ; preds = %57
  %76 = tail call i32 @of_dma_controller_register(ptr noundef %4, ptr noundef nonnull @mxs_dma_xlate, ptr noundef nonnull %5) #7
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %80, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.4) #8
  br label %80

80:                                               ; preds = %78, %75
  %81 = load ptr, ptr %52, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %81, ptr noundef nonnull @.str.5) #8
  br label %82

82:                                               ; preds = %80, %73, %47, %28, %22, %11, %1
  %83 = phi i32 [ %9, %11 ], [ %23, %22 ], [ %29, %28 ], [ %71, %73 ], [ 0, %80 ], [ -12, %1 ], [ %48, %47 ]
  ret i32 %83
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxs_dma_tasklet(ptr nocapture noundef readonly %0) #4 {
  %2 = alloca %struct.dmaengine_result, align 8
  %3 = getelementptr i8, ptr %0, i32 -36
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr i8, ptr %0, i32 -32
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr i8, ptr %0, i32 -28
  %8 = load ptr, ptr %7, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #7
  store i64 0, ptr %2, align 8
  %9 = icmp eq ptr %6, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  call void %6(ptr noundef %8, ptr noundef nonnull %2) #7
  br label %14

11:                                               ; preds = %1
  %12 = icmp eq ptr %4, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %11
  tail call void %4(ptr noundef %8) #7
  br label %14

14:                                               ; preds = %13, %11, %10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal fastcc i32 @mxs_dma_init(ptr nocapture noundef readonly %0) unnamed_addr #0 section ".init.text" {
  %2 = getelementptr inbounds %struct.mxs_dma_engine, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = tail call i32 @clk_prepare(ptr noundef %3) #7
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %31

6:                                                ; preds = %1
  %7 = tail call i32 @clk_enable(ptr noundef %3) #7
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %28

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.mxs_dma_engine, ptr %0, i32 0, i32 2
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @stmp_reset_block(ptr noundef %11) #7
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.mxs_dma_engine, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !8
  tail call void @arm_heavy_mb() #7
  %19 = load ptr, ptr %10, align 4
  %20 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 268435456) #7, !srcloc !9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !10
  tail call void @arm_heavy_mb() #7
  %21 = load ptr, ptr %10, align 4
  %22 = getelementptr i8, ptr %21, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 536870912) #7, !srcloc !9
  br label %23

23:                                               ; preds = %18, %14
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !11
  tail call void @arm_heavy_mb() #7
  %24 = load ptr, ptr %10, align 4
  %25 = getelementptr i8, ptr %24, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 -65536) #7, !srcloc !9
  br label %26

26:                                               ; preds = %23, %9
  %27 = load ptr, ptr %2, align 4
  tail call void @clk_disable(ptr noundef %27) #7
  br label %28

28:                                               ; preds = %26, %6
  %29 = phi ptr [ %27, %26 ], [ %3, %6 ]
  %30 = phi i32 [ %12, %26 ], [ %7, %6 ]
  tail call void @clk_unprepare(ptr noundef %29) #7
  br label %31

31:                                               ; preds = %28, %1
  %32 = phi i32 [ %4, %1 ], [ %30, %28 ]
  ret i32 %32
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_dma_alloc_chan_resources(ptr noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 4, i32 15
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 156
  %7 = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 16384, ptr noundef %6, i32 noundef 3264, i32 noundef 0) #7
  %8 = getelementptr i8, ptr %0, i32 152
  store ptr %7, ptr %8, align 4
  %9 = icmp eq ptr %7, null
  br i1 %9, label %39, label %10

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 148
  %12 = load i32, ptr %11, align 4
  %13 = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull @mxs_dma_int_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef %3) #7
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 3
  %17 = load ptr, ptr %16, align 4
  %18 = tail call i32 @clk_prepare(ptr noundef %17) #7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = tail call i32 @clk_enable(ptr noundef %17) #7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  tail call void @clk_unprepare(ptr noundef %17) #7
  br label %30

24:                                               ; preds = %20
  tail call fastcc void @mxs_dma_reset_chan(ptr noundef %0)
  %25 = getelementptr i8, ptr %0, i32 64
  tail call void @dma_async_tx_descriptor_init(ptr noundef %25, ptr noundef %0) #7
  %26 = getelementptr i8, ptr %0, i32 80
  store ptr @mxs_dma_tx_submit, ptr %26, align 4
  %27 = getelementptr i8, ptr %0, i32 68
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 2
  store i32 %29, ptr %27, align 4
  br label %39

30:                                               ; preds = %23, %15
  %31 = phi i32 [ %21, %23 ], [ %18, %15 ]
  %32 = load i32, ptr %11, align 4
  %33 = tail call ptr @free_irq(i32 noundef %32, ptr noundef %3) #7
  br label %34

34:                                               ; preds = %30, %10
  %35 = phi i32 [ %13, %10 ], [ %31, %30 ]
  %36 = load ptr, ptr %4, align 4
  %37 = load ptr, ptr %8, align 4
  %38 = load i32, ptr %6, align 4
  tail call void @dma_free_attrs(ptr noundef %36, i32 noundef 16384, ptr noundef %37, i32 noundef %38, i32 noundef 0) #7
  br label %39

39:                                               ; preds = %34, %24, %1
  %40 = phi i32 [ 0, %24 ], [ %35, %34 ], [ -12, %1 ]
  ret i32 %40
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxs_dma_free_chan_resources(ptr nocapture noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 164
  store i32 0, ptr %4, align 4
  %5 = getelementptr i8, ptr %0, i32 148
  %6 = load i32, ptr %5, align 4
  %7 = tail call ptr @free_irq(i32 noundef %6, ptr noundef %3) #7
  %8 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 4, i32 15
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr i8, ptr %0, i32 152
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr i8, ptr %0, i32 156
  %13 = load i32, ptr %12, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 16384, ptr noundef %11, i32 noundef %13, i32 noundef 0) #7
  %14 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 3
  %15 = load ptr, ptr %14, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_dma_tx_status(ptr nocapture noundef readonly %0, i32 noundef %1, ptr noundef writeonly %2) #4 {
  %4 = getelementptr i8, ptr %0, i32 -4
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 164
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 1
  br i1 %8, label %9, label %44

9:                                                ; preds = %3
  %10 = getelementptr i8, ptr %0, i32 168
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %9
  %15 = getelementptr i8, ptr %0, i32 152
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr i8, ptr %0, i32 160
  %18 = load i32, ptr %17, align 4
  %19 = add i32 %18, -1
  %20 = getelementptr %struct.mxs_dma_ccw, ptr %16, i32 %19, i32 2
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = getelementptr %struct.mxs_dma_ccw, ptr %16, i32 %19, i32 3
  %24 = load i32, ptr %23, align 4
  %25 = add i32 %24, %22
  %26 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = getelementptr inbounds %struct.mxs_dma_engine, ptr %5, i32 0, i32 1
  %29 = load i32, ptr %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %14
  %32 = load i32, ptr %5, align 4
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 112, i32 304
  br label %35

35:                                               ; preds = %31, %14
  %36 = phi i32 [ 304, %14 ], [ %34, %31 ]
  %37 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %38 = load i32, ptr %37, align 4
  %39 = mul i32 %38, 112
  %40 = add i32 %39, %36
  %41 = getelementptr i8, ptr %27, i32 %40
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %41) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !13
  %43 = sub i32 %25, %42
  br label %44

44:                                               ; preds = %35, %9, %3
  %45 = phi i32 [ %43, %35 ], [ 0, %9 ], [ 0, %3 ]
  %46 = icmp eq ptr %2, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %49 = load i32, ptr %48, align 4
  %50 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %51 = load i32, ptr %50, align 4
  store i32 %51, ptr %2, align 4
  %52 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 1
  store i32 %49, ptr %52, align 4
  %53 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %45, ptr %53, align 4
  br label %54

54:                                               ; preds = %47, %44
  %55 = load i32, ptr %6, align 4
  ret i32 %55
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mxs_dma_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #4 {
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %0, i32 164
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = getelementptr i8, ptr %0, i32 160
  %14 = load i32, ptr %13, align 4
  %15 = add i32 %14, %2
  %16 = icmp ugt i32 %15, 215
  br i1 %16, label %21, label %24

17:                                               ; preds = %6
  %18 = icmp ugt i32 %2, 215
  br i1 %18, label %21, label %19

19:                                               ; preds = %17
  store i32 1, ptr %9, align 4
  %20 = getelementptr i8, ptr %0, i32 168
  store i32 0, ptr %20, align 4
  br label %43

21:                                               ; preds = %17, %12
  %22 = getelementptr inbounds %struct.mxs_dma_engine, ptr %8, i32 0, i32 4, i32 15
  %23 = load ptr, ptr %22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.7, i32 noundef %2, i32 noundef 215) #8
  br label %114

24:                                               ; preds = %12
  store i32 1, ptr %9, align 4
  %25 = getelementptr i8, ptr %0, i32 168
  store i32 0, ptr %25, align 4
  %26 = icmp eq i32 %14, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %24
  %28 = icmp slt i32 %14, 1
  br i1 %28, label %29, label %30, !prof !14

29:                                               ; preds = %27
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mxs-dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 506, 0\0A.popsection", ""() #7, !srcloc !15
  unreachable

30:                                               ; preds = %27
  %31 = getelementptr i8, ptr %0, i32 152
  %32 = load ptr, ptr %31, align 4
  %33 = add nsw i32 %14, -1
  %34 = getelementptr %struct.mxs_dma_ccw, ptr %32, i32 %33
  %35 = getelementptr i8, ptr %0, i32 156
  %36 = load i32, ptr %35, align 4
  %37 = mul i32 %14, 76
  %38 = add i32 %36, %37
  store i32 %38, ptr %34, align 4
  %39 = getelementptr %struct.mxs_dma_ccw, ptr %32, i32 %33, i32 1
  %40 = load i16, ptr %39, align 4
  %41 = and i16 %40, -77
  %42 = or i16 %41, 4
  store i16 %42, ptr %39, align 4
  br label %43

43:                                               ; preds = %30, %24, %19
  %44 = phi i32 [ %14, %30 ], [ 0, %24 ], [ 0, %19 ]
  %45 = icmp eq i32 %3, 4
  br i1 %45, label %57, label %46

46:                                               ; preds = %43
  %47 = icmp eq i32 %2, 0
  br i1 %47, label %110, label %48

48:                                               ; preds = %46
  %49 = getelementptr i8, ptr %0, i32 152
  %50 = getelementptr i8, ptr %0, i32 156
  %51 = icmp eq i32 %3, 2
  %52 = select i1 %51, i16 773, i16 774
  %53 = and i16 %52, 771
  %54 = icmp slt i32 %4, 0
  %55 = select i1 %54, i16 200, i16 72
  %56 = or i16 %53, %55
  br label %81

57:                                               ; preds = %43
  %58 = getelementptr i8, ptr %0, i32 152
  %59 = load ptr, ptr %58, align 4
  %60 = add nuw i32 %44, 1
  %61 = icmp eq i32 %2, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %62, %57
  %63 = phi ptr [ %65, %62 ], [ %1, %57 ]
  %64 = phi i32 [ %67, %62 ], [ 0, %57 ]
  %65 = getelementptr i32, ptr %63, i32 1
  %66 = load i32, ptr %63, align 4
  %67 = add nuw i32 %64, 1
  %68 = getelementptr %struct.mxs_dma_ccw, ptr %59, i32 %44, i32 4, i32 %64
  store i32 %66, ptr %68, align 4
  %69 = icmp eq i32 %67, %2
  br i1 %69, label %70, label %62

70:                                               ; preds = %62, %57
  %71 = getelementptr %struct.mxs_dma_ccw, ptr %59, i32 %44, i32 1
  %72 = icmp sgt i32 %4, -1
  %73 = select i1 %72, i16 840, i16 968
  %74 = trunc i32 %2 to i16
  %75 = shl i16 %74, 12
  %76 = or i16 %73, %75
  store i16 %76, ptr %71, align 4
  %77 = and i32 %4, 1073741824
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %110, label %79

79:                                               ; preds = %70
  %80 = or i16 %76, 32
  store i16 %80, ptr %71, align 4
  br label %110

81:                                               ; preds = %91, %48
  %82 = phi i32 [ %44, %48 ], [ %93, %91 ]
  %83 = phi i32 [ 0, %48 ], [ %105, %91 ]
  %84 = phi ptr [ %1, %48 ], [ %108, %91 ]
  %85 = getelementptr inbounds %struct.scatterlist, ptr %84, i32 0, i32 4
  %86 = load i32, ptr %85, align 4
  %87 = icmp ugt i32 %86, 65280
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = getelementptr inbounds %struct.mxs_dma_engine, ptr %8, i32 0, i32 4, i32 15
  %90 = load ptr, ptr %89, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.8, i32 noundef %86, i32 noundef 65280) #8
  br label %114

91:                                               ; preds = %81
  %92 = load ptr, ptr %49, align 4
  %93 = add i32 %82, 1
  %94 = getelementptr %struct.mxs_dma_ccw, ptr %92, i32 %82
  %95 = load i32, ptr %50, align 4
  %96 = mul i32 %93, 76
  %97 = add i32 %95, %96
  store i32 %97, ptr %94, align 4
  %98 = getelementptr inbounds %struct.scatterlist, ptr %84, i32 0, i32 3
  %99 = load i32, ptr %98, align 4
  %100 = getelementptr %struct.mxs_dma_ccw, ptr %92, i32 %82, i32 3
  store i32 %99, ptr %100, align 4
  %101 = load i32, ptr %85, align 4
  %102 = trunc i32 %101 to i16
  %103 = getelementptr %struct.mxs_dma_ccw, ptr %92, i32 %82, i32 2
  store i16 %102, ptr %103, align 2
  %104 = getelementptr %struct.mxs_dma_ccw, ptr %92, i32 %82, i32 1
  %105 = add nuw i32 %83, 1
  %106 = icmp eq i32 %105, %2
  %107 = select i1 %106, i16 %56, i16 %52
  store i16 %107, ptr %104, align 4
  %108 = tail call ptr @sg_next(ptr noundef %84) #7
  %109 = icmp eq i32 %105, %2
  br i1 %109, label %110, label %81

110:                                              ; preds = %91, %79, %70, %46
  %111 = phi i32 [ %60, %79 ], [ %60, %70 ], [ %44, %46 ], [ %93, %91 ]
  %112 = getelementptr i8, ptr %0, i32 160
  store i32 %111, ptr %112, align 4
  %113 = getelementptr i8, ptr %0, i32 64
  br label %115

114:                                              ; preds = %88, %21
  store i32 3, ptr %9, align 4
  br label %115

115:                                              ; preds = %114, %110
  %116 = phi ptr [ null, %114 ], [ %113, %110 ]
  ret ptr %116
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mxs_dma_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #4 {
  %7 = getelementptr i8, ptr %0, i32 -4
  %8 = load ptr, ptr %7, align 4
  %9 = udiv i32 %2, %3
  %10 = getelementptr i8, ptr %0, i32 164
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %57, label %13

13:                                               ; preds = %6
  store i32 1, ptr %10, align 4
  %14 = getelementptr i8, ptr %0, i32 168
  %15 = load i32, ptr %14, align 4
  %16 = or i32 %15, 3
  store i32 %16, ptr %14, align 4
  %17 = icmp ugt i32 %9, 215
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = getelementptr inbounds %struct.mxs_dma_engine, ptr %8, i32 0, i32 4, i32 15
  %20 = load ptr, ptr %19, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.7, i32 noundef %9, i32 noundef 215) #8
  br label %56

21:                                               ; preds = %13
  %22 = icmp ugt i32 %3, 65280
  br i1 %22, label %31, label %23

23:                                               ; preds = %21
  %24 = icmp eq i32 %2, 0
  br i1 %24, label %52, label %25

25:                                               ; preds = %23
  %26 = getelementptr i8, ptr %0, i32 152
  %27 = getelementptr i8, ptr %0, i32 156
  %28 = trunc i32 %3 to i16
  %29 = icmp eq i32 %4, 2
  %30 = select i1 %29, i16 845, i16 846
  br label %34

31:                                               ; preds = %21
  %32 = getelementptr inbounds %struct.mxs_dma_engine, ptr %8, i32 0, i32 4, i32 15
  %33 = load ptr, ptr %32, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %33, ptr noundef nonnull @.str.9, i32 noundef %3, i32 noundef 65280) #8
  br label %56

34:                                               ; preds = %34, %25
  %35 = phi i32 [ 0, %25 ], [ %50, %34 ]
  %36 = phi i32 [ 0, %25 ], [ %40, %34 ]
  %37 = phi i32 [ %1, %25 ], [ %49, %34 ]
  %38 = load ptr, ptr %26, align 4
  %39 = getelementptr %struct.mxs_dma_ccw, ptr %38, i32 %36
  %40 = add i32 %36, 1
  %41 = icmp eq i32 %40, %9
  %42 = load i32, ptr %27, align 4
  %43 = mul i32 %40, 76
  %44 = select i1 %41, i32 0, i32 %43
  %45 = add i32 %42, %44
  store i32 %45, ptr %39, align 4
  %46 = getelementptr %struct.mxs_dma_ccw, ptr %38, i32 %36, i32 3
  store i32 %37, ptr %46, align 4
  %47 = getelementptr %struct.mxs_dma_ccw, ptr %38, i32 %36, i32 2
  store i16 %28, ptr %47, align 2
  %48 = getelementptr %struct.mxs_dma_ccw, ptr %38, i32 %36, i32 1
  store i16 %30, ptr %48, align 4
  %49 = add i32 %37, %3
  %50 = add i32 %35, %3
  %51 = icmp ult i32 %50, %2
  br i1 %51, label %34, label %52

52:                                               ; preds = %34, %23
  %53 = phi i32 [ 0, %23 ], [ %40, %34 ]
  %54 = getelementptr i8, ptr %0, i32 160
  store i32 %53, ptr %54, align 4
  %55 = getelementptr i8, ptr %0, i32 64
  br label %57

56:                                               ; preds = %31, %18
  store i32 3, ptr %10, align 4
  br label %57

57:                                               ; preds = %56, %52, %6
  %58 = phi ptr [ null, %56 ], [ %55, %52 ], [ null, %6 ]
  ret ptr %58
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_dma_pause_chan(ptr nocapture noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !16
  tail call void @arm_heavy_mb() #7
  %13 = shl nuw i32 1, %5
  %14 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #7, !srcloc !9
  br label %22

17:                                               ; preds = %9, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !17
  tail call void @arm_heavy_mb() #7
  %18 = shl nuw i32 1, %5
  %19 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #7, !srcloc !9
  br label %22

22:                                               ; preds = %17, %12
  %23 = getelementptr i8, ptr %0, i32 164
  store i32 2, ptr %23, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_dma_resume_chan(ptr nocapture noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 1
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load i32, ptr %3, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !18
  tail call void @arm_heavy_mb() #7
  %13 = shl nuw i32 1, %5
  %14 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 2
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 %13) #7, !srcloc !9
  br label %22

17:                                               ; preds = %9, %1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !19
  tail call void @arm_heavy_mb() #7
  %18 = shl nuw i32 1, %5
  %19 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 2
  %20 = load ptr, ptr %19, align 4
  %21 = getelementptr i8, ptr %20, i32 56
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %18) #7, !srcloc !9
  br label %22

22:                                               ; preds = %17, %12
  %23 = getelementptr i8, ptr %0, i32 164
  store i32 1, ptr %23, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_dma_terminate_all(ptr nocapture noundef %0) #4 {
  tail call fastcc void @mxs_dma_reset_chan(ptr noundef %0)
  %2 = getelementptr i8, ptr %0, i32 164
  store i32 0, ptr %2, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @mxs_dma_enable_chan(ptr nocapture noundef %0) #4 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load i32, ptr %4, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !20
  tail call void @arm_heavy_mb() #7
  %6 = getelementptr i8, ptr %0, i32 156
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 2
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 1
  %11 = load i32, ptr %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, ptr %3, align 4
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, i32 80, i32 272
  br label %17

17:                                               ; preds = %13, %1
  %18 = phi i32 [ 272, %1 ], [ %16, %13 ]
  %19 = mul i32 %5, 112
  %20 = add i32 %18, %19
  %21 = getelementptr i8, ptr %9, i32 %20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %7) #7, !srcloc !9
  %22 = getelementptr i8, ptr %0, i32 168
  %23 = load i32, ptr %22, align 4
  %24 = and i32 %23, 3
  %25 = icmp eq i32 %24, 3
  tail call void asm sideeffect "dsb st", "~{memory}"() #7
  tail call void @arm_heavy_mb() #7
  %26 = load ptr, ptr %8, align 4
  %27 = load i32, ptr %10, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %25, label %29, label %38

29:                                               ; preds = %17
  br i1 %28, label %30, label %34

30:                                               ; preds = %29
  %31 = load i32, ptr %3, align 4
  %32 = icmp eq i32 %31, 0
  %33 = select i1 %32, i32 128, i32 320
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi i32 [ 320, %29 ], [ %33, %30 ]
  %36 = add i32 %35, %19
  %37 = getelementptr i8, ptr %26, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 2) #7, !srcloc !9
  br label %47

38:                                               ; preds = %17
  br i1 %28, label %39, label %43

39:                                               ; preds = %38
  %40 = load i32, ptr %3, align 4
  %41 = icmp eq i32 %40, 0
  %42 = select i1 %41, i32 128, i32 320
  br label %43

43:                                               ; preds = %39, %38
  %44 = phi i32 [ 320, %38 ], [ %42, %39 ]
  %45 = add i32 %44, %19
  %46 = getelementptr i8, ptr %26, i32 %45
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 1) #7, !srcloc !9
  br label %47

47:                                               ; preds = %43, %34
  %48 = getelementptr i8, ptr %0, i32 172
  store i8 0, ptr %48, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dmaenginem_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @mxs_dma_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #4 {
  %3 = alloca %struct.dma_cap_mask_t, align 4
  %4 = alloca %struct.mxs_dma_filter_param, align 4
  %5 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %6 = load ptr, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #7
  %7 = getelementptr inbounds %struct.mxs_dma_engine, ptr %6, i32 0, i32 4, i32 6
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #7
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %10 = load i32, ptr %9, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  store i32 %14, ptr %4, align 4
  %15 = getelementptr inbounds %struct.mxs_dma_engine, ptr %6, i32 0, i32 7
  %16 = load i32, ptr %15, align 4
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 1
  %20 = load ptr, ptr %19, align 4
  %21 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef nonnull @mxs_dma_filter_fn, ptr noundef nonnull %4, ptr noundef %20) #7
  br label %22

22:                                               ; preds = %18, %12, %2
  %23 = phi ptr [ %21, %18 ], [ null, %2 ], [ null, %12 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #7
  ret ptr %23
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stmp_reset_block(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @mxs_dma_int_handler(i32 noundef %0, ptr noundef %1) #4 {
  %3 = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 7
  %4 = load i32, ptr %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %92, label %6

6:                                                ; preds = %11, %2
  %7 = phi i32 [ %12, %11 ], [ 0, %2 ]
  %8 = getelementptr %struct.mxs_dma_engine, ptr %1, i32 0, i32 5, i32 %7, i32 4
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %9, %0
  br i1 %10, label %14, label %11

11:                                               ; preds = %6
  %12 = add nuw i32 %7, 1
  %13 = icmp eq i32 %12, %4
  br i1 %13, label %92, label %6

14:                                               ; preds = %6
  %15 = icmp slt i32 %7, 0
  br i1 %15, label %92, label %16

16:                                               ; preds = %14
  %17 = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 2
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %18, i32 16
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !21
  %21 = lshr i32 %20, %7
  %22 = and i32 %21, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !22
  tail call void @arm_heavy_mb() #7
  %23 = shl nuw i32 1, %7
  %24 = load ptr, ptr %17, align 4
  %25 = getelementptr i8, ptr %24, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !9
  %26 = load ptr, ptr %17, align 4
  %27 = getelementptr i8, ptr %26, i32 32
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %27) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !23
  %29 = add nuw i32 %7, 16
  %30 = shl i32 65537, %7
  %31 = and i32 %28, %30
  %32 = lshr i32 %31, %29
  %33 = lshr i32 %31, %7
  %34 = add i32 %32, %33
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !24
  tail call void @arm_heavy_mb() #7
  %35 = load ptr, ptr %17, align 4
  %36 = getelementptr i8, ptr %35, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %23) #7, !srcloc !9
  %37 = xor i32 %22, -1
  %38 = and i32 %34, %37
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr %struct.mxs_dma_engine, ptr %1, i32 0, i32 5, i32 %7, i32 8
  br i1 %39, label %43, label %41

41:                                               ; preds = %16
  store i32 3, ptr %40, align 4
  %42 = getelementptr %struct.mxs_dma_engine, ptr %1, i32 0, i32 5, i32 %7, i32 1
  tail call fastcc void @mxs_dma_reset_chan(ptr noundef %42)
  br label %69

43:                                               ; preds = %16
  %44 = load i32, ptr %40, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %69, label %46

46:                                               ; preds = %43
  %47 = getelementptr %struct.mxs_dma_engine, ptr %1, i32 0, i32 5, i32 %7, i32 9
  %48 = load i32, ptr %47, align 4
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %46
  store i32 1, ptr %40, align 4
  %52 = and i32 %48, 2
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %69, label %54

54:                                               ; preds = %51
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !25
  tail call void @arm_heavy_mb() #7
  %55 = load ptr, ptr %17, align 4
  %56 = getelementptr inbounds %struct.mxs_dma_engine, ptr %1, i32 0, i32 1
  %57 = load i32, ptr %56, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, ptr %1, align 4
  %61 = icmp eq i32 %60, 0
  %62 = select i1 %61, i32 128, i32 320
  br label %63

63:                                               ; preds = %59, %54
  %64 = phi i32 [ 320, %54 ], [ %62, %59 ]
  %65 = mul i32 %7, 112
  %66 = add i32 %64, %65
  %67 = getelementptr i8, ptr %55, i32 %66
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %67, i32 1) #7, !srcloc !9
  br label %69

68:                                               ; preds = %46
  store i32 0, ptr %40, align 4
  br label %69

69:                                               ; preds = %68, %63, %51, %43, %41
  %70 = getelementptr %struct.mxs_dma_engine, ptr %1, i32 0, i32 5, i32 %7, i32 8
  %71 = load i32, ptr %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %86

73:                                               ; preds = %69
  %74 = getelementptr %struct.mxs_dma_engine, ptr %1, i32 0, i32 5, i32 %7, i32 10
  %75 = load i8, ptr %74, align 4, !range !26
  %76 = icmp eq i8 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %73
  %78 = getelementptr %struct.mxs_dma_engine, ptr %1, i32 0, i32 5, i32 %7, i32 2
  %79 = load i32, ptr %78, align 4
  %80 = icmp slt i32 %79, 1
  br i1 %80, label %81, label %82, !prof !14

81:                                               ; preds = %77
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !27
  unreachable

82:                                               ; preds = %77
  %83 = getelementptr %struct.mxs_dma_engine, ptr %1, i32 0, i32 5, i32 %7, i32 2, i32 3
  %84 = load ptr, ptr %83, align 4
  %85 = getelementptr inbounds %struct.dma_chan, ptr %84, i32 0, i32 3
  store i32 %79, ptr %85, align 4
  store i32 0, ptr %78, align 4
  br label %86

86:                                               ; preds = %82, %69
  %87 = getelementptr %struct.mxs_dma_engine, ptr %1, i32 0, i32 5, i32 %7, i32 3, i32 1
  %88 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %87) #7
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %86
  %91 = getelementptr %struct.mxs_dma_engine, ptr %1, i32 0, i32 5, i32 %7, i32 3
  tail call void @__tasklet_schedule(ptr noundef %91) #7
  br label %92

92:                                               ; preds = %90, %86, %73, %14, %11, %2
  %93 = phi i32 [ 0, %14 ], [ 1, %73 ], [ 1, %86 ], [ 1, %90 ], [ 0, %2 ], [ 0, %11 ]
  ret i32 %93
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @mxs_dma_reset_chan(ptr nocapture noundef %0) unnamed_addr #4 {
  %2 = getelementptr i8, ptr %0, i32 -4
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr i8, ptr %0, i32 16
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr i8, ptr %0, i32 168
  %7 = load i32, ptr %6, align 4
  %8 = and i32 %7, 3
  %9 = icmp eq i32 %8, 3
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = getelementptr i8, ptr %0, i32 172
  store i8 1, ptr %11, align 4
  br label %55

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 1
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load i32, ptr %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !28
  tail call void @arm_heavy_mb() #7
  %20 = add i32 %5, 16
  %21 = shl nuw i32 1, %20
  %22 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 2
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %21) #7, !srcloc !9
  br label %55

25:                                               ; preds = %16, %12
  %26 = getelementptr inbounds %struct.mxs_dma_engine, ptr %3, i32 0, i32 2
  %27 = load ptr, ptr %26, align 4
  %28 = mul i32 %5, 112
  %29 = add i32 %28, 336
  %30 = getelementptr i8, ptr %27, i32 %29
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %32 = and i32 %31, 15
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %50

34:                                               ; preds = %34, %25
  %35 = phi i32 [ %37, %34 ], [ 0, %25 ]
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 21474800) #7
  %37 = add nuw nsw i32 %35, 100
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %30) #7, !srcloc !12
  tail call void asm sideeffect "dsb ", "~{memory}"() #7, !srcloc !29
  %39 = and i32 %38, 15
  %40 = icmp eq i32 %39, 8
  %41 = icmp ult i32 %35, 49900
  %42 = select i1 %40, i1 %41, i1 false
  br i1 %42, label %34, label %43

43:                                               ; preds = %34
  %44 = icmp ugt i32 %35, 49899
  br i1 %44, label %45, label %50

45:                                               ; preds = %43
  %46 = load ptr, ptr %2, align 4
  %47 = getelementptr inbounds %struct.mxs_dma_engine, ptr %46, i32 0, i32 6
  %48 = load ptr, ptr %47, align 4
  %49 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.6, i32 noundef %5) #8
  br label %50

50:                                               ; preds = %45, %43, %25
  tail call void asm sideeffect "dsb st", "~{memory}"() #7, !srcloc !30
  tail call void @arm_heavy_mb() #7
  %51 = add i32 %5, 16
  %52 = shl nuw i32 1, %51
  %53 = load ptr, ptr %26, align 4
  %54 = getelementptr i8, ptr %53, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 %52) #7, !srcloc !9
  br label %55

55:                                               ; preds = %50, %19, %10
  %56 = getelementptr i8, ptr %0, i32 164
  store i32 0, ptr %56, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @mxs_dma_tx_submit(ptr nocapture noundef %0) #5 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = add i32 %5, 1
  %7 = tail call i32 @llvm.smax.i32(i32 %6, i32 1) #7
  store i32 %7, ptr %4, align 4
  store i32 %7, ptr %0, align 4
  ret i32 %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @mxs_dma_filter_fn(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #4 {
  %3 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 4
  %4 = load i32, ptr %3, align 4
  %5 = load i32, ptr %1, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr i8, ptr %0, i32 -4
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.mxs_dma_engine, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 4
  %12 = tail call i32 @platform_get_irq(ptr noundef %11, i32 noundef %4) #7
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %7
  %15 = getelementptr i8, ptr %0, i32 148
  store i32 %12, ptr %15, align 4
  br label %16

16:                                               ; preds = %14, %7, %2
  %17 = phi i1 [ true, %14 ], [ false, %2 ], [ false, %7 ]
  ret i1 %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

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
!8 = !{i64 2153167532}
!9 = !{i64 4622068}
!10 = !{i64 2153167904}
!11 = !{i64 2153168279}
!12 = !{i64 4622486}
!13 = !{i64 2153167077}
!14 = !{!"branch_weights", i32 1, i32 2000}
!15 = !{i64 2153161823, i64 2153162309, i64 2153161860, i64 2153161916, i64 2153161950, i64 2153161974, i64 2153162015, i64 2153162036, i64 2153162064, i64 2153162098}
!16 = !{i64 2153154718}
!17 = !{i64 2153155089}
!18 = !{i64 2153155543}
!19 = !{i64 2153155914}
!20 = !{i64 2153152693}
!21 = !{i64 2153157685}
!22 = !{i64 2153157898}
!23 = !{i64 2153158405}
!24 = !{i64 2153158624}
!25 = !{i64 2153159915}
!26 = !{i8 0, i8 2}
!27 = !{i64 2153112698, i64 2153113185, i64 2153112735, i64 2153112791, i64 2153112825, i64 2153112849, i64 2153112890, i64 2153112911, i64 2153112939, i64 2153112973}
!28 = !{i64 2153149604}
!29 = !{i64 2153150113}
!30 = !{i64 2153152028}
