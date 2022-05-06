; ModuleID = '/llk/IR/drivers/dma/qcom/bam_dma.c_pt.bc'
source_filename = "../drivers/dma/qcom/bam_dma.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reg_offset_data = type { i32, i32, i32, i32 }
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
%struct.bam_device = type { ptr, ptr, %struct.dma_device, ptr, i32, i32, i32, i8, i8, i32, ptr, ptr, i32, %struct.tasklet_struct }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.bam_chan = type { %struct.virt_dma_chan, ptr, i32, %struct.dma_slave_config, ptr, i32, i16, i16, i32, i32, i32, %struct.list_head, %struct.list_head }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.bam_desc_hw = type { i32, i16, i16 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.bam_async_desc = type { %struct.virt_dma_desc, i32, i32, i16, ptr, %struct.list_head, i32, i32, [0 x %struct.bam_desc_hw] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_bam_dma__230_1505_bam_dma_driver_init6 = internal global ptr @bam_dma_driver_init, section ".initcall6.init", align 4
@bam_dma_driver = internal global %struct.platform_driver { ptr @bam_dma_probe, ptr @bam_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bam_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bam_dma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, align 4
@__exitcall_bam_dma_driver_exit = internal global ptr @bam_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [50 x i8] c"bam_dma.author=Andy Gross <agross@codeaurora.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [47 x i8] c"bam_dma.description=QCOM BAM DMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [38 x i8] c"bam_dma.file=drivers/dma/qcom/bam_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [23 x i8] c"bam_dma.license=GPL v2\00", section ".modinfo", align 1
@.str = private unnamed_addr constant [15 x i8] c"bam-dma-engine\00", align 1
@bam_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,bam-v1.3.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bam_v1_3_reg_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,bam-v1.4.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bam_v1_4_reg_info }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"qcom,bam-v1.7.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bam_v1_7_reg_info }, %struct.of_device_id zeroinitializer], align 4
@bam_dma_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bam_dma_suspend, ptr @bam_dma_resume, ptr @bam_dma_suspend, ptr @bam_dma_resume, ptr @bam_dma_suspend, ptr @bam_dma_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bam_dma_runtime_suspend, ptr @bam_dma_runtime_resume, ptr null }, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Unsupported BAM module\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"qcom,ee\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Execution environment unspecified\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"qcom,controlled-remotely\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"qcom,powered-remotely\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"num-channels\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"num-channels unspecified in dt\0A\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"qcom,num-ees\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"num-ees unspecified in dt\0A\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"bam_clk\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"failed to prepare/enable clock\0A\00", align 1
@.str.12 = private unnamed_addr constant [8 x i8] c"bam_dma\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"cannot set maximum segment size\0A\00", align 1
@.str.14 = private unnamed_addr constant [37 x i8] c"failed to register dma async device\0A\00", align 1
@.str.15 = private unnamed_addr constant [30 x i8] c"Failed to allocate desc fifo\0A\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Cannot free busy channel\0A\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"invalid dma direction\0A\00", align 1
@bam_v1_3_reg_info = internal constant [26 x %struct.reg_offset_data] [%struct.reg_offset_data { i32 3968, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3972, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 4028, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3976, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3980, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3984, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 4016, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3988, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3992, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 3996, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 4092, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 6144, i32 0, i32 0, i32 128 }, %struct.reg_offset_data { i32 6148, i32 0, i32 0, i32 128 }, %struct.reg_offset_data { i32 0, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 4, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 8, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 16, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 20, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 24, i32 128, i32 0, i32 0 }, %struct.reg_offset_data { i32 4140, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4120, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4096, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4132, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4124, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4136, i32 0, i32 64, i32 0 }, %struct.reg_offset_data { i32 4128, i32 0, i32 64, i32 0 }], align 4
@bam_v1_4_reg_info = internal constant [26 x %struct.reg_offset_data] [%struct.reg_offset_data zeroinitializer, %struct.reg_offset_data { i32 4, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 60, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 8, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 12, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 16, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 48, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 20, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 24, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 28, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 124, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 2048, i32 0, i32 0, i32 128 }, %struct.reg_offset_data { i32 2052, i32 0, i32 0, i32 128 }, %struct.reg_offset_data { i32 4096, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 4100, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 4104, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 4112, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 4116, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 4120, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 6188, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6168, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6144, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6180, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6172, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6184, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 6176, i32 0, i32 4096, i32 0 }], align 4
@bam_v1_7_reg_info = internal constant [26 x %struct.reg_offset_data] [%struct.reg_offset_data zeroinitializer, %struct.reg_offset_data { i32 4096, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 4104, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 8, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 12304, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 12308, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 12312, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 20, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 24, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 28, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 124, i32 0, i32 0, i32 0 }, %struct.reg_offset_data { i32 12288, i32 0, i32 0, i32 4096 }, %struct.reg_offset_data { i32 12292, i32 0, i32 0, i32 4096 }, %struct.reg_offset_data { i32 77824, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 77828, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 77832, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 77840, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 77844, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 77848, i32 4096, i32 0, i32 0 }, %struct.reg_offset_data { i32 79916, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79896, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79872, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79908, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79900, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79912, i32 0, i32 4096, i32 0 }, %struct.reg_offset_data { i32 79904, i32 0, i32 4096, i32 0 }], align 4
@.str.18 = private unnamed_addr constant [23 x i8] c"clk_enable failed: %d\0A\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_bam_dma_driver_exit, ptr @__initcall__kmod_bam_dma__230_1505_bam_dma_driver_init6, ptr @bam_dma_driver_exit], section "llvm.metadata"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal i32 @bam_dma_driver_init() #0 section ".init.text" {
  %1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @bam_dma_driver, ptr noundef null) #8
  ret i32 %1
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync)
define internal void @bam_dma_driver_exit() #0 section ".exit.text" {
  tail call void @platform_driver_unregister(ptr noundef nonnull @bam_dma_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_dma_probe(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %3 = tail call noalias ptr @devm_kmalloc(ptr noundef %2, i32 noundef 320, i32 noundef 3520) #8
  %4 = icmp eq ptr %3, null
  br i1 %4, label %231, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 1
  store ptr %2, ptr %6, align 4
  %7 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %8 = load ptr, ptr %7, align 8
  %9 = tail call ptr @of_match_node(ptr noundef nonnull @bam_of_match, ptr noundef %8) #8
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %2, ptr noundef nonnull @.str.1) #9
  br label %231

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.of_device_id, ptr %9, i32 0, i32 3
  %14 = load ptr, ptr %13, align 4
  %15 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 10
  store ptr %14, ptr %15, align 4
  %16 = tail call ptr @platform_get_resource(ptr noundef %0, i32 noundef 512, i32 noundef 0) #8
  %17 = tail call ptr @devm_ioremap_resource(ptr noundef %2, ptr noundef %16) #8
  store ptr %17, ptr %3, align 4
  %18 = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = ptrtoint ptr %17 to i32
  br label %231

21:                                               ; preds = %12
  %22 = tail call i32 @platform_get_irq(ptr noundef %0, i32 noundef 0) #8
  %23 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 12
  store i32 %22, ptr %23, align 4
  %24 = icmp slt i32 %22, 0
  br i1 %24, label %231, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %7, align 8
  %27 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 6
  %28 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %26, ptr noundef nonnull @.str.2, ptr noundef %27, i32 noundef 1, i32 noundef 0) #8
  %29 = icmp sgt i32 %28, -1
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.3) #9
  br label %231

32:                                               ; preds = %25
  %33 = load ptr, ptr %7, align 8
  %34 = tail call ptr @of_find_property(ptr noundef %33, ptr noundef nonnull @.str.4, ptr noundef null) #8
  %35 = icmp ne ptr %34, null
  %36 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 7
  %37 = zext i1 %35 to i8
  store i8 %37, ptr %36, align 4
  %38 = load ptr, ptr %7, align 8
  %39 = tail call ptr @of_find_property(ptr noundef %38, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %40 = icmp ne ptr %39, null
  %41 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 8
  %42 = zext i1 %40 to i8
  store i8 %42, ptr %41, align 1
  %43 = load i8, ptr %36, align 4, !range !8
  %44 = icmp ne i8 %43, 0
  %45 = select i1 %44, i1 true, i1 %40
  br i1 %45, label %46, label %65

46:                                               ; preds = %32
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 4
  %49 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %47, ptr noundef nonnull @.str.6, ptr noundef %48, i32 noundef 1, i32 noundef 0) #8
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %53, label %51

51:                                               ; preds = %46
  %52 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.7) #9
  br label %53

53:                                               ; preds = %51, %46
  %54 = load ptr, ptr %7, align 8
  %55 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 5
  %56 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %54, ptr noundef nonnull @.str.8, ptr noundef %55, i32 noundef 1, i32 noundef 0) #8
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %60, label %58

58:                                               ; preds = %53
  %59 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.9) #9
  br label %60

60:                                               ; preds = %58, %53
  %61 = load i8, ptr %36, align 4
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %60
  %64 = load i8, ptr %41, align 1
  br label %65

65:                                               ; preds = %63, %32
  %66 = phi i8 [ %64, %63 ], [ %42, %32 ]
  %67 = icmp eq i8 %66, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65, %60
  %69 = load ptr, ptr %6, align 4
  %70 = tail call ptr @devm_clk_get_optional(ptr noundef %69, ptr noundef nonnull @.str.10) #8
  br label %74

71:                                               ; preds = %65
  %72 = load ptr, ptr %6, align 4
  %73 = tail call ptr @devm_clk_get(ptr noundef %72, ptr noundef nonnull @.str.10) #8
  br label %74

74:                                               ; preds = %71, %68
  %75 = phi ptr [ %73, %71 ], [ %70, %68 ]
  %76 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 11
  store ptr %75, ptr %76, align 4
  %77 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 11
  %78 = icmp ugt ptr %75, inttoptr (i32 -4096 to ptr)
  br i1 %78, label %79, label %81

79:                                               ; preds = %74
  %80 = ptrtoint ptr %75 to i32
  br label %231

81:                                               ; preds = %74
  %82 = tail call i32 @clk_prepare(ptr noundef %75) #8
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %81
  %85 = tail call i32 @clk_enable(ptr noundef %75) #8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  tail call void @clk_unprepare(ptr noundef %75) #8
  br label %88

88:                                               ; preds = %87, %81
  %89 = phi i32 [ %85, %87 ], [ %82, %81 ]
  %90 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.11) #9
  br label %231

91:                                               ; preds = %84
  %92 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 5
  %93 = load i32, ptr %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %109

95:                                               ; preds = %91
  %96 = load ptr, ptr %15, align 4
  %97 = getelementptr %struct.reg_offset_data, ptr %96, i32 1
  %98 = load i32, ptr %97, align 4
  %99 = getelementptr %struct.reg_offset_data, ptr %96, i32 1, i32 3
  %100 = load i32, ptr %99, align 4
  %101 = load ptr, ptr %3, align 4
  %102 = getelementptr i8, ptr %101, i32 %98
  %103 = load i32, ptr %27, align 4
  %104 = mul i32 %103, %100
  %105 = getelementptr i8, ptr %102, i32 %104
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %105) #8, !srcloc !9
  %107 = lshr i32 %106, 8
  %108 = and i32 %107, 15
  store i32 %108, ptr %92, align 4
  br label %109

109:                                              ; preds = %95, %91
  %110 = phi i32 [ %108, %95 ], [ %93, %91 ]
  %111 = load i32, ptr %27, align 4
  %112 = icmp ult i32 %111, %110
  br i1 %112, label %113, label %228

113:                                              ; preds = %109
  %114 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 4
  %115 = load i32, ptr %114, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %113
  %118 = load ptr, ptr %15, align 4
  %119 = getelementptr %struct.reg_offset_data, ptr %118, i32 2
  %120 = load i32, ptr %119, align 4
  %121 = getelementptr %struct.reg_offset_data, ptr %118, i32 2, i32 3
  %122 = load i32, ptr %121, align 4
  %123 = load ptr, ptr %3, align 4
  %124 = getelementptr i8, ptr %123, i32 %120
  %125 = mul i32 %122, %111
  %126 = getelementptr i8, ptr %124, i32 %125
  %127 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %126) #8, !srcloc !9
  %128 = and i32 %127, 255
  store i32 %128, ptr %114, align 4
  br label %129

