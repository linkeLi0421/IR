; ModuleID = '/llk/IR/drivers/dma/fsl-edma.c_pt.bc'
source_filename = "../drivers/dma/fsl-edma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type {}
%struct.fsl_edma_drvdata = type { i32, i32, i8, i8, ptr }
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
%struct.fsl_edma_engine = type { %struct.dma_device, ptr, [2 x ptr], [2 x ptr], ptr, %struct.mutex, ptr, i32, i32, i32, i8, %struct.edma_regs, [0 x %struct.fsl_edma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.edma_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_edma_chan = type { %struct.virt_dma_chan, i32, i32, i8, i32, ptr, ptr, %struct.dma_slave_config, i32, i8, ptr, i32, i32, i32, [16 x i8] }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.fsl_edma_hw_tcd = type { i32, i16, i16, i32, i32, i32, i16, i16, i32, i16, i16 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.fsl_edma_desc = type { %struct.virt_dma_desc, ptr, i8, i32, i32, [0 x %struct.fsl_edma_sw_tcd] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.fsl_edma_sw_tcd = type { i32, ptr }

@__initcall__kmod_fsl_edma__229_509_fsl_edma_init4 = internal global ptr @fsl_edma_init, section ".initcall4.init", align 4
@fsl_edma_driver = internal global %struct.platform_driver { ptr @fsl_edma_probe, ptr @fsl_edma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_edma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_edma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_fsl_edma_exit = internal global ptr @fsl_edma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias230 = internal constant [33 x i8] c"fsl_edma.alias=platform:fsl-edma\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [50 x i8] c"fsl_edma.description=Freescale eDMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [35 x i8] c"fsl_edma.file=drivers/dma/fsl-edma\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [24 x i8] c"fsl_edma.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [9 x i8] c"fsl-edma\00", align 1
@fsl_edma_dt_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-edma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-edma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1028a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-edma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_data }, %struct.of_device_id zeroinitializer], align 4
@fsl_edma_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_edma_suspend_late, ptr @fsl_edma_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"unable to find driver data\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Can't get dma-channels.\0A\00", align 1
@fsl_edma_probe.__key = internal global %struct.lock_class_key zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"&fsl_edma->fsl_edma_mutex\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"dma\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Missing DMA block clock.\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"DMA clk block failed.\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"dmamux%d\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Missing DMAMUX block clock.\0A\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"big-endian\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"Can't register Freescale eDMA engine. (%d)\0A\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Can't register Freescale eDMA of_dma. (%d)\0A\00", align 1
@vf610_data = internal global %struct.fsl_edma_drvdata { i32 0, i32 2, i8 0, i8 0, ptr @fsl_edma_irq_init }, align 4
@ls1028a_data = internal global %struct.fsl_edma_drvdata { i32 0, i32 2, i8 0, i8 1, ptr @fsl_edma_irq_init }, align 4
@imx7ulp_data = internal global %struct.fsl_edma_drvdata { i32 2, i32 1, i8 1, i8 0, ptr @fsl_edma2_irq_init }, align 4
@.str.13 = private unnamed_addr constant [8 x i8] c"edma-tx\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"edma-err\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"eDMA\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Can't register eDMA IRQ.\0A\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"eDMA tx\00", align 1
@.str.18 = private unnamed_addr constant [29 x i8] c"Can't register eDMA tx IRQ.\0A\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c"eDMA err\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"Can't register eDMA err IRQ.\0A\00", align 1
@.str.21 = private unnamed_addr constant [32 x i8] c"Interrupts in DTS not correct.\0A\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"eDMA2-CH%02d\00", align 1
@.str.23 = private unnamed_addr constant [10 x i8] c"eDMA2-ERR\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"WARN: There is non-idle channel.\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_alias230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_fsl_edma_exit, ptr @__initcall__kmod_fsl_edma__229_509_fsl_edma_init4, ptr @fsl_edma_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @fsl_edma_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_edma_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @fsl_edma_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_edma_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_edma_probe(ptr noundef %0) #2 {
  %2 = alloca i32, align 4
  %3 = alloca [32 x i8], align 1
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call ptr @of_match_device(ptr noundef nonnull @fsl_edma_dt_ids, ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #8
  store i32 0, ptr %2, align 4, !annotation !8
  %8 = icmp eq ptr %5, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.of_device_id, ptr %5, i32 0, i32 3
  %11 = load ptr, ptr %10, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.1) #9
  br label %198

14:                                               ; preds = %9
  %15 = call i32 @of_property_read_variable_u32_array(ptr noundef %7, ptr noundef nonnull @.str.2, ptr noundef nonnull %2, i32 noundef 1, i32 noundef 0) #8
  %16 = icmp sgt i32 %15, -1
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.3) #9
  br label %198

18:                                               ; preds = %14
  %19 = load i32, ptr %2, align 4
  %20 = mul i32 %19, 252
  %21 = add i32 %20, 392
  %22 = call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef %21, i32 noundef 3520) #8
  %23 = icmp eq ptr %22, null
  br i1 %23, label %198, label %24

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.fsl_edma_engine, ptr %22, i32 0, i32 6
  store ptr %11, ptr %25, align 4
  %26 = load i32, ptr %2, align 4
  %27 = getelementptr inbounds %struct.fsl_edma_engine, ptr %22, i32 0, i32 7
  store i32 %26, ptr %27, align 4
  %28 = getelementptr inbounds %struct.fsl_edma_engine, ptr %22, i32 0, i32 5
  call void @__mutex_init(ptr noundef %28, ptr noundef nonnull @.str.4, ptr noundef nonnull @fsl_edma_probe.__key) #8
  %29 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %30 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %29) #8
  %31 = getelementptr inbounds %struct.fsl_edma_engine, ptr %22, i32 0, i32 1
  store ptr %30, ptr %31, align 4
  %32 = icmp ugt ptr %30, inttoptr (i32 -4096 to ptr)
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = ptrtoint ptr %30 to i32
  br label %198

