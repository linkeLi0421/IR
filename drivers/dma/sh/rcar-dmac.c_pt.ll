; ModuleID = '/llk/IR/drivers/dma/sh/rcar-dmac.c_pt.bc'
source_filename = "../drivers/dma/sh/rcar-dmac.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.rcar_dmac_of_data = type { i32, i32 }
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
%struct.rcar_dmac = type { %struct.dma_device, ptr, ptr, ptr, i32, ptr, i32, [8 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rcar_dmac_chan = type { %struct.dma_chan, ptr, i32, i32, %struct.rcar_dmac_chan_slave, %struct.rcar_dmac_chan_slave, %struct.rcar_dmac_chan_map, i32, %struct.spinlock, %struct.anon.68 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.rcar_dmac_chan_slave = type { i32, i32 }
%struct.rcar_dmac_chan_map = type { i32, i32, %struct.rcar_dmac_chan_slave }
%struct.anon.68 = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.rcar_dmac_desc_page = type { %struct.list_head, %union.anon.70 }
%union.anon.70 = type { [0 x %struct.rcar_dmac_desc] }
%struct.rcar_dmac_desc = type { %struct.dma_async_tx_descriptor, i32, i32, i32, %struct.list_head, %struct.list_head, ptr, i32, %struct.anon.69, i32, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.anon.69 = type { i8, ptr, i32, i32 }
%struct.rcar_dmac_xfer_chunk = type { %struct.list_head, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.1, %union.anon.61, %struct.atomic_t }
%union.anon.1 = type { %struct.anon }
%struct.anon = type { %struct.list_head, ptr, i32, i32 }
%union.anon.61 = type { %struct.atomic_t }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_dmac_hw_desc = type { i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }

@__initcall__kmod_rcar_dmac__231_2048_rcar_dmac_driver_init6 = internal global ptr @rcar_dmac_driver_init, section ".initcall6.init", align 4
@rcar_dmac_driver = internal global %struct.platform_driver { ptr @rcar_dmac_probe, ptr @rcar_dmac_remove, ptr @rcar_dmac_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_dmac_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_dmac_pm, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_rcar_dmac_driver_exit = internal global ptr @rcar_dmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description232 = internal constant [55 x i8] c"rcar_dmac.description=R-Car Gen2 DMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author233 = internal constant [70 x i8] c"rcar_dmac.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [40 x i8] c"rcar_dmac.file=drivers/dma/sh/rcar-dmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [25 x i8] c"rcar_dmac.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [10 x i8] c"rcar-dmac\00", align 1
@rcar_dmac_of_ids = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-dmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_dmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen4-dmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen4_dmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,dmac-r8a779a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen4_dmac_data }, %struct.of_device_id zeroinitializer], align 4
@rcar_dmac_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @rcar_dmac_runtime_suspend, ptr @rcar_dmac_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"runtime PM get sync failed (%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"failed to reset device\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"dma-channels\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"unable to read dma-channels property\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"invalid number of channels %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"dma-channel-mask\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"DMAOR initialization failed.\0A\00", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"CHCR DE check error\0A\00", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@rcar_dmac_chan_configure_desc.chcr_ts = internal unnamed_addr constant [7 x i32] [i32 0, i32 8, i32 16, i32 1048600, i32 24, i32 1048576, i32 1048584], align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"%s: bad parameter: len=%d, id=%d\0A\00", align 1
@__func__.rcar_dmac_prep_slave_sg = private unnamed_addr constant [24 x i8] c"rcar_dmac_prep_slave_sg\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"chan%u: failed to map %zx@%pap\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"%s: bad parameter: buf_len=%zu, period_len=%zu, id=%d\0A\00", align 1
@__func__.rcar_dmac_prep_dma_cyclic = private unnamed_addr constant [26 x i8] c"rcar_dmac_prep_dma_cyclic\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"chan%u: sg length %d exceeds limit %d\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"drivers/dma/sh/rcar-dmac.c\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"No descriptor for cookie!\00", align 1
@rcar_dmac_chan_get_residue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"residue might be not continuous!\00", align 1
@rcar_dmac_chan_start_xfer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"ch%u\00", align 1
@.str.17 = private unnamed_addr constant [6 x i8] c"%s:%u\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"failed to request IRQ %u (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [23 x i8] c"Channel Address Error\0A\00", align 1
@rcar_dmac_isr_transfer_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcar_dmac_data = internal constant %struct.rcar_dmac_of_data { i32 32768, i32 128 }, align 4
@rcar_gen4_dmac_data = internal constant %struct.rcar_dmac_of_data { i32 0, i32 4096 }, align 4
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__exitcall_rcar_dmac_driver_exit, ptr @__initcall__kmod_rcar_dmac__231_2048_rcar_dmac_driver_init6, ptr @rcar_dmac_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @rcar_dmac_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_dmac_driver, ptr noundef null) #12
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @rcar_dmac_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_dmac_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_dmac_probe(ptr noundef %0) #2 {
  %2 = alloca [5 x i8], align 1
  %3 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %4 = tail call ptr @of_device_get_match_data(ptr noundef %3) #12
  %5 = icmp eq ptr %4, null
  br i1 %5, label %208, label %6

6:                                                ; preds = %1
  %7 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 308, i32 noundef 3520) #12
  %8 = icmp eq ptr %7, null
  br i1 %8, label %208, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.rcar_dmac, ptr %7, i32 0, i32 1
  store ptr %3, ptr %10, align 4
  %11 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %7, ptr %11, align 8
  %12 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 20
  %13 = load ptr, ptr %12, align 4
  %14 = icmp eq ptr %13, null
  br i1 %14, label %208, label %15

15:                                               ; preds = %9
  store i32 16777215, ptr %13, align 4
  %16 = load ptr, ptr %10, align 4
  %17 = tail call i32 @dma_set_mask(ptr noundef %16, i64 noundef 1099511627775) #12
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %208

19:                                               ; preds = %15
  %20 = tail call i32 @dma_set_coherent_mask(ptr noundef %16, i64 noundef 1099511627775) #12
  %21 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %22 = load ptr, ptr %21, align 8
  %23 = getelementptr inbounds %struct.rcar_dmac, ptr %7, i32 0, i32 4
  %24 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.3, ptr noundef %23, i32 noundef 1, i32 noundef 0) #12
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.4) #13
  br label %208

27:                                               ; preds = %19
  %28 = load i32, ptr %23, align 4
  %29 = add i32 %28, -32
  %30 = icmp ult i32 %29, -31
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.5, i32 noundef %28) #13
  br label %208

32:                                               ; preds = %27
  %33 = sub nuw nsw i32 32, %28
  %34 = lshr i32 -1, %33
  %35 = getelementptr inbounds %struct.rcar_dmac, ptr %7, i32 0, i32 6
  store i32 %34, ptr %35, align 4
  %36 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %22, ptr noundef nonnull @.str.6, ptr noundef %35, i32 noundef 1, i32 noundef 0) #12
  %37 = load i32, ptr %23, align 4
  %38 = sub i32 32, %37
  %39 = lshr i32 -1, %38
  %40 = load i32, ptr %35, align 4
  %41 = and i32 %39, %40
  store i32 %41, ptr %35, align 4
  %42 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 34
  %43 = load ptr, ptr %42, align 8
  %44 = icmp eq ptr %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %32
  %46 = and i32 %41, -2
  store i32 %46, ptr %35, align 4
  br label %47

47:                                               ; preds = %45, %32
  %48 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %37, i32 176) #12
  %49 = extractvalue { i32, i1 } %48, 1
  br i1 %49, label %50, label %52, !prof !8

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.rcar_dmac, ptr %7, i32 0, i32 5
  store ptr null, ptr %51, align 4
  br label %208

52:                                               ; preds = %47
  %53 = extractvalue { i32, i1 } %48, 0
  %54 = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef %53, i32 noundef 3520) #12
  %55 = getelementptr inbounds %struct.rcar_dmac, ptr %7, i32 0, i32 5
  store ptr %54, ptr %55, align 4
  %56 = icmp eq ptr %54, null
  br i1 %56, label %208, label %57

57:                                               ; preds = %52
  %58 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 0) #12
  %59 = getelementptr inbounds %struct.rcar_dmac, ptr %7, i32 0, i32 2
  store ptr %58, ptr %59, align 4
  %60 = icmp ugt ptr %58, inttoptr (i32 -4096 to ptr)
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = ptrtoint ptr %58 to i32
  br label %208

63:                                               ; preds = %57
  %64 = load i32, ptr %4, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %0, i32 noundef 1) #12
  %68 = getelementptr inbounds %struct.rcar_dmac, ptr %7, i32 0, i32 3
  store ptr %67, ptr %68, align 4
  %69 = icmp ugt ptr %67, inttoptr (i32 -4096 to ptr)
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = ptrtoint ptr %67 to i32
  br label %208

72:                                               ; preds = %63
  %73 = getelementptr i8, ptr %58, i32 %64
  br label %74

74:                                               ; preds = %72, %66
  %75 = phi ptr [ %73, %72 ], [ %67, %66 ]
  %76 = load i32, ptr %23, align 4
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %101, label %78

78:                                               ; preds = %74
  %79 = load ptr, ptr %55, align 4
  %80 = getelementptr inbounds %struct.rcar_dmac_of_data, ptr %4, i32 0, i32 1
  br label %81

81:                                               ; preds = %96, %78
  %82 = phi i32 [ %76, %78 ], [ %97, %96 ]
  %83 = phi i32 [ 0, %78 ], [ %98, %96 ]
  %84 = phi ptr [ %79, %78 ], [ %99, %96 ]
  %85 = load i32, ptr %35, align 4
  %86 = shl nuw i32 1, %83
  %87 = and i32 %85, %86
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %96, label %89

89:                                               ; preds = %81
  %90 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %84, i32 0, i32 2
  store i32 %83, ptr %90, align 4
  %91 = load i32, ptr %80, align 4
  %92 = mul i32 %91, %83
  %93 = getelementptr i8, ptr %75, i32 %92
  %94 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %84, i32 0, i32 1
  store ptr %93, ptr %94, align 4
  %95 = load i32, ptr %23, align 4
  br label %96

96:                                               ; preds = %89, %81
  %97 = phi i32 [ %82, %81 ], [ %95, %89 ]
  %98 = add nuw i32 %83, 1
  %99 = getelementptr %struct.rcar_dmac_chan, ptr %84, i32 1
  %100 = icmp ult i32 %98, %97
  br i1 %100, label %81, label %101

101:                                              ; preds = %96, %74
  tail call void @pm_runtime_enable(ptr noundef %3) #12
  %102 = tail call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %3)
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.1, i32 noundef %102) #13
  br label %206

105:                                              ; preds = %101
  %106 = tail call fastcc i32 @rcar_dmac_init(ptr noundef nonnull %7)
  %107 = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #12
  %108 = icmp eq i32 %106, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.2) #13
  br label %206

110:                                              ; preds = %105
  %111 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %111) #12
  tail call void @_set_bit(i32 noundef 11, ptr noundef %111) #12
  %112 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  store ptr %3, ptr %112, align 4
  %113 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 10
  store i32 2, ptr %113, align 4
  %114 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 19
  store i32 127, ptr %114, align 4
  %115 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 20
  store i32 127, ptr %115, align 4
  %116 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 21
  store i32 6, ptr %116, align 4
  %117 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 26
  store i32 2, ptr %117, align 4
  %118 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 27
  store ptr @rcar_dmac_alloc_chan_resources, ptr %118, align 4
  %119 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 29
  store ptr @rcar_dmac_free_chan_resources, ptr %119, align 4
  %120 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 30
  store ptr @rcar_dmac_prep_dma_memcpy, ptr %120, align 4
  %121 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 39
  store ptr @rcar_dmac_prep_slave_sg, ptr %121, align 4
  %122 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 40
  store ptr @rcar_dmac_prep_dma_cyclic, ptr %122, align 4
  %123 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 44
  store ptr @rcar_dmac_device_config, ptr %123, align 4
  %124 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 45
  store ptr @rcar_dmac_chan_pause, ptr %124, align 4
  %125 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 47
  store ptr @rcar_dmac_chan_terminate_all, ptr %125, align 4
  %126 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 49
  store ptr @rcar_dmac_tx_status, ptr %126, align 4
  %127 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 50
  store ptr @rcar_dmac_issue_pending, ptr %127, align 4
  %128 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 48
  store ptr @rcar_dmac_device_synchronize, ptr %128, align 4
  %129 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 3
  store volatile ptr %129, ptr %129, align 4
  %130 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 3, i32 1
  store ptr %129, ptr %130, align 4
  %131 = load i32, ptr %23, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %197, label %133

133:                                              ; preds = %110
  %134 = load ptr, ptr %55, align 4
  br label %135