129:                                              ; preds = %117, %113
  %130 = load i8, ptr %36, align 4, !range !8
  %131 = icmp eq i8 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i8, ptr %41, align 1, !range !8
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %132
  tail call fastcc void @bam_reset(ptr noundef nonnull %3) #8
  br label %136

136:                                              ; preds = %135, %132, %129
  %137 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 13
  tail call void @tasklet_setup(ptr noundef %137, ptr noundef nonnull @dma_tasklet) #8
  %138 = load i32, ptr %114, align 4
  %139 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %138, i32 236) #8
  %140 = extractvalue { i32, i1 } %139, 1
  br i1 %140, label %141, label %143, !prof !10

141:                                              ; preds = %136
  %142 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 3
  store ptr null, ptr %142, align 4
  br label %226

143:                                              ; preds = %136
  %144 = load ptr, ptr %6, align 4
  %145 = extractvalue { i32, i1 } %139, 0
  %146 = tail call noalias ptr @devm_kmalloc(ptr noundef %144, i32 noundef %145, i32 noundef 3520) #8
  %147 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 3
  store ptr %146, ptr %147, align 4
  %148 = icmp eq ptr %146, null
  br i1 %148, label %226, label %149

149:                                              ; preds = %143
  %150 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2
  %151 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 3
  store volatile ptr %151, ptr %151, align 4
  %152 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 3, i32 1
  store ptr %151, ptr %152, align 4
  %153 = load i32, ptr %114, align 4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %169, label %155

155:                                              ; preds = %167, %149
  %156 = phi ptr [ %168, %167 ], [ %146, %149 ]
  %157 = phi i32 [ %164, %167 ], [ 0, %149 ]
  %158 = getelementptr %struct.bam_chan, ptr %156, i32 %157
  %159 = getelementptr %struct.bam_chan, ptr %156, i32 %157, i32 2
  store i32 %157, ptr %159, align 4
  %160 = getelementptr %struct.bam_chan, ptr %156, i32 %157, i32 1
  store ptr %3, ptr %160, align 4
  tail call void @vchan_init(ptr noundef %158, ptr noundef %150) #8
  %161 = getelementptr inbounds %struct.virt_dma_chan, ptr %158, i32 0, i32 2
  store ptr @bam_dma_free_desc, ptr %161, align 4
  %162 = getelementptr %struct.bam_chan, ptr %156, i32 %157, i32 11
  store volatile ptr %162, ptr %162, align 4
  %163 = getelementptr %struct.bam_chan, ptr %156, i32 %157, i32 11, i32 1
  store ptr %162, ptr %163, align 4
  %164 = add nuw i32 %157, 1
  %165 = load i32, ptr %114, align 4
  %166 = icmp ult i32 %164, %165
  br i1 %166, label %167, label %169

167:                                              ; preds = %155
  %168 = load ptr, ptr %147, align 4
  br label %155

169:                                              ; preds = %155, %149
  %170 = load ptr, ptr %6, align 4
  %171 = load i32, ptr %23, align 4
  %172 = tail call i32 @devm_request_threaded_irq(ptr noundef %170, i32 noundef %171, ptr noundef nonnull @bam_dma_irq, ptr noundef null, i32 noundef 4, ptr noundef nonnull @.str.12, ptr noundef %3) #8
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %215

174:                                              ; preds = %169
  %175 = load ptr, ptr %6, align 4
  %176 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 15
  store ptr %175, ptr %176, align 4
  %177 = getelementptr inbounds %struct.device, ptr %175, i32 0, i32 20
  %178 = load ptr, ptr %177, align 4
  %179 = icmp eq ptr %178, null
  br i1 %179, label %180, label %181

180:                                              ; preds = %174
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %175, ptr noundef nonnull @.str.13) #9
  br label %215

181:                                              ; preds = %174
  store i32 32760, ptr %178, align 4
  %182 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  store ptr %3, ptr %182, align 8
  %183 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 6
  store i32 0, ptr %183, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %183) #8
  %184 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 21
  store i32 6, ptr %184, align 4
  %185 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 26
  store i32 1, ptr %185, align 4
  %186 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 19
  store i32 4, ptr %186, align 4
  %187 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 20
  store i32 4, ptr %187, align 4
  %188 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 27
  store ptr @bam_alloc_chan, ptr %188, align 4
  %189 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 29
  store ptr @bam_free_chan, ptr %189, align 4
  %190 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 39
  store ptr @bam_prep_slave_sg, ptr %190, align 4
  %191 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 44
  store ptr @bam_slave_config, ptr %191, align 4
  %192 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 45
  store ptr @bam_pause, ptr %192, align 4
  %193 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 46
  store ptr @bam_resume, ptr %193, align 4
  %194 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 47
  store ptr @bam_dma_terminate_all, ptr %194, align 4
  %195 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 50
  store ptr @bam_issue_pending, ptr %195, align 4
  %196 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2, i32 49
  store ptr @bam_tx_status, ptr %196, align 4
  %197 = load ptr, ptr %6, align 4
  store ptr %197, ptr %176, align 4
  %198 = tail call i32 @dma_async_device_register(ptr noundef %150) #8
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %202, label %200

200:                                              ; preds = %181
  %201 = load ptr, ptr %6, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %201, ptr noundef nonnull @.str.14) #9
  br label %215

202:                                              ; preds = %181
  %203 = load ptr, ptr %7, align 8
  %204 = tail call i32 @of_dma_controller_register(ptr noundef %203, ptr noundef nonnull @bam_dma_xlate, ptr noundef %150) #8
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %214

206:                                              ; preds = %202
  %207 = load ptr, ptr %77, align 4
  %208 = icmp eq ptr %207, null
  br i1 %208, label %209, label %210

209:                                              ; preds = %206
  tail call void @__pm_runtime_disable(ptr noundef %2, i1 noundef zeroext true) #8
  br label %231

210:                                              ; preds = %206
  tail call void @pm_runtime_irq_safe(ptr noundef %2) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %2, i32 noundef 100) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %2, i1 noundef zeroext true) #8
  %211 = tail call i64 @ktime_get_mono_fast_ns() #8
  %212 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 11, i32 22
  store volatile i64 %211, ptr %212, align 8
  %213 = tail call i32 @__pm_runtime_set_status(ptr noundef %2, i32 noundef 0) #8
  tail call void @pm_runtime_enable(ptr noundef %2) #8
  br label %231

214:                                              ; preds = %202
  tail call void @dma_async_device_unregister(ptr noundef %150) #8
  br label %215

215:                                              ; preds = %214, %200, %180, %169
  %216 = phi i32 [ %172, %169 ], [ -5, %180 ], [ %198, %200 ], [ %204, %214 ]
  %217 = load i32, ptr %114, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %226, label %219

219:                                              ; preds = %219, %215
  %220 = phi i32 [ %223, %219 ], [ 0, %215 ]
  %221 = load ptr, ptr %147, align 4
  %222 = getelementptr %struct.bam_chan, ptr %221, i32 %220, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %222) #8
  %223 = add nuw i32 %220, 1
  %224 = load i32, ptr %114, align 4
  %225 = icmp ult i32 %223, %224
  br i1 %225, label %219, label %226

226:                                              ; preds = %219, %215, %143, %141
  %227 = phi i32 [ -12, %143 ], [ -12, %141 ], [ %216, %215 ], [ %216, %219 ]
  tail call void @tasklet_kill(ptr noundef %137) #8
  br label %228

228:                                              ; preds = %226, %109
  %229 = phi i32 [ %227, %226 ], [ -22, %109 ]
  %230 = load ptr, ptr %77, align 4
  tail call void @clk_disable(ptr noundef %230) #8
  tail call void @clk_unprepare(ptr noundef %230) #8
  br label %231

231:                                              ; preds = %228, %210, %209, %88, %79, %30, %21, %19, %11, %1
  %232 = phi i32 [ %20, %19 ], [ %28, %30 ], [ %80, %79 ], [ %89, %88 ], [ %229, %228 ], [ 0, %210 ], [ 0, %209 ], [ -19, %11 ], [ -12, %1 ], [ %22, %21 ]
  ret i32 %232
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_dma_remove(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3
  %5 = tail call i32 @pm_runtime_force_suspend(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, i32 25
  %7 = load ptr, ptr %6, align 8
  tail call void @of_dma_controller_free(ptr noundef %7) #8
  %8 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 2
  tail call void @dma_async_device_unregister(ptr noundef %8) #8
  %9 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 10
  %10 = load ptr, ptr %9, align 4
  %11 = getelementptr %struct.reg_offset_data, ptr %10, i32 12
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.reg_offset_data, ptr %10, i32 12, i32 3
  %14 = load i32, ptr %13, align 4
  %15 = load ptr, ptr %3, align 4
  %16 = getelementptr i8, ptr %15, i32 %12
  %17 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 6
  %18 = load i32, ptr %17, align 4
  %19 = mul i32 %18, %14
  %20 = getelementptr i8, ptr %16, i32 %19
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %20, i32 0) #8, !srcloc !11
  %21 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 1
  %22 = load ptr, ptr %21, align 4
  %23 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 12
  %24 = load i32, ptr %23, align 4
  tail call void @devm_free_irq(ptr noundef %22, i32 noundef %24, ptr noundef %3) #8
  %25 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 4
  %26 = load i32, ptr %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %49, label %28

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 3
  br label %30

30:                                               ; preds = %45, %28
  %31 = phi i32 [ 0, %28 ], [ %46, %45 ]
  %32 = load ptr, ptr %29, align 4
  %33 = getelementptr %struct.bam_chan, ptr %32, i32 %31
  %34 = tail call i32 @bam_dma_terminate_all(ptr noundef %33)
  %35 = load ptr, ptr %29, align 4
  %36 = getelementptr %struct.bam_chan, ptr %35, i32 %31, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %36) #8
  %37 = load ptr, ptr %29, align 4
  %38 = getelementptr %struct.bam_chan, ptr %37, i32 %31, i32 4
  %39 = load ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %30
  %42 = load ptr, ptr %21, align 4
  %43 = getelementptr %struct.bam_chan, ptr %37, i32 %31, i32 5
  %44 = load i32, ptr %43, align 4
  tail call void @dma_free_attrs(ptr noundef %42, i32 noundef 32768, ptr noundef nonnull %39, i32 noundef %44, i32 noundef 4) #8
  br label %45

45:                                               ; preds = %41, %30
  %46 = add nuw i32 %31, 1
  %47 = load i32, ptr %25, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %30, label %49

49:                                               ; preds = %45, %1
  %50 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 13
  tail call void @tasklet_kill(ptr noundef %50) #8
  %51 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 11
  %52 = load ptr, ptr %51, align 4
  tail call void @clk_disable(ptr noundef %52) #8
  tail call void @clk_unprepare(ptr noundef %52) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @dma_tasklet(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr i8, ptr %0, i32 -32
  %3 = load i32, ptr %2, align 4
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %32, label %5

5:                                                ; preds = %1
  %6 = getelementptr i8, ptr %0, i32 -36
  br label %7

7:                                                ; preds = %28, %5
  %8 = phi i32 [ 0, %5 ], [ %29, %28 ]
  %9 = load ptr, ptr %6, align 4
  %10 = getelementptr %struct.bam_chan, ptr %9, i32 %8
  %11 = getelementptr inbounds %struct.virt_dma_chan, ptr %10, i32 0, i32 3
  %12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %11) #8
  %13 = getelementptr inbounds %struct.virt_dma_chan, ptr %10, i32 0, i32 6
  %14 = load volatile ptr, ptr %13, align 4
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %28, label %16