35:                                               ; preds = %24
  call void @fsl_edma_setup_regs(ptr noundef nonnull %22) #8
  %36 = getelementptr inbounds %struct.fsl_edma_engine, ptr %22, i32 0, i32 11
  %37 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %11, i32 0, i32 2
  %38 = load i8, ptr %37, align 4, !range !9
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %56, label %40

40:                                               ; preds = %35
  %41 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull @.str.5) #8
  %42 = getelementptr inbounds %struct.fsl_edma_engine, ptr %22, i32 0, i32 4
  store ptr %41, ptr %42, align 4
  %43 = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %43, label %44, label %47

44:                                               ; preds = %40
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.6) #9
  %45 = load ptr, ptr %42, align 4
  %46 = ptrtoint ptr %45 to i32
  br label %198

47:                                               ; preds = %40
  %48 = call i32 @clk_prepare(ptr noundef %41) #8
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = call i32 @clk_enable(ptr noundef %41) #8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  call void @clk_unprepare(ptr noundef %41) #8
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ %51, %53 ], [ %48, %47 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.7) #9
  br label %198

56:                                               ; preds = %50, %35
  %57 = load ptr, ptr %25, align 4
  %58 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %57, i32 0, i32 1
  %59 = load i32, ptr %58, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %113, label %61

61:                                               ; preds = %108, %56
  %62 = phi i32 [ %63, %108 ], [ 0, %56 ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #8
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(32) %3, i8 0, i32 32, i1 false), !annotation !8
  %63 = add nuw i32 %62, 1
  %64 = call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef %63) #8
  %65 = call ptr @devm_ioremap_resource(ptr noundef %4, ptr noundef %64) #8
  %66 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 2, i32 %62
  store ptr %65, ptr %66, align 4
  %67 = icmp ugt ptr %65, inttoptr (i32 -4096 to ptr)
  br i1 %67, label %68, label %76

68:                                               ; preds = %61
  %69 = icmp sgt i32 %62, 0
  br i1 %69, label %70, label %104

70:                                               ; preds = %70, %68
  %71 = phi i32 [ %74, %70 ], [ 0, %68 ]
  %72 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 3, i32 %71
  %73 = load ptr, ptr %72, align 4
  call void @clk_disable(ptr noundef %73) #8
  call void @clk_unprepare(ptr noundef %73) #8
  %74 = add nuw nsw i32 %71, 1
  %75 = icmp eq i32 %74, %62
  br i1 %75, label %104, label %70

76:                                               ; preds = %61
  %77 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef %62)
  %78 = call ptr @devm_clk_get(ptr noundef %4, ptr noundef nonnull %3) #8
  %79 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 3, i32 %62
  store ptr %78, ptr %79, align 4
  %80 = icmp ugt ptr %78, inttoptr (i32 -4096 to ptr)
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.9) #9
  %82 = icmp sgt i32 %62, 0
  br i1 %82, label %83, label %104

83:                                               ; preds = %83, %81
  %84 = phi i32 [ %87, %83 ], [ 0, %81 ]
  %85 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 3, i32 %84
  %86 = load ptr, ptr %85, align 4
  call void @clk_disable(ptr noundef %86) #8
  call void @clk_unprepare(ptr noundef %86) #8
  %87 = add nuw nsw i32 %84, 1
  %88 = icmp eq i32 %87, %62
  br i1 %88, label %104, label %83