135:                                              ; preds = %192, %133
  %136 = phi i32 [ 0, %133 ], [ %193, %192 ]
  %137 = phi ptr [ %134, %133 ], [ %194, %192 ]
  %138 = load i32, ptr %35, align 4
  %139 = shl nuw i32 1, %136
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %192, label %142

142:                                              ; preds = %135
  %143 = load ptr, ptr %10, align 4
  %144 = getelementptr i8, ptr %143, i32 -16
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %2) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 1 dereferenceable(5) %2, i8 0, i32 5, i1 false) #12, !annotation !9
  %145 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 7
  store i32 -22, ptr %145, align 4
  %146 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 8
  store i32 0, ptr %146, align 4
  %147 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 9
  store volatile ptr %147, ptr %147, align 4
  %148 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 9, i32 0, i32 1
  store ptr %147, ptr %148, align 4
  %149 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 9, i32 1
  store volatile ptr %149, ptr %149, align 4
  %150 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 9, i32 1, i32 1
  store ptr %149, ptr %150, align 4
  %151 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 9, i32 2
  store volatile ptr %151, ptr %151, align 4
  %152 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 9, i32 2, i32 1
  store ptr %151, ptr %152, align 4
  %153 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 9, i32 3
  store volatile ptr %153, ptr %153, align 4
  %154 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 9, i32 3, i32 1
  store ptr %153, ptr %154, align 4
  %155 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 9, i32 4
  store volatile ptr %155, ptr %155, align 4
  %156 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 9, i32 4, i32 1
  store ptr %155, ptr %156, align 4
  %157 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 2
  %158 = load i32, ptr %157, align 4
  %159 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.16, i32 noundef %158) #12
  %160 = call i32 @platform_get_irq_byname(ptr noundef %144, ptr noundef nonnull %2) #12
  %161 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %137, i32 0, i32 3
  store i32 %160, ptr %161, align 4
  %162 = icmp slt i32 %160, 0
  br i1 %162, label %186, label %163

163:                                              ; preds = %142
  %164 = load ptr, ptr %10, align 4
  %165 = getelementptr inbounds %struct.device, ptr %164, i32 0, i32 3
  %166 = load ptr, ptr %165, align 4
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %170

168:                                              ; preds = %163
  %169 = load ptr, ptr %164, align 4
  br label %170

170:                                              ; preds = %168, %163
  %171 = phi ptr [ %169, %168 ], [ %166, %163 ]
  %172 = load i32, ptr %157, align 4
  %173 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %164, i32 noundef 3264, ptr noundef nonnull @.str.17, ptr noundef %171, i32 noundef %172) #12
  %174 = icmp eq ptr %173, null
  br i1 %174, label %186, label %175

175:                                              ; preds = %170
  store ptr %7, ptr %137, align 4
  %176 = getelementptr inbounds %struct.dma_chan, ptr %137, i32 0, i32 2
  store i32 1, ptr %176, align 4
  %177 = getelementptr inbounds %struct.dma_chan, ptr %137, i32 0, i32 3
  store i32 1, ptr %177, align 4
  %178 = getelementptr inbounds %struct.dma_chan, ptr %137, i32 0, i32 8
  %179 = load ptr, ptr %130, align 4
  store ptr %178, ptr %130, align 4
  store ptr %129, ptr %178, align 4
  %180 = getelementptr inbounds %struct.dma_chan, ptr %137, i32 0, i32 8, i32 1
  store ptr %179, ptr %180, align 4
  store volatile ptr %178, ptr %179, align 4
  %181 = load ptr, ptr %10, align 4
  %182 = load i32, ptr %161, align 4
  %183 = call i32 @devm_request_threaded_irq(ptr noundef %181, i32 noundef %182, ptr noundef nonnull @rcar_dmac_isr_channel, ptr noundef nonnull @rcar_dmac_isr_channel_thread, i32 noundef 0, ptr noundef nonnull %173, ptr noundef %137) #12
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %175
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #12
  br label %192

186:                                              ; preds = %170, %142
  %187 = phi i32 [ -12, %170 ], [ -19, %142 ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #12
  br label %206

188:                                              ; preds = %175
  %189 = load ptr, ptr %10, align 4
  %190 = load i32, ptr %161, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %189, ptr noundef nonnull @.str.18, i32 noundef %190, i32 noundef %183) #13
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %2) #12
  %191 = icmp slt i32 %183, 0
  br i1 %191, label %206, label %192

192:                                              ; preds = %188, %185, %135
  %193 = add nuw i32 %136, 1
  %194 = getelementptr %struct.rcar_dmac_chan, ptr %137, i32 1
  %195 = load i32, ptr %23, align 4
  %196 = icmp ult i32 %193, %195
  br i1 %196, label %135, label %197

197:                                              ; preds = %192, %110
  %198 = load ptr, ptr %21, align 8
  %199 = call i32 @of_dma_controller_register(ptr noundef %198, ptr noundef nonnull @rcar_dmac_of_xlate, ptr noundef null) #12
  %200 = icmp slt i32 %199, 0
  br i1 %200, label %206, label %201

201:                                              ; preds = %197
  %202 = call i32 @dma_async_device_register(ptr noundef nonnull %7) #12
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %201
  %205 = load ptr, ptr %21, align 8
  call void @of_dma_controller_free(ptr noundef %205) #12
  br label %206

206:                                              ; preds = %204, %197, %188, %186, %109, %104
  %207 = phi i32 [ %102, %104 ], [ %106, %109 ], [ %199, %197 ], [ %202, %204 ], [ %187, %186 ], [ %183, %188 ]
  call void @__pm_runtime_disable(ptr noundef %3, i1 noundef zeroext true) #12
  br label %208

208:                                              ; preds = %206, %201, %70, %61, %52, %50, %31, %26, %15, %9, %6, %1
  %209 = phi i32 [ %62, %61 ], [ %207, %206 ], [ %71, %70 ], [ -22, %1 ], [ -12, %6 ], [ -12, %52 ], [ 0, %201 ], [ -5, %9 ], [ %17, %15 ], [ -12, %50 ], [ -22, %31 ], [ %24, %26 ]
  ret i32 %209
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_dmac_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %6 = load ptr, ptr %5, align 8
  tail call void @of_dma_controller_free(ptr noundef %6) #12
  tail call void @dma_async_device_unregister(ptr noundef %3) #12
  tail call void @__pm_runtime_disable(ptr noundef %4, i1 noundef zeroext true) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_dmac_shutdown(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rcar_dmac, ptr %3, i32 0, i32 4
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %52, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rcar_dmac, ptr %3, i32 0, i32 5
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rcar_dmac, ptr %3, i32 0, i32 6
  br label %11

11:                                               ; preds = %47, %7
  %12 = phi i32 [ %5, %7 ], [ %48, %47 ]
  %13 = phi i32 [ 0, %7 ], [ %49, %47 ]
  %14 = phi ptr [ %9, %7 ], [ %50, %47 ]
  %15 = load i32, ptr %10, align 4
  %16 = shl nuw i32 1, %13
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %47, label %19

19:                                               ; preds = %11
  %20 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %14, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %20) #12
  %21 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %14, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %25 = and i32 %24, 1072955384
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %26 = load ptr, ptr %21, align 4
  %27 = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #12, !srcloc !12
  br label %28

28:                                               ; preds = %35, %19
  %29 = phi i32 [ 0, %19 ], [ %37, %35 ]
  %30 = load ptr, ptr %21, align 4
  %31 = getelementptr i8, ptr %30, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %43, label %35

35:                                               ; preds = %28
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #12
  %37 = add nuw nsw i32 %29, 1
  %38 = icmp eq i32 %37, 1024
  br i1 %38, label %39, label %28

39:                                               ; preds = %35
  %40 = load ptr, ptr %14, align 4
  %41 = getelementptr inbounds %struct.dma_device, ptr %40, i32 0, i32 15
  %42 = load ptr, ptr %41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %42, ptr noundef nonnull @.str.8) #13
  br label %43

43:                                               ; preds = %39, %28
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %44 = load i16, ptr %20, align 4
  %45 = add i16 %44, 1
  store i16 %45, ptr %20, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %46 = load i32, ptr %4, align 4
  br label %47

47:                                               ; preds = %43, %11
  %48 = phi i32 [ %12, %11 ], [ %46, %43 ]
  %49 = add nuw i32 %13, 1
  %50 = getelementptr %struct.rcar_dmac_chan, ptr %14, i32 1
  %51 = icmp ult i32 %49, %48
  br i1 %51, label %11, label %52

52:                                               ; preds = %47, %1
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %0) unnamed_addr #4 {
  %2 = tail call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 4) #12
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %1
  %5 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, i32 13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !18
  tail call void asm sideeffect ".arch_extension\09mp\0A9998:\09pldw\09${0:a}\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09pld\09${0:a}\0A\09.popsection\0A", "r"(ptr %5) #12, !srcloc !19
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %5, ptr %5, i32 0, i32 -1, ptr elementtype(i32) %5) #12, !srcloc !20
  %7 = extractvalue { i32, i32, i32 } %6, 0
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %4
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !21
  br label %10

10:                                               ; preds = %9, %4, %1
  %11 = phi i32 [ 0, %1 ], [ %2, %4 ], [ %2, %9 ]
  ret i32 %11
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_dmac_init(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rcar_dmac, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rcar_dmac, ptr %0, i32 0, i32 4
  %7 = load i32, ptr %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %37, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rcar_dmac, ptr %0, i32 0, i32 5
  %11 = load ptr, ptr %10, align 4
  %12 = getelementptr inbounds %struct.rcar_dmac, ptr %0, i32 0, i32 6
  br label %13

13:                                               ; preds = %26, %9
  %14 = phi i32 [ %7, %9 ], [ %27, %26 ]
  %15 = phi i32 [ 0, %9 ], [ %28, %26 ]
  %16 = phi ptr [ %11, %9 ], [ %29, %26 ]
  %17 = load i32, ptr %12, align 4
  %18 = shl nuw i32 1, %15
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %13
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %22 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %16, i32 0, i32 1
  %23 = load ptr, ptr %22, align 4
  %24 = getelementptr i8, ptr %23, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 1) #12, !srcloc !12
  %25 = load i32, ptr %6, align 4
  br label %26

26:                                               ; preds = %21, %13
  %27 = phi i32 [ %14, %13 ], [ %25, %21 ]
  %28 = add nuw i32 %15, 1
  %29 = getelementptr %struct.rcar_dmac_chan, ptr %16, i32 1
  %30 = icmp ult i32 %28, %27
  br i1 %30, label %13, label %37

31:                                               ; preds = %1
  %32 = getelementptr inbounds %struct.rcar_dmac, ptr %0, i32 0, i32 6
  %33 = load i32, ptr %32, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %34 = getelementptr inbounds %struct.rcar_dmac, ptr %0, i32 0, i32 2
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr i8, ptr %35, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %33) #12, !srcloc !12
  br label %37

37:                                               ; preds = %31, %26, %5
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %38 = getelementptr inbounds %struct.rcar_dmac, ptr %0, i32 0, i32 2
  %39 = load ptr, ptr %38, align 4
  %40 = getelementptr i8, ptr %39, i32 96
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %40, i16 1) #12, !srcloc !22
  %41 = load ptr, ptr %38, align 4
  %42 = getelementptr i8, ptr %41, i32 96
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %42) #12, !srcloc !23
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !24
  %44 = and i16 %43, 5
  %45 = icmp eq i16 %44, 1
  br i1 %45, label %49, label %46

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.rcar_dmac, ptr %0, i32 0, i32 1
  %48 = load ptr, ptr %47, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %48, ptr noundef nonnull @.str.7) #13
  br label %49

49:                                               ; preds = %46, %37
  %50 = phi i32 [ -5, %46 ], [ 0, %37 ]
  ret i32 %50
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_dmac_alloc_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 6
  store volatile ptr %3, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 6, i32 1
  store ptr %3, ptr %4, align 4
  %5 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 7
  store volatile ptr %5, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 7, i32 1
  store ptr %5, ptr %6, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %7 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %7, align 4
  %8 = call i32 @get_zeroed_page(i32 noundef 3264) #12
  %9 = inttoptr i32 %8 to ptr
  %10 = icmp eq i32 %8, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  br label %40

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.rcar_dmac_desc_page, ptr %9, i32 0, i32 1
  br label %14

14:                                               ; preds = %14, %12
  %15 = phi i32 [ 0, %12 ], [ %19, %14 ]
  %16 = getelementptr [0 x %struct.rcar_dmac_xfer_chunk], ptr %13, i32 0, i32 %15
  %17 = load ptr, ptr %7, align 4
  store ptr %16, ptr %7, align 4
  store ptr %2, ptr %16, align 4
  %18 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %16, ptr %17, align 4
  %19 = add nuw nsw i32 %15, 1
  %20 = icmp eq i32 %19, 204
  br i1 %20, label %21, label %14

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 8
  %23 = call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #12
  %24 = load volatile ptr, ptr %2, align 8
  %25 = icmp eq ptr %24, %2
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %4, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store ptr %24, ptr %27, align 4
  store ptr %3, ptr %28, align 4
  store ptr %28, ptr %4, align 4
  br label %30