16:                                               ; preds = %7
  %17 = getelementptr %struct.bam_chan, ptr %9, i32 %8, i32 6
  %18 = load i16, ptr %17, align 4
  %19 = zext i16 %18 to i32
  %20 = getelementptr %struct.bam_chan, ptr %9, i32 %8, i32 7
  %21 = load i16, ptr %20, align 2
  %22 = zext i16 %21 to i32
  %23 = xor i32 %22, -1
  %24 = add nsw i32 %23, %19
  %25 = and i32 %24, 4095
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %16
  tail call fastcc void @bam_start_dma(ptr noundef %10)
  br label %28

28:                                               ; preds = %27, %16, %7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %11, i32 noundef %12) #8
  %29 = add nuw i32 %8, 1
  %30 = load i32, ptr %2, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %7, label %32

32:                                               ; preds = %28, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_dma_irq(i32 noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 10
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr %struct.reg_offset_data, ptr %4, i32 11
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr %struct.reg_offset_data, ptr %4, i32 11, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = load ptr, ptr %1, align 4
  %10 = getelementptr i8, ptr %9, i32 %6
  %11 = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 6
  %12 = load i32, ptr %11, align 4
  %13 = mul i32 %12, %8
  %14 = getelementptr i8, ptr %10, i32 %13
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #8, !srcloc !9
  %16 = and i32 %15, 2147483647
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %169, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 4
  %20 = load i32, ptr %19, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %163, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 3
  br label %24

24:                                               ; preds = %159, %22
  %25 = phi i32 [ %20, %22 ], [ %160, %159 ]
  %26 = phi i32 [ 0, %22 ], [ %161, %159 ]
  %27 = load ptr, ptr %23, align 4
  %28 = getelementptr %struct.bam_chan, ptr %27, i32 %26
  %29 = shl nuw i32 1, %26
  %30 = and i32 %29, %15
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %159, label %32

32:                                               ; preds = %24
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr %struct.reg_offset_data, ptr %33, i32 16
  %35 = load i32, ptr %34, align 4
  %36 = getelementptr %struct.reg_offset_data, ptr %33, i32 16, i32 1
  %37 = load i32, ptr %36, align 4
  %38 = getelementptr %struct.reg_offset_data, ptr %33, i32 16, i32 2
  %39 = load i32, ptr %38, align 4
  %40 = getelementptr %struct.reg_offset_data, ptr %33, i32 16, i32 3
  %41 = load i32, ptr %40, align 4
  %42 = load ptr, ptr %1, align 4
  %43 = getelementptr i8, ptr %42, i32 %35
  %44 = mul i32 %37, %26
  %45 = getelementptr i8, ptr %43, i32 %44
  %46 = mul i32 %39, %26
  %47 = getelementptr i8, ptr %45, i32 %46
  %48 = load i32, ptr %11, align 4
  %49 = mul i32 %48, %41
  %50 = getelementptr i8, ptr %47, i32 %49
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %50) #8, !srcloc !9
  %52 = load ptr, ptr %3, align 4
  %53 = getelementptr %struct.reg_offset_data, ptr %52, i32 17
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.reg_offset_data, ptr %52, i32 17, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.reg_offset_data, ptr %52, i32 17, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.reg_offset_data, ptr %52, i32 17, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %1, align 4
  %62 = getelementptr i8, ptr %61, i32 %54
  %63 = mul i32 %56, %26
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = mul i32 %58, %26
  %66 = getelementptr i8, ptr %64, i32 %65
  %67 = load i32, ptr %11, align 4
  %68 = mul i32 %67, %60
  %69 = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %51) #8, !srcloc !11
  %70 = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 3
  %71 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %70) #8
  %72 = load ptr, ptr %3, align 4
  %73 = getelementptr %struct.reg_offset_data, ptr %72, i32 21
  %74 = load i32, ptr %73, align 4
  %75 = getelementptr %struct.reg_offset_data, ptr %72, i32 21, i32 1
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr %struct.reg_offset_data, ptr %72, i32 21, i32 2
  %78 = load i32, ptr %77, align 4
  %79 = getelementptr %struct.reg_offset_data, ptr %72, i32 21, i32 3
  %80 = load i32, ptr %79, align 4
  %81 = load ptr, ptr %1, align 4
  %82 = getelementptr i8, ptr %81, i32 %74
  %83 = mul i32 %76, %26
  %84 = getelementptr i8, ptr %82, i32 %83
  %85 = mul i32 %78, %26
  %86 = getelementptr i8, ptr %84, i32 %85
  %87 = load i32, ptr %11, align 4
  %88 = mul i32 %87, %80
  %89 = getelementptr i8, ptr %86, i32 %88
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %89) #8, !srcloc !9
  %91 = getelementptr %struct.bam_chan, ptr %27, i32 %26, i32 6
  %92 = getelementptr %struct.bam_chan, ptr %27, i32 %26, i32 11
  %93 = load ptr, ptr %92, align 4
  %94 = icmp eq ptr %93, %92
  br i1 %94, label %157, label %95

95:                                               ; preds = %32
  %96 = lshr i32 %90, 3
  %97 = load i16, ptr %91, align 4
  %98 = zext i16 %97 to i32
  %99 = sub nsw i32 %96, %98
  %100 = and i32 %99, 4095
  %101 = and i32 %96, 8191
  %102 = icmp ult i32 %101, %98
  %103 = sext i1 %102 to i32
  %104 = add nsw i32 %100, %103
  %105 = getelementptr inbounds %struct.virt_dma_chan, ptr %28, i32 0, i32 6
  br label %106

106:                                              ; preds = %151, %95
  %107 = phi i32 [ %104, %95 ], [ %126, %151 ]
  %108 = phi ptr [ %93, %95 ], [ %110, %151 ]
  %109 = getelementptr i8, ptr %108, i32 -92
  %110 = load ptr, ptr %108, align 4
  %111 = getelementptr i8, ptr %108, i32 -12
  %112 = load i32, ptr %111, align 4
  %113 = icmp ult i32 %107, %112
  br i1 %113, label %157, label %114

114:                                              ; preds = %106
  %115 = load i16, ptr %91, align 4
  %116 = trunc i32 %112 to i16
  %117 = add i16 %115, %116
  %118 = urem i16 %117, 4095
  store i16 %118, ptr %91, align 4
  %119 = load i32, ptr %111, align 4
  %120 = getelementptr i8, ptr %108, i32 -16
  %121 = load i32, ptr %120, align 4
  %122 = sub i32 %121, %119
  store i32 %122, ptr %120, align 4
  %123 = getelementptr i8, ptr %108, i32 -4
  %124 = load ptr, ptr %123, align 4
  %125 = getelementptr %struct.bam_desc_hw, ptr %124, i32 %119
  store ptr %125, ptr %123, align 4
  %126 = sub i32 %107, %119
  %127 = icmp eq i32 %121, %119
  br i1 %127, label %128, label %146

128:                                              ; preds = %114
  %129 = load i32, ptr %109, align 4
  %130 = icmp slt i32 %129, 1
  br i1 %130, label %131, label %132, !prof !10

131:                                              ; preds = %128
  tail call void asm sideeffect "1:\09.long ((0xe7f001f2) & 0xFFFFFFFF)\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/qcom/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !12
  unreachable

132:                                              ; preds = %128
  %133 = getelementptr i8, ptr %108, i32 -80
  %134 = load ptr, ptr %133, align 4
  %135 = getelementptr inbounds %struct.dma_chan, ptr %134, i32 0, i32 3
  store i32 %129, ptr %135, align 4
  store i32 0, ptr %109, align 4
  %136 = getelementptr i8, ptr %108, i32 -24
  %137 = getelementptr inbounds %struct.virt_dma_chan, ptr %134, i32 0, i32 7
  %138 = getelementptr inbounds %struct.virt_dma_chan, ptr %134, i32 0, i32 7, i32 1
  %139 = load ptr, ptr %138, align 4
  store ptr %136, ptr %138, align 4
  store ptr %137, ptr %136, align 4
  %140 = getelementptr i8, ptr %108, i32 -20
  store ptr %139, ptr %140, align 4
  store volatile ptr %136, ptr %139, align 4
  %141 = getelementptr inbounds %struct.virt_dma_chan, ptr %134, i32 0, i32 1, i32 1
  %142 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %141) #8
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %132
  %145 = getelementptr inbounds %struct.virt_dma_chan, ptr %134, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %145) #8
  br label %151

146:                                              ; preds = %114
  %147 = getelementptr i8, ptr %108, i32 -24
  %148 = load ptr, ptr %105, align 4
  %149 = getelementptr inbounds %struct.list_head, ptr %148, i32 0, i32 1
  store ptr %147, ptr %149, align 4
  store ptr %148, ptr %147, align 4
  %150 = getelementptr i8, ptr %108, i32 -20
  store ptr %105, ptr %150, align 4
  store volatile ptr %147, ptr %105, align 4
  br label %151

151:                                              ; preds = %146, %144, %132
  %152 = getelementptr inbounds %struct.list_head, ptr %108, i32 0, i32 1
  %153 = load ptr, ptr %152, align 4
  %154 = load ptr, ptr %108, align 4
  %155 = getelementptr inbounds %struct.list_head, ptr %154, i32 0, i32 1
  store ptr %153, ptr %155, align 4
  store volatile ptr %154, ptr %153, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %108, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %152, align 4
  %156 = icmp eq ptr %110, %92
  br i1 %156, label %157, label %106

157:                                              ; preds = %151, %106, %32
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %70, i32 noundef %71) #8
  %158 = load i32, ptr %19, align 4
  br label %159

159:                                              ; preds = %157, %24
  %160 = phi i32 [ %25, %24 ], [ %158, %157 ]
  %161 = add nuw i32 %26, 1
  %162 = icmp ult i32 %161, %160
  br i1 %162, label %24, label %163

163:                                              ; preds = %159, %18
  %164 = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 13, i32 1
  %165 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %164) #8
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 13
  tail call void @__tasklet_schedule(ptr noundef %168) #8
  br label %169

169:                                              ; preds = %167, %163, %2
  %170 = getelementptr inbounds %struct.bam_device, ptr %1, i32 0, i32 1
  %171 = load ptr, ptr %170, align 4
  %172 = getelementptr inbounds %struct.device, ptr %171, i32 0, i32 11, i32 15
  %173 = load i16, ptr %172, align 8
  %174 = and i16 %173, 7
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %169
  %177 = tail call i32 @__pm_runtime_resume(ptr noundef %171, i32 noundef 4) #8
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %209, label %179

179:                                              ; preds = %176, %169
  %180 = icmp sgt i32 %15, -1
  br i1 %180, label %203, label %181

181:                                              ; preds = %179
  %182 = load ptr, ptr %3, align 4
  %183 = getelementptr %struct.reg_offset_data, ptr %182, i32 7
  %184 = load i32, ptr %183, align 4
  %185 = getelementptr %struct.reg_offset_data, ptr %182, i32 7, i32 3
  %186 = load i32, ptr %185, align 4
  %187 = load ptr, ptr %1, align 4
  %188 = getelementptr i8, ptr %187, i32 %184
  %189 = load i32, ptr %11, align 4
  %190 = mul i32 %189, %186
  %191 = getelementptr i8, ptr %188, i32 %190
  %192 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %191) #8, !srcloc !9
  tail call void asm sideeffect "dsb ", "~{memory}"() #8, !srcloc !13
  tail call void @arm_heavy_mb() #8
  %193 = load ptr, ptr %3, align 4
  %194 = getelementptr %struct.reg_offset_data, ptr %193, i32 8
  %195 = load i32, ptr %194, align 4
  %196 = getelementptr %struct.reg_offset_data, ptr %193, i32 8, i32 3
  %197 = load i32, ptr %196, align 4
  %198 = load ptr, ptr %1, align 4
  %199 = getelementptr i8, ptr %198, i32 %195
  %200 = load i32, ptr %11, align 4
  %201 = mul i32 %200, %197
  %202 = getelementptr i8, ptr %199, i32 %201
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %202, i32 %192) #8, !srcloc !11
  br label %203