89:                                               ; preds = %76
  %90 = call i32 @clk_prepare(ptr noundef %78) #8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %89
  %93 = call i32 @clk_enable(ptr noundef %78) #8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %108, label %95

95:                                               ; preds = %92
  call void @clk_unprepare(ptr noundef %78) #8
  br label %96

96:                                               ; preds = %95, %89
  %97 = icmp sgt i32 %62, 0
  br i1 %97, label %98, label %108

98:                                               ; preds = %98, %96
  %99 = phi i32 [ %102, %98 ], [ 0, %96 ]
  %100 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 3, i32 %99
  %101 = load ptr, ptr %100, align 4
  call void @clk_disable(ptr noundef %101) #8
  call void @clk_unprepare(ptr noundef %101) #8
  %102 = add nuw nsw i32 %99, 1
  %103 = icmp eq i32 %102, %62
  br i1 %103, label %108, label %98

104:                                              ; preds = %83, %81, %70, %68
  %105 = phi ptr [ %66, %68 ], [ %79, %81 ], [ %66, %70 ], [ %79, %83 ]
  %106 = load ptr, ptr %105, align 4
  %107 = ptrtoint ptr %106 to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  br label %198

108:                                              ; preds = %98, %96, %92
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #8
  %109 = load ptr, ptr %25, align 4
  %110 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %109, i32 0, i32 1
  %111 = load i32, ptr %110, align 4
  %112 = icmp ult i32 %63, %111
  br i1 %112, label %61, label %113

113:                                              ; preds = %108, %56
  %114 = call ptr @of_find_property(ptr noundef %7, ptr noundef nonnull @.str.10, ptr noundef null) #8
  %115 = icmp ne ptr %114, null
  %116 = getelementptr inbounds %struct.fsl_edma_engine, ptr %22, i32 0, i32 10
  %117 = zext i1 %115 to i8
  store i8 %117, ptr %116, align 4
  %118 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 3
  store volatile ptr %118, ptr %118, align 4
  %119 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 3, i32 1
  store ptr %118, ptr %119, align 4
  %120 = load i32, ptr %27, align 4
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %146, label %122

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct.fsl_edma_engine, ptr %22, i32 0, i32 11, i32 18
  br label %124

124:                                              ; preds = %142, %122
  %125 = phi i32 [ 0, %122 ], [ %143, %142 ]
  %126 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 12, i32 %125
  %127 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 12, i32 %125, i32 5
  store ptr %22, ptr %127, align 4
  %128 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 12, i32 %125, i32 2
  store i32 0, ptr %128, align 4
  %129 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 12, i32 %125, i32 4
  store i32 0, ptr %129, align 4
  %130 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 12, i32 %125, i32 3
  store i8 1, ptr %130, align 4
  %131 = getelementptr %struct.fsl_edma_engine, ptr %22, i32 0, i32 12, i32 %125, i32 13
  store i32 3, ptr %131, align 4
  %132 = getelementptr inbounds %struct.virt_dma_chan, ptr %126, i32 0, i32 2
  store ptr @fsl_edma_free_desc, ptr %132, align 4
  call void @vchan_init(ptr noundef %126, ptr noundef nonnull %22) #8
  %133 = load ptr, ptr %123, align 4
  %134 = getelementptr %struct.fsl_edma_hw_tcd, ptr %133, i32 %125, i32 9
  %135 = load i8, ptr %116, align 4, !range !9
  %136 = icmp eq i8 %135, 0
  call void asm sideeffect "dsb st", "~{memory}"() #8
  call void @arm_heavy_mb() #8
  br i1 %136, label %141, label %137

137:                                              ; preds = %124
  %138 = ptrtoint ptr %134 to i32
  %139 = xor i32 %138, 2
  %140 = inttoptr i32 %139 to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %140, i16 0) #8, !srcloc !10
  br label %142

141:                                              ; preds = %124
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %134, i16 0) #8, !srcloc !10
  br label %142

142:                                              ; preds = %141, %137
  call void @fsl_edma_chan_mux(ptr noundef %126, i32 noundef 0, i1 noundef zeroext false) #8
  %143 = add nuw i32 %125, 1
  %144 = load i32, ptr %27, align 4
  %145 = icmp ult i32 %143, %144
  br i1 %145, label %124, label %146

146:                                              ; preds = %142, %113
  %147 = getelementptr inbounds %struct.fsl_edma_engine, ptr %22, i32 0, i32 11, i32 15
  %148 = load ptr, ptr %147, align 4
  call void asm sideeffect "dsb st", "~{memory}"() #8
  call void @arm_heavy_mb() #8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %148, i32 -1) #8
  %149 = load ptr, ptr %25, align 4
  %150 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %149, i32 0, i32 4
  %151 = load ptr, ptr %150, align 4
  %152 = call i32 %151(ptr noundef %0, ptr noundef nonnull %22) #8
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %198