30:                                               ; preds = %26, %21
  %31 = load ptr, ptr %6, align 4
  store ptr %9, ptr %6, align 4
  store ptr %5, ptr %9, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %9, ptr %31, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  %33 = call fastcc i32 @rcar_dmac_desc_alloc(ptr noundef %0, i32 noundef 3264)
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load ptr, ptr %0, align 4
  %37 = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 15
  %38 = load ptr, ptr %37, align 4
  %39 = call i32 @__pm_runtime_resume(ptr noundef %38, i32 noundef 4) #12
  br label %40

40:                                               ; preds = %35, %30, %11
  %41 = phi i32 [ %39, %35 ], [ -12, %30 ], [ -12, %11 ]
  ret i32 %41
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_dmac_free_chan_resources(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %5 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %5, align 4
  %6 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 8
  call void @_raw_spin_lock_irq(ptr noundef %6) #12
  %7 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 1
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr i8, ptr %8, i32 12
  %10 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %11 = and i32 %10, 1072955384
  call void asm sideeffect "dsb st", "~{memory}"() #12
  call void @arm_heavy_mb() #12
  %12 = load ptr, ptr %7, align 4
  %13 = getelementptr i8, ptr %12, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #12, !srcloc !12
  br label %14

14:                                               ; preds = %21, %1
  %15 = phi i32 [ 0, %1 ], [ %23, %21 ]
  %16 = load ptr, ptr %7, align 4
  %17 = getelementptr i8, ptr %16, i32 12
  %18 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #12, !srcloc !10
  call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748) #12
  %23 = add nuw nsw i32 %15, 1
  %24 = icmp eq i32 %23, 1024
  br i1 %24, label %25, label %14

25:                                               ; preds = %21
  %26 = load ptr, ptr %0, align 4
  %27 = getelementptr inbounds %struct.dma_device, ptr %26, i32 0, i32 15
  %28 = load ptr, ptr %27, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %28, ptr noundef nonnull @.str.8) #13
  br label %29

29:                                               ; preds = %25, %14
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %30 = load i16, ptr %6, align 4
  %31 = add i16 %30, 1
  store i16 %31, ptr %6, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  %32 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 3
  %33 = load i32, ptr %32, align 4
  call void @synchronize_irq(i32 noundef %33) #12
  %34 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 7
  %35 = load i32, ptr %34, align 4
  %36 = icmp sgt i32 %35, -1
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = getelementptr inbounds %struct.rcar_dmac, ptr %3, i32 0, i32 7
  call void @_clear_bit(i32 noundef %35, ptr noundef %38) #12
  store i32 -22, ptr %34, align 4
  br label %39

39:                                               ; preds = %37, %29
  %40 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9
  %41 = load volatile ptr, ptr %40, align 4
  %42 = icmp eq ptr %41, %40
  br i1 %42, label %49, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr %2, align 8
  %45 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr inbounds %struct.list_head, ptr %41, i32 0, i32 1
  store ptr %2, ptr %47, align 4
  store ptr %41, ptr %2, align 8
  store ptr %44, ptr %46, align 4
  %48 = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  store ptr %46, ptr %48, align 4
  store volatile ptr %40, ptr %40, align 4
  store ptr %40, ptr %45, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 1
  %51 = load volatile ptr, ptr %50, align 4
  %52 = icmp eq ptr %51, %50
  br i1 %52, label %59, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr %2, align 8
  %55 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 1, i32 1
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %2, ptr %57, align 4
  store ptr %51, ptr %2, align 8
  store ptr %54, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  store ptr %56, ptr %58, align 4
  store volatile ptr %50, ptr %50, align 4
  store ptr %50, ptr %55, align 4
  br label %59

59:                                               ; preds = %53, %49
  %60 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 2
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %2, align 8
  %65 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 2, i32 1
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %2, ptr %67, align 4
  store ptr %61, ptr %2, align 8
  store ptr %64, ptr %66, align 4
  %68 = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  store ptr %66, ptr %68, align 4
  store volatile ptr %60, ptr %60, align 4
  store ptr %60, ptr %65, align 4
  br label %69

69:                                               ; preds = %63, %59
  %70 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 3
  %71 = load volatile ptr, ptr %70, align 4
  %72 = icmp eq ptr %71, %70
  br i1 %72, label %79, label %73

73:                                               ; preds = %69
  %74 = load ptr, ptr %2, align 8
  %75 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 3, i32 1
  %76 = load ptr, ptr %75, align 4
  %77 = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  store ptr %2, ptr %77, align 4
  store ptr %71, ptr %2, align 8
  store ptr %74, ptr %76, align 4
  %78 = getelementptr inbounds %struct.list_head, ptr %74, i32 0, i32 1
  store ptr %76, ptr %78, align 4
  store volatile ptr %70, ptr %70, align 4
  store ptr %70, ptr %75, align 4
  br label %79

79:                                               ; preds = %73, %69
  %80 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 4
  %81 = load volatile ptr, ptr %80, align 4
  %82 = icmp eq ptr %81, %80
  br i1 %82, label %89, label %83

83:                                               ; preds = %79
  %84 = load ptr, ptr %2, align 8
  %85 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 4, i32 1
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr inbounds %struct.list_head, ptr %81, i32 0, i32 1
  store ptr %2, ptr %87, align 4
  store ptr %81, ptr %2, align 8
  store ptr %84, ptr %86, align 4
  %88 = getelementptr inbounds %struct.list_head, ptr %84, i32 0, i32 1
  store ptr %86, ptr %88, align 4
  store volatile ptr %80, ptr %80, align 4
  store ptr %80, ptr %85, align 4
  br label %89

89:                                               ; preds = %83, %79
  %90 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 5
  store ptr null, ptr %90, align 4
  %91 = load ptr, ptr %2, align 8
  %92 = icmp eq ptr %91, %2
  br i1 %92, label %111, label %93

93:                                               ; preds = %108, %89
  %94 = phi ptr [ %109, %108 ], [ %91, %89 ]
  %95 = getelementptr i8, ptr %94, i32 36
  %96 = load i32, ptr %95, align 4
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %93
  %99 = getelementptr i8, ptr %94, i32 28
  %100 = load ptr, ptr %99, align 4
  %101 = icmp eq ptr %100, null
  br i1 %101, label %108, label %102

102:                                              ; preds = %98
  %103 = load ptr, ptr %0, align 4
  %104 = getelementptr inbounds %struct.dma_device, ptr %103, i32 0, i32 15
  %105 = load ptr, ptr %104, align 4
  %106 = getelementptr i8, ptr %94, i32 32
  %107 = load i32, ptr %106, align 4
  call void @dma_free_attrs(ptr noundef %105, i32 noundef %96, ptr noundef nonnull %100, i32 noundef %107, i32 noundef 0) #12
  store ptr null, ptr %99, align 4
  store i32 0, ptr %95, align 4
  br label %108

108:                                              ; preds = %102, %98, %93
  %109 = load ptr, ptr %94, align 4
  %110 = icmp eq ptr %109, %2
  br i1 %110, label %111, label %93

111:                                              ; preds = %108, %89
  %112 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 7
  %113 = load ptr, ptr %112, align 4
  %114 = icmp eq ptr %113, %112
  br i1 %114, label %123, label %115

115:                                              ; preds = %115, %111
  %116 = phi ptr [ %117, %115 ], [ %113, %111 ]
  %117 = load ptr, ptr %116, align 4
  %118 = getelementptr inbounds %struct.list_head, ptr %116, i32 0, i32 1
  %119 = load ptr, ptr %118, align 4
  %120 = getelementptr inbounds %struct.list_head, ptr %117, i32 0, i32 1
  store ptr %119, ptr %120, align 4
  store volatile ptr %117, ptr %119, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %116, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %118, align 4
  %121 = ptrtoint ptr %116 to i32
  call void @free_pages(i32 noundef %121, i32 noundef 0) #12
  %122 = icmp eq ptr %117, %112
  br i1 %122, label %123, label %115

123:                                              ; preds = %115, %111
  %124 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6, i32 2, i32 1
  %125 = load i32, ptr %124, align 4
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %134, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %0, align 4
  %129 = getelementptr inbounds %struct.dma_device, ptr %128, i32 0, i32 15
  %130 = load ptr, ptr %129, align 4
  %131 = load i32, ptr %4, align 4
  %132 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6, i32 1
  %133 = load i32, ptr %132, align 4
  call void @dma_unmap_resource(ptr noundef %130, i32 noundef %131, i32 noundef %125, i32 noundef %133, i32 noundef 0) #12
  store i32 0, ptr %124, align 4
  br label %134

134:                                              ; preds = %127, %123
  %135 = load ptr, ptr %0, align 4
  %136 = getelementptr inbounds %struct.dma_device, ptr %135, i32 0, i32 15
  %137 = load ptr, ptr %136, align 4
  %138 = call i32 @__pm_runtime_idle(ptr noundef %137, i32 noundef 5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rcar_dmac_prep_dma_memcpy(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = alloca %struct.scatterlist, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %6) #12
  call void @llvm.memset.p0.i32(ptr noundef nonnull align 4 dereferenceable(20) %6, i8 0, i32 20, i1 false), !annotation !9
  %7 = icmp eq i32 %3, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %5
  call void @sg_init_table(ptr noundef nonnull %6, i32 noundef 1) #12
  %9 = load ptr, ptr @mem_map, align 4
  %10 = lshr i32 %2, 12
  %11 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %12 = sub i32 %10, %11
  %13 = getelementptr %struct.page, ptr %9, i32 %12
  %14 = ptrtoint ptr %13 to i32
  %15 = and i32 %14, 3
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17, !prof !25

17:                                               ; preds = %8
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !26
  unreachable

18:                                               ; preds = %8
  %19 = and i32 %2, 4095
  %20 = load i32, ptr %6, align 4
  %21 = and i32 %20, 3
  %22 = or i32 %21, %14
  store i32 %22, ptr %6, align 4
  %23 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 1
  store i32 %19, ptr %23, align 4
  %24 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 2
  store i32 %3, ptr %24, align 4
  %25 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 3
  store i32 %2, ptr %25, align 4
  %26 = getelementptr inbounds %struct.scatterlist, ptr %6, i32 0, i32 4
  store i32 %3, ptr %26, align 4
  %27 = call fastcc ptr @rcar_dmac_chan_prep_sg(ptr noundef %0, ptr noundef nonnull %6, i32 noundef 1, i32 noundef %1, i32 noundef 0, i32 noundef %4, i1 noundef zeroext false)
  br label %28

28:                                               ; preds = %18, %5
  %29 = phi ptr [ %27, %18 ], [ null, %5 ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %6) #12
  ret ptr %29
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rcar_dmac_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp sgt i32 %8, -1
  %10 = icmp ne i32 %2, 0
  %11 = and i1 %10, %9
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.scatterlist, ptr %1, i32 0, i32 4
  %14 = load i32, ptr %13, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12, %6
  %17 = load ptr, ptr %0, align 4
  %18 = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %19 = load ptr, ptr %18, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %19, ptr noundef nonnull @.str.9, ptr noundef nonnull @__func__.rcar_dmac_prep_slave_sg, i32 noundef %2, i32 noundef %8) #13
  br label %27

20:                                               ; preds = %12
  %21 = tail call fastcc i32 @rcar_dmac_map_slave_addr(ptr noundef %0, i32 noundef %3)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6
  %25 = load i32, ptr %24, align 4
  %26 = tail call fastcc ptr @rcar_dmac_chan_prep_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %25, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false)
  br label %27

27:                                               ; preds = %23, %20, %16
  %28 = phi ptr [ %26, %23 ], [ null, %16 ], [ null, %20 ]
  ret ptr %28
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rcar_dmac_prep_dma_cyclic(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 7
  %8 = load i32, ptr %7, align 4
  %9 = icmp slt i32 %8, 0
  %10 = icmp ult i32 %2, %3
  %11 = or i1 %10, %9
  br i1 %11, label %12, label %16

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 4
  %14 = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.rcar_dmac_prep_dma_cyclic, i32 noundef %2, i32 noundef %3, i32 noundef %8) #13
  br label %63

16:                                               ; preds = %6
  %17 = tail call fastcc i32 @rcar_dmac_map_slave_addr(ptr noundef %0, i32 noundef %4)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %63

19:                                               ; preds = %16
  %20 = udiv i32 %2, %3
  %21 = icmp ugt i32 %20, 32
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  %26 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 2
  %27 = load i32, ptr %26, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.12, i32 noundef %27, i32 noundef %20, i32 noundef 32) #13
  br label %63