203:                                              ; preds = %181, %179
  %204 = load ptr, ptr %170, align 4
  %205 = tail call i64 @ktime_get_mono_fast_ns() #8
  %206 = getelementptr inbounds %struct.device, ptr %204, i32 0, i32 11, i32 22
  store volatile i64 %205, ptr %206, align 8
  %207 = load ptr, ptr %170, align 4
  %208 = tail call i32 @__pm_runtime_suspend(ptr noundef %207, i32 noundef 13) #8
  br label %209

209:                                              ; preds = %203, %176
  %210 = phi i32 [ 1, %203 ], [ 0, %176 ]
  ret i32 %210
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_alloc_chan(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 4
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %25

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 1
  %9 = load ptr, ptr %8, align 4
  %10 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 5
  %11 = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 32768, ptr noundef %10, i32 noundef 3264, i32 noundef 4) #8
  store ptr %11, ptr %4, align 4
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %7
  %14 = load ptr, ptr %8, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.15) #9
  br label %25

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 9
  %17 = load i32, ptr %16, align 4
  %18 = add i32 %17, 1
  store i32 %18, ptr %16, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 8
  %22 = load i8, ptr %21, align 1, !range !8
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  tail call fastcc void @bam_reset(ptr noundef %3)
  br label %25

25:                                               ; preds = %24, %20, %15, %13, %1
  %26 = phi i32 [ -12, %13 ], [ 0, %1 ], [ 0, %24 ], [ 0, %20 ], [ 0, %15 ]
  ret i32 %26
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bam_free_chan(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  %3 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bam_device, ptr %4, i32 0, i32 1
  %6 = load ptr, ptr %5, align 4
  %7 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, i32 15
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 7
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = tail call i32 @__pm_runtime_resume(ptr noundef %6, i32 noundef 4) #8
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %211, label %14

14:                                               ; preds = %11, %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr %2, ptr %2, align 8
  %15 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %15, align 4
  %16 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #8
  %18 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %19 = load volatile ptr, ptr %18, align 4
  %20 = icmp eq ptr %19, %18
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 4
  %23 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  store ptr %22, ptr %25, align 4
  store ptr %19, ptr %22, align 4
  store ptr %2, ptr %24, align 4
  store ptr %24, ptr %15, align 4
  store volatile ptr %18, ptr %18, align 4
  store ptr %18, ptr %23, align 4
  br label %26

26:                                               ; preds = %21, %14
  %27 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %28 = load volatile ptr, ptr %27, align 4
  %29 = icmp eq ptr %28, %27
  br i1 %29, label %35, label %30

30:                                               ; preds = %26
  %31 = load ptr, ptr %15, align 4
  %32 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %33 = load ptr, ptr %32, align 4
  %34 = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  store ptr %31, ptr %34, align 4
  store ptr %28, ptr %31, align 4
  store ptr %2, ptr %33, align 4
  store ptr %33, ptr %15, align 4
  store volatile ptr %27, ptr %27, align 4
  store ptr %27, ptr %32, align 4
  br label %35

35:                                               ; preds = %30, %26
  %36 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %37 = load volatile ptr, ptr %36, align 4
  %38 = icmp eq ptr %37, %36
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %15, align 4
  %41 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %42 = load ptr, ptr %41, align 4
  %43 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  store ptr %40, ptr %43, align 4
  store ptr %37, ptr %40, align 4
  store ptr %2, ptr %42, align 4
  store ptr %42, ptr %15, align 4
  store volatile ptr %36, ptr %36, align 4
  store ptr %36, ptr %41, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %46 = load volatile ptr, ptr %45, align 4
  %47 = icmp eq ptr %46, %45
  br i1 %47, label %53, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %15, align 4
  %50 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %51 = load ptr, ptr %50, align 4
  %52 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  store ptr %49, ptr %52, align 4
  store ptr %46, ptr %49, align 4
  store ptr %2, ptr %51, align 4
  store ptr %51, ptr %15, align 4
  store volatile ptr %45, ptr %45, align 4
  store ptr %45, ptr %50, align 4
  br label %53

53:                                               ; preds = %48, %44
  %54 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %55 = load volatile ptr, ptr %54, align 4
  %56 = icmp eq ptr %55, %54
  br i1 %56, label %62, label %57

57:                                               ; preds = %53
  %58 = load ptr, ptr %15, align 4
  %59 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %60 = load ptr, ptr %59, align 4
  %61 = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  store ptr %58, ptr %61, align 4
  store ptr %55, ptr %58, align 4
  store ptr %2, ptr %60, align 4
  store ptr %60, ptr %15, align 4
  store volatile ptr %54, ptr %54, align 4
  store ptr %54, ptr %59, align 4
  br label %62

62:                                               ; preds = %57, %53
  %63 = load ptr, ptr %2, align 8
  %64 = icmp eq ptr %63, %2
  br i1 %64, label %72, label %65

65:                                               ; preds = %65, %62
  %66 = phi ptr [ %70, %65 ], [ %63, %62 ]
  %67 = getelementptr i8, ptr %66, i32 -64
  %68 = load i32, ptr %67, align 4
  %69 = and i32 %68, -65
  store i32 %69, ptr %67, align 4
  %70 = load ptr, ptr %66, align 4
  %71 = icmp eq ptr %70, %2
  br i1 %71, label %72, label %65

72:                                               ; preds = %65, %62
  call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %17) #8
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  %73 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 11
  %74 = load volatile ptr, ptr %73, align 4
  %75 = icmp eq ptr %74, %73
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %3, align 4
  %78 = getelementptr inbounds %struct.bam_device, ptr %77, i32 0, i32 1
  %79 = load ptr, ptr %78, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.16) #9
  br label %205

80:                                               ; preds = %72
  %81 = call i32 @_raw_spin_lock_irqsave(ptr noundef %16) #8
  %82 = load ptr, ptr %3, align 4
  %83 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 2
  %84 = load i32, ptr %83, align 4
  %85 = getelementptr inbounds %struct.bam_device, ptr %82, i32 0, i32 10
  %86 = load ptr, ptr %85, align 4
  %87 = getelementptr %struct.reg_offset_data, ptr %86, i32 14
  %88 = load i32, ptr %87, align 4
  %89 = getelementptr %struct.reg_offset_data, ptr %86, i32 14, i32 1
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr %struct.reg_offset_data, ptr %86, i32 14, i32 2
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.reg_offset_data, ptr %86, i32 14, i32 3
  %94 = load i32, ptr %93, align 4
  %95 = load ptr, ptr %82, align 4
  %96 = getelementptr i8, ptr %95, i32 %88
  %97 = mul i32 %90, %84
  %98 = getelementptr i8, ptr %96, i32 %97
  %99 = mul i32 %92, %84
  %100 = getelementptr i8, ptr %98, i32 %99
  %101 = getelementptr inbounds %struct.bam_device, ptr %82, i32 0, i32 6
  %102 = load i32, ptr %101, align 4
  %103 = mul i32 %102, %94
  %104 = getelementptr i8, ptr %100, i32 %103
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %104, i32 1) #8, !srcloc !11
  %105 = load i32, ptr %83, align 4
  %106 = load ptr, ptr %85, align 4
  %107 = getelementptr %struct.reg_offset_data, ptr %106, i32 14
  %108 = load i32, ptr %107, align 4
  %109 = getelementptr %struct.reg_offset_data, ptr %106, i32 14, i32 1
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr %struct.reg_offset_data, ptr %106, i32 14, i32 2
  %112 = load i32, ptr %111, align 4
  %113 = getelementptr %struct.reg_offset_data, ptr %106, i32 14, i32 3
  %114 = load i32, ptr %113, align 4
  %115 = load ptr, ptr %82, align 4
  %116 = getelementptr i8, ptr %115, i32 %108
  %117 = mul i32 %110, %105
  %118 = getelementptr i8, ptr %116, i32 %117
  %119 = mul i32 %112, %105
  %120 = getelementptr i8, ptr %118, i32 %119
  %121 = load i32, ptr %101, align 4
  %122 = mul i32 %121, %114
  %123 = getelementptr i8, ptr %120, i32 %122
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %123, i32 0) #8, !srcloc !11
  call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  call void @arm_heavy_mb() #8
  %124 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 8
  store i32 0, ptr %124, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %16, i32 noundef %81) #8
  %125 = load ptr, ptr %5, align 4
  %126 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 4
  %127 = load ptr, ptr %126, align 4
  %128 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 5
  %129 = load i32, ptr %128, align 4
  call void @dma_free_attrs(ptr noundef %125, i32 noundef 32768, ptr noundef %127, i32 noundef %129, i32 noundef 4) #8
  store ptr null, ptr %126, align 4
  %130 = getelementptr inbounds %struct.bam_device, ptr %4, i32 0, i32 10
  %131 = load ptr, ptr %130, align 4
  %132 = getelementptr %struct.reg_offset_data, ptr %131, i32 12
  %133 = load i32, ptr %132, align 4
  %134 = getelementptr %struct.reg_offset_data, ptr %131, i32 12, i32 3
  %135 = load i32, ptr %134, align 4
  %136 = load ptr, ptr %4, align 4
  %137 = getelementptr i8, ptr %136, i32 %133
  %138 = getelementptr inbounds %struct.bam_device, ptr %4, i32 0, i32 6
  %139 = load i32, ptr %138, align 4
  %140 = mul i32 %139, %135
  %141 = getelementptr i8, ptr %137, i32 %140
  %142 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %141) #8, !srcloc !9
  %143 = load i32, ptr %83, align 4
  %144 = shl nuw i32 1, %143
  %145 = xor i32 %144, -1
  %146 = and i32 %142, %145
  %147 = load ptr, ptr %130, align 4
  %148 = getelementptr %struct.reg_offset_data, ptr %147, i32 12
  %149 = load i32, ptr %148, align 4
  %150 = getelementptr %struct.reg_offset_data, ptr %147, i32 12, i32 3
  %151 = load i32, ptr %150, align 4
  %152 = load ptr, ptr %4, align 4
  %153 = getelementptr i8, ptr %152, i32 %149
  %154 = load i32, ptr %138, align 4
  %155 = mul i32 %154, %151
  %156 = getelementptr i8, ptr %153, i32 %155
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %156, i32 %146) #8, !srcloc !11
  %157 = load i32, ptr %83, align 4
  %158 = load ptr, ptr %130, align 4
  %159 = getelementptr %struct.reg_offset_data, ptr %158, i32 18
  %160 = load i32, ptr %159, align 4
  %161 = getelementptr %struct.reg_offset_data, ptr %158, i32 18, i32 1
  %162 = load i32, ptr %161, align 4
  %163 = getelementptr %struct.reg_offset_data, ptr %158, i32 18, i32 2
  %164 = load i32, ptr %163, align 4
  %165 = getelementptr %struct.reg_offset_data, ptr %158, i32 18, i32 3
  %166 = load i32, ptr %165, align 4
  %167 = load ptr, ptr %4, align 4
  %168 = getelementptr i8, ptr %167, i32 %160
  %169 = mul i32 %162, %157
  %170 = getelementptr i8, ptr %168, i32 %169
  %171 = mul i32 %164, %157
  %172 = getelementptr i8, ptr %170, i32 %171
  %173 = load i32, ptr %138, align 4
  %174 = mul i32 %173, %166
  %175 = getelementptr i8, ptr %172, i32 %174
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %175, i32 0) #8, !srcloc !11
  %176 = getelementptr inbounds %struct.bam_device, ptr %4, i32 0, i32 9
  %177 = load i32, ptr %176, align 4
  %178 = add i32 %177, -1
  store i32 %178, ptr %176, align 4
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %205

180:                                              ; preds = %80
  %181 = getelementptr inbounds %struct.bam_device, ptr %4, i32 0, i32 8
  %182 = load i8, ptr %181, align 1, !range !8
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %205, label %184