154:                                              ; preds = %146
  %155 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 6
  call void @_set_bit(i32 noundef 9, ptr noundef %155) #8
  call void @_set_bit(i32 noundef 11, ptr noundef %155) #8
  call void @_set_bit(i32 noundef 12, ptr noundef %155) #8
  call void @_set_bit(i32 noundef 0, ptr noundef %155) #8
  %156 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 15
  store ptr %4, ptr %156, align 4
  %157 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 27
  store ptr @fsl_edma_alloc_chan_resources, ptr %157, align 4
  %158 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 29
  store ptr @fsl_edma_free_chan_resources, ptr %158, align 4
  %159 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 49
  store ptr @fsl_edma_tx_status, ptr %159, align 4
  %160 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 39
  store ptr @fsl_edma_prep_slave_sg, ptr %160, align 4
  %161 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 40
  store ptr @fsl_edma_prep_dma_cyclic, ptr %161, align 4
  %162 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 30
  store ptr @fsl_edma_prep_memcpy, ptr %162, align 4
  %163 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 44
  store ptr @fsl_edma_slave_config, ptr %163, align 4
  %164 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 45
  store ptr @fsl_edma_pause, ptr %164, align 4
  %165 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 46
  store ptr @fsl_edma_resume, ptr %165, align 4
  %166 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 47
  store ptr @fsl_edma_terminate_all, ptr %166, align 4
  %167 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 48
  store ptr @fsl_edma_synchronize, ptr %167, align 4
  %168 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 50
  store ptr @fsl_edma_issue_pending, ptr %168, align 4
  %169 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 19
  store i32 278, ptr %169, align 4
  %170 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 20
  store i32 278, ptr %170, align 4
  %171 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 21
  store i32 6, ptr %171, align 4
  %172 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 10
  store i32 5, ptr %172, align 4
  %173 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 20
  %174 = load ptr, ptr %173, align 4
  %175 = icmp eq ptr %174, null
  br i1 %175, label %177, label %176

176:                                              ; preds = %154
  store i32 16383, ptr %174, align 4
  br label %177

177:                                              ; preds = %176, %154
  %178 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %22, ptr %178, align 8
  %179 = call i32 @dma_async_device_register(ptr noundef nonnull %22) #8
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %185, label %181

181:                                              ; preds = %177
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %179) #9
  %182 = load ptr, ptr %25, align 4
  %183 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %182, i32 0, i32 1
  %184 = load i32, ptr %183, align 4
  call fastcc void @fsl_disable_clocks(ptr noundef nonnull %22, i32 noundef %184)
  br label %198

185:                                              ; preds = %177
  %186 = call i32 @of_dma_controller_register(ptr noundef %7, ptr noundef nonnull @fsl_edma_xlate, ptr noundef nonnull %22) #8
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %192, label %188

188:                                              ; preds = %185
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.12, i32 noundef %186) #9
  call void @dma_async_device_unregister(ptr noundef nonnull %22) #8
  %189 = load ptr, ptr %25, align 4
  %190 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %189, i32 0, i32 1
  %191 = load i32, ptr %190, align 4
  call fastcc void @fsl_disable_clocks(ptr noundef nonnull %22, i32 noundef %191)
  br label %198

192:                                              ; preds = %185
  %193 = load ptr, ptr %36, align 4
  %194 = load i8, ptr %116, align 4, !range !9
  %195 = icmp eq i8 %194, 0
  call void asm sideeffect "dsb st", "~{memory}"() #8
  call void @arm_heavy_mb() #8
  br i1 %195, label %197, label %196

196:                                              ; preds = %192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 201326592) #8, !srcloc !11
  br label %198

197:                                              ; preds = %192
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %193, i32 12) #8, !srcloc !11
  br label %198