28:                                               ; preds = %19
  %29 = mul nuw nsw i32 %20, 20
  %30 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %29, i32 noundef 2048) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %63, label %32

32:                                               ; preds = %28
  tail call void @sg_init_table(ptr noundef nonnull %30, i32 noundef %20) #12
  %33 = load ptr, ptr @mem_map, align 4
  %34 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %35 = call i32 @llvm.umax.i32(i32 %20, i32 1)
  br label %36

36:                                               ; preds = %47, %32
  %37 = phi i32 [ %57, %47 ], [ 0, %32 ]
  %38 = mul i32 %37, %3
  %39 = add i32 %38, %1
  %40 = lshr i32 %39, 12
  %41 = sub i32 %40, %34
  %42 = getelementptr %struct.page, ptr %33, i32 %41
  %43 = ptrtoint ptr %42 to i32
  %44 = and i32 %43, 3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %47, label %46, !prof !25

46:                                               ; preds = %36
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !26
  unreachable

47:                                               ; preds = %36
  %48 = and i32 %39, 4095
  %49 = getelementptr %struct.scatterlist, ptr %30, i32 %37
  %50 = load i32, ptr %49, align 4
  %51 = and i32 %50, 3
  %52 = or i32 %51, %43
  store i32 %52, ptr %49, align 4
  %53 = getelementptr %struct.scatterlist, ptr %30, i32 %37, i32 1
  store i32 %48, ptr %53, align 4
  %54 = getelementptr %struct.scatterlist, ptr %30, i32 %37, i32 2
  store i32 %3, ptr %54, align 4
  %55 = getelementptr %struct.scatterlist, ptr %30, i32 %37, i32 3
  store i32 %39, ptr %55, align 4
  %56 = getelementptr %struct.scatterlist, ptr %30, i32 %37, i32 4
  store i32 %3, ptr %56, align 4
  %57 = add nuw i32 %37, 1
  %58 = icmp eq i32 %57, %35
  br i1 %58, label %59, label %36

59:                                               ; preds = %47
  %60 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6
  %61 = load i32, ptr %60, align 4
  %62 = tail call fastcc ptr @rcar_dmac_chan_prep_sg(ptr noundef %0, ptr noundef nonnull %30, i32 noundef %20, i32 noundef %61, i32 noundef %4, i32 noundef %5, i1 noundef zeroext true)
  tail call void @kfree(ptr noundef nonnull %30) #12
  br label %63

63:                                               ; preds = %59, %28, %22, %16, %12
  %64 = phi ptr [ null, %12 ], [ null, %22 ], [ %62, %59 ], [ null, %16 ], [ null, %28 ]
  ret ptr %64
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define internal i32 @rcar_dmac_device_config(ptr nocapture noundef writeonly %0, ptr nocapture noundef readonly %1) #6 {
  %3 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 1
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 4
  store i32 %4, ptr %5, align 4
  %6 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 2
  %7 = load i32, ptr %6, align 4
  %8 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 5
  store i32 %7, ptr %8, align 4
  %9 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 3
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 4, i32 1
  store i32 %10, ptr %11, align 4
  %12 = getelementptr inbounds %struct.dma_slave_config, ptr %1, i32 0, i32 4
  %13 = load i32, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 5, i32 1
  store i32 %13, ptr %14, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_dmac_chan_pause(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %8 = and i32 %7, -2
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #12, !srcloc !12
  br label %11

11:                                               ; preds = %18, %1
  %12 = phi i32 [ 0, %1 ], [ %20, %18 ]
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #12
  %20 = add nuw nsw i32 %12, 1
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %11

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.8) #13
  br label %26

26:                                               ; preds = %22, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_dmac_chan_terminate_all(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %8 = and i32 %7, 1072955384
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %9 = load ptr, ptr %4, align 4
  %10 = getelementptr i8, ptr %9, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #12, !srcloc !12
  br label %11

11:                                               ; preds = %18, %1
  %12 = phi i32 [ 0, %1 ], [ %20, %18 ]
  %13 = load ptr, ptr %4, align 4
  %14 = getelementptr i8, ptr %13, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #12
  %20 = add nuw nsw i32 %12, 1
  %21 = icmp eq i32 %20, 1024
  br i1 %21, label %22, label %11

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 4
  %24 = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %25 = load ptr, ptr %24, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %25, ptr noundef nonnull @.str.8) #13
  br label %26

26:                                               ; preds = %22, %11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  tail call fastcc void @rcar_dmac_chan_reinit(ptr noundef %0)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_dmac_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
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
  %19 = or i1 %18, %8
  %20 = xor i1 %18, true
  br i1 %19, label %196, label %25

21:                                               ; preds = %13
  %22 = and i1 %16, %15
  %23 = or i1 %22, %8
  %24 = xor i1 %22, true
  br i1 %23, label %196, label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 8
  %27 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %26) #12
  %28 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 5
  %29 = load ptr, ptr %28, align 4
  %30 = icmp eq ptr %29, null
  br i1 %30, label %189, label %31

31:                                               ; preds = %25
  %32 = load i32, ptr %4, align 4
  %33 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !27
  %34 = icmp sgt i32 %33, %32
  %35 = icmp sge i32 %33, %1
  %36 = icmp slt i32 %32, %1
  br i1 %34, label %39, label %37

37:                                               ; preds = %31
  %38 = or i1 %36, %35
  br i1 %38, label %181, label %41

39:                                               ; preds = %31
  %40 = and i1 %36, %35
  br i1 %40, label %181, label %41

41:                                               ; preds = %39, %37
  %42 = load i32, ptr %29, align 4
  %43 = icmp eq i32 %42, %1
  br i1 %43, label %44, label %58

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 1
  %46 = load ptr, ptr %45, align 4
  %47 = getelementptr i8, ptr %46, i32 28
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %47) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %49 = and i32 %48, 16711680
  %50 = load ptr, ptr %45, align 4
  %51 = getelementptr i8, ptr %50, i32 24
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %51) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %53 = load ptr, ptr %45, align 4
  %54 = getelementptr i8, ptr %53, i32 28
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %54) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %56 = and i32 %55, 16711680
  %57 = icmp eq i32 %49, %56
  br i1 %57, label %124, label %95

58:                                               ; preds = %41
  %59 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 3
  br label %60

60:                                               ; preds = %64, %58
  %61 = phi ptr [ %59, %58 ], [ %62, %64 ]
  %62 = load ptr, ptr %61, align 4
  %63 = icmp eq ptr %62, %59
  br i1 %63, label %68, label %64

64:                                               ; preds = %60
  %65 = getelementptr i8, ptr %62, i32 -72
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, %1
  br i1 %67, label %181, label %60

68:                                               ; preds = %60
  %69 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 1
  br label %70

70:                                               ; preds = %74, %68
  %71 = phi ptr [ %69, %68 ], [ %72, %74 ]
  %72 = load ptr, ptr %71, align 4
  %73 = icmp eq ptr %72, %69
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = getelementptr i8, ptr %72, i32 -72
  %76 = load i32, ptr %75, align 4
  %77 = icmp eq i32 %76, %1
  br i1 %77, label %78, label %70

78:                                               ; preds = %74
  %79 = getelementptr i8, ptr %72, i32 40
  %80 = load i32, ptr %79, align 4
  br label %181

81:                                               ; preds = %70
  %82 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 2
  br label %83

83:                                               ; preds = %87, %81
  %84 = phi ptr [ %82, %81 ], [ %85, %87 ]
  %85 = load ptr, ptr %84, align 4
  %86 = icmp eq ptr %85, %82
  br i1 %86, label %94, label %87

87:                                               ; preds = %83
  %88 = getelementptr i8, ptr %85, i32 -72
  %89 = load i32, ptr %88, align 4
  %90 = icmp eq i32 %89, %1
  br i1 %90, label %91, label %83

91:                                               ; preds = %87
  %92 = getelementptr i8, ptr %85, i32 40
  %93 = load i32, ptr %92, align 4
  br label %181

94:                                               ; preds = %83
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1370, i32 noundef 9, ptr noundef nonnull @.str.14) #12
  br label %181

95:                                               ; preds = %44
  %96 = load ptr, ptr %45, align 4
  %97 = getelementptr i8, ptr %96, i32 28
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %97) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %99 = and i32 %98, 16711680
  %100 = load ptr, ptr %45, align 4
  %101 = getelementptr i8, ptr %100, i32 24
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %101) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %103 = load ptr, ptr %45, align 4
  %104 = getelementptr i8, ptr %103, i32 28
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %104) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %106 = and i32 %105, 16711680
  %107 = icmp eq i32 %99, %106
  br i1 %107, label %124, label %108

108:                                              ; preds = %95
  %109 = load ptr, ptr %45, align 4
  %110 = getelementptr i8, ptr %109, i32 28
  %111 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %110) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %112 = and i32 %111, 16711680
  %113 = load ptr, ptr %45, align 4
  %114 = getelementptr i8, ptr %113, i32 24
  %115 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %114) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %116 = load ptr, ptr %45, align 4
  %117 = getelementptr i8, ptr %116, i32 28
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %119 = and i32 %118, 16711680
  %120 = icmp eq i32 %112, %119
  br i1 %120, label %124, label %121

121:                                              ; preds = %108
  %122 = load i1, ptr @rcar_dmac_chan_get_residue.__already_done, align 1
  br i1 %122, label %124, label %123, !prof !25

123:                                              ; preds = %121
  store i1 true, ptr @rcar_dmac_chan_get_residue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1390, i32 noundef 9, ptr noundef nonnull @.str.15) #12
  br label %124

124:                                              ; preds = %123, %121, %108, %95, %44
  %125 = phi i32 [ %112, %123 ], [ %112, %121 ], [ %49, %44 ], [ %99, %95 ], [ %112, %108 ]
  %126 = phi i32 [ %115, %123 ], [ %115, %121 ], [ %52, %44 ], [ %102, %95 ], [ %115, %108 ]
  %127 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %29, i32 0, i32 8
  %128 = load i8, ptr %127, align 4, !range !28
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %145, label %130

130:                                              ; preds = %124
  %131 = icmp eq i32 %125, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %130
  %133 = lshr exact i32 %125, 16
  %134 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %29, i32 0, i32 7
  %135 = load i32, ptr %134, align 4
  br label %139

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %29, i32 0, i32 7
  %138 = load i32, ptr %137, align 4
  br label %139

139:                                              ; preds = %136, %132
  %140 = phi i32 [ %138, %136 ], [ %135, %132 ]
  %141 = phi i32 [ %138, %136 ], [ %133, %132 ]
  %142 = add i32 %141, -1
  %143 = icmp ult i32 %142, %140
  br i1 %143, label %148, label %144, !prof !25

144:                                              ; preds = %139
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1403, i32 noundef 9, ptr noundef null) #12
  br label %148

145:                                              ; preds = %124
  %146 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %29, i32 0, i32 6
  %147 = load ptr, ptr %146, align 4
  br label %148

148:                                              ; preds = %145, %144, %139
  %149 = phi i32 [ 0, %145 ], [ %142, %144 ], [ %142, %139 ]
  %150 = phi ptr [ %147, %145 ], [ null, %144 ], [ null, %139 ]
  %151 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %29, i32 0, i32 5
  %152 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %29, i32 0, i32 5, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = icmp eq ptr %153, %151
  %155 = icmp eq ptr %153, %150
  %156 = select i1 %154, i1 true, i1 %155
  br i1 %156, label %175, label %157

157:                                              ; preds = %148
  %158 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %29, i32 0, i32 7
  %159 = load i32, ptr %158, align 4
  br label %160

160:                                              ; preds = %166, %157
  %161 = phi ptr [ %153, %157 ], [ %171, %166 ]
  %162 = phi i32 [ 0, %157 ], [ %169, %166 ]
  %163 = phi i32 [ %149, %157 ], [ %164, %166 ]
  %164 = add i32 %163, 1
  %165 = icmp eq i32 %164, %159
  br i1 %165, label %175, label %166

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %161, i32 0, i32 3
  %168 = load i32, ptr %167, align 4
  %169 = add i32 %168, %162
  %170 = getelementptr inbounds %struct.list_head, ptr %161, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = icmp eq ptr %171, %151
  %173 = icmp eq ptr %171, %150
  %174 = select i1 %172, i1 true, i1 %173
  br i1 %174, label %175, label %160

175:                                              ; preds = %166, %160, %148
  %176 = phi i32 [ 0, %148 ], [ %169, %166 ], [ %162, %160 ]
  %177 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %29, i32 0, i32 2
  %178 = load i32, ptr %177, align 4
  %179 = shl i32 %126, %178
  %180 = add i32 %179, %176
  br label %181