184:                                              ; preds = %180
  %185 = load ptr, ptr %130, align 4
  %186 = load i32, ptr %185, align 4
  %187 = getelementptr inbounds i8, ptr %185, i32 12
  %188 = load i32, ptr %187, align 4
  %189 = load ptr, ptr %4, align 4
  %190 = getelementptr i8, ptr %189, i32 %186
  %191 = load i32, ptr %138, align 4
  %192 = mul i32 %191, %188
  %193 = getelementptr i8, ptr %190, i32 %192
  %194 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %193) #8, !srcloc !9
  %195 = or i32 %194, 1
  %196 = load ptr, ptr %130, align 4
  %197 = load i32, ptr %196, align 4
  %198 = getelementptr inbounds i8, ptr %196, i32 12
  %199 = load i32, ptr %198, align 4
  %200 = load ptr, ptr %4, align 4
  %201 = getelementptr i8, ptr %200, i32 %197
  %202 = load i32, ptr %138, align 4
  %203 = mul i32 %202, %199
  %204 = getelementptr i8, ptr %201, i32 %203
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %204, i32 %195) #8, !srcloc !11
  br label %205

205:                                              ; preds = %184, %180, %80, %76
  %206 = load ptr, ptr %5, align 4
  %207 = call i64 @ktime_get_mono_fast_ns() #8
  %208 = getelementptr inbounds %struct.device, ptr %206, i32 0, i32 11, i32 22
  store volatile i64 %207, ptr %208, align 8
  %209 = load ptr, ptr %5, align 4
  %210 = call i32 @__pm_runtime_suspend(ptr noundef %209, i32 noundef 13) #8
  br label %211

211:                                              ; preds = %205, %11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bam_prep_slave_sg(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readnone %5) #2 {
  %7 = add i32 %3, -1
  %8 = icmp ult i32 %7, 2
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = icmp eq i32 %2, 0
  br i1 %10, label %28, label %16

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 4
  %14 = getelementptr inbounds %struct.bam_device, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.17) #9
  br label %108

16:                                               ; preds = %16, %9
  %17 = phi i32 [ %24, %16 ], [ 0, %9 ]
  %18 = phi i32 [ %25, %16 ], [ 0, %9 ]
  %19 = phi ptr [ %26, %16 ], [ %1, %9 ]
  %20 = getelementptr inbounds %struct.scatterlist, ptr %19, i32 0, i32 4
  %21 = load i32, ptr %20, align 4
  %22 = add i32 %21, 32759
  %23 = udiv i32 %22, 32760
  %24 = add i32 %23, %17
  %25 = add nuw i32 %18, 1
  %26 = tail call ptr @sg_next(ptr noundef %19) #8
  %27 = icmp eq i32 %25, %2
  br i1 %27, label %28, label %16

28:                                               ; preds = %16, %9
  %29 = phi i32 [ 0, %9 ], [ %24, %16 ]
  %30 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %29, i32 8) #8
  %31 = extractvalue { i32, i1 } %30, 1
  %32 = extractvalue { i32, i1 } %30, 0
  %33 = tail call i32 @llvm.uadd.sat.i32(i32 %32, i32 108) #8
  %34 = select i1 %31, i32 -1, i32 %33
  %35 = tail call noalias align 64 ptr @__kmalloc(i32 noundef %34, i32 noundef 2304) #10
  %36 = icmp eq ptr %35, null
  br i1 %36, label %108, label %37

37:                                               ; preds = %28
  %38 = and i32 %4, 32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.bam_async_desc, ptr %35, i32 0, i32 3
  %42 = load i16, ptr %41, align 4
  %43 = or i16 %42, 4096
  store i16 %43, ptr %41, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = and i32 %4, 1
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = getelementptr inbounds %struct.bam_async_desc, ptr %35, i32 0, i32 3
  %49 = load i16, ptr %48, align 4
  %50 = or i16 %49, 16384
  store i16 %50, ptr %48, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = getelementptr inbounds %struct.bam_async_desc, ptr %35, i32 0, i32 1
  store i32 %29, ptr %52, align 4
  %53 = getelementptr inbounds %struct.bam_async_desc, ptr %35, i32 0, i32 8
  %54 = getelementptr inbounds %struct.bam_async_desc, ptr %35, i32 0, i32 4
  store ptr %53, ptr %54, align 8
  %55 = getelementptr inbounds %struct.bam_async_desc, ptr %35, i32 0, i32 6
  store i32 %3, ptr %55, align 4
  br i1 %10, label %95, label %56

56:                                               ; preds = %51
  %57 = and i32 %4, 128
  %58 = icmp eq i32 %57, 0
  %59 = getelementptr inbounds %struct.bam_async_desc, ptr %35, i32 0, i32 7
  br label %60

60:                                               ; preds = %86, %56
  %61 = phi ptr [ %53, %56 ], [ %91, %86 ]
  %62 = phi i32 [ 0, %56 ], [ %92, %86 ]
  %63 = phi ptr [ %1, %56 ], [ %93, %86 ]
  %64 = getelementptr inbounds %struct.scatterlist, ptr %63, i32 0, i32 4
  %65 = load i32, ptr %64, align 4
  %66 = getelementptr inbounds %struct.scatterlist, ptr %63, i32 0, i32 3
  br label %67

67:                                               ; preds = %79, %60
  %68 = phi ptr [ %61, %60 ], [ %85, %79 ]
  %69 = phi i32 [ %65, %60 ], [ %81, %79 ]
  %70 = phi i32 [ 0, %60 ], [ %82, %79 ]
  br i1 %58, label %75, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.bam_desc_hw, ptr %68, i32 0, i32 2
  %73 = load i16, ptr %72, align 2
  %74 = or i16 %73, 2048
  store i16 %74, ptr %72, align 2
  br label %75

75:                                               ; preds = %71, %67
  %76 = load i32, ptr %66, align 4
  %77 = add i32 %76, %70
  store i32 %77, ptr %68, align 4
  %78 = icmp ugt i32 %69, 32760
  br i1 %78, label %79, label %86

79:                                               ; preds = %75
  %80 = getelementptr inbounds %struct.bam_desc_hw, ptr %68, i32 0, i32 1
  store i16 32760, ptr %80, align 4
  %81 = add i32 %69, -32760
  %82 = add i32 %70, 32760
  %83 = load i32, ptr %59, align 8
  %84 = add i32 %83, 32760
  store i32 %84, ptr %59, align 8
  %85 = getelementptr %struct.bam_desc_hw, ptr %68, i32 1
  br label %67

86:                                               ; preds = %75
  %87 = trunc i32 %69 to i16
  %88 = getelementptr inbounds %struct.bam_desc_hw, ptr %68, i32 0, i32 1
  store i16 %87, ptr %88, align 4
  %89 = load i32, ptr %59, align 8
  %90 = add i32 %89, %69
  store i32 %90, ptr %59, align 8
  %91 = getelementptr %struct.bam_desc_hw, ptr %68, i32 1
  %92 = add nuw i32 %62, 1
  %93 = tail call ptr @sg_next(ptr noundef %63) #8
  %94 = icmp eq i32 %92, %2
  br i1 %94, label %95, label %60

95:                                               ; preds = %86, %51
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %35, ptr noundef %0) #8
  %96 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %35, i32 0, i32 1
  store i32 %4, ptr %96, align 4
  %97 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %35, i32 0, i32 4
  store ptr @vchan_tx_submit, ptr %97, align 16
  %98 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %35, i32 0, i32 5
  store ptr @vchan_tx_desc_free, ptr %98, align 4
  %99 = getelementptr inbounds %struct.virt_dma_desc, ptr %35, i32 0, i32 1
  store i32 0, ptr %99, align 4
  %100 = getelementptr inbounds %struct.virt_dma_desc, ptr %35, i32 0, i32 1, i32 1
  store i32 0, ptr %100, align 64
  %101 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %102 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %101) #8
  %103 = getelementptr inbounds %struct.virt_dma_desc, ptr %35, i32 0, i32 2
  %104 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %105 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %106 = load ptr, ptr %105, align 4
  store ptr %103, ptr %105, align 4
  store ptr %104, ptr %103, align 4
  %107 = getelementptr inbounds %struct.virt_dma_desc, ptr %35, i32 0, i32 2, i32 1
  store ptr %106, ptr %107, align 8
  store volatile ptr %103, ptr %106, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %101, i32 noundef %102) #8
  br label %108

108:                                              ; preds = %95, %28, %11
  %109 = phi ptr [ %35, %95 ], [ null, %11 ], [ null, %28 ]
  ret ptr %109
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_slave_config(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %3) #8
  %5 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr noundef align 4 dereferenceable(48) %5, ptr noundef align 4 dereferenceable(48) %1, i32 48, i1 false)
  %6 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 10
  store i32 1, ptr %6, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %3, i32 noundef %4) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_pause(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.reg_offset_data, ptr %19, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.reg_offset_data, ptr %19, i32 15, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.reg_offset_data, ptr %19, i32 15, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.reg_offset_data, ptr %19, i32 15, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 %21
  %30 = mul i32 %23, %17
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = mul i32 %25, %17
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %27
  %37 = getelementptr i8, ptr %33, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 1) #8, !srcloc !11
  %38 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 9
  store i32 1, ptr %38, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #8
  %39 = load ptr, ptr %4, align 4
  %40 = tail call i64 @ktime_get_mono_fast_ns() #8
  %41 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 11, i32 22
  store volatile i64 %40, ptr %41, align 8
  %42 = load ptr, ptr %4, align 4
  %43 = tail call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #8
  br label %44

44:                                               ; preds = %13, %10
  %45 = phi i32 [ 0, %13 ], [ %11, %10 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 1
  %3 = load ptr, ptr %2, align 4
  %4 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 1
  %5 = load ptr, ptr %4, align 4
  %6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, i32 15
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 7
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 4) #8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %44, label %13

13:                                               ; preds = %10, %1
  %14 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %14) #8
  %16 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 2
  %17 = load i32, ptr %16, align 4
  %18 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 10
  %19 = load ptr, ptr %18, align 4
  %20 = getelementptr %struct.reg_offset_data, ptr %19, i32 15
  %21 = load i32, ptr %20, align 4
  %22 = getelementptr %struct.reg_offset_data, ptr %19, i32 15, i32 1
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr %struct.reg_offset_data, ptr %19, i32 15, i32 2
  %25 = load i32, ptr %24, align 4
  %26 = getelementptr %struct.reg_offset_data, ptr %19, i32 15, i32 3
  %27 = load i32, ptr %26, align 4
  %28 = load ptr, ptr %3, align 4
  %29 = getelementptr i8, ptr %28, i32 %21
  %30 = mul i32 %23, %17
  %31 = getelementptr i8, ptr %29, i32 %30
  %32 = mul i32 %25, %17
  %33 = getelementptr i8, ptr %31, i32 %32
  %34 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 6
  %35 = load i32, ptr %34, align 4
  %36 = mul i32 %35, %27
  %37 = getelementptr i8, ptr %33, i32 %36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %37, i32 0) #8, !srcloc !11
  %38 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 9
  store i32 0, ptr %38, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %14, i32 noundef %15) #8
  %39 = load ptr, ptr %4, align 4
  %40 = tail call i64 @ktime_get_mono_fast_ns() #8
  %41 = getelementptr inbounds %struct.device, ptr %39, i32 0, i32 11, i32 22
  store volatile i64 %40, ptr %41, align 8
  %42 = load ptr, ptr %4, align 4
  %43 = tail call i32 @__pm_runtime_suspend(ptr noundef %42, i32 noundef 13) #8
  br label %44

44:                                               ; preds = %13, %10
  %45 = phi i32 [ 0, %13 ], [ %11, %10 ]
  ret i32 %45
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_dma_terminate_all(ptr noundef %0) #2 {
  %2 = alloca %struct.list_head, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #8
  store ptr %2, ptr %2, align 8
  %3 = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  store ptr %2, ptr %3, align 4
  %4 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %5 = call i32 @_raw_spin_lock_irqsave(ptr noundef %4) #8
  %6 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 11
  %7 = load volatile ptr, ptr %6, align 4
  %8 = icmp eq ptr %7, %6
  br i1 %8, label %28, label %9