198:                                              ; preds = %197, %196, %188, %181, %146, %104, %54, %44, %33, %18, %17, %13
  %199 = phi i32 [ %15, %17 ], [ %34, %33 ], [ %46, %44 ], [ %55, %54 ], [ %179, %181 ], [ %186, %188 ], [ -22, %13 ], [ -12, %18 ], [ %152, %146 ], [ %107, %104 ], [ 0, %196 ], [ 0, %197 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #8
  ret i32 %199
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_edma_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %5 = load ptr, ptr %4, align 8
  %6 = getelementptr inbounds %struct.fsl_edma_engine, ptr %5, i32 0, i32 8
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.fsl_edma_engine, ptr %5, i32 0, i32 9
  %9 = load i32, ptr %8, align 4
  %10 = icmp eq i32 %7, %9
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void @devm_free_irq(ptr noundef %11, i32 noundef %7, ptr noundef %5) #8
  br i1 %10, label %14, label %12

12:                                               ; preds = %1
  %13 = load i32, ptr %8, align 4
  tail call void @devm_free_irq(ptr noundef %11, i32 noundef %13, ptr noundef %5) #8
  br label %14

14:                                               ; preds = %12, %1
  tail call void @fsl_edma_cleanup_vchan(ptr noundef %5) #8
  tail call void @of_dma_controller_free(ptr noundef %3) #8
  tail call void @dma_async_device_unregister(ptr noundef %5) #8
  %15 = getelementptr inbounds %struct.fsl_edma_engine, ptr %5, i32 0, i32 6
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %16, i32 0, i32 1
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %20, %14
  %21 = phi i32 [ %24, %20 ], [ 0, %14 ]
  %22 = getelementptr %struct.fsl_edma_engine, ptr %5, i32 0, i32 3, i32 %21
  %23 = load ptr, ptr %22, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  %24 = add nuw nsw i32 %21, 1
  %25 = icmp eq i32 %24, %18
  br i1 %25, label %26, label %20

26:                                               ; preds = %20, %14
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_setup_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @fsl_disable_clocks(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #2 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %8, %4 ], [ 0, %2 ]
  %6 = getelementptr %struct.fsl_edma_engine, ptr %0, i32 0, i32 3, i32 %5
  %7 = load ptr, ptr %6, align 4
  tail call void @clk_disable(ptr noundef %7) #8
  tail call void @clk_unprepare(ptr noundef %7) #8
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp eq i32 %8, %1
  br i1 %9, label %10, label %4

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_free_desc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_chan_mux(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_alloc_chan_resources(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_free_chan_resources(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_tx_status(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_edma_prep_slave_sg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_edma_prep_dma_cyclic(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_edma_prep_memcpy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_slave_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_pause(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_terminate_all(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @fsl_edma_synchronize(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %4) #8
  %5 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %5) #8
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %5, i32 noundef %6) #8
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_issue_pending(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @fsl_edma_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsl_edma_engine, ptr %4, i32 0, i32 6
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %6, i32 0, i32 1
  %8 = load i32, ptr %7, align 4
  %9 = getelementptr inbounds %struct.fsl_edma_engine, ptr %4, i32 0, i32 7
  %10 = load i32, ptr %9, align 4
  %11 = udiv i32 %10, %8
  %12 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %13 = load i32, ptr %12, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %50

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.fsl_edma_engine, ptr %4, i32 0, i32 5
  tail call void @mutex_lock(ptr noundef %16) #8
  %17 = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 3
  %18 = load ptr, ptr %17, align 4
  %19 = icmp eq ptr %18, %17
  br i1 %19, label %48, label %20

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  br label %22

22:                                               ; preds = %46, %20
  %23 = phi ptr [ %18, %20 ], [ %25, %46 ]
  %24 = getelementptr i8, ptr %23, i32 -32
  %25 = load ptr, ptr %23, align 4
  %26 = getelementptr i8, ptr %23, i32 12
  %27 = load i32, ptr %26, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %22
  %30 = getelementptr i8, ptr %23, i32 -16
  %31 = load i32, ptr %30, align 4
  %32 = udiv i32 %31, %11
  %33 = load i32, ptr %21, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %46

35:                                               ; preds = %29
  %36 = tail call ptr @dma_get_slave_channel(ptr noundef %24) #8
  %37 = icmp eq ptr %36, null
  br i1 %37, label %46, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %36, align 4
  %40 = getelementptr inbounds %struct.dma_device, ptr %39, i32 0, i32 2
  %41 = load i32, ptr %40, align 4
  %42 = add i32 %41, 1
  store i32 %42, ptr %40, align 4
  %43 = getelementptr %struct.of_phandle_args, ptr %0, i32 0, i32 2, i32 1
  %44 = load i32, ptr %43, align 4
  %45 = getelementptr inbounds %struct.fsl_edma_chan, ptr %36, i32 0, i32 4
  store i32 %44, ptr %45, align 4
  tail call void @fsl_edma_chan_mux(ptr noundef nonnull %36, i32 noundef %44, i1 noundef zeroext true) #8
  br label %48

46:                                               ; preds = %35, %29, %22
  %47 = icmp eq ptr %25, %17
  br i1 %47, label %48, label %22

48:                                               ; preds = %46, %38, %15
  %49 = phi ptr [ %36, %38 ], [ null, %15 ], [ null, %46 ]
  tail call void @mutex_unlock(ptr noundef %16) #8
  br label %50

50:                                               ; preds = %48, %2
  %51 = phi ptr [ null, %2 ], [ %49, %48 ]
  ret ptr %51
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_cleanup_vchan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_edma_irq_init(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.13) #8
  %4 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 8
  store i32 %3, ptr %4, align 4
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = tail call i32 @platform_get_irq_byname(ptr noundef %0, ptr noundef nonnull @.str.14) #8
  %8 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 9
  store i32 %7, ptr %8, align 4
  %9 = icmp slt i32 %7, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = load i32, ptr %4, align 4
  %12 = icmp eq i32 %11, %7
  %13 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br i1 %12, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call i32 @devm_request_threaded_irq(ptr noundef %13, i32 noundef %7, ptr noundef nonnull @fsl_edma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %1) #8
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %27, label %24

17:                                               ; preds = %10
  %18 = tail call i32 @devm_request_threaded_irq(ptr noundef %13, i32 noundef %11, ptr noundef nonnull @fsl_edma_tx_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef %1) #8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i32, ptr %8, align 4
  %22 = tail call i32 @devm_request_threaded_irq(ptr noundef %13, i32 noundef %21, ptr noundef nonnull @fsl_edma_err_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.19, ptr noundef %1) #8
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %17, %14
  %25 = phi ptr [ @.str.16, %14 ], [ @.str.18, %17 ], [ @.str.20, %20 ]
  %26 = phi i32 [ %15, %14 ], [ %18, %17 ], [ %22, %20 ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull %25) #9
  br label %27

27:                                               ; preds = %24, %20, %14, %6, %2
  %28 = phi i32 [ %3, %2 ], [ %7, %6 ], [ 0, %20 ], [ 0, %14 ], [ %26, %24 ]
  ret i32 %28
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_edma_irq_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @fsl_edma_tx_handler(i32 noundef %0, ptr noundef %1)
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call i32 @fsl_edma_err_handler(i32 noundef %0, ptr noundef %1)
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 1, %2 ]
  ret i32 %8
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_edma_tx_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 11, i32 15
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 10
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8
  br i1 %7, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %12

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ %8, %11 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %97, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %97, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 11, i32 10
  br label %21

21:                                               ; preds = %93, %19
  %22 = phi i32 [ 0, %19 ], [ %94, %93 ]
  %23 = shl nuw i32 1, %22
  %24 = and i32 %23, %13
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %93, label %26

26:                                               ; preds = %21
  %27 = trunc i32 %22 to i8
  %28 = and i8 %27, 31
  %29 = load ptr, ptr %20, align 4
  %30 = load i8, ptr %5, align 4, !range !9
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = ptrtoint ptr %29 to i32
  %34 = xor i32 %33, 3
  %35 = inttoptr i32 %34 to ptr
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %35, i8 %28) #8, !srcloc !15
  br label %37

36:                                               ; preds = %26
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %29, i8 %28) #8, !srcloc !15
  br label %37

37:                                               ; preds = %36, %32
  %38 = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %22
  %39 = getelementptr inbounds %struct.virt_dma_chan, ptr %38, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %39) #8
  %40 = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %22, i32 6
  %41 = load ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %44 = load i16, ptr %39, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %93

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.fsl_edma_desc, ptr %41, i32 0, i32 2
  %48 = load i8, ptr %47, align 4, !range !9
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %50, label %77

50:                                               ; preds = %46
  %51 = getelementptr inbounds %struct.virt_dma_desc, ptr %41, i32 0, i32 2
  %52 = getelementptr inbounds %struct.virt_dma_desc, ptr %41, i32 0, i32 2, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = load ptr, ptr %51, align 4
  %55 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %53, ptr %55, align 4
  store volatile ptr %54, ptr %53, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %51, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %52, align 4
  %56 = load ptr, ptr %40, align 4
  %57 = load i32, ptr %56, align 4
  %58 = icmp slt i32 %57, 1
  br i1 %58, label %59, label %60, !prof !20

59:                                               ; preds = %50
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !21
  unreachable

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %56, i32 0, i32 3
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.dma_chan, ptr %62, i32 0, i32 3
  store i32 %57, ptr %63, align 4
  store i32 0, ptr %56, align 4
  %64 = getelementptr inbounds %struct.virt_dma_desc, ptr %56, i32 0, i32 2
  %65 = getelementptr inbounds %struct.virt_dma_chan, ptr %62, i32 0, i32 7
  %66 = getelementptr inbounds %struct.virt_dma_chan, ptr %62, i32 0, i32 7, i32 1
  %67 = load ptr, ptr %66, align 4
  store ptr %64, ptr %66, align 4
  store ptr %65, ptr %64, align 4
  %68 = getelementptr inbounds %struct.virt_dma_desc, ptr %56, i32 0, i32 2, i32 1
  store ptr %67, ptr %68, align 4
  store volatile ptr %64, ptr %67, align 4
  %69 = getelementptr inbounds %struct.virt_dma_chan, ptr %62, i32 0, i32 1, i32 1
  %70 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %69) #8
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %60
  %73 = getelementptr inbounds %struct.virt_dma_chan, ptr %62, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %73) #8
  br label %74

74:                                               ; preds = %72, %60
  store ptr null, ptr %40, align 4
  %75 = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %22, i32 1
  store i32 0, ptr %75, align 4
  %76 = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %22, i32 3
  store i8 1, ptr %76, align 4
  br label %89

77:                                               ; preds = %46
  %78 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %41, i32 0, i32 3
  %79 = load ptr, ptr %78, align 4
  %80 = getelementptr inbounds %struct.virt_dma_chan, ptr %79, i32 0, i32 9
  store ptr %41, ptr %80, align 4
  %81 = getelementptr inbounds %struct.virt_dma_chan, ptr %79, i32 0, i32 1, i32 1
  %82 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %81) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = getelementptr inbounds %struct.virt_dma_chan, ptr %79, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %85) #8
  br label %86