181:                                              ; preds = %175, %94, %91, %78, %64, %39, %37
  %182 = phi i32 [ 0, %39 ], [ 0, %37 ], [ %180, %175 ], [ 0, %94 ], [ %93, %91 ], [ %80, %78 ], [ 0, %64 ]
  %183 = load ptr, ptr %28, align 4
  %184 = icmp eq ptr %183, null
  br i1 %184, label %189, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %183, i32 0, i32 10
  %187 = load i8, ptr %186, align 4, !range !28
  %188 = icmp eq i8 %187, 0
  br label %189

189:                                              ; preds = %185, %181, %25
  %190 = phi i32 [ %182, %185 ], [ %182, %181 ], [ 0, %25 ]
  %191 = phi i1 [ %188, %185 ], [ true, %181 ], [ true, %25 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %26, i32 noundef %27) #12
  %192 = icmp eq i32 %190, 0
  %193 = select i1 %192, i1 %191, i1 false
  br i1 %193, label %196, label %194

194:                                              ; preds = %189
  %195 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %190, ptr %195, align 4
  br label %196

196:                                              ; preds = %194, %189, %21, %17
  %197 = phi i1 [ true, %194 ], [ false, %189 ], [ %20, %17 ], [ %24, %21 ]
  %198 = zext i1 %197 to i32
  ret i32 %198
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_dmac_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 8
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #12
  %4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 1
  %5 = load volatile ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, %4
  br i1 %6, label %24, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 2
  %9 = load volatile ptr, ptr %4, align 4
  %10 = icmp eq ptr %9, %4
  br i1 %10, label %17, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 2, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 1, i32 1
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  store ptr %13, ptr %16, align 4
  store ptr %9, ptr %13, align 4
  store ptr %8, ptr %15, align 4
  store ptr %15, ptr %12, align 4
  store volatile ptr %4, ptr %4, align 4
  store ptr %4, ptr %14, align 4
  br label %17

17:                                               ; preds = %11, %7
  %18 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 5
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load ptr, ptr %8, align 4
  %23 = getelementptr i8, ptr %22, i32 -72
  store ptr %23, ptr %18, align 4
  tail call fastcc void @rcar_dmac_chan_start_xfer(ptr noundef %0)
  br label %24

24:                                               ; preds = %21, %17, %1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @rcar_dmac_device_synchronize(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 3
  %3 = load i32, ptr %2, align 4
  tail call void @synchronize_irq(i32 noundef %3) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @rcar_dmac_of_xlate(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.dma_cap_mask_t, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %4 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %5 = load i32, ptr %4, align 4
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  store i32 0, ptr %3, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %3) #12
  %8 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = call ptr @__dma_request_channel(ptr noundef nonnull %3, ptr noundef nonnull @rcar_dmac_chan_filter, ptr noundef %0, ptr noundef %9) #12
  %11 = icmp eq ptr %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %10, i32 0, i32 7
  store i32 %14, ptr %15, align 4
  br label %16

16:                                               ; preds = %12, %7, %2
  %17 = phi ptr [ %10, %12 ], [ null, %2 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %17
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_dmac_desc_alloc(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store ptr %3, ptr %3, align 8
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  store ptr %3, ptr %4, align 4
  %5 = call i32 @get_zeroed_page(i32 noundef %1) #12
  %6 = inttoptr i32 %5 to ptr
  %7 = icmp eq i32 %5, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.rcar_dmac_desc_page, ptr %6, i32 0, i32 1
  br label %10

10:                                               ; preds = %10, %8
  %11 = phi i32 [ 0, %8 ], [ %19, %10 ]
  %12 = getelementptr [0 x %struct.rcar_dmac_desc], ptr %9, i32 0, i32 %11
  call void @dma_async_tx_descriptor_init(ptr noundef %12, ptr noundef %0) #12
  %13 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %12, i32 0, i32 4
  store ptr @rcar_dmac_tx_submit, ptr %13, align 4
  %14 = getelementptr [0 x %struct.rcar_dmac_desc], ptr %9, i32 0, i32 %11, i32 5
  store volatile ptr %14, ptr %14, align 4
  %15 = getelementptr [0 x %struct.rcar_dmac_desc], ptr %9, i32 0, i32 %11, i32 5, i32 1
  store ptr %14, ptr %15, align 4
  %16 = getelementptr [0 x %struct.rcar_dmac_desc], ptr %9, i32 0, i32 %11, i32 4
  %17 = load ptr, ptr %4, align 4
  store ptr %16, ptr %4, align 4
  store ptr %3, ptr %16, align 4
  %18 = getelementptr [0 x %struct.rcar_dmac_desc], ptr %9, i32 0, i32 %11, i32 4, i32 1
  store ptr %17, ptr %18, align 4
  store volatile ptr %16, ptr %17, align 4
  %19 = add nuw nsw i32 %11, 1
  %20 = icmp eq i32 %19, 34
  br i1 %20, label %21, label %10

21:                                               ; preds = %10
  %22 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 8
  %23 = call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #12
  %24 = load volatile ptr, ptr %3, align 8
  %25 = icmp eq ptr %24, %3
  br i1 %25, label %32, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9
  %28 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 0, i32 1
  %29 = load ptr, ptr %28, align 4
  %30 = load ptr, ptr %4, align 4
  %31 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %29, ptr %31, align 4
  store ptr %24, ptr %29, align 4
  store ptr %27, ptr %30, align 4
  store ptr %30, ptr %28, align 4
  br label %32

32:                                               ; preds = %26, %21
  %33 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 7
  %34 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 7, i32 1
  %35 = load ptr, ptr %34, align 4
  store ptr %6, ptr %34, align 4
  store ptr %33, ptr %6, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  store ptr %35, ptr %36, align 4
  store volatile ptr %6, ptr %35, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %23) #12
  br label %37

37:                                               ; preds = %32, %2
  %38 = phi i32 [ 0, %32 ], [ -12, %2 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  ret i32 %38
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i32(ptr nocapture writeonly, i8, i32, i1 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_dmac_tx_submit(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %0, i32 0, i32 3
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %3, i32 0, i32 8
  %5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = load ptr, ptr %2, align 4
  %7 = getelementptr inbounds %struct.dma_chan, ptr %6, i32 0, i32 2
  %8 = load i32, ptr %7, align 4
  %9 = add i32 %8, 1
  %10 = tail call i32 @llvm.smax.i32(i32 %9, i32 1) #12
  store i32 %10, ptr %7, align 4
  store i32 %10, ptr %0, align 4
  %11 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %0, i32 0, i32 4
  %12 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %3, i32 0, i32 9, i32 1
  %13 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %3, i32 0, i32 9, i32 1, i32 1
  %14 = load ptr, ptr %13, align 4
  store ptr %11, ptr %13, align 4
  store ptr %12, ptr %11, align 4
  %15 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %0, i32 0, i32 4, i32 1
  store ptr %14, ptr %15, align 4
  store volatile ptr %11, ptr %14, align 4
  %16 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %0, i32 0, i32 5
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %0, i32 0, i32 6
  store ptr %17, ptr %18, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #12
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc ptr @rcar_dmac_chan_prep_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) unnamed_addr #2 {
  %8 = alloca %struct.list_head, align 8
  tail call fastcc void @rcar_dmac_desc_recycle_acked(ptr noundef %0) #12
  %9 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 8
  %10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %11 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9
  %12 = load volatile ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, %11
  br i1 %13, label %14, label %22

14:                                               ; preds = %18, %7
  %15 = phi i32 [ %19, %18 ], [ %10, %7 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %15) #12
  %16 = tail call fastcc i32 @rcar_dmac_desc_alloc(ptr noundef %0, i32 noundef 2048) #12
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %217, label %18

18:                                               ; preds = %14
  %19 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %20 = load volatile ptr, ptr %11, align 4
  %21 = icmp eq ptr %20, %11
  br i1 %21, label %14, label %22

22:                                               ; preds = %18, %7
  %23 = phi i32 [ %10, %7 ], [ %19, %18 ]
  %24 = phi ptr [ %12, %7 ], [ %20, %18 ]
  %25 = getelementptr i8, ptr %24, i32 -72
  %26 = getelementptr %struct.list_head, ptr %24, i32 0, i32 1
  %27 = load ptr, ptr %26, align 4
  %28 = load ptr, ptr %24, align 4
  %29 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %27, ptr %29, align 4
  store volatile ptr %28, ptr %27, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %26, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %23) #12
  %30 = icmp eq ptr %25, null
  br i1 %30, label %217, label %31

31:                                               ; preds = %22
  %32 = zext i1 %6 to i8
  %33 = getelementptr i8, ptr %24, i32 -68
  store i32 %5, ptr %33, align 4
  store i32 -16, ptr %25, align 4
  %34 = getelementptr i8, ptr %24, i32 44
  store i8 %32, ptr %34, align 4
  %35 = getelementptr i8, ptr %24, i32 -12
  store i32 %4, ptr %35, align 4
  switch i32 %4, label %44 [
    i32 2, label %36
    i32 1, label %38
  ]

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 4, i32 1
  br label %40

38:                                               ; preds = %31
  %39 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 5, i32 1
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi ptr [ %39, %38 ], [ %37, %36 ]
  %42 = phi i32 [ 6144, %38 ], [ 18432, %36 ]
  %43 = load i32, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %31
  %45 = phi i32 [ 4, %31 ], [ %43, %40 ]
  %46 = phi i32 [ 21504, %31 ], [ %42, %40 ]
  %47 = icmp eq i32 %45, 0
  %48 = tail call i32 @llvm.ctlz.i32(i32 %45, i1 false) #12, !range !29
  %49 = sub nsw i32 31, %48
  %50 = select i1 %47, i32 -1, i32 %49
  %51 = getelementptr i8, ptr %24, i32 -8
  store i32 %50, ptr %51, align 4
  %52 = getelementptr [7 x i32], ptr @rcar_dmac_chan_configure_desc.chcr_ts, i32 0, i32 %50
  %53 = load i32, ptr %52, align 4
  %54 = or i32 %53, %46
  %55 = getelementptr i8, ptr %24, i32 -4
  store i32 %54, ptr %55, align 4
  %56 = shl i32 16777215, %50
  %57 = icmp eq i32 %2, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %44
  %59 = getelementptr i8, ptr %24, i32 20
  store i32 0, ptr %59, align 4
  %60 = getelementptr i8, ptr %24, i32 40
  store i32 0, ptr %60, align 4
  %61 = getelementptr i8, ptr %24, i32 24
  store i8 0, ptr %61, align 4
  br label %217

62:                                               ; preds = %44
  %63 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 6
  %64 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %65 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 6, i32 1
  %66 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 7
  %67 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 7, i32 1
  %68 = icmp eq i32 %4, 2
  %69 = icmp eq i32 %4, 0
  %70 = getelementptr i8, ptr %24, i32 8
  %71 = getelementptr i8, ptr %24, i32 12
  br label %72

72:                                               ; preds = %152, %62
  %73 = phi i32 [ %3, %62 ], [ %154, %152 ]
  %74 = phi i32 [ 0, %62 ], [ %155, %152 ]
  %75 = phi i32 [ 0, %62 ], [ %80, %152 ]
  %76 = phi i32 [ 0, %62 ], [ %153, %152 ]
  %77 = phi ptr [ %1, %62 ], [ %156, %152 ]
  %78 = getelementptr inbounds %struct.scatterlist, ptr %77, i32 0, i32 4
  %79 = load i32, ptr %78, align 4
  %80 = add i32 %79, %75
  %81 = icmp eq i32 %79, 0
  br i1 %81, label %152, label %82

82:                                               ; preds = %72
  %83 = getelementptr inbounds %struct.scatterlist, ptr %77, i32 0, i32 3
  %84 = load i32, ptr %83, align 4
  br label %85

85:                                               ; preds = %139, %82
  %86 = phi i32 [ %147, %139 ], [ %73, %82 ]
  %87 = phi i32 [ %148, %139 ], [ %79, %82 ]
  %88 = phi i32 [ %145, %139 ], [ %84, %82 ]
  %89 = phi i32 [ %150, %139 ], [ %76, %82 ]
  %90 = call i32 @llvm.umin.i32(i32 %87, i32 %56)
  %91 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %92 = load volatile ptr, ptr %63, align 4
  %93 = icmp eq ptr %92, %63
  br i1 %93, label %94, label %123

94:                                               ; preds = %117, %85
  %95 = phi i32 [ %120, %117 ], [ %91, %85 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %95) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  store ptr %8, ptr %8, align 8
  store ptr %8, ptr %64, align 4
  %96 = call i32 @get_zeroed_page(i32 noundef 2048) #12
  %97 = inttoptr i32 %96 to ptr
  %98 = icmp eq i32 %96, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %94
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  br label %131

100:                                              ; preds = %94
  %101 = getelementptr inbounds %struct.rcar_dmac_desc_page, ptr %97, i32 0, i32 1
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi i32 [ 0, %100 ], [ %107, %102 ]
  %104 = getelementptr [0 x %struct.rcar_dmac_xfer_chunk], ptr %101, i32 0, i32 %103
  %105 = load ptr, ptr %64, align 4
  store ptr %104, ptr %64, align 4
  store ptr %8, ptr %104, align 4
  %106 = getelementptr inbounds %struct.list_head, ptr %104, i32 0, i32 1
  store ptr %105, ptr %106, align 4
  store volatile ptr %104, ptr %105, align 4
  %107 = add nuw nsw i32 %103, 1
  %108 = icmp eq i32 %107, 204
  br i1 %108, label %109, label %102

109:                                              ; preds = %102
  %110 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %111 = load volatile ptr, ptr %8, align 8
  %112 = icmp eq ptr %111, %8
  br i1 %112, label %117, label %113

113:                                              ; preds = %109
  %114 = load ptr, ptr %65, align 4
  %115 = load ptr, ptr %64, align 4
  %116 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  store ptr %114, ptr %116, align 4
  store ptr %111, ptr %114, align 4
  store ptr %63, ptr %115, align 4
  store ptr %115, ptr %65, align 4
  br label %117

117:                                              ; preds = %113, %109
  %118 = load ptr, ptr %67, align 4
  store ptr %97, ptr %67, align 4
  store ptr %66, ptr %97, align 4
  %119 = getelementptr inbounds %struct.list_head, ptr %97, i32 0, i32 1
  store ptr %118, ptr %119, align 4
  store volatile ptr %97, ptr %118, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %110) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  %120 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %121 = load volatile ptr, ptr %63, align 4
  %122 = icmp eq ptr %121, %63
  br i1 %122, label %94, label %123

123:                                              ; preds = %117, %85
  %124 = phi i32 [ %91, %85 ], [ %120, %117 ]
  %125 = phi ptr [ %92, %85 ], [ %121, %117 ]
  %126 = getelementptr inbounds %struct.list_head, ptr %125, i32 0, i32 1
  %127 = load ptr, ptr %126, align 4
  %128 = load ptr, ptr %125, align 4
  %129 = getelementptr inbounds %struct.list_head, ptr %128, i32 0, i32 1
  store ptr %127, ptr %129, align 4
  store volatile ptr %128, ptr %127, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %125, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %126, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %124) #12
  %130 = icmp eq ptr %125, null
  br i1 %130, label %131, label %139

131:                                              ; preds = %123, %99
  %132 = call i32 @_raw_spin_lock_irqsave(ptr noundef %9) #12
  %133 = load volatile ptr, ptr %70, align 4
  %134 = icmp eq ptr %133, %70
  br i1 %134, label %214, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %65, align 4
  %137 = load ptr, ptr %71, align 4
  %138 = getelementptr inbounds %struct.list_head, ptr %133, i32 0, i32 1
  store ptr %136, ptr %138, align 4
  store ptr %133, ptr %136, align 4
  store ptr %63, ptr %137, align 4
  store ptr %137, ptr %65, align 4
  store volatile ptr %70, ptr %70, align 4
  store ptr %70, ptr %71, align 4
  br label %214

139:                                              ; preds = %123
  %140 = select i1 %68, i32 %86, i32 %88
  %141 = select i1 %68, i32 %88, i32 %86
  %142 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %125, i32 0, i32 1
  store i32 %140, ptr %142, align 4
  %143 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %125, i32 0, i32 2
  store i32 %141, ptr %143, align 4
  %144 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %125, i32 0, i32 3
  store i32 %90, ptr %144, align 4
  %145 = add i32 %90, %88
  %146 = select i1 %69, i32 %90, i32 0
  %147 = add i32 %146, %86
  %148 = sub i32 %87, %90
  %149 = load ptr, ptr %71, align 4
  store ptr %125, ptr %71, align 4
  store ptr %70, ptr %125, align 4
  store ptr %149, ptr %126, align 4
  store volatile ptr %125, ptr %149, align 4
  %150 = add i32 %89, 1
  %151 = icmp eq i32 %148, 0
  br i1 %151, label %152, label %85

152:                                              ; preds = %139, %72
  %153 = phi i32 [ %76, %72 ], [ %150, %139 ]
  %154 = phi i32 [ %73, %72 ], [ %147, %139 ]
  %155 = add nuw i32 %74, 1
  %156 = call ptr @sg_next(ptr noundef %77) #12
  %157 = icmp eq i32 %155, %2
  br i1 %157, label %158, label %72

158:                                              ; preds = %152
  %159 = getelementptr i8, ptr %24, i32 20
  store i32 %153, ptr %159, align 4
  %160 = getelementptr i8, ptr %24, i32 40
  store i32 %80, ptr %160, align 4
  %161 = icmp ugt i32 %153, 1
  %162 = getelementptr i8, ptr %24, i32 24
  %163 = zext i1 %161 to i8
  store i8 %163, ptr %162, align 4
  br i1 %161, label %164, label %217

164:                                              ; preds = %158
  %165 = shl i32 %153, 4
  %166 = add i32 %165, 4095
  %167 = and i32 %166, -4096
  %168 = getelementptr i8, ptr %24, i32 36
  %169 = load i32, ptr %168, align 4
  %170 = icmp eq i32 %169, %167
  %171 = getelementptr i8, ptr %24, i32 28
  %172 = load ptr, ptr %171, align 4
  %173 = icmp eq ptr %172, null
  br i1 %170, label %191, label %174

174:                                              ; preds = %164
  br i1 %173, label %181, label %175

175:                                              ; preds = %174
  %176 = load ptr, ptr %0, align 4
  %177 = getelementptr inbounds %struct.dma_device, ptr %176, i32 0, i32 15
  %178 = load ptr, ptr %177, align 4
  %179 = getelementptr i8, ptr %24, i32 32
  %180 = load i32, ptr %179, align 4
  call void @dma_free_attrs(ptr noundef %178, i32 noundef %169, ptr noundef nonnull %172, i32 noundef %180, i32 noundef 0) #12
  store ptr null, ptr %171, align 4
  store i32 0, ptr %168, align 4
  br label %181

181:                                              ; preds = %175, %174
  %182 = icmp eq i32 %167, 0
  br i1 %182, label %213, label %183

183:                                              ; preds = %181
  %184 = load ptr, ptr %0, align 4
  %185 = getelementptr inbounds %struct.dma_device, ptr %184, i32 0, i32 15
  %186 = load ptr, ptr %185, align 4
  %187 = getelementptr i8, ptr %24, i32 32
  %188 = call ptr @dma_alloc_attrs(ptr noundef %186, i32 noundef %167, ptr noundef %187, i32 noundef 2048, i32 noundef 0) #12
  store ptr %188, ptr %171, align 4
  %189 = icmp eq ptr %188, null
  br i1 %189, label %213, label %190

190:                                              ; preds = %183
  store i32 %167, ptr %168, align 4
  br label %192

191:                                              ; preds = %164
  br i1 %173, label %213, label %192

192:                                              ; preds = %191, %190
  %193 = phi ptr [ %188, %190 ], [ %172, %191 ]
  %194 = getelementptr i8, ptr %24, i32 8
  %195 = load ptr, ptr %194, align 4
  %196 = icmp eq ptr %195, %194
  br i1 %196, label %217, label %197

197:                                              ; preds = %197, %192
  %198 = phi ptr [ %211, %197 ], [ %195, %192 ]
  %199 = phi ptr [ %210, %197 ], [ %193, %192 ]
  %200 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %198, i32 0, i32 1
  %201 = load i32, ptr %200, align 4
  store i32 %201, ptr %199, align 1
  %202 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %198, i32 0, i32 2
  %203 = load i32, ptr %202, align 4
  %204 = getelementptr inbounds %struct.rcar_dmac_hw_desc, ptr %199, i32 0, i32 1
  store i32 %203, ptr %204, align 1
  %205 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %198, i32 0, i32 3
  %206 = load i32, ptr %205, align 4
  %207 = load i32, ptr %51, align 4
  %208 = lshr i32 %206, %207
  %209 = getelementptr inbounds %struct.rcar_dmac_hw_desc, ptr %199, i32 0, i32 2
  store i32 %208, ptr %209, align 1
  %210 = getelementptr %struct.rcar_dmac_hw_desc, ptr %199, i32 1
  %211 = load ptr, ptr %198, align 4
  %212 = icmp eq ptr %211, %194
  br i1 %212, label %217, label %197

213:                                              ; preds = %191, %183, %181
  store i8 0, ptr %162, align 4
  br label %217

214:                                              ; preds = %135, %131
  %215 = load ptr, ptr %11, align 4
  %216 = getelementptr inbounds %struct.list_head, ptr %215, i32 0, i32 1
  store ptr %24, ptr %216, align 4
  store ptr %215, ptr %24, align 4
  store ptr %11, ptr %26, align 4
  store volatile ptr %24, ptr %11, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %9, i32 noundef %132) #12
  br label %217