9:                                                ; preds = %1
  %10 = getelementptr i8, ptr %7, i32 8
  %11 = load i32, ptr %10, align 4
  call fastcc void @bam_chan_init_hw(ptr noundef %0, i32 noundef %11)
  %12 = load ptr, ptr %6, align 4
  %13 = icmp eq ptr %12, %6
  br i1 %13, label %28, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  br label %16

16:                                               ; preds = %16, %14
  %17 = phi ptr [ %12, %14 ], [ %18, %16 ]
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr i8, ptr %17, i32 -24
  %20 = load ptr, ptr %15, align 4
  %21 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  store ptr %19, ptr %21, align 4
  store ptr %20, ptr %19, align 4
  %22 = getelementptr i8, ptr %17, i32 -20
  store ptr %15, ptr %22, align 4
  store volatile ptr %19, ptr %15, align 4
  %23 = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %24 = load ptr, ptr %23, align 4
  %25 = load ptr, ptr %17, align 4
  %26 = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  store ptr %24, ptr %26, align 4
  store volatile ptr %25, ptr %24, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %17, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %23, align 4
  %27 = icmp eq ptr %18, %6
  br i1 %27, label %28, label %16

28:                                               ; preds = %16, %9, %1
  %29 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4
  %30 = load volatile ptr, ptr %29, align 4
  %31 = icmp eq ptr %30, %29
  br i1 %31, label %37, label %32

32:                                               ; preds = %28
  %33 = load ptr, ptr %3, align 4
  %34 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 4, i32 1
  %35 = load ptr, ptr %34, align 4
  %36 = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  store ptr %33, ptr %36, align 4
  store ptr %30, ptr %33, align 4
  store ptr %2, ptr %35, align 4
  store ptr %35, ptr %3, align 4
  store volatile ptr %29, ptr %29, align 4
  store ptr %29, ptr %34, align 4
  br label %37

37:                                               ; preds = %32, %28
  %38 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5
  %39 = load volatile ptr, ptr %38, align 4
  %40 = icmp eq ptr %39, %38
  br i1 %40, label %46, label %41

41:                                               ; preds = %37
  %42 = load ptr, ptr %3, align 4
  %43 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 5, i32 1
  %44 = load ptr, ptr %43, align 4
  %45 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  store ptr %42, ptr %45, align 4
  store ptr %39, ptr %42, align 4
  store ptr %2, ptr %44, align 4
  store ptr %44, ptr %3, align 4
  store volatile ptr %38, ptr %38, align 4
  store ptr %38, ptr %43, align 4
  br label %46

46:                                               ; preds = %41, %37
  %47 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %48 = load volatile ptr, ptr %47, align 4
  %49 = icmp eq ptr %48, %47
  br i1 %49, label %55, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr %3, align 4
  %52 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6, i32 1
  %53 = load ptr, ptr %52, align 4
  %54 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  store ptr %51, ptr %54, align 4
  store ptr %48, ptr %51, align 4
  store ptr %2, ptr %53, align 4
  store ptr %53, ptr %3, align 4
  store volatile ptr %47, ptr %47, align 4
  store ptr %47, ptr %52, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7
  %57 = load volatile ptr, ptr %56, align 4
  %58 = icmp eq ptr %57, %56
  br i1 %58, label %64, label %59

59:                                               ; preds = %55
  %60 = load ptr, ptr %3, align 4
  %61 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 7, i32 1
  %62 = load ptr, ptr %61, align 4
  %63 = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  store ptr %60, ptr %63, align 4
  store ptr %57, ptr %60, align 4
  store ptr %2, ptr %62, align 4
  store ptr %62, ptr %3, align 4
  store volatile ptr %56, ptr %56, align 4
  store ptr %56, ptr %61, align 4
  br label %64

64:                                               ; preds = %59, %55
  %65 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8
  %66 = load volatile ptr, ptr %65, align 4
  %67 = icmp eq ptr %66, %65
  br i1 %67, label %73, label %68

68:                                               ; preds = %64
  %69 = load ptr, ptr %3, align 4
  %70 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 8, i32 1
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  store ptr %69, ptr %72, align 4
  store ptr %66, ptr %69, align 4
  store ptr %2, ptr %71, align 4
  store ptr %71, ptr %3, align 4
  store volatile ptr %65, ptr %65, align 4
  store ptr %65, ptr %70, align 4
  br label %73

73:                                               ; preds = %68, %64
  call void @_raw_spin_unlock_irqrestore(ptr noundef %4, i32 noundef %5) #8
  call void @vchan_dma_desc_free_list(ptr noundef %0, ptr noundef nonnull %2) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bam_issue_pending(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %2) #8
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
  br i1 %16, label %29, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 6
  %19 = load i16, ptr %18, align 4
  %20 = zext i16 %19 to i32
  %21 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 7
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i32
  %24 = xor i32 %23, -1
  %25 = add nsw i32 %24, %20
  %26 = and i32 %25, 4095
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %17
  tail call fastcc void @bam_start_dma(ptr noundef %0)
  br label %29

29:                                               ; preds = %28, %17, %14
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i32 noundef %3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_tx_status(ptr noundef %0, i32 noundef %1, ptr noundef writeonly %2) #2 {
  %4 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 2
  %5 = load i32, ptr %4, align 4
  %6 = getelementptr inbounds %struct.dma_chan, ptr %0, i32 0, i32 3
  %7 = load i32, ptr %6, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !15
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
  br i1 %18, label %68, label %21

19:                                               ; preds = %13
  %20 = and i1 %16, %15
  br i1 %20, label %68, label %21

21:                                               ; preds = %19, %17
  br i1 %8, label %63, label %22

22:                                               ; preds = %21
  %23 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 3
  %24 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %23) #8
  %25 = tail call ptr @vchan_find_desc(ptr noundef %0, i32 noundef %1) #8
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %struct.bam_async_desc, ptr %25, i32 0, i32 7
  %29 = load i32, ptr %28, align 4
  br label %60

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 11
  %32 = load ptr, ptr %31, align 4
  %33 = icmp eq ptr %32, %31
  br i1 %33, label %60, label %34

34:                                               ; preds = %56, %30
  %35 = phi ptr [ %58, %56 ], [ %32, %30 ]
  %36 = phi i32 [ %57, %56 ], [ 0, %30 ]
  %37 = getelementptr i8, ptr %35, i32 -92
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, %1
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = getelementptr i8, ptr %35, i32 -16
  %42 = load i32, ptr %41, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %56, label %44

44:                                               ; preds = %40
  %45 = getelementptr i8, ptr %35, i32 -4
  %46 = load ptr, ptr %45, align 4
  br label %47

47:                                               ; preds = %47, %44
  %48 = phi i32 [ %36, %44 ], [ %53, %47 ]
  %49 = phi i32 [ 0, %44 ], [ %54, %47 ]
  %50 = getelementptr %struct.bam_desc_hw, ptr %46, i32 %49, i32 1
  %51 = load i16, ptr %50, align 4
  %52 = zext i16 %51 to i32
  %53 = add i32 %48, %52
  %54 = add nuw i32 %49, 1
  %55 = icmp eq i32 %54, %42
  br i1 %55, label %56, label %47

56:                                               ; preds = %47, %40, %34
  %57 = phi i32 [ %36, %34 ], [ %36, %40 ], [ %53, %47 ]
  %58 = load ptr, ptr %35, align 4
  %59 = icmp eq ptr %58, %31
  br i1 %59, label %60, label %34

60:                                               ; preds = %56, %30, %27
  %61 = phi i32 [ %29, %27 ], [ 0, %30 ], [ %57, %56 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %23, i32 noundef %24) #8
  %62 = getelementptr inbounds %struct.dma_tx_state, ptr %2, i32 0, i32 2
  store i32 %61, ptr %62, align 4
  br label %63

63:                                               ; preds = %60, %21
  %64 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 9
  %65 = load i32, ptr %64, align 4
  %66 = icmp eq i32 %65, 0
  %67 = select i1 %66, i32 1, i32 2
  br label %68

68:                                               ; preds = %63, %19, %17
  %69 = phi i32 [ 0, %17 ], [ 0, %19 ], [ %67, %63 ]
  ret i32 %69
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal ptr @bam_dma_xlate(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.of_dma, ptr %1, i32 0, i32 5
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 1
  %6 = load i32, ptr %5, align 4
  %7 = icmp eq i32 %6, 1
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.of_phandle_args, ptr %0, i32 0, i32 2
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr i8, ptr %4, i32 256
  %12 = load i32, ptr %11, align 4
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %8
  %15 = getelementptr i8, ptr %4, i32 252
  %16 = load ptr, ptr %15, align 4
  %17 = getelementptr %struct.bam_chan, ptr %16, i32 %10
  %18 = tail call ptr @dma_get_slave_channel(ptr noundef %17) #8
  br label %19

19:                                               ; preds = %14, %8, %2
  %20 = phi ptr [ %18, %14 ], [ null, %2 ], [ null, %8 ]
  ret ptr %20
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_irq_safe(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bam_reset(ptr noundef readonly %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.bam_device, ptr %0, i32 0, i32 10
  %3 = load ptr, ptr %2, align 4
  %4 = load i32, ptr %3, align 4
  %5 = getelementptr inbounds i8, ptr %3, i32 12
  %6 = load i32, ptr %5, align 4
  %7 = load ptr, ptr %0, align 4
  %8 = getelementptr i8, ptr %7, i32 %4
  %9 = getelementptr inbounds %struct.bam_device, ptr %0, i32 0, i32 6
  %10 = load i32, ptr %9, align 4
  %11 = mul i32 %10, %6
  %12 = getelementptr i8, ptr %8, i32 %11
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %12) #8, !srcloc !9
  %14 = or i32 %13, 1
  %15 = load ptr, ptr %2, align 4
  %16 = load i32, ptr %15, align 4
  %17 = getelementptr inbounds i8, ptr %15, i32 12
  %18 = load i32, ptr %17, align 4
  %19 = load ptr, ptr %0, align 4
  %20 = getelementptr i8, ptr %19, i32 %16
  %21 = load i32, ptr %9, align 4
  %22 = mul i32 %21, %18
  %23 = getelementptr i8, ptr %20, i32 %22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %14) #8, !srcloc !11
  %24 = and i32 %13, -2
  %25 = load ptr, ptr %2, align 4
  %26 = load i32, ptr %25, align 4
  %27 = getelementptr inbounds i8, ptr %25, i32 12
  %28 = load i32, ptr %27, align 4
  %29 = load ptr, ptr %0, align 4
  %30 = getelementptr i8, ptr %29, i32 %26
  %31 = load i32, ptr %9, align 4
  %32 = mul i32 %31, %28
  %33 = getelementptr i8, ptr %30, i32 %32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %33, i32 %24) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !16
  tail call void @arm_heavy_mb() #8
  %34 = or i32 %24, 2
  %35 = load ptr, ptr %2, align 4
  %36 = load i32, ptr %35, align 4
  %37 = getelementptr inbounds i8, ptr %35, i32 12
  %38 = load i32, ptr %37, align 4
  %39 = load ptr, ptr %0, align 4
  %40 = getelementptr i8, ptr %39, i32 %36
  %41 = load i32, ptr %9, align 4
  %42 = mul i32 %41, %38
  %43 = getelementptr i8, ptr %40, i32 %42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %34) #8, !srcloc !11
  %44 = load ptr, ptr %2, align 4
  %45 = getelementptr %struct.reg_offset_data, ptr %44, i32 3
  %46 = load i32, ptr %45, align 4
  %47 = getelementptr %struct.reg_offset_data, ptr %44, i32 3, i32 3
  %48 = load i32, ptr %47, align 4
  %49 = load ptr, ptr %0, align 4
  %50 = getelementptr i8, ptr %49, i32 %46
  %51 = load i32, ptr %9, align 4
  %52 = mul i32 %51, %48
  %53 = getelementptr i8, ptr %50, i32 %52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 4) #8, !srcloc !11
  %54 = load ptr, ptr %2, align 4
  %55 = getelementptr %struct.reg_offset_data, ptr %54, i32 10
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.reg_offset_data, ptr %54, i32 10, i32 3
  %58 = load i32, ptr %57, align 4
  %59 = load ptr, ptr %0, align 4
  %60 = getelementptr i8, ptr %59, i32 %56
  %61 = load i32, ptr %9, align 4
  %62 = mul i32 %61, %58
  %63 = getelementptr i8, ptr %60, i32 %62
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %63, i32 268431364) #8, !srcloc !11
  %64 = load ptr, ptr %2, align 4
  %65 = getelementptr %struct.reg_offset_data, ptr %64, i32 9
  %66 = load i32, ptr %65, align 4
  %67 = getelementptr %struct.reg_offset_data, ptr %64, i32 9, i32 3
  %68 = load i32, ptr %67, align 4
  %69 = load ptr, ptr %0, align 4
  %70 = getelementptr i8, ptr %69, i32 %66
  %71 = load i32, ptr %9, align 4
  %72 = mul i32 %71, %68
  %73 = getelementptr i8, ptr %70, i32 %72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 6) #8, !srcloc !11
  %74 = load ptr, ptr %2, align 4
  %75 = getelementptr %struct.reg_offset_data, ptr %74, i32 12
  %76 = load i32, ptr %75, align 4
  %77 = getelementptr %struct.reg_offset_data, ptr %74, i32 12, i32 3
  %78 = load i32, ptr %77, align 4
  %79 = load ptr, ptr %0, align 4
  %80 = getelementptr i8, ptr %79, i32 %76
  %81 = load i32, ptr %9, align 4
  %82 = mul i32 %81, %78
  %83 = getelementptr i8, ptr %80, i32 %82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %83, i32 -2147483648) #8, !srcloc !11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i32(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bam_start_dma(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.virt_dma_chan, ptr %0, i32 0, i32 6
  %3 = load volatile ptr, ptr %2, align 4
  %4 = icmp eq ptr %3, %2
  %5 = getelementptr i8, ptr %3, i32 -68
  %6 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 1
  %7 = load ptr, ptr %6, align 4
  %8 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 4
  %9 = load ptr, ptr %8, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = add i32 %10, 7
  %12 = and i32 %11, -8
  %13 = inttoptr i32 %12 to ptr
  %14 = icmp eq ptr %5, null
  %15 = or i1 %4, %14
  br i1 %15, label %192, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %struct.bam_device, ptr %7, i32 0, i32 1
  %18 = load ptr, ptr %17, align 4
  %19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 11, i32 15
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 7
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = tail call i32 @__pm_runtime_resume(ptr noundef %18, i32 noundef 4) #8
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %192, label %26