86:                                               ; preds = %84, %77
  %87 = load ptr, ptr %40, align 4
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %86, %74
  tail call void @fsl_edma_xfer_desc(ptr noundef %38) #8
  br label %90

90:                                               ; preds = %89, %86
  tail call void asm sideeffect "dmb ish", "~{memory}"() #8, !srcloc !16
  %91 = load i16, ptr %39, align 4
  %92 = add i16 %91, 1
  store i16 %92, ptr %39, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #8, !srcloc !17
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #8, !srcloc !18
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !19
  br label %93

93:                                               ; preds = %90, %43, %21
  %94 = add nuw i32 %22, 1
  %95 = load i32, ptr %16, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %21, label %97

97:                                               ; preds = %93, %15, %12
  %98 = phi i32 [ 0, %12 ], [ 1, %15 ], [ 1, %93 ]
  ret i32 %98
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_edma_err_handler(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 11, i32 17
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 10
  %6 = load i8, ptr %5, align 4, !range !9
  %7 = icmp eq i8 %6, 0
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8
  br i1 %7, label %11, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @llvm.bswap.i32(i32 %8) #8
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !12
  br label %12

11:                                               ; preds = %2
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i32 [ %10, %9 ], [ %8, %11 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %47, label %15

15:                                               ; preds = %12
  %16 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 7
  %17 = load i32, ptr %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 11, i32 11
  br label %21

21:                                               ; preds = %43, %19
  %22 = phi i32 [ %17, %19 ], [ %44, %43 ]
  %23 = phi i32 [ 0, %19 ], [ %45, %43 ]
  %24 = shl nuw i32 1, %23
  %25 = and i32 %24, %13
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %43, label %27

27:                                               ; preds = %21
  %28 = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %23
  tail call void @fsl_edma_disable_request(ptr noundef %28) #8
  %29 = trunc i32 %23 to i8
  %30 = and i8 %29, 31
  %31 = load ptr, ptr %20, align 4
  %32 = load i8, ptr %5, align 4, !range !9
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = ptrtoint ptr %31 to i32
  %36 = xor i32 %35, 3
  %37 = inttoptr i32 %36 to ptr
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %37, i8 %30) #8, !srcloc !15
  br label %39

38:                                               ; preds = %27
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %31, i8 %30) #8, !srcloc !15
  br label %39