217:                                              ; preds = %214, %213, %197, %192, %158, %58, %22, %14
  %218 = phi ptr [ null, %22 ], [ %25, %213 ], [ %25, %158 ], [ %25, %192 ], [ null, %214 ], [ %25, %58 ], [ %25, %197 ], [ null, %14 ]
  ret ptr %218
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_dmac_desc_recycle_acked(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 8
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 4
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 4, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %2, ptr %13, align 4
  store ptr %7, ptr %2, align 8
  store ptr %10, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %11, align 4
  br label %15

15:                                               ; preds = %9, %1
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #12
  %16 = load ptr, ptr %2, align 8
  %17 = icmp eq ptr %16, %2
  br i1 %17, label %47, label %18

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 6
  %20 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 6, i32 1
  %21 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9
  br label %22

22:                                               ; preds = %45, %18
  %23 = phi ptr [ %16, %18 ], [ %24, %45 ]
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr i8, ptr %23, i32 -68
  %26 = load i32, ptr %25, align 4
  %27 = and i32 %26, 2
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %22
  %30 = getelementptr %struct.list_head, ptr %23, i32 0, i32 1
  %31 = load ptr, ptr %30, align 4
  %32 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  store ptr %31, ptr %32, align 4
  store volatile ptr %24, ptr %31, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %23, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %30, align 4
  %33 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %34 = getelementptr i8, ptr %23, i32 8
  %35 = load volatile ptr, ptr %34, align 4
  %36 = icmp eq ptr %35, %34
  br i1 %36, label %42, label %37

37:                                               ; preds = %29
  %38 = load ptr, ptr %20, align 4
  %39 = getelementptr i8, ptr %23, i32 12
  %40 = load ptr, ptr %39, align 4
  %41 = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  store ptr %38, ptr %41, align 4
  store ptr %35, ptr %38, align 4
  store ptr %19, ptr %40, align 4
  store ptr %40, ptr %20, align 4
  store volatile ptr %34, ptr %34, align 4
  store ptr %34, ptr %39, align 4
  br label %42

42:                                               ; preds = %37, %29
  %43 = load ptr, ptr %21, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  store ptr %23, ptr %44, align 4
  store ptr %43, ptr %23, align 4
  store ptr %21, ptr %30, align 4
  store volatile ptr %23, ptr %21, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %33) #12
  br label %45

45:                                               ; preds = %42, %22
  %46 = icmp eq ptr %24, %2
  br i1 %46, label %47, label %22

47:                                               ; preds = %45, %15
  %48 = load volatile ptr, ptr %2, align 8
  %49 = icmp eq ptr %48, %2
  br i1 %49, label %60, label %50

50:                                               ; preds = %47
  %51 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %52 = load volatile ptr, ptr %2, align 8
  %53 = icmp eq ptr %52, %2
  br i1 %53, label %59, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr %6, align 4
  %56 = load ptr, ptr %3, align 4
  %57 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  store ptr %6, ptr %57, align 4
  store ptr %52, ptr %6, align 4
  store ptr %55, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %56, ptr %58, align 4
  br label %59

59:                                               ; preds = %54, %50
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %51) #12
  br label %60