26:                                               ; preds = %23, %16
  %27 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 6
  %28 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 7
  %29 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 8
  %30 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 10
  %31 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 3, i32 5
  %32 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 3, i32 6
  %33 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 11
  %34 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 11, i32 1
  br label %35

35:                                               ; preds = %151, %26
  %36 = phi ptr [ %5, %26 ], [ %110, %151 ]
  %37 = load i16, ptr %27, align 4
  %38 = zext i16 %37 to i32
  %39 = load i16, ptr %28, align 2
  %40 = zext i16 %39 to i32
  %41 = xor i32 %40, -1
  %42 = add nsw i32 %41, %38
  %43 = and i32 %42, 4095
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %160, label %45

45:                                               ; preds = %35
  %46 = getelementptr inbounds %struct.virt_dma_desc, ptr %36, i32 0, i32 2
  %47 = getelementptr inbounds %struct.virt_dma_desc, ptr %36, i32 0, i32 2, i32 1
  %48 = load ptr, ptr %47, align 4
  %49 = load ptr, ptr %46, align 4
  %50 = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  store ptr %48, ptr %50, align 4
  store volatile ptr %49, ptr %48, align 4
  store ptr inttoptr (i32 256 to ptr), ptr %46, align 4
  store ptr inttoptr (i32 290 to ptr), ptr %47, align 4
  %51 = load i32, ptr %29, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = getelementptr inbounds %struct.bam_async_desc, ptr %36, i32 0, i32 6
  %55 = load i32, ptr %54, align 4
  tail call fastcc void @bam_chan_init_hw(ptr noundef %0, i32 noundef %55)
  br label %56

56:                                               ; preds = %53, %45
  %57 = load i32, ptr %30, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %83, label %59

59:                                               ; preds = %56
  %60 = load ptr, ptr %6, align 4
  %61 = getelementptr inbounds %struct.bam_device, ptr %60, i32 0, i32 7
  %62 = load i8, ptr %61, align 4, !range !8
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %59
  %65 = getelementptr inbounds %struct.bam_async_desc, ptr %36, i32 0, i32 6
  %66 = load i32, ptr %65, align 4
  %67 = icmp eq i32 %66, 2
  %68 = select i1 %67, ptr %31, ptr %32
  %69 = load i32, ptr %68, align 4
  %70 = getelementptr inbounds %struct.bam_device, ptr %60, i32 0, i32 10
  %71 = load ptr, ptr %70, align 4
  %72 = getelementptr %struct.reg_offset_data, ptr %71, i32 3
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr %struct.reg_offset_data, ptr %71, i32 3, i32 3
  %75 = load i32, ptr %74, align 4
  %76 = load ptr, ptr %60, align 4
  %77 = getelementptr i8, ptr %76, i32 %73
  %78 = getelementptr inbounds %struct.bam_device, ptr %60, i32 0, i32 6
  %79 = load i32, ptr %78, align 4
  %80 = mul i32 %79, %75
  %81 = getelementptr i8, ptr %77, i32 %80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 %69) #8, !srcloc !11
  br label %82

82:                                               ; preds = %64, %59
  store i32 0, ptr %30, align 4
  br label %83

83:                                               ; preds = %82, %56
  %84 = getelementptr inbounds %struct.bam_async_desc, ptr %36, i32 0, i32 4
  %85 = load ptr, ptr %84, align 4
  %86 = load i16, ptr %27, align 4
  %87 = zext i16 %86 to i32
  %88 = load i16, ptr %28, align 2
  %89 = zext i16 %88 to i32
  %90 = xor i32 %89, -1
  %91 = add nsw i32 %90, %87
  %92 = and i32 %91, 4095
  %93 = getelementptr inbounds %struct.bam_async_desc, ptr %36, i32 0, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = icmp ugt i32 %94, %92
  %96 = getelementptr inbounds %struct.bam_async_desc, ptr %36, i32 0, i32 2
  br i1 %95, label %105, label %97

97:                                               ; preds = %83
  store i32 %94, ptr %96, align 4
  %98 = getelementptr inbounds %struct.bam_async_desc, ptr %36, i32 0, i32 3
  %99 = load i16, ptr %98, align 4
  %100 = add i32 %94, -1
  %101 = getelementptr %struct.bam_desc_hw, ptr %85, i32 %100, i32 2
  %102 = load i16, ptr %101, align 2
  %103 = or i16 %102, %99
  store i16 %103, ptr %101, align 2
  %104 = load i32, ptr %96, align 4
  br label %106

105:                                              ; preds = %83
  store i32 %92, ptr %96, align 4
  br label %106

106:                                              ; preds = %105, %97
  %107 = phi i32 [ %104, %97 ], [ %92, %105 ]
  %108 = load volatile ptr, ptr %2, align 4
  %109 = icmp eq ptr %108, %2
  %110 = getelementptr i8, ptr %108, i32 -68
  %111 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %36, i32 0, i32 6
  %112 = load ptr, ptr %111, align 4
  %113 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %36, i32 0, i32 7
  %114 = load ptr, ptr %113, align 4
  %115 = icmp ule i32 %92, %107
  %116 = icmp eq ptr %110, null
  %117 = or i1 %109, %116
  %118 = select i1 %115, i1 true, i1 %117
  %119 = icmp ne ptr %112, null
  %120 = select i1 %118, i1 true, i1 %119
  %121 = icmp ne ptr %114, null
  %122 = select i1 %120, i1 true, i1 %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %106
  %124 = getelementptr inbounds %struct.bam_async_desc, ptr %36, i32 0, i32 3
  %125 = load i16, ptr %124, align 4
  %126 = and i16 %125, 16384
  %127 = icmp eq i16 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = add i32 %107, -1
  %130 = getelementptr %struct.bam_desc_hw, ptr %85, i32 %129, i32 2
  %131 = load i16, ptr %130, align 2
  %132 = or i16 %131, -32768
  store i16 %132, ptr %130, align 2
  %133 = load i32, ptr %96, align 4
  br label %134

134:                                              ; preds = %128, %123, %106
  %135 = phi i32 [ %107, %106 ], [ %133, %128 ], [ %107, %123 ]
  %136 = load i16, ptr %28, align 2
  %137 = zext i16 %136 to i32
  %138 = add i32 %135, %137
  %139 = icmp ugt i32 %138, 4095
  br i1 %139, label %140, label %148

140:                                              ; preds = %134
  %141 = sub nsw i32 4095, %137
  %142 = getelementptr %struct.bam_desc_hw, ptr %13, i32 %137
  %143 = shl nsw i32 %141, 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %142, ptr align 4 %85, i32 %143, i1 false)
  %144 = getelementptr %struct.bam_desc_hw, ptr %85, i32 %141
  %145 = load i32, ptr %96, align 4
  %146 = sub i32 %145, %141
  %147 = shl i32 %146, 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %13, ptr align 4 %144, i32 %147, i1 false)
  br label %151

148:                                              ; preds = %134
  %149 = getelementptr %struct.bam_desc_hw, ptr %13, i32 %137
  %150 = shl i32 %135, 3
  tail call void @llvm.memcpy.p0.p0.i32(ptr align 8 %149, ptr align 4 %85, i32 %150, i1 false)
  br label %151

151:                                              ; preds = %148, %140
  %152 = load i32, ptr %96, align 4
  %153 = load i16, ptr %28, align 2
  %154 = trunc i32 %152 to i16
  %155 = add i16 %153, %154
  %156 = urem i16 %155, 4095
  store i16 %156, ptr %28, align 2
  %157 = getelementptr inbounds %struct.bam_async_desc, ptr %36, i32 0, i32 5
  %158 = load ptr, ptr %34, align 4
  store ptr %157, ptr %34, align 4
  store ptr %33, ptr %157, align 4
  %159 = getelementptr inbounds %struct.bam_async_desc, ptr %36, i32 0, i32 5, i32 1
  store ptr %158, ptr %159, align 4
  store volatile ptr %157, ptr %158, align 4
  br i1 %117, label %160, label %35

160:                                              ; preds = %151, %35
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !17
  tail call void @arm_heavy_mb() #8
  %161 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 7
  %162 = load i16, ptr %161, align 2
  %163 = zext i16 %162 to i32
  %164 = shl nuw nsw i32 %163, 3
  %165 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 2
  %166 = load i32, ptr %165, align 4
  %167 = getelementptr inbounds %struct.bam_device, ptr %7, i32 0, i32 10
  %168 = load ptr, ptr %167, align 4
  %169 = getelementptr %struct.reg_offset_data, ptr %168, i32 20
  %170 = load i32, ptr %169, align 4
  %171 = getelementptr %struct.reg_offset_data, ptr %168, i32 20, i32 1
  %172 = load i32, ptr %171, align 4
  %173 = getelementptr %struct.reg_offset_data, ptr %168, i32 20, i32 2
  %174 = load i32, ptr %173, align 4
  %175 = getelementptr %struct.reg_offset_data, ptr %168, i32 20, i32 3
  %176 = load i32, ptr %175, align 4
  %177 = load ptr, ptr %7, align 4
  %178 = getelementptr i8, ptr %177, i32 %170
  %179 = mul i32 %172, %166
  %180 = getelementptr i8, ptr %178, i32 %179
  %181 = mul i32 %174, %166
  %182 = getelementptr i8, ptr %180, i32 %181
  %183 = getelementptr inbounds %struct.bam_device, ptr %7, i32 0, i32 6
  %184 = load i32, ptr %183, align 4
  %185 = mul i32 %184, %176
  %186 = getelementptr i8, ptr %182, i32 %185
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %186, i32 %164) #8, !srcloc !11
  %187 = load ptr, ptr %17, align 4
  %188 = tail call i64 @ktime_get_mono_fast_ns() #8
  %189 = getelementptr inbounds %struct.device, ptr %187, i32 0, i32 11, i32 22
  store volatile i64 %188, ptr %189, align 8
  %190 = load ptr, ptr %17, align 4
  %191 = tail call i32 @__pm_runtime_suspend(ptr noundef %190, i32 noundef 13) #8
  br label %192