39:                                               ; preds = %38, %34
  %40 = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %23, i32 1
  store i32 3, ptr %40, align 4
  %41 = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %23, i32 3
  store i8 1, ptr %41, align 4
  %42 = load i32, ptr %16, align 4
  br label %43

43:                                               ; preds = %39, %21
  %44 = phi i32 [ %22, %21 ], [ %42, %39 ]
  %45 = add nuw i32 %23, 1
  %46 = icmp ult i32 %45, %44
  br i1 %46, label %21, label %47

47:                                               ; preds = %43, %15, %12
  %48 = phi i32 [ 0, %12 ], [ 1, %15 ], [ 1, %43 ]
  ret i32 %48
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_xfer_desc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_disable_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_edma2_irq_init(ptr noundef %0, ptr noundef %1) #2 {
  %3 = tail call i32 @platform_irq_count(ptr noundef %0) #8
  %4 = icmp slt i32 %3, 3
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = add nsw i32 %3, -1
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  br label %13

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.21) #9
  br label %28

10:                                               ; preds = %25
  %11 = add nuw nsw i32 %14, 1
  %12 = icmp eq i32 %11, %3
  br i1 %12, label %28, label %13

13:                                               ; preds = %10, %5
  %14 = phi i32 [ 0, %5 ], [ %11, %10 ]
  %15 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef %14) #8
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %14, i32 14
  %19 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %18, ptr noundef nonnull @.str.22, i32 noundef %14)
  %20 = icmp eq i32 %14, %6
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %15, ptr noundef nonnull @fsl_edma_err_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.23, ptr noundef %1) #8
  br label %25