60:                                               ; preds = %59, %47
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc i32 @rcar_dmac_map_slave_addr(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  %5 = icmp eq i32 %1, 2
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 4
  %8 = load i32, ptr %7, align 4
  store i32 %8, ptr %3, align 4
  %9 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 4, i32 1
  br label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 5
  %12 = load i32, ptr %11, align 4
  store i32 %12, ptr %3, align 4
  %13 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 5, i32 1
  br label %14

14:                                               ; preds = %10, %6
  %15 = phi i32 [ %8, %6 ], [ %12, %10 ]
  %16 = phi ptr [ %9, %6 ], [ %13, %10 ]
  %17 = phi i32 [ 1, %6 ], [ 2, %10 ]
  %18 = load i32, ptr %16, align 4
  %19 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6, i32 2
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %15, %20
  %22 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6, i32 2, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = icmp eq i32 %18, %23
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %26, label %30

26:                                               ; preds = %14
  %27 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6, i32 1
  %28 = load i32, ptr %27, align 4
  %29 = icmp eq i32 %17, %28
  br i1 %29, label %55, label %30

30:                                               ; preds = %26, %14
  %31 = phi i32 [ %18, %26 ], [ %23, %14 ]
  %32 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6, i32 2, i32 1
  %33 = icmp eq i32 %31, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 4
  %36 = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 15
  %37 = load ptr, ptr %36, align 4
  %38 = load i32, ptr %4, align 4
  %39 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6, i32 1
  %40 = load i32, ptr %39, align 4
  tail call void @dma_unmap_resource(ptr noundef %37, i32 noundef %38, i32 noundef %31, i32 noundef %40, i32 noundef 0) #12
  br label %41

41:                                               ; preds = %34, %30
  store i32 0, ptr %32, align 4
  %42 = load ptr, ptr %0, align 4
  %43 = getelementptr inbounds %struct.dma_device, ptr %42, i32 0, i32 15
  %44 = load ptr, ptr %43, align 4
  %45 = tail call i32 @dma_map_resource(ptr noundef %44, i32 noundef %15, i32 noundef %18, i32 noundef %17, i32 noundef 0) #12
  store i32 %45, ptr %4, align 4
  %46 = icmp eq i32 %45, -1
  br i1 %46, label %47, label %53

47:                                               ; preds = %41
  %48 = load ptr, ptr %0, align 4
  %49 = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 15
  %50 = load ptr, ptr %49, align 4
  %51 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 2
  %52 = load i32, ptr %51, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %50, ptr noundef nonnull @.str.10, i32 noundef %52, i32 noundef %18, ptr noundef nonnull %3) #13
  br label %55

53:                                               ; preds = %41
  store i32 %15, ptr %19, align 4
  store i32 %18, ptr %32, align 4
  %54 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 6, i32 1
  store i32 %17, ptr %54, align 4
  br label %55

55:                                               ; preds = %53, %47, %26
  %56 = phi i32 [ -5, %47 ], [ 0, %53 ], [ 0, %26 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret i32 %56
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_dmac_chan_reinit(ptr noundef %0) unnamed_addr #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #12
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 8
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %6 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 1
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8
  %11 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 1, i32 1
  %12 = load ptr, ptr %11, align 4
  %13 = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  store ptr %2, ptr %13, align 4
  store ptr %7, ptr %2, align 8
  store ptr %10, ptr %12, align 4
  %14 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  store ptr %12, ptr %14, align 4
  store volatile ptr %6, ptr %6, align 4
  store ptr %6, ptr %11, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 2
  %17 = load volatile ptr, ptr %16, align 4
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 8
  %21 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 2, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  store ptr %2, ptr %23, align 4
  store ptr %17, ptr %2, align 8
  store ptr %20, ptr %22, align 4
  %24 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %22, ptr %24, align 4
  store volatile ptr %16, ptr %16, align 4
  store ptr %16, ptr %21, align 4
  br label %25

25:                                               ; preds = %19, %15
  %26 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 3
  %27 = load volatile ptr, ptr %26, align 4
  %28 = icmp eq ptr %27, %26
  br i1 %28, label %35, label %29

29:                                               ; preds = %25
  %30 = load ptr, ptr %2, align 8
  %31 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 3, i32 1
  %32 = load ptr, ptr %31, align 4
  %33 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  store ptr %2, ptr %33, align 4
  store ptr %27, ptr %2, align 8
  store ptr %30, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %32, ptr %34, align 4
  store volatile ptr %26, ptr %26, align 4
  store ptr %26, ptr %31, align 4
  br label %35

35:                                               ; preds = %29, %25
  %36 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 4
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %2, align 8
  %41 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 4, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %2, ptr %43, align 4
  store ptr %37, ptr %2, align 8
  store ptr %40, ptr %42, align 4
  %44 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  store ptr %42, ptr %44, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %41, align 4
  br label %45

45:                                               ; preds = %39, %35
  %46 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 5
  store ptr null, ptr %46, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #12
  %47 = load ptr, ptr %2, align 8
  %48 = icmp eq ptr %47, %2
  br i1 %48, label %72, label %49

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 6
  %51 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 6, i32 1
  %52 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9
  br label %53

53:                                               ; preds = %68, %49
  %54 = phi ptr [ %47, %49 ], [ %55, %68 ]
  %55 = load ptr, ptr %54, align 4
  %56 = getelementptr %struct.list_head, ptr %54, i32 0, i32 1
  %57 = load ptr, ptr %56, align 4
  %58 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %57, ptr %58, align 4
  store volatile ptr %55, ptr %57, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %54, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %56, align 4
  %59 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #12
  %60 = getelementptr i8, ptr %54, i32 8
  %61 = load volatile ptr, ptr %60, align 4
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %68, label %63

63:                                               ; preds = %53
  %64 = load ptr, ptr %51, align 4
  %65 = getelementptr i8, ptr %54, i32 12
  %66 = load ptr, ptr %65, align 4
  %67 = getelementptr inbounds %struct.list_head, ptr %61, i32 0, i32 1
  store ptr %64, ptr %67, align 4
  store ptr %61, ptr %64, align 4
  store ptr %50, ptr %66, align 4
  store ptr %66, ptr %51, align 4
  store volatile ptr %60, ptr %60, align 4
  store ptr %60, ptr %65, align 4
  br label %68

68:                                               ; preds = %63, %53
  %69 = load ptr, ptr %52, align 4
  %70 = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  store ptr %54, ptr %70, align 4
  store ptr %69, ptr %54, align 4
  store ptr %52, ptr %56, align 4
  store volatile ptr %54, ptr %52, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %59) #12
  %71 = icmp eq ptr %55, %2
  br i1 %71, label %72, label %53

72:                                               ; preds = %68, %45
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @rcar_dmac_chan_start_xfer(ptr nocapture noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 9, i32 5
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %3, i32 0, i32 3
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr i8, ptr %7, i32 12
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %10 = and i32 %9, 3
  %11 = icmp ne i32 %10, 0
  %12 = load i1, ptr @rcar_dmac_chan_start_xfer.__already_done, align 1
  %13 = xor i1 %12, true
  %14 = select i1 %11, i1 %13, i1 false
  br i1 %14, label %15, label %16, !prof !8

15:                                               ; preds = %1
  store i1 true, ptr @rcar_dmac_chan_start_xfer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 382, i32 noundef 9, ptr noundef null) #12
  br label %16

16:                                               ; preds = %15, %1
  %17 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %0, i32 0, i32 7
  %18 = load i32, ptr %17, align 4
  %19 = icmp sgt i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %21 = trunc i32 %18 to i16
  %22 = load ptr, ptr %6, align 4
  %23 = getelementptr i8, ptr %22, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %23, i16 %21) #12, !srcloc !22
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %3, i32 0, i32 8
  %26 = load i8, ptr %25, align 4, !range !28
  %27 = icmp eq i8 %26, 0
  br i1 %27, label %57, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %3, i32 0, i32 5
  %30 = load ptr, ptr %29, align 4
  %31 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %3, i32 0, i32 8, i32 2
  %32 = load i32, ptr %31, align 4
  %33 = and i32 %32, -16
  %34 = or i32 %33, 1
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %35 = load ptr, ptr %6, align 4
  %36 = getelementptr i8, ptr %35, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %36, i32 %34) #12, !srcloc !12
  %37 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %3, i32 0, i32 7
  %38 = load i32, ptr %37, align 4
  %39 = shl i32 %38, 24
  %40 = add i32 %39, -16744448
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %41 = load ptr, ptr %6, align 4
  %42 = getelementptr i8, ptr %41, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #12, !srcloc !12
  %43 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %30, i32 0, i32 2
  %44 = load i32, ptr %43, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %45 = load ptr, ptr %6, align 4
  %46 = getelementptr i8, ptr %45, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %46, i32 %44) #12, !srcloc !12
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %47 = load ptr, ptr %6, align 4
  %48 = getelementptr i8, ptr %47, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %48, i32 16777216) #12, !srcloc !12
  %49 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %3, i32 0, i32 10
  %50 = load i8, ptr %49, align 4, !range !28
  %51 = icmp eq i8 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %28
  %53 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %3, i32 0, i32 6
  %54 = load ptr, ptr %53, align 4
  %55 = icmp eq ptr %54, null
  %56 = select i1 %55, i32 1044381696, i32 1044643840
  br label %74

57:                                               ; preds = %24
  %58 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %3, i32 0, i32 6
  %59 = load ptr, ptr %58, align 4
  %60 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %59, i32 0, i32 1
  %61 = load i32, ptr %60, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %62 = load ptr, ptr %6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %61) #12, !srcloc !12
  %63 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %59, i32 0, i32 2
  %64 = load i32, ptr %63, align 4
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %65 = load ptr, ptr %6, align 4
  %66 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %66, i32 %64) #12, !srcloc !12
  %67 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %59, i32 0, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %3, i32 0, i32 2
  %70 = load i32, ptr %69, align 4
  %71 = lshr i32 %68, %70
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %72 = load ptr, ptr %6, align 4
  %73 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #12, !srcloc !12
  br label %74

74:                                               ; preds = %57, %52, %28
  %75 = phi i32 [ 4, %57 ], [ 507510788, %28 ], [ %56, %52 ]
  %76 = or i32 %5, %75
  %77 = or i32 %76, 1073741825
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %78 = load ptr, ptr %6, align 4
  %79 = getelementptr i8, ptr %78, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #12, !srcloc !12
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_dmac_isr_channel(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %3) #12
  %4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr i8, ptr %5, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %6) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %8 = icmp sgt i32 %7, -1
  br i1 %8, label %40, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 4
  %11 = getelementptr inbounds %struct.rcar_dmac, ptr %10, i32 0, i32 3
  %12 = load ptr, ptr %11, align 4
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %15 = load ptr, ptr %4, align 4
  %16 = getelementptr i8, ptr %15, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 1) #12, !srcloc !12
  br label %24

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 2
  %19 = load i32, ptr %18, align 4
  %20 = shl nuw i32 1, %19
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %21 = getelementptr inbounds %struct.rcar_dmac, ptr %10, i32 0, i32 2
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr i8, ptr %22, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %20) #12, !srcloc !12
  br label %24

24:                                               ; preds = %17, %14
  br label %25

25:                                               ; preds = %32, %24
  %26 = phi i32 [ %34, %32 ], [ 0, %24 ]
  %27 = load ptr, ptr %4, align 4
  %28 = getelementptr i8, ptr %27, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %28) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %30 = and i32 %29, 1
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %143, label %32

32:                                               ; preds = %25
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748) #12
  %34 = add nuw nsw i32 %26, 1
  %35 = icmp eq i32 %34, 1024
  br i1 %35, label %36, label %25

36:                                               ; preds = %32
  %37 = load ptr, ptr %1, align 4
  %38 = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 15
  %39 = load ptr, ptr %38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.8) #13
  br label %143

40:                                               ; preds = %2
  %41 = and i32 %7, 2
  %42 = icmp eq i32 %41, 0
  %43 = select i1 %42, i32 524290, i32 524291
  %44 = xor i32 %43, -1
  %45 = and i32 %7, %44
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %46 = load ptr, ptr %4, align 4
  %47 = getelementptr i8, ptr %46, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #12, !srcloc !12
  %48 = and i32 %43, 1
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %65, label %50

50:                                               ; preds = %57, %40
  %51 = phi i32 [ %59, %57 ], [ 0, %40 ]
  %52 = load ptr, ptr %4, align 4
  %53 = getelementptr i8, ptr %52, i32 12
  %54 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %53) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %55 = and i32 %54, 1
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %65, label %57

57:                                               ; preds = %50
  %58 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %58(i32 noundef 214748) #12
  %59 = add nuw nsw i32 %51, 1
  %60 = icmp eq i32 %59, 1024
  br i1 %60, label %61, label %50

61:                                               ; preds = %57
  %62 = load ptr, ptr %1, align 4
  %63 = getelementptr inbounds %struct.dma_device, ptr %62, i32 0, i32 15
  %64 = load ptr, ptr %63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.8) #13
  br label %65

65:                                               ; preds = %61, %50, %40
  %66 = and i32 %7, 524288
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %85, label %68

68:                                               ; preds = %65
  %69 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 5
  %70 = load ptr, ptr %69, align 4
  %71 = icmp eq ptr %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %70, i32 0, i32 10
  %74 = load i8, ptr %73, align 4, !range !28
  %75 = icmp eq i8 %74, 0
  br i1 %75, label %76, label %77, !prof !8

76:                                               ; preds = %72, %68
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1497, i32 noundef 9, ptr noundef null) #12
  br label %85