192:                                              ; preds = %160, %23, %1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @bam_chan_init_hw(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 1
  %4 = load ptr, ptr %3, align 4
  %5 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 2
  %6 = load i32, ptr %5, align 4
  %7 = getelementptr inbounds %struct.bam_device, ptr %4, i32 0, i32 10
  %8 = load ptr, ptr %7, align 4
  %9 = getelementptr %struct.reg_offset_data, ptr %8, i32 14
  %10 = load i32, ptr %9, align 4
  %11 = getelementptr %struct.reg_offset_data, ptr %8, i32 14, i32 1
  %12 = load i32, ptr %11, align 4
  %13 = getelementptr %struct.reg_offset_data, ptr %8, i32 14, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = getelementptr %struct.reg_offset_data, ptr %8, i32 14, i32 3
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 4
  %18 = getelementptr i8, ptr %17, i32 %10
  %19 = mul i32 %12, %6
  %20 = getelementptr i8, ptr %18, i32 %19
  %21 = mul i32 %14, %6
  %22 = getelementptr i8, ptr %20, i32 %21
  %23 = getelementptr inbounds %struct.bam_device, ptr %4, i32 0, i32 6
  %24 = load i32, ptr %23, align 4
  %25 = mul i32 %24, %16
  %26 = getelementptr i8, ptr %22, i32 %25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 1) #8, !srcloc !11
  %27 = load i32, ptr %5, align 4
  %28 = load ptr, ptr %7, align 4
  %29 = getelementptr %struct.reg_offset_data, ptr %28, i32 14
  %30 = load i32, ptr %29, align 4
  %31 = getelementptr %struct.reg_offset_data, ptr %28, i32 14, i32 1
  %32 = load i32, ptr %31, align 4
  %33 = getelementptr %struct.reg_offset_data, ptr %28, i32 14, i32 2
  %34 = load i32, ptr %33, align 4
  %35 = getelementptr %struct.reg_offset_data, ptr %28, i32 14, i32 3
  %36 = load i32, ptr %35, align 4
  %37 = load ptr, ptr %4, align 4
  %38 = getelementptr i8, ptr %37, i32 %30
  %39 = mul i32 %32, %27
  %40 = getelementptr i8, ptr %38, i32 %39
  %41 = mul i32 %34, %27
  %42 = getelementptr i8, ptr %40, i32 %41
  %43 = load i32, ptr %23, align 4
  %44 = mul i32 %43, %36
  %45 = getelementptr i8, ptr %42, i32 %44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %45, i32 0) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !14
  tail call void @arm_heavy_mb() #8
  %46 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 8
  store i32 0, ptr %46, align 4
  %47 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 5
  %48 = load i32, ptr %47, align 4
  %49 = add i32 %48, 7
  %50 = and i32 %49, -8
  %51 = load i32, ptr %5, align 4
  %52 = load ptr, ptr %7, align 4
  %53 = getelementptr %struct.reg_offset_data, ptr %52, i32 23
  %54 = load i32, ptr %53, align 4
  %55 = getelementptr %struct.reg_offset_data, ptr %52, i32 23, i32 1
  %56 = load i32, ptr %55, align 4
  %57 = getelementptr %struct.reg_offset_data, ptr %52, i32 23, i32 2
  %58 = load i32, ptr %57, align 4
  %59 = getelementptr %struct.reg_offset_data, ptr %52, i32 23, i32 3
  %60 = load i32, ptr %59, align 4
  %61 = load ptr, ptr %4, align 4
  %62 = getelementptr i8, ptr %61, i32 %54
  %63 = mul i32 %56, %51
  %64 = getelementptr i8, ptr %62, i32 %63
  %65 = mul i32 %58, %51
  %66 = getelementptr i8, ptr %64, i32 %65
  %67 = load i32, ptr %23, align 4
  %68 = mul i32 %67, %60
  %69 = getelementptr i8, ptr %66, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %69, i32 %50) #8, !srcloc !11
  %70 = load i32, ptr %5, align 4
  %71 = load ptr, ptr %7, align 4
  %72 = getelementptr %struct.reg_offset_data, ptr %71, i32 25
  %73 = load i32, ptr %72, align 4
  %74 = getelementptr %struct.reg_offset_data, ptr %71, i32 25, i32 1
  %75 = load i32, ptr %74, align 4
  %76 = getelementptr %struct.reg_offset_data, ptr %71, i32 25, i32 2
  %77 = load i32, ptr %76, align 4
  %78 = getelementptr %struct.reg_offset_data, ptr %71, i32 25, i32 3
  %79 = load i32, ptr %78, align 4
  %80 = load ptr, ptr %4, align 4
  %81 = getelementptr i8, ptr %80, i32 %73
  %82 = mul i32 %75, %70
  %83 = getelementptr i8, ptr %81, i32 %82
  %84 = mul i32 %77, %70
  %85 = getelementptr i8, ptr %83, i32 %84
  %86 = load i32, ptr %23, align 4
  %87 = mul i32 %86, %79
  %88 = getelementptr i8, ptr %85, i32 %87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %88, i32 32760) #8, !srcloc !11
  %89 = load i32, ptr %5, align 4
  %90 = load ptr, ptr %7, align 4
  %91 = getelementptr %struct.reg_offset_data, ptr %90, i32 18
  %92 = load i32, ptr %91, align 4
  %93 = getelementptr %struct.reg_offset_data, ptr %90, i32 18, i32 1
  %94 = load i32, ptr %93, align 4
  %95 = getelementptr %struct.reg_offset_data, ptr %90, i32 18, i32 2
  %96 = load i32, ptr %95, align 4
  %97 = getelementptr %struct.reg_offset_data, ptr %90, i32 18, i32 3
  %98 = load i32, ptr %97, align 4
  %99 = load ptr, ptr %4, align 4
  %100 = getelementptr i8, ptr %99, i32 %92
  %101 = mul i32 %94, %89
  %102 = getelementptr i8, ptr %100, i32 %101
  %103 = mul i32 %96, %89
  %104 = getelementptr i8, ptr %102, i32 %103
  %105 = load i32, ptr %23, align 4
  %106 = mul i32 %105, %98
  %107 = getelementptr i8, ptr %104, i32 %106
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %107, i32 49) #8, !srcloc !11
  %108 = load ptr, ptr %7, align 4
  %109 = getelementptr %struct.reg_offset_data, ptr %108, i32 12
  %110 = load i32, ptr %109, align 4
  %111 = getelementptr %struct.reg_offset_data, ptr %108, i32 12, i32 3
  %112 = load i32, ptr %111, align 4
  %113 = load ptr, ptr %4, align 4
  %114 = getelementptr i8, ptr %113, i32 %110
  %115 = load i32, ptr %23, align 4
  %116 = mul i32 %115, %112
  %117 = getelementptr i8, ptr %114, i32 %116
  %118 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %117) #8, !srcloc !9
  %119 = load i32, ptr %5, align 4
  %120 = shl nuw i32 1, %119
  %121 = or i32 %120, %118
  %122 = load ptr, ptr %7, align 4
  %123 = getelementptr %struct.reg_offset_data, ptr %122, i32 12
  %124 = load i32, ptr %123, align 4
  %125 = getelementptr %struct.reg_offset_data, ptr %122, i32 12, i32 3
  %126 = load i32, ptr %125, align 4
  %127 = load ptr, ptr %4, align 4
  %128 = getelementptr i8, ptr %127, i32 %124
  %129 = load i32, ptr %23, align 4
  %130 = mul i32 %129, %126
  %131 = getelementptr i8, ptr %128, i32 %130
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %131, i32 %121) #8, !srcloc !11
  tail call void asm sideeffect "dsb st", "~{memory}"() #8, !srcloc !18
  tail call void @arm_heavy_mb() #8
  %132 = icmp eq i32 %1, 2
  %133 = select i1 %132, i32 42, i32 34
  %134 = load i32, ptr %5, align 4
  %135 = load ptr, ptr %7, align 4
  %136 = getelementptr %struct.reg_offset_data, ptr %135, i32 13
  %137 = load i32, ptr %136, align 4
  %138 = getelementptr %struct.reg_offset_data, ptr %135, i32 13, i32 1
  %139 = load i32, ptr %138, align 4
  %140 = getelementptr %struct.reg_offset_data, ptr %135, i32 13, i32 2
  %141 = load i32, ptr %140, align 4
  %142 = getelementptr %struct.reg_offset_data, ptr %135, i32 13, i32 3
  %143 = load i32, ptr %142, align 4
  %144 = load ptr, ptr %4, align 4
  %145 = getelementptr i8, ptr %144, i32 %137
  %146 = mul i32 %139, %134
  %147 = getelementptr i8, ptr %145, i32 %146
  %148 = mul i32 %141, %134
  %149 = getelementptr i8, ptr %147, i32 %148
  %150 = load i32, ptr %23, align 4
  %151 = mul i32 %150, %143
  %152 = getelementptr i8, ptr %149, i32 %151
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %152, i32 %133) #8, !srcloc !11
  store i32 1, ptr %46, align 4
  %153 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 6
  store i16 0, ptr %153, align 4
  %154 = getelementptr inbounds %struct.bam_chan, ptr %0, i32 0, i32 7
  store i16 0, ptr %154, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal void @bam_dma_free_desc(ptr noundef %0) #2 {
  tail call void @kfree(ptr noundef %0) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_dma_suspend(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @pm_runtime_force_suspend(ptr noundef %0) #8
  %9 = load ptr, ptr %4, align 4
  tail call void @clk_unprepare(ptr noundef %9) #8
  br label %10

10:                                               ; preds = %7, %1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_dma_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = tail call i32 @clk_prepare(ptr noundef nonnull %5) #8
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call i32 @pm_runtime_force_resume(ptr noundef %0) #8
  br label %12

12:                                               ; preds = %10, %7, %1
  %13 = phi i32 [ %8, %7 ], [ 0, %10 ], [ 0, %1 ]
  ret i32 %13
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_dma_runtime_suspend(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  tail call void @clk_disable(ptr noundef %5) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal i32 @bam_dma_runtime_resume(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.bam_device, ptr %3, i32 0, i32 11
  %5 = load ptr, ptr %4, align 4
  %6 = tail call i32 @clk_enable(ptr noundef %5) #8
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %0, ptr noundef nonnull @.str.18, i32 noundef %6) #9
  br label %9

9:                                                ; preds = %8, %1
  %10 = phi i32 [ %6, %8 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

attributes #0 = { cold nounwind null_pointer_is_valid optsize sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+dsp,+read-tp-hard,+soft-float,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

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
!9 = !{i64 984713}
!10 = !{!"branch_weights", i32 1, i32 2000}
!11 = !{i64 984295}
!12 = !{i64 2153139849, i64 2153140344, i64 2153139886, i64 2153139942, i64 2153139976, i64 2153140000, i64 2153140041, i64 2153140062, i64 2153140090, i64 2153140124}
!13 = !{i64 2153228745}
!14 = !{i64 2153204824}
!15 = !{i64 2153140793}
!16 = !{i64 2153200272}
!17 = !{i64 2153237523}
!18 = !{i64 2153207131}