23:                                               ; preds = %17
  %24 = tail call i32 @devm_request_threaded_irq(ptr noundef %7, i32 noundef %15, ptr noundef nonnull @fsl_edma_tx_handler, ptr noundef null, i32 noundef 0, ptr noundef %18, ptr noundef %1) #8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %10, label %28

28:                                               ; preds = %25, %13, %10, %8
  %29 = phi i32 [ -22, %8 ], [ -6, %13 ], [ %26, %25 ], [ 0, %10 ]
  ret i32 %29
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_edma_suspend_late(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %16, %1
  %8 = phi i32 [ %18, %16 ], [ 0, %1 ]
  %9 = getelementptr %struct.fsl_edma_engine, ptr %3, i32 0, i32 12, i32 %8
  %10 = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 3
  %11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %10) #8
  %12 = getelementptr %struct.fsl_edma_engine, ptr %3, i32 0, i32 12, i32 %8, i32 3
  %13 = load i8, ptr %12, align 4, !range !9
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16, !prof !20

15:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %0, ptr noundef nonnull @.str.24) #9
  tail call void @fsl_edma_disable_request(ptr noundef %9) #8
  tail call void @fsl_edma_chan_mux(ptr noundef %9, i32 noundef 0, i1 noundef zeroext false) #8
  br label %16

16:                                               ; preds = %15, %7
  %17 = getelementptr %struct.fsl_edma_engine, ptr %3, i32 0, i32 12, i32 %8, i32 2
  store i32 1, ptr %17, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %10, i32 noundef %11) #8
  %18 = add nuw i32 %8, 1
  %19 = load i32, ptr %4, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %7, label %21

21:                                               ; preds = %16, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @fsl_edma_resume_early(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 7
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 11, i32 18
  %9 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 10
  br label %10

10:                                               ; preds = %28, %7
  %11 = phi i32 [ 0, %7 ], [ %29, %28 ]
  %12 = getelementptr %struct.fsl_edma_engine, ptr %3, i32 0, i32 12, i32 %11, i32 2
  store i32 0, ptr %12, align 4
  %13 = load ptr, ptr %8, align 4
  %14 = getelementptr %struct.fsl_edma_hw_tcd, ptr %13, i32 %11, i32 9
  %15 = load i8, ptr %9, align 4, !range !9
  %16 = icmp eq i8 %15, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = ptrtoint ptr %14 to i32
  %19 = xor i32 %18, 2
  %20 = inttoptr i32 %19 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %20, i16 0) #8, !srcloc !10
  br label %22

21:                                               ; preds = %10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %14, i16 0) #8, !srcloc !10
  br label %22

22:                                               ; preds = %21, %17
  %23 = getelementptr %struct.fsl_edma_engine, ptr %3, i32 0, i32 12, i32 %11, i32 4
  %24 = load i32, ptr %23, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = getelementptr %struct.fsl_edma_engine, ptr %3, i32 0, i32 12, i32 %11
  tail call void @fsl_edma_chan_mux(ptr noundef %27, i32 noundef %24, i1 noundef zeroext true) #8
  br label %28

28:                                               ; preds = %26, %22
  %29 = add nuw i32 %11, 1
  %30 = load i32, ptr %4, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %10, label %32

32:                                               ; preds = %28, %1
  %33 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 11
  %34 = load ptr, ptr %33, align 4
  %35 = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 10
  %36 = load i8, ptr %35, align 4, !range !9
  %37 = icmp eq i8 %36, 0
  tail call void asm sideeffect "dsb st", "~{memory}"() #8
  tail call void @arm_heavy_mb() #8
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 201326592) #8, !srcloc !11
  br label %40

39:                                               ; preds = %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 12) #8, !srcloc !11
  br label %40

40:                                               ; preds = %39, %38
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }

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
!10 = !{i64 3470352}
!11 = !{i64 3470972}
!12 = !{i64 2153192244}
!13 = !{i64 2151010843}
!14 = !{i64 2151011195}
!15 = !{i64 3470775}
!16 = !{i64 2148938684}
!17 = !{i64 2148934508}
!18 = !{i64 2148934583, i64 2148934610, i64 2148934657, i64 2148934679, i64 2148934707, i64 2148934727}
!19 = !{i64 2148961687}
!20 = !{!"branch_weights", i32 1, i32 2000}
!21 = !{i64 2153143705, i64 2153144192, i64 2153143742, i64 2153143798, i64 2153143832, i64 2153143856, i64 2153143897, i64 2153143918, i64 2153143946, i64 2153143980}