77:                                               ; preds = %72
  %78 = load ptr, ptr %4, align 4
  %79 = getelementptr i8, ptr %78, i32 28
  %80 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %79) #12, !srcloc !10
  tail call void asm sideeffect "dsb ", "~{memory}"() #12, !srcloc !11
  %81 = shl i32 %80, 8
  %82 = and i32 %81, -16777216
  tail call void asm sideeffect "dsb st", "~{memory}"() #12
  tail call void @arm_heavy_mb() #12
  %83 = load ptr, ptr %4, align 4
  %84 = getelementptr i8, ptr %83, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %84, i32 %82) #12, !srcloc !12
  br label %85

85:                                               ; preds = %77, %76, %65
  %86 = phi i32 [ 0, %65 ], [ 0, %76 ], [ 2, %77 ]
  br i1 %42, label %143, label %87

87:                                               ; preds = %85
  %88 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 5
  %89 = load ptr, ptr %88, align 4
  %90 = icmp eq ptr %89, null
  %91 = load i1, ptr @rcar_dmac_isr_transfer_end.__already_done, align 1
  %92 = xor i1 %91, true
  %93 = select i1 %90, i1 %92, i1 false
  br i1 %93, label %94, label %95, !prof !8

94:                                               ; preds = %87
  store i1 true, ptr @rcar_dmac_isr_transfer_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 1519, i32 noundef 9, ptr noundef null) #12
  br label %95

95:                                               ; preds = %94, %87
  br i1 %90, label %140, label %96

96:                                               ; preds = %95
  %97 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %89, i32 0, i32 8
  %98 = load i8, ptr %97, align 4, !range !28
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %89, i32 0, i32 6
  %102 = load ptr, ptr %101, align 4
  %103 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %89, i32 0, i32 5
  %104 = load ptr, ptr %102, align 4
  %105 = icmp eq ptr %104, %103
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  store ptr %104, ptr %101, align 4
  %107 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %89, i32 0, i32 10
  %108 = load i8, ptr %107, align 4, !range !28
  %109 = icmp eq i8 %108, 0
  %110 = select i1 %109, i32 1, i32 2
  br label %132

111:                                              ; preds = %100
  %112 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %89, i32 0, i32 10
  %113 = load i8, ptr %112, align 4, !range !28
  %114 = icmp eq i8 %113, 0
  br i1 %114, label %117, label %115

115:                                              ; preds = %111
  %116 = load ptr, ptr %103, align 4
  store ptr %116, ptr %101, align 4
  br label %132

117:                                              ; preds = %111, %96
  %118 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %89, i32 0, i32 4
  %119 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 3
  %120 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %89, i32 0, i32 4, i32 1
  %121 = load ptr, ptr %120, align 4
  %122 = load ptr, ptr %118, align 4
  %123 = getelementptr inbounds %struct.list_head, ptr %122, i32 0, i32 1
  store ptr %121, ptr %123, align 4
  store volatile ptr %122, ptr %121, align 4
  %124 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 3, i32 1
  %125 = load ptr, ptr %124, align 4
  store ptr %118, ptr %124, align 4
  store ptr %119, ptr %118, align 4
  store ptr %125, ptr %120, align 4
  store volatile ptr %118, ptr %125, align 4
  %126 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 2
  %127 = load volatile ptr, ptr %126, align 4
  %128 = icmp eq ptr %127, %126
  br i1 %128, label %131, label %129

129:                                              ; preds = %117
  %130 = getelementptr i8, ptr %127, i32 -72
  store ptr %130, ptr %88, align 4
  br label %135

131:                                              ; preds = %117
  store ptr null, ptr %88, align 4
  br label %140

132:                                              ; preds = %115, %106
  %133 = phi i32 [ %110, %106 ], [ 2, %115 ]
  %134 = load ptr, ptr %88, align 4
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi ptr [ %134, %132 ], [ %130, %129 ]
  %137 = phi i32 [ %133, %132 ], [ 2, %129 ]
  %138 = icmp eq ptr %136, null
  br i1 %138, label %140, label %139

139:                                              ; preds = %135
  tail call fastcc void @rcar_dmac_chan_start_xfer(ptr noundef %1) #12
  br label %140

140:                                              ; preds = %139, %135, %131, %95
  %141 = phi i32 [ 0, %95 ], [ %137, %139 ], [ %137, %135 ], [ 2, %131 ]
  %142 = or i32 %141, %86
  br label %143

143:                                              ; preds = %140, %85, %36, %25
  %144 = phi i32 [ %142, %140 ], [ %86, %85 ], [ 0, %36 ], [ 0, %25 ]
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %145 = load i16, ptr %3, align 4
  %146 = add i16 %145, 1
  store i16 %146, ptr %3, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !30
  br i1 %8, label %151, label %147

147:                                              ; preds = %143
  %148 = load ptr, ptr %1, align 4
  %149 = getelementptr inbounds %struct.dma_device, ptr %148, i32 0, i32 15
  %150 = load ptr, ptr %149, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %150, ptr noundef nonnull @.str.19) #13
  tail call fastcc void @rcar_dmac_chan_reinit(ptr noundef %1)
  br label %151

151:                                              ; preds = %147, %143
  %152 = phi i32 [ 1, %147 ], [ %144, %143 ]
  ret i32 %152
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_dmac_isr_channel_thread(i32 noundef %0, ptr noundef %1) #2 {
  %3 = alloca %struct.dmaengine_result, align 8
  %4 = alloca %struct.dmaengine_result, align 8
  %5 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %5) #12
  %6 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 5
  %7 = load ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, null
  br i1 %8, label %32, label %9

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %7, i32 0, i32 10
  %11 = load i8, ptr %10, align 4, !range !28
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 6
  %15 = load ptr, ptr %14, align 4
  %16 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 7
  %17 = load ptr, ptr %16, align 4
  %18 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 8
  %19 = load ptr, ptr %18, align 4
  %20 = icmp eq ptr %15, null
  %21 = xor i1 %20, true
  %22 = icmp ne ptr %17, null
  %23 = select i1 %21, i1 true, i1 %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %13
  tail call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %25 = load i16, ptr %5, align 4
  %26 = add i16 %25, 1
  store i16 %26, ptr %5, align 4
  tail call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  tail call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #12
  store i64 0, ptr %4, align 8
  %27 = icmp eq ptr %17, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %24
  call void %17(ptr noundef %19, ptr noundef nonnull %4) #12
  br label %31

29:                                               ; preds = %24
  br i1 %20, label %31, label %30

30:                                               ; preds = %29
  tail call void %15(ptr noundef %19) #12
  br label %31

31:                                               ; preds = %30, %29, %28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #12
  call void @_raw_spin_lock_irq(ptr noundef %5) #12
  br label %32

32:                                               ; preds = %31, %13, %9, %2
  %33 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 3
  %34 = load volatile ptr, ptr %33, align 4
  %35 = icmp eq ptr %34, %33
  br i1 %35, label %75, label %36

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 4
  %38 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 4, i32 1
  br label %39

39:                                               ; preds = %71, %36
  %40 = phi ptr [ %34, %36 ], [ %73, %71 ]
  %41 = getelementptr i8, ptr %40, i32 -72
  %42 = load i32, ptr %41, align 4
  %43 = icmp slt i32 %42, 1
  br i1 %43, label %44, label %45, !prof !8

44:                                               ; preds = %39
  call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/sh/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #12, !srcloc !31
  unreachable

45:                                               ; preds = %39
  %46 = getelementptr i8, ptr %40, i32 -60
  %47 = load ptr, ptr %46, align 4
  %48 = getelementptr inbounds %struct.dma_chan, ptr %47, i32 0, i32 3
  store i32 %42, ptr %48, align 4
  store i32 0, ptr %41, align 4
  %49 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %50 = load ptr, ptr %49, align 4
  %51 = load ptr, ptr %40, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  store ptr %50, ptr %52, align 4
  store volatile ptr %51, ptr %50, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %40, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %49, align 4
  %53 = getelementptr i8, ptr %40, i32 -48
  %54 = load ptr, ptr %53, align 4
  %55 = getelementptr i8, ptr %40, i32 -44
  %56 = load ptr, ptr %55, align 4
  %57 = getelementptr i8, ptr %40, i32 -40
  %58 = load ptr, ptr %57, align 4
  %59 = icmp eq ptr %54, null
  %60 = xor i1 %59, true
  %61 = icmp ne ptr %56, null
  %62 = select i1 %60, i1 true, i1 %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %45
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %64 = load i16, ptr %5, align 4
  %65 = add i16 %64, 1
  store i16 %65, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #12
  store i64 0, ptr %3, align 8
  %66 = icmp eq ptr %56, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  call void %56(ptr noundef %58, ptr noundef nonnull %3) #12
  br label %70

68:                                               ; preds = %63
  br i1 %59, label %70, label %69

69:                                               ; preds = %68
  call void %54(ptr noundef %58) #12
  br label %70

70:                                               ; preds = %69, %68, %67
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #12
  call void @_raw_spin_lock_irq(ptr noundef %5) #12
  br label %71

71:                                               ; preds = %70, %45
  %72 = load ptr, ptr %38, align 4
  store ptr %40, ptr %38, align 4
  store ptr %37, ptr %40, align 4
  store ptr %72, ptr %49, align 4
  store volatile ptr %40, ptr %72, align 4
  %73 = load volatile ptr, ptr %33, align 4
  %74 = icmp eq ptr %73, %33
  br i1 %74, label %75, label %39

75:                                               ; preds = %71, %32
  call void asm sideeffect "dmb ish", "~{memory}"() #12, !srcloc !13
  %76 = load i16, ptr %5, align 4
  %77 = add i16 %76, 1
  store i16 %77, ptr %5, align 4
  call void asm sideeffect "dsb ishst", "~{memory}"() #12, !srcloc !14
  call void asm sideeffect "9998:\09sev\0A\09.pushsection \22.alt.smp.init\22, \22a\22\0A\09.align\092\0A\09.long\099998b - .\0A\09nop\0A\09.popsection\0A", ""() #12, !srcloc !15
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !16
  call void asm sideeffect "", "~{memory}"() #12, !srcloc !17
  call fastcc void @rcar_dmac_desc_recycle_acked(ptr noundef %1)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal zeroext i1 @rcar_dmac_chan_filter(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = load ptr, ptr %0, align 4
  %4 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, @rcar_dmac_device_config
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.of_phandle_args, ptr %1, i32 0, i32 2
  %9 = load i32, ptr %8, align 4
  %10 = getelementptr inbounds %struct.rcar_dmac, ptr %3, i32 0, i32 7
  %11 = tail call i32 @_test_and_set_bit(i32 noundef %9, ptr noundef %10) #12
  %12 = icmp eq i32 %11, 0
  br label %13

13:                                               ; preds = %7, %2
  %14 = phi i1 [ %12, %7 ], [ false, %2 ]
  ret i1 %14
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define internal i32 @rcar_dmac_runtime_suspend(ptr nocapture noundef readnone %0) #11 {
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @rcar_dmac_runtime_resume(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = tail call fastcc i32 @rcar_dmac_init(ptr noundef %3)
  ret i32 %4
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
attributes #4 = { inlinehint nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { cold nounwind }
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
!8 = !{!"branch_weights", i32 1, i32 2000}
!9 = !{!"auto-init"}
!10 = !{i64 5015248}
!11 = !{i64 2153179637}
!12 = !{i64 5014830}
!13 = !{i64 2149221753}
!14 = !{i64 2149217577}
!15 = !{i64 2149217652, i64 2149217679, i64 2149217726, i64 2149217748, i64 2149217776, i64 2149217796}
!16 = !{i64 339411}
!17 = !{i64 2149245897}
!18 = !{i64 2147945617}
!19 = !{i64 443927, i64 2147933898, i64 2147933924, i64 2147933971, i64 2147933993, i64 2147934021, i64 2147934041}
!20 = !{i64 430496, i64 430521, i64 430543, i64 430559, i64 430571, i64 430591, i64 430615, i64 430631, i64 430643}
!21 = !{i64 2147945743}
!22 = !{i64 5014210}
!23 = !{i64 5014410}
!24 = !{i64 2153178616}
!25 = !{!"branch_weights", i32 2000, i32 1}
!26 = !{i64 2152571850, i64 2152572342, i64 2152571887, i64 2152571943, i64 2152571977, i64 2152572001, i64 2152572042, i64 2152572063, i64 2152572091, i64 2152572125}
!27 = !{i64 2153142930}
!28 = !{i8 0, i8 2}
!29 = !{i32 0, i32 33}
!30 = !{i64 2149244756}
!31 = !{i64 2153141988, i64 2153142481, i64 2153142025, i64 2153142081, i64 2153142115, i64 2153142139, i64 2153142180, i64 2153142201, i64 2153142229, i64 2153142263}
